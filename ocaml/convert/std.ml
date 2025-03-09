open Gimple
open Gimple.GimpleAst
open Ast
open Ast.Cryptoline
open Utils.Std

exception Unsupported of string
(*exception UnknownType*)

let enable_debug = ref true
let debug msg = if !enable_debug then print_endline msg

let result_variable_name = "__result__"

(** Data models *)

type data_model_t =
  | LP32
  | ILP32
  | LP64
  | LLP64
  | ILP64
  | SILP64
(* Reference: https://github.com/cpredef/predef/blob/master/DataModels.md *)

let default_data_model = LP64

let gsizetype = Ulong

let data_model = ref default_data_model

let size_of_char _ = 8
let size_of_short m =
  match m with
  | LP32 | ILP32 | LP64 | LLP64 | ILP64 -> 16
  | SILP64 -> 64
let size_of_int m =
  match m with
  | LP32 -> 16
  | ILP32 | LP64 | LLP64 -> 32
  | ILP64 | SILP64 -> 64
let size_of_long m =
  match m with
  | LP32 | ILP32 | LLP64 -> 32
  | LP64 | ILP64 | SILP64 -> 64
let size_of_long_long _ = 64
let size_of_pointer m =
  match m with
  | LP32 | ILP32 -> 32
  | LP64 | LLP64 | ILP64 | SILP64 -> 64


(** Types *)

let _default_cltype = Tsint 64

let size_of_gtype (t : GimpleAst.type_t) : int =
  let rec helper nested t =
    match t with
    | Bool -> 1
    | Char -> size_of_char !data_model
    | Uchar -> size_of_char !data_model
    | Short -> size_of_short !data_model
    | Ushort -> size_of_short !data_model
    | Int -> size_of_int !data_model
    | Uint -> size_of_int !data_model
    | Long -> size_of_long !data_model
    | Ulong -> size_of_long !data_model
    | Llong -> size_of_long_long !data_model
    | Ullong -> size_of_long_long !data_model
    | Sizetype -> helper nested gsizetype
    | Const t' -> helper nested t'
    | Pointer t' -> if nested then raise (Unsupported ("Nested pointer types are not supported"))
                    else helper true t'
    | Void -> size_of_pointer !data_model
    | _ -> raise (Unsupported (Printf.sprintf "Unsupported type: %s" (GimpleUtils.string_of_type t))) in
  helper false t

let bytes_of_gtype (t : GimpleAst.type_t) : int =
  size_of_gtype t / 8

let convert_gtype (t : GimpleAst.type_t) : Cryptoline.typ =
  let rec helper nested t =
    match t with
    | Bool -> bit_t
    | Char -> int_t (size_of_char !data_model)
    | Uchar -> uint_t (size_of_char !data_model)
    | Short -> int_t (size_of_short !data_model)
    | Ushort -> uint_t (size_of_short !data_model)
    | Int -> int_t (size_of_int !data_model)
    | Uint -> uint_t (size_of_int !data_model)
    | Long -> int_t (size_of_long !data_model)
    | Ulong -> uint_t (size_of_long !data_model)
    | Llong -> int_t (size_of_long_long !data_model)
    | Ullong -> uint_t (size_of_long_long !data_model)
    | Sizetype -> helper nested gsizetype
    | Const t' -> helper nested t'
    | Pointer t' -> if nested then raise (Unsupported ("Nested pointer types are not supported"))
                    else helper true t'
    | Void -> int_t (size_of_pointer !data_model)
    | _ -> raise (Unsupported (Printf.sprintf "Unsupported type: %s" (GimpleUtils.string_of_type t))) in
  helper false t


(** Variables *)

type var_kind =
  {
    mutable gbase: GimpleAst.var_t;
    mutable goffset : int;
    mutable gsize : int;         (* the maximal offset *)
    mutable is_pointer : bool;   (* true -> is a pointer *)
  }

let gtype_is_pointer (t : GimpleAst.type_t) : bool =
  match t with
  | Pointer _ -> true
  | _ -> false

let gvar_is_pointer (v : GimpleAst.var_t) : bool =
  gtype_is_pointer v.vty

let copy_pointer_info (src : var_kind) (dst : var_kind) : unit =
  let _ = dst.gbase <- src.gbase in
  let _ = dst.goffset <- src.goffset in
  let _ = dst.gsize <- src.gsize in
  ()

let get_tmp_name =
  let i = ref 0 in
  fun () ->
  let n = Printf.sprintf "__tmp_%d" !i in
  let _ = incr i in
  n
let get_tmp_name = get_tmp_name
(** Return a temporary name with an SSA index *)

let clean_var_name vn =
  if String.ends_with ~suffix:"(D)" vn
  then String.sub vn 0 (String.length vn - 3)
  else vn
(** Remove some suffixes, for example "(D)", from the variable names. *)

let dessa_gvar vn =
  let vn = clean_var_name vn in
  let l = String.length vn in
  let i =
    try
      String.rindex_from vn (l - 1) '_'
    with Not_found ->
      0 in
  let name, index =
    if i = 0
    then (vn, 0)
    else
      try
        let name = String.sub vn 0 i in
        let index = String.sub vn (i + 1) (l - i - 1) in
        (name, int_of_string index)
      with _ ->
        (vn, 0) in
  (name, index)

let mkclvar ?offset vn vt =
  let name =
    let (name, _) = dessa_gvar vn in
    match offset with
    | None -> name
    | Some o -> Printf.sprintf "%s_offset_%d" name o in
  Ast.Cryptoline.mkvar name vt

let clvar_of_var_kind vk =
  let cl_t = convert_gtype vk.gbase.vty in
  if vk.is_pointer
  then mkclvar ~offset:vk.goffset vk.gbase.vname cl_t
  else mkclvar vk.gbase.vname cl_t

let _cltype_of_var_kind vk =
  (clvar_of_var_kind vk).vtyp

let build_var_map (vs : GimpleAst.var_t list) : var_kind SM.t =
  List.fold_left (fun m (gv : GimpleAst.var_t) ->
      let (vn, vi) = dessa_gvar gv.vname in
      try
        let _ = debug (Printf.sprintf ("- define var: %s:%s (name: %s, index: %d)") gv.vname (GimpleUtils.string_of_type gv.vty) vn vi)  in
        let vk =
          {
            gbase = gv;
            goffset = 0;
            gsize = 0;
            is_pointer = gvar_is_pointer gv;
          } in
        SM.add vn vk m
      with Unsupported _ ->
        let _ = debug (Printf.sprintf "- unsupported var: %s:%s" gv.vname (GimpleUtils.string_of_type gv.vty)) in
        m
    ) SM.empty vs

let find_gvar vn (vm : var_kind SM.t) =
  let (name, _) = dessa_gvar vn in
  SM.find name vm

let find_gvar_or_fail vn (vm : var_kind SM.t) =
  try
    find_gvar vn vm
  with Not_found ->
    failwith (Printf.sprintf "Failed to find the definition of variable %s" vn)


(** Mempry Model *)

type addr_t = { base : string;
                offset : int }
type cell_t =
  | MemVal of var_kind
  | MemAddr of addr_t

module MA =
  struct
    type t = addr_t
    let compare = Stdlib.compare
  end

module MM = Map.Make(MA)

type mem_t = cell_t MM.t

let empty_mem : mem_t = MM.empty

let string_of_addr (addr : addr_t) : string =
  Printf.sprintf "%s+%d" addr.base addr.offset

let addr_of_var_kind vk = { base = vk.gbase.vname; offset = vk.goffset }

let find_addr (addr : addr_t) (mem : mem_t) : cell_t =
  MM.find addr mem

let find_addr_or_fail (addr : addr_t) (mem : mem_t) : cell_t =
  try
    MM.find addr mem
  with Not_found ->
    failwith (Printf.sprintf "Address %s is not allocated or not well aligned" (string_of_addr addr))

let alloc_mem (a : addr_t) (c : cell_t) (m : mem_t) : mem_t =
  if MM.mem a m then failwith ("Memory double allocation")
  else MM.add a c m


(** Context *)

type context_t =
  {
    ctx_gfuns : function_t SM.t;
    mutable ctx_fun_rettyp : type_t option;
    mutable ctx_vars : var_kind SM.t;
    mutable ctx_mem : mem_t
  }

let copy_context (ctx : context_t) : context_t =
  {
    ctx_gfuns = SM.map Fun.id ctx.ctx_gfuns;
    ctx_fun_rettyp = ctx.ctx_fun_rettyp;
    ctx_vars = SM.map Fun.id ctx.ctx_vars;
    ctx_mem = MM.map Fun.id ctx.ctx_mem
  }

let ctx_find_gvar vn ctx = find_gvar vn ctx.ctx_vars
let ctx_find_gvar_or_fail vn ctx = find_gvar_or_fail vn ctx.ctx_vars
let _ctx_find_addr addr ctx = find_addr addr ctx.ctx_mem
let ctx_find_addr_or_fail addr ctx = find_addr_or_fail addr ctx.ctx_mem
let ctx_alloc_mem a c ctx = alloc_mem a c ctx.ctx_mem
let ctx_has_gfun fn ctx = SM.mem fn ctx.ctx_gfuns
let ctx_deref_var_kind vk ctx =
  if not vk.is_pointer
  then failwith (Printf.sprintf "Failed to dereference the variable %s" vk.gbase.vname)
  else let _ = debug (Printf.sprintf "- Deref %s with offset %d" vk.gbase.vname vk.goffset) in
       ctx_find_addr_or_fail (addr_of_var_kind vk) ctx


(** Operands *)

type op_kind =
  | OPVarKind of var_kind
  | OPConst of Cryptoline.typ * Z.t

let string_of_op_kind opk =
  match opk with
  | OPVarKind vk -> if not vk.is_pointer || vk.goffset = 0
                    then vk.gbase.vname
                    else Printf.sprintf "%s+%d" vk.gbase.vname vk.goffset
  | OPConst (_, n) -> Z.to_string n

let clvar_of_op_kind opk =
  match opk with
  | OPVarKind vk -> clvar_of_var_kind vk
  | OPConst _ -> failwith (Printf.sprintf "Operand %s is not a variable" (string_of_op_kind opk))

let clatom_of_op_kind opk =
  match opk with
  | OPVarKind vk -> Avar (clvar_of_var_kind vk)
  | OPConst (t, n) -> Aconst (t, n)

let rec detect_operand_type (ctx : context_t) (o : GimpleAst.operand_t) : Cryptoline.typ option =
  match o with
  | Var vname ->
     (
       try
         Some (convert_gtype (ctx_find_gvar vname ctx).gbase.vty)
       with Not_found ->
         None
     )
  | Const _ -> None
  | String _ -> None
  | Neg o' -> detect_operand_type ctx o'
  | Ref _ -> None
  | Deref o' -> detect_operand_type ctx o'
  | Element _ -> None
  | Member _ -> None
  | Mem _ -> None
  | Ops _ -> None

let rec first_type (tos : Cryptoline.typ option list) : Cryptoline.typ option =
  match tos with
  | [] -> None
  | Some t::_ -> Some t
  | None::tos' -> first_type tos'
let first_operand_type (ctx : context_t) (os : GimpleAst.operand_t list) : Cryptoline.typ option =
  first_type (List.rev_map (detect_operand_type ctx) os |> List.rev)

let ctx_deref_operand (conv_op : context_t -> operand_t -> op_kind) (o : operand_t) (ctx : context_t) : var_kind =
  let vk =
    match conv_op ctx o with
    | OPVarKind vk -> vk
    | _ -> failwith (Printf.sprintf "Failed to dereference %s" (GimpleUtils.string_of_operand o)) in
  match ctx_deref_var_kind vk ctx with
  | MemVal vk' -> vk'
  | MemAddr _ -> failwith (Printf.sprintf "Failed to dereference %s" (GimpleUtils.string_of_operand o))


(** Traces *)

(* A trace  is a sequence of instructions that may ends with a label, which indicates the next block to be executed *)
type trace = Cryptoline.program * GimpleAst.label_t option

(* Append  the first trace to the second trace *)
let append_trace (p1, next_lbl_opt1) (p2, next_lbl_opt2) : trace =
  let _ = assert (next_lbl_opt2 = None) in
  (List.rev_append p1 (List.rev p2) |> List.rev, next_lbl_opt1)

let _trace_ends_with_goto (_, next_lbl_opt) =
  match next_lbl_opt with
  | None -> false
  | Some _ -> true

(* Given [t1; t2; ...; tn] and [s1; s2; ...; sm], produce [append t1 s1; append t2 s1; ... append tn s1; ... append tn t1; ... ; append tn sm] *)
let append_traces (trs1 : trace list) (trs2 : trace list) : trace list =
  match trs1, trs2 with
  | [], _ -> trs2
  | _, [] -> trs1
  | _, _ -> List.rev_map (
                fun tr1 ->
                List.rev_map (
                    fun tr2 ->
                    append_trace tr1 tr2
                  ) trs2
              ) trs1 |> tflatten |> List.rev

let string_of_trace (p, next_lbl_opt) =
  Printf.sprintf "%s, next label: %s"
    (string_of_program p)
    (match next_lbl_opt with
     | None -> "N/A"
     | Some lbl -> GimpleUtils.string_of_label lbl)


(** Conversions *)

let rec convert_operand (ctx : context_t) (o : GimpleAst.operand_t) (cl_t_opt : Cryptoline.typ option) : op_kind =
  match o with
  | Var vname -> OPVarKind (ctx_find_gvar_or_fail vname ctx)
  | Const zn -> let opk =
                  match cl_t_opt with
                  | None -> failwith (Printf.sprintf "Unknown type of constant %s" (Z.to_string zn))
                  | Some cl_t -> OPConst (cl_t, zn) in
                opk
  | Deref o' -> OPVarKind (ctx_deref_operand (fun ctx o -> convert_operand ctx o cl_t_opt) o' ctx)
  | _ -> failwith(Printf.sprintf "Failed to convert the operand %s" (GimpleUtils.string_of_operand o))

let convert_operand_lv (ctx : context_t) (o : GimpleAst.operand_t) : op_kind =
  let res = convert_operand ctx o None in
  match res with
  | OPConst _ -> failwith(Printf.sprintf "Failed to parse %s as a lval" (GimpleUtils.string_of_operand o))
  | _ -> res

let convert_operand_rv (ctx : context_t) (o : GimpleAst.operand_t) (cl_t_opt : Cryptoline.typ option) : op_kind =
  convert_operand ctx o cl_t_opt

let rec gimple_string_of_operand_constr (o : GimpleAst.operand_t) : string =
  match o with
  | Var _ -> "var"
  | Const _ -> "const"
  | String _ -> "string"
  | Neg o -> Printf.sprintf "neg (%s)" (gimple_string_of_operand_constr o)
  | Ref o -> Printf.sprintf "ref (%s)" (gimple_string_of_operand_constr o)
  | Deref o -> Printf.sprintf "deref (%s)" (gimple_string_of_operand_constr o)
  | Element (o1, o2) -> Printf.sprintf "element (%s) (%s)" (gimple_string_of_operand_constr o1) (gimple_string_of_operand_constr o2)
  | Member (o1, o2) -> Printf.sprintf "member (%s) (%s)" (gimple_string_of_operand_constr o1) (gimple_string_of_operand_constr o2)
  | Mem (_, _) -> "mem"
  | Ops os -> Printf.sprintf "ops (%s)" (String.concat ", " (List.map gimple_string_of_operand_constr os))

let convert_instr_assign (ctx : context_t) (r : GimpleAst.operand_t) (t : GimpleAst.type_t) (a : GimpleAst.operand_t) : Cryptoline.instr list =
  let _ = debug (Printf.sprintf "- r opkind %s" (gimple_string_of_operand_constr r)) in
  let _ = debug (Printf.sprintf "- a opkind %s" (gimple_string_of_operand_constr a)) in
  let cl_t = convert_gtype t in
  let ropk = convert_operand_lv ctx r in
  let aopk = convert_operand_rv ctx a (Some cl_t) in
  match ropk, aopk with
  (* Assign pointer to pointer: copy pointer information *)
  | OPVarKind rk, OPVarKind ak when rk.is_pointer && ak.is_pointer ->
     let _ = copy_pointer_info ak rk in
     []
  (* Assign constant to variable: use variable type as constant type (constant range is not checked) *)
  | OPVarKind rk, OPConst (_, n) when not rk.is_pointer ->
     let cl_r = clvar_of_var_kind rk in
     let cl_a = Aconst (cl_r.vtyp, n) in
     [ Imov (cl_r, cl_a) ]
  | _, _ ->
     let cl_r = clvar_of_op_kind ropk in
     let cl_a = clatom_of_op_kind aopk in
     if typ_of_atom cl_a = cl_t
     then [ Imov (cl_r, cl_a) ]
     else [ Icast (None, cl_r, cl_a) ]

let convert_instr_add (ctx : context_t) (r : GimpleAst.operand_t) (a1 : GimpleAst.operand_t) (a2 : GimpleAst.operand_t) : Cryptoline.instr list =
  let cl_t_opt = first_operand_type ctx [ a1; a2; r ] in
  let ropk = convert_operand_lv ctx r in
  let a1opk = convert_operand_rv ctx a1 cl_t_opt in
  let a2opk = convert_operand_rv ctx a2 cl_t_opt in
  match ropk, a1opk, a2opk with
  (* Pointer arithmetic *)
  | OPVarKind rk, OPVarKind a1k, OPConst (_, a2n) when a1k.is_pointer ->
     let _ = rk.gbase <- a1k.gbase in
     let _ = rk.goffset <- a1k.goffset + Z.to_int a2n in
     let _ = debug (Printf.sprintf "Update address of %s to %s+%d" (GimpleUtils.string_of_operand r) rk.gbase.vname rk.goffset) in
     []
  (* General addition *)
  | _ ->
     let cl_a1 = clatom_of_op_kind a1opk in
     let cl_a2 = clatom_of_op_kind a2opk in
     let cl_r = clvar_of_op_kind ropk in
     [ Iadd (cl_r, cl_a1, cl_a2) ]

let convert_instr_sub (ctx : context_t) (r : GimpleAst.operand_t) (a1 : GimpleAst.operand_t) (a2 : GimpleAst.operand_t) : Cryptoline.instr list =
  let cl_t_opt = first_operand_type ctx [ a1; a2; r ] in
  let ropk = convert_operand_lv ctx r in
  let a1opk = convert_operand_rv ctx a1 cl_t_opt in
  let a2opk = convert_operand_rv ctx a2 cl_t_opt in
  match ropk, a1opk, a2opk with
  (* Pointer arithmetic *)
  | OPVarKind rk, OPVarKind a1k, OPConst (_, a2n) when a1k.is_pointer ->
     let _ = rk.gbase <- a1k.gbase in
     let _ = rk.goffset <- a1k.goffset - Z.to_int a2n in
     let _ = debug (Printf.sprintf "Update address of %s to %s+%d" (GimpleUtils.string_of_operand r) rk.gbase.vname rk.goffset) in
     []
  (* General addition *)
  | _ ->
     let cl_a1 = clatom_of_op_kind a1opk in
     let cl_a2 = clatom_of_op_kind a2opk in
     let cl_r = clvar_of_op_kind ropk in
     [ Isub (cl_r, cl_a1, cl_a2) ]

let convert_instr_mul (ctx : context_t) (r : GimpleAst.operand_t) (a1 : GimpleAst.operand_t) (a2 : GimpleAst.operand_t) : Cryptoline.instr list =
  let cl_t_opt = first_operand_type ctx [ a1; a2; r ] in
  let ropk = convert_operand_lv ctx r in
  let a1opk = convert_operand_rv ctx a1 cl_t_opt in
  let a2opk = convert_operand_rv ctx a2 cl_t_opt in
  let cl_a1 = clatom_of_op_kind a1opk in
  let cl_a2 = clatom_of_op_kind a2opk in
  let cl_r = clvar_of_op_kind ropk in
  [ Imul (cl_r, cl_a1, cl_a2) ]

let convert_instr_lt (ctx : context_t) (r : GimpleAst.operand_t) (a1 : GimpleAst.operand_t) (a2 : GimpleAst.operand_t) : Cryptoline.instr list =
  let cl_t_opt = first_operand_type ctx [ a1; a2; r ] in
  let ropk = convert_operand_lv ctx r in
  let a1opk = convert_operand_rv ctx a1 cl_t_opt in
  let a2opk = convert_operand_rv ctx a2 cl_t_opt in
  let cl_a1 = clatom_of_op_kind a1opk in
  let cl_a2 = clatom_of_op_kind a2opk in
  let cl_r = clvar_of_op_kind ropk in
  match typ_of_atom cl_a1, typ_of_atom cl_a2 with
  | (Tuint w1 as cl_t), Tuint w2 when w1 = w2 -> let tmp_b = mkvar (get_tmp_name()) bit_t in
                                                 let tmp_r = mkvar (get_tmp_name()) cl_t in
                                                 let instr_sub = Isubb (tmp_b, tmp_r, cl_a1, cl_a2) in
                                                 if cl_r.vtyp <> bit_t
                                                 then [ instr_sub; Icast (None, cl_r, Avar tmp_b) ]
                                                 else [ instr_sub ]
  | (Tsint w1 as cl_t), Tsint w2 when w1 = w2 -> let tmp_a1 = mkvar (get_tmp_name()) (Tuint w1) in
                                                 let tmp_a2 = mkvar (get_tmp_name()) (Tuint w1) in
                                                 let tmp_b = mkvar (get_tmp_name()) bit_t in
                                                 let tmp_r = mkvar (get_tmp_name()) cl_t in
                                                 let instr_cast1 = Icast (None, tmp_a1, cl_a1) in
                                                 let instr_cast2 = Icast (None, tmp_a2, cl_a2) in
                                                 let instr_sub = Isubb (tmp_b, tmp_r, Avar tmp_a1, Avar tmp_a2) in
                                                 if cl_r.vtyp <> bit_t
                                                 then [ instr_cast1; instr_cast2; instr_sub; Icast (None, cl_r, Avar tmp_b) ]
                                                 else [ instr_cast1; instr_cast2; instr_sub ]
  | _ -> raise (Unsupported (Printf.sprintf "Comparison of incompatible types is not supported: %s" (GimpleUtils.string_of_instr (Lt (r, a1, a2)))))

let convert_instr_lshift (ctx : context_t) (r : GimpleAst.operand_t) (a1 : GimpleAst.operand_t) (a2 : GimpleAst.operand_t) : Cryptoline.instr list =
  let cl_t_opt = first_operand_type ctx [ a1; a2; r ] in
  let ropk = convert_operand_lv ctx r in
  let a1opk = convert_operand_rv ctx a1 cl_t_opt in
  let a2opk = convert_operand_rv ctx a2 cl_t_opt in
  let cl_a1 = clatom_of_op_kind a1opk in
  let cl_a2 = clatom_of_op_kind a2opk in
  let cl_r = clvar_of_op_kind ropk in
  [ Ishl (cl_r, cl_a1, cl_a2) ]

let convert_instr_rshift (ctx : context_t) (r : GimpleAst.operand_t) (a1 : GimpleAst.operand_t) (a2 : GimpleAst.operand_t) : Cryptoline.instr list =
  let cl_t_opt = first_operand_type ctx [ a1; a2; r ] in
  let ropk = convert_operand_lv ctx r in
  let a1opk = convert_operand_rv ctx a1 cl_t_opt in
  let a2opk = convert_operand_rv ctx a2 cl_t_opt in
  let cl_a1 = clatom_of_op_kind a1opk in
  let cl_a2 = clatom_of_op_kind a2opk in
  let cl_r = clvar_of_op_kind ropk in
  [ Ishr (cl_r, cl_a1, cl_a2) ]

let convert_instr_call (ctx : context_t) (r_opt : operand_t option) (fn : string) (actuals : operand_t list) : Cryptoline.instr list =
  let _ = print_endline (Printf.sprintf "Has function %s: %b" fn (ctx_has_gfun fn ctx)) in
  match r_opt, fn, actuals with
  | Some (Var r), "__builtin_alloca", [GimpleAst.Const n] ->
     let rec do_alloc rk offset boundary =
       if offset > boundary
       then ()
       else let vk = { rk with goffset = offset } in
            let addr = addr_of_var_kind vk in
            let cell = MemVal vk in
            let _ = ctx.ctx_mem <- ctx_alloc_mem addr cell ctx in
            do_alloc vk (offset + (bytes_of_gtype rk.gbase.vty)) boundary in
     let rk = ctx_find_gvar_or_fail r ctx in
     let _ = do_alloc rk 0 (Z.to_int n) in
     let _ = debug (Printf.sprintf "Pointer allocation for %s" r) in
     []
  | _, "__builtin_expect", _ ->
     (* Assume that the condition has been asserted in gimple *)
     []
  | _, "__assert_rtn", _ ->
     (* TODO: add assertion *)
     []
  | _retopt, _, _args when ctx_has_gfun fn ctx ->
     (* TODO: replace with pre-/post-conditions *)
     []
  | _ -> failwith (Printf.sprintf "Unsupported function conversion: %s" (GimpleUtils.string_of_instr (GimpleAst.Call (r_opt, fn, actuals))))

let convert_instr_return (ctx : context_t) (a_opt : operand_t option) : Cryptoline.instr list =
  match a_opt, Option.map convert_gtype ctx.ctx_fun_rettyp with
  | None, _ -> []
  | Some _, None -> failwith ("Failed to determine the return type")
  | Some aop, Some cl_retty ->
     let opk = convert_operand_rv ctx aop (Some cl_retty) in
     let cl_a = clatom_of_op_kind opk in
     [ Imov (Ast.Cryptoline.mkvar result_variable_name cl_retty, cl_a) ]

let detect_cond_type (ctx : context_t) (c : cond_t) : Cryptoline.typ option =
  let ops =
    match c with
    | Eq (o1, o2) | Neq (o1, o2)
      | Gt (o1, o2) | Ge (o1, o2)
      | Lt (o1, o2) | Le (o1, o2) ->
       [o1; o2] in
  first_operand_type ctx ops

let convert_cond_alg (ctx : context_t) (c : cond_t) (cl_t_opt : Cryptoline.typ option)  : Cryptoline.ebexp =
  match c with
  | Eq (o1, o2) -> let e1 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   eeq e1 e2
  | Neq _ ->
     (* Note: the negation of == in cryptoline? *)
     raise (Unsupported "Inequality in condition is not supported")
  | Gt (o1, o2) -> let e1 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   egt e1 e2
  | Ge (o1, o2) -> let e1 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   ege e1 e2
  | Lt (o1, o2) -> let e1 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   elt e1 e2
  | Le (o1, o2) -> let e1 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = eexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   ele e1 e2

let convert_cond_rng (ctx : context_t) (c : cond_t) (cl_t_opt : Cryptoline.typ option)  : Cryptoline.rbexp =
  let signed =
    match cl_t_opt with
    | Some (Tuint _) -> false
    | Some (Tsint _) -> true
    | _ -> failwith (Printf.sprintf "Failed to determine the type of the condition %s" (GimpleUtils.string_of_cond c)) in
  match c with
  | Eq (o1, o2) -> let e1 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   req (size_of_rexp e1) e1 e2
  | Neq _ ->
     (* Note: the negation of == in cryptoline? *)
     raise (Unsupported "Inequality in condition is not supported")
  | Gt (o1, o2) -> let e1 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   (if signed then rsgt else rugt) (size_of_rexp e1) e1 e2
  | Ge (o1, o2) -> let e1 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   (if signed then rsge else ruge) (size_of_rexp e1) e1 e2
  | Lt (o1, o2) -> let e1 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   (if signed then rslt else rult) (size_of_rexp e1) e1 e2
  | Le (o1, o2) -> let e1 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o1 cl_t_opt)) in
                   let e2 = rexp_of_atom (clatom_of_op_kind (convert_operand ctx o2 cl_t_opt)) in
                   (if signed then rsle else rule) (size_of_rexp e1) e1 e2

let convert_instr (ctx : context_t) (ginstr : GimpleAst.instr_t) : trace list =
  let _ = debug (Printf.sprintf "Instr: %s" (GimpleUtils.string_of_instr ginstr)) in
  let unsupport title = raise (Unsupported (Printf.sprintf "Unsupported instruction conversion: [%s] %s" title (GimpleUtils.string_of_instr ginstr))) in
  match ginstr with
  | Nop -> []
  | Comment _ -> []
  | Label _ -> []
  | Asm _ -> unsupport "ASM"
  | Assign (r, t, a) -> [ (convert_instr_assign ctx r t a, None) ]
  | VAssign _  -> unsupport "VAssign"
  | Add (r, a1, a2) -> [ (convert_instr_add ctx r a1 a2, None) ]
  | Sub (r, a1, a2)  -> [ (convert_instr_sub ctx r a1 a2, None) ]
  | Mul (r, a1, a2) -> [ (convert_instr_mul ctx r a1 a2, None) ]
  | Div _  -> unsupport "Div"
  | Mod _  -> unsupport "Mod"
  | Wmul _  -> unsupport "Wmul"
  | Gt _  -> unsupport "Gt"
  | Ge _  -> unsupport "Ge"
  | Lt (r, a1, a2) -> [ (convert_instr_lt ctx r a1 a2, None) ]
  | Le _ -> unsupport "Le"
  | And _  -> unsupport "And"
  | Or _  -> unsupport "Or"
  | Xor _  -> unsupport "Xor"
  | Not _  -> unsupport "Not"
  | Eq _  -> unsupport "Eq"
  | Neq _  -> unsupport "Neq"
  | Lshift (r, a1, a2) -> [ (convert_instr_lshift ctx r a1 a2, None) ]
  | Rshift (r, a1, a2) -> [ (convert_instr_rshift ctx r a1 a2, None) ]
  | Lrotate _  -> unsupport "Lrotate"
  | Rrotate _  -> unsupport "Rrotate"
  | Ite _  -> unsupport "Ite"
  | Min _  -> unsupport "Min"
  | Max _  -> unsupport "Max"
  | RealPart _  -> unsupport "RealPart"
  | ImagPart _  -> unsupport "ImagPart"
  | Call (r_opt, fn, actuals) -> [ (convert_instr_call ctx r_opt fn actuals, None) ]
  | CondBranch (cond, if_lbl, else_lbl) ->
     let cl_t_opt = detect_cond_type ctx cond in
     let e = convert_cond_alg ctx cond cl_t_opt in
     let r = convert_cond_rng ctx cond cl_t_opt in
     (* TODO: correct the assumption *)
     [
       ([Iassume (e, r)], Some if_lbl);
       ([Iassume (e, r)], Some else_lbl)
     ]
  | Goto _  -> unsupport "Goto"
  | Return a_opt  -> [ (convert_instr_return ctx a_opt, None) ]
  (* instrinsics *)
  | Wmullo _  -> unsupport "Wmullo"
  | Wmulhi _  -> unsupport "Wmulhi"
  | Wmadd _  -> unsupport "Wmadd"
  | Wmsub _  -> unsupport "Wmsub"
  | VecUnpackLo _  -> unsupport "VecUnpackLo"
  | VecUnpackHi _  -> unsupport "VecUnpackHi"
  | DeferredInit _  -> unsupport "DeferredInit"
  | BitFieldRef _  -> unsupport "BitFieldRef"
  | VCondMask _  -> unsupport "VCondMask"
  | ViewConvertExpr _  -> unsupport "ViewConvertExpr"
  | VecPermExpr _  -> unsupport "VecPermExpr"
  | VecPackTruncExpr _  -> unsupport "VecPackTruncExpr"
  | StoreLanes _  -> unsupport "StoreLanes"

let convert_instr (ctx : context_t) (ginstr : GimpleAst.instr_t) : trace list =
  let res = convert_instr ctx ginstr in
  let _ = List.iter (
              fun trace ->
              debug (Printf.sprintf "  => CL instr: %s" (string_of_trace trace))
            ) res in
  res

let convert_basic_block (ctx : context_t) (gblock : GimpleAst.basic_block_t) : trace list =
  let traces_rev =
    List.fold_left (
        fun traces_rev ginstr ->
        append_traces (convert_instr ctx ginstr) traces_rev
      ) [] gblock.instrs in
  List.rev traces_rev

(*
let simplify_function_blocks (gfun : GimpleAst.function_t) : GimpleAst.function_t =
  let rec same_lval op1 op2 =
    match op1, op2 with
    | Var v1, Var v2 -> fst (dessa_gvar v1) = fst (dessa_gvar v2)
    | Deref o1, Deref o2 -> same_lval o1 o2
    | _ -> false in
  let ends_with_cond_branch blk =
    match List.rev blk.instrs with
    | CondBranch (cond, if_lbl, else_lbl)::tl_rev -> Some (tl_rev, cond, if_lbl, else_lbl)
    | _ -> None in
  let is_if_branch blk =
    match blk.instrs with
    | [Assign (r, t, a); Goto lbl] -> Some (r, t, a, lbl)
    | _ -> None in
  let is_else_branch blk =
    match blk.instrs with
    | [Assign (r, t, a)] -> Some (r, t, a) in
  let rec simplify res_rev blocks =
    match blocks with
    | condb::ifb::elseb::nextb::restb ->
       begin
         match ends_with_cond_branch condb, is_if_branch ifb, is_else_branch elseb with
         | Some (prefix_rev, cond, if_lbl, else_lbl),
           Some (if_r, if_t, if_a, if_next_lbl),
           Some (else_r, else_t, else_a)
              when if_lbl = ifb.id
                   && else_lbl = elseb.id
                   && if_next_lbl = nextb.id
                   && same_lval if_r else_r ->
            (* check lables not used otherwhere *)
            simplify ({ condb with instrs = List.rev (Ite (if_r, cond, if_a, else_a)::prefix_rev) }::res_rev) (nextb::restb)
         | _ -> simplify (condb::res_rev) (ifb::elseb::nextb::restb)
       end
    | hd::tl -> simplify (hd::res_rev) tl
    | _ -> List.rev res_rev in
  let blocks' = simplify [] gfun.basic_blocks in
  { gfun with basic_blocks = blocks' }
*)

module LT =
  struct
    type t = label_t
    let compare l1 l2 =
      match l1, l2 with
      | BB n1, BB n2 -> Z.compare n1 n2
      | BB _, Name _ -> -1
      | Name _, BB _ -> 1
      | Name n1, Name n2 -> Stdlib.compare n1 n2
  end

module LM = Map.Make(LT)

(*
(* This function assumes that a list of blocks that are executed sequentially (unless goto). *)
let convert_basic_blocks ctx (blocks : basic_block_t list) : trace list =
  let rec build_block_map m blocks =
    match blocks with
    | [] -> m
    | b::blks -> build_block_map (LM.add b.id blocks m) blks in
  let rec helper ctx bm blocks =
    match blocks with
    | [] -> []
    | b::blks ->
       let traces_b = convert_basic_block ctx b in
       let _ = debug (Printf.sprintf "=================== Converted block: %d" (List.length traces_b)) in
       let traces_rev =
         List.fold_left (
             fun (traces_rev : trace list) trace_b ->
             let next_blocks =
               match trace_b with
               | (_, None) -> blks
               | (_, Some lbl) -> LM.find lbl bm in
             let traces' = helper (copy_context ctx) bm next_blocks in
             let _ = debug (Printf.sprintf "============= # of traces': %d" (List.length traces')) in
             List.rev_append (append_traces traces' [trace_b]) traces_rev
           ) [] traces_b in
       List.rev traces_rev in
  helper ctx (build_block_map LM.empty blocks) blocks
 *)

let convert_function (ctx : context_t) (gfun : GimpleAst.function_t) : Cryptoline.spec list =
  let convert_expanded_blocks block =
    let _ = debug "\n===== Building Variable Map =====\n" in
    let ctx =
      let ctx = copy_context ctx in
      let gformals_rev = List.rev_map (fun p -> { vty = p.pty; vname = p.pname }) gfun.params in
      let glocals = gfun.vars in
      let vm = build_var_map (List.rev_append gformals_rev glocals) in
      let _ = ctx.ctx_fun_rettyp <- Some gfun.fty in
      let _ = ctx.ctx_vars <- vm in
      ctx in
    let _ = debug (Printf.sprintf "\n===== Converting Function %s =====\n" gfun.fname) in
    let pre = btrue in
    let post = ([], []) in
    let progs = convert_basic_block ctx block |> List.split |> fst in
    List.rev_map (
        fun prog ->
        { spre = pre; sprog = prog; spost = post }
      ) progs |> List.rev in
  List.map convert_expanded_blocks gfun.basic_blocks |> tflatten

(* Note: a block in function_t represents a fully expanded case *)
let convert (gfuns : function_t list) : (spec list) SM.t =
  let ctx = { ctx_gfuns = List.fold_left (
                              fun m f ->
                              let _ = print_endline ("=============== Add function to context: " ^ f.fname) in
                              SM.add f.fname f m
                            ) SM.empty gfuns;
              ctx_fun_rettyp = None;
              ctx_vars = SM.empty;
              ctx_mem = empty_mem } in
  let clspecs = List.rev_map (convert_function ctx) gfuns |> List.rev in
  List.fold_left2 (fun m gfun clspec ->
      SM.add gfun.fname clspec m
    ) SM.empty gfuns clspecs

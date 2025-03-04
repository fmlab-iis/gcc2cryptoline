
open Parser
open Ast

let from_label (l : Syntax.label_t) : label_t =
  match l with
  | BB z -> BB z | Name str -> Name str

let rec from_type (ty : Syntax.type_t) =
  match ty with
  | Void -> Void | Bool -> Bool
  | Char -> Char | Uchar -> Uchar
  | Short -> Short| Ushort -> Ushort
  | Int -> Int | Uint -> Uint
  | Long -> Long | Ulong -> Ulong
  | Llong -> Llong | Ullong -> Ullong
  | CharRefAll -> CharRefAll
  | Sword i -> Sword i | Uword i -> Uword i
  | Bools i -> Bools i | Ubools i -> Ubools i
  | Const ty' -> Const (from_type ty')
  | Pointer ty' -> Pointer (from_type ty')
  | Struct str -> Struct str
  | Vector (z, ty') -> Vector (z, from_type ty')
  | Array (z, ty') -> Array (z, from_type ty')
  | Complex ty' -> Complex (from_type ty')
  | Typedef str -> Typedef str

let from_param (p : Syntax.param_t) =
  { pty = from_type p.pty; pname = p.pname }

let from_var v =
  { vty = from_type v.Syntax.vty; vname = v.Syntax.vname }

let rec from_offset (off : Syntax.offset_t) : offset_t =
  match off with
  | Const z -> Const z | Var str -> Var str
  | Add (off0, off1) -> Add (from_offset off0, from_offset off1)
  | Mul (off0, off1) -> Mul (from_offset off0, from_offset off1)

let rec from_loc (l : Syntax.loc_t) : loc_t =
  { lty = from_type l.lty; lop = from_operand l.lop;
    loffset = from_offset l.loffset }
and from_operand (o : Syntax.operand_t) : operand_t =
    match o with
    | Var str -> Var str
    | Const z -> Const z
    | String str -> String str
    | Neg o' -> Neg (from_operand o')
    | Ref o' -> Ref (from_operand o')
    | Deref o' -> Deref (from_operand o')
    | Element (o0, o1) -> Element (from_operand o0, from_operand o1)
    | Member (o0, o1) -> Member (from_operand o0, from_operand o1)
    | Mem (t, l) -> Mem (from_type t, from_loc l)
    | Ops os -> Ops (List.rev (List.rev_map from_operand os))

let from_cond (c : Syntax.cond_t) : cond_t =
  match c with
  | Eq (o0, o1) -> Eq (from_operand o0, from_operand o1)
  | Neq (o0, o1) -> Neq (from_operand o0, from_operand o1)
  | Gt (o0, o1) -> Gt (from_operand o0, from_operand o1)
  | Ge (o0, o1) -> Ge (from_operand o0, from_operand o1)
  | Lt (o0, o1) -> Lt (from_operand o0, from_operand o1)
  | Le (o0, o1) -> Le (from_operand o0, from_operand o1)

let from_instr (i : Syntax.instr_t) : instr_t =
  match i with
  | Nop -> Nop
  | Comment str -> Comment str
  | Label l -> Label (from_label l)
  | Asm (asm_str, out_params, in_params, opt) ->
     let from_asm_params params =
       List.rev (List.rev_map
                   (fun (attr, op) -> (attr, from_operand op)) params) in
     Asm (asm_str, from_asm_params out_params, from_asm_params in_params, opt)
  | Assign (o, t, o0) ->
     Assign (from_operand o, from_type t, from_operand o0)
  | VAssign (o, t, o0) ->
     VAssign (from_operand o, from_type t, from_operand o0)
  | Add (o, o0, o1) ->
     Add (from_operand o, from_operand o0, from_operand o1)
  | Sub (o, o0, o1) ->
     Sub (from_operand o, from_operand o0, from_operand o1)
  | Mul (o, o0, o1) ->
     Mul (from_operand o, from_operand o0, from_operand o1)
  | Div (o, o0, o1) ->
     Div (from_operand o, from_operand o0, from_operand o1)
  | Mod (o, o0, o1) ->
     Mod (from_operand o, from_operand o0, from_operand o1)
  | Wmul (o, o0, o1) ->
     Wmul (from_operand o, from_operand o0, from_operand o1)
  | Gt (o, o0, o1) ->
     Gt (from_operand o, from_operand o0, from_operand o1)
  | Ge (o, o0, o1) ->
     Ge (from_operand o, from_operand o0, from_operand o1)
  | Lt (o, o0, o1) ->
     Lt (from_operand o, from_operand o0, from_operand o1)
  | Le (o, o0, o1) ->
     Le (from_operand o, from_operand o0, from_operand o1)
  | And (o, o0, o1) ->
     And (from_operand o, from_operand o0, from_operand o1)
  | Or (o, o0, o1) ->
     Or (from_operand o, from_operand o0, from_operand o1)
  | Xor (o, o0, o1) ->
     Xor (from_operand o, from_operand o0, from_operand o1)
  | Not (o, o0) ->
     Not (from_operand o, from_operand o0)
  | Eq (o, o0, o1) ->
     Eq (from_operand o, from_operand o0, from_operand o1)
  | Neq (o, o0, o1) ->
     Neq (from_operand o, from_operand o0, from_operand o1)
  | Lshift (o, o0, o1) ->
     Lshift (from_operand o, from_operand o0, from_operand o1)
  | Rshift (o, o0, o1) ->
     Rshift (from_operand o, from_operand o0, from_operand o1)
  | Lrotate (o, o0, o1) ->
     Lrotate (from_operand o, from_operand o0, from_operand o1)
  | Rrotate (o, o0, o1) ->
     Rrotate (from_operand o, from_operand o0, from_operand o1)
  | Ite (o, oc, o0, o1) ->
     Ite (from_operand o, from_operand oc, from_operand o0, from_operand o1)
  | Min (o, o0, o1) ->
     Min (from_operand o, from_operand o0, from_operand o1)
  | Max (o, o0, o1) ->
     Max (from_operand o, from_operand o0, from_operand o1)
  | RealPart (o, o0) ->
     RealPart (from_operand o, from_operand o0)
  | ImagPart (o, o0) ->
     ImagPart (from_operand o, from_operand o0)
  | Call (oopt, func_str, ops) ->
     let func_ops = List.rev (List.rev_map from_operand ops) in
     let o =
       match oopt with None -> None | Some o -> Some (from_operand o) in
     Call (o, func_str, func_ops)
  | CondBranch (c, l0, l1) ->
     CondBranch (from_cond c, from_label l0, from_label l1)
  | Goto l -> Goto (from_label l)
  | Return oopt ->
     Return (match oopt with None -> None | Some o -> Some (from_operand o))
  (* instrinsics *)
  | Wmullo (o, o0, o1) ->
     Wmullo (from_operand o, from_operand o0, from_operand o1)
  | Wmulhi (o, o0, o1) ->
     Wmulhi (from_operand o, from_operand o0, from_operand o1)
  | Wmadd (o, o0, o1, o2) ->
     Wmadd (from_operand o, from_operand o0, from_operand o1, from_operand o2)
  | Wmsub (o, o0, o1, o2) ->
     Wmsub (from_operand o, from_operand o0, from_operand o1, from_operand o2)
  | VecUnpackLo (o, o0) ->
     VecUnpackLo (from_operand o, from_operand o0)
  | VecUnpackHi (o, o0) ->
     VecUnpackHi (from_operand o, from_operand o0)
  | DeferredInit o ->
     DeferredInit (from_operand o)
  | BitFieldRef (o, o0, o1, o2) ->
     BitFieldRef (from_operand o,
                  from_operand o0, from_operand o1, from_operand o2)
  | VCondMask (o, oc, o0, o1) ->
     VCondMask (from_operand o, from_operand oc,
                from_operand o0, from_operand o1)
  | ViewConvertExpr (o, t, o0) ->
     ViewConvertExpr (from_operand o, from_type t, from_operand o0)
  | VecPermExpr (o, o0, o1, o2) ->
     VecPermExpr (from_operand o,
                  from_operand o0, from_operand o1, from_operand o2)
  | VecPackTruncExpr (o, o0, o1) ->
     VecPackTruncExpr (from_operand o, from_operand o0, from_operand o1)
  | StoreLanes (o, o0) ->
     StoreLanes (from_operand o, from_operand o0)

let parse_PHI str : phi_t option =
  let splitted = List.rev
                  (List.fold_left (fun ret w -> if w = "" then ret else w::ret)
                     [] (String.split_on_char ' ' str)) in
  let name_and_label rv' =
    let rlpindex' = String.rindex rv' '(' in
    let rrpindex' = String.rindex rv' ')' in
    let name = if String.get rv' 0 = '<' then
                 String.sub rv' 1 (pred rlpindex')
               else
                 String.sub rv' 0 rlpindex' in
    let labl =
      int_of_string (String.sub rv' (succ rlpindex')
                       (rrpindex' - rlpindex' - 1)) in
    (name, Z.of_int labl) in
  if List.mem "PHI" splitted then
    match splitted with
    | lv::"="::"PHI"::choices ->
       let cs = List.fold_left (fun ret rv' ->
                    let (name, labl) = name_and_label rv' in
                    (BB labl, Var name)::ret) [] choices in
       Some { op = Var lv; choice = cs }
    | _ -> assert false
  else
    None 

let build_basic_block l instrs : basic_block_t * instr_t list =
  let _ = assert (match l with |  BB _ -> true | _ -> false) in
  let mk_basic_block l rev_instrs phis =
    { id = l; instrs = List.rev rev_instrs;
      phi =  phis } in
  let rec find_end is rev_ret phis =
    match is with
    | i::is' ->
       (match i with
        | Label (BB _) -> (mk_basic_block l rev_ret phis, is)
        | Comment str ->
           (match parse_PHI str with
            | Some phi -> find_end is' (i::rev_ret) (phi::phis)
            | None -> find_end is' (i::rev_ret) phis)
        | _ -> find_end is' (i::rev_ret) phis)
    | _ -> (mk_basic_block l rev_ret phis, []) in
  find_end instrs [] []

let rec decompose instrs rev_ret =
  match instrs with
  | i::is ->
     (match i with
      | Label ((BB _) as l) ->
         let (basic_block, is') = build_basic_block l is in
         decompose is' (basic_block::rev_ret)
      | _ -> assert false)
  | _ -> List.rev rev_ret

let from_function (f : Syntax.function_t) : function_t =
  let params = List.rev (List.rev_map from_param f.params) in
  let vars = List.rev (List.rev_map from_var f.vars) in
  let instrs = List.rev (List.rev_map from_instr f.instrs) in
  let basic_blocks = decompose instrs [] in
  { attr = f.attr; fty = from_type f.fty; fname = f.fname;
    params = params; vars = vars; basic_blocks = basic_blocks }

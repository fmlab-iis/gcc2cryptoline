
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

let build_basic_block l instrs : basic_block_t * instr_t list =
  let mk_basic_block l rev_instrs =
    { id = l; instrs = List.rev rev_instrs } in
  let rec find_end is rev_ret =
    match is with
    | i::is' ->
       (match i with
        | Label _ -> (mk_basic_block l rev_ret, is)
        | _ -> find_end is' (i::rev_ret))
    | _ -> (mk_basic_block l rev_ret, []) in
  find_end instrs []

let rec decompose instrs rev_ret =
  match instrs with
  | i::is ->
     (match i with
      | Label l ->
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

let eval_offset (off : offset_t) st : offset_t =
  match off with
  | Var v -> if Hashtbl.mem st v then Const (Hashtbl.find st v) else off
  | Add (Const i0, Const i1) -> Const (Z.add i0 i1)
  | Mul (Const i0, Const i1) -> Const (Z.add i0 i1)
  | _ -> off

let rec eval_loc loc st =
  { lty = loc.lty; lop = eval_operand loc.lop st;
    loffset = eval_offset loc.loffset st }
and eval_operand (op : operand_t) st : operand_t =
  match op with
  | Var v -> if Hashtbl.mem st v then Const (Hashtbl.find st v)
             else op
  | Const _ | String _ -> op
  | Neg (Const z) -> Const (Z.neg z)
  | Neg _ -> op
  | Ref op -> Ref (eval_operand op st)
  | Deref op ->  Deref (eval_operand op st)
  | Element (op0, op1) -> Element (eval_operand op0 st, eval_operand op1 st)
  | Member (op0, op1) -> Member (eval_operand op0 st, eval_operand op1 st)
  | Mem (ty, loc) -> Mem (ty, eval_loc loc st)
  | Ops ops -> Ops (List.rev (List.rev_map (fun op -> eval_operand op st) ops))

let parse_PHI str =
  let splitted = List.rev
                  (List.fold_left (fun ret w -> if w = "" then ret else w::ret)
                     [] (String.split_on_char ' ' str)) in
  let name_and_label rv' =
    let rparenindex rv' =
      let _ = assert (String.ends_with ~suffix:")>" rv' ||
                        String.ends_with ~suffix:")," rv') in
      String.rindex rv' '(' in
    let rpindex' = rparenindex rv' in
    let len' = String.length rv' in
    let name = if String.get rv' 0 = '<' then
                 String.sub rv' 1 (pred rpindex')
               else
                 String.sub rv' 0 rpindex' in
    let labl =
      int_of_string (String.sub rv' (succ rpindex') (len' - rpindex' - 3)) in
    (name, labl) in
  if List.mem "PHI" splitted then
    match splitted with
    | [lv; _; rv0'; rv1'] ->
       let (rv0, labl0) = name_and_label rv0' in
       let (rv1, labl1) = name_and_label rv1' in
       Some (lv, (rv0, labl0, rv1, labl1))
    | _ -> assert false
  else
    None 

let _eval_instr instr st phis =
  let update_store v z st =
    if Hashtbl.mem st v then
      Hashtbl.replace st v z else Hashtbl.add st v z in
  let _eval_operand1 op op0 st =
    let op' = eval_operand op st in
    let op0' = eval_operand op0 st in
    (op', op0') in
  let eval_operand1_and_update op f op0 st =
    let op' = eval_operand op st in
    let op0' = eval_operand op0 st in
    let _ = match op', op0' with
      | Var v, Const z -> update_store v (f z) st
      | _ -> () in
    (op', op0') in
  let eval_operand2 op op0 op1 st =
    let op' = eval_operand op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    (op', op0', op1') in
  let eval_operand2_and_update op f op0 op1 st =
    let op' = eval_operand op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    let _ = match op', op0', op1' with
      | Var v, Const z0, Const z1 -> update_store v (f z0 z1) st
      | _ -> () in
    (op', op0', op1') in
    
  match instr with
  | Comment str ->
     (match parse_PHI str with
      | Some phi -> (instr, st, phi::phis)
      | None -> (instr, st, phis))
  | Assign (op, ty, op0) ->
     let op', op0' = eval_operand1_and_update op (fun x -> x) op0 st in
     (Assign (op', ty, op0'), st, phis)
  | Label _ -> assert false
  | Nop -> (instr, st, phis)
  | Asm _ -> (instr, st, phis)
  | VAssign (op, ty, op0) ->
     let op', op0' = eval_operand1_and_update op (fun x -> x) op0 st in
     (VAssign (op', ty, op0'), st, phis)
  | Add (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.add op0 op1 st in
     (Add (op', op0', op1'), st, phis)
  | Sub (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.sub op0 op1 st in
     (Sub (op', op0', op1'), st, phis)
  | Mul (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.mul op0 op1 st in
     (Mul (op', op0', op1'), st, phis)
  | Div (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Div (op', op0', op1'), st, phis)
  | Mod (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Mod (op', op0', op1'), st, phis)
  | Wmul (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.mul op0 op1 st in
     (Wmul (op', op0', op1'), st, phis)
  | Gt (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Gt (op', op0', op1'), st, phis)
  | Ge (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Ge (op', op0', op1'), st, phis)
  | Lt (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Lt (op', op0', op1'), st, phis)
  | Le (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Le (op', op0', op1'), st, phis)
  | And (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.logand op0 op1 st in
     (And (op', op0', op1'), st, phis)
  | Or (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.logor op0 op1 st in
     (Or (op', op0', op1'), st, phis)
  | Xor (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.logxor op0 op1 st in
     (Xor (op', op0', op1'), st, phis)
  | Not (op, op0) ->
     let op', op0' = eval_operand1_and_update op Z.lognot op0 st in
     (Not (op', op0'), st, phis)
  | Eq (op, op0, op1) ->
     let op', op0', op1' =
       let zeq2z z0 z1 = if Z.equal z0 z1 then Z.one else Z.zero in
       eval_operand2_and_update op zeq2z op0 op1 st in
     (Eq (op', op0', op1'), st, phis)
  | Neq (op, op0, op1) ->
     let op', op0', op1' =
       let zneq2z z0 z1 = if not (Z.equal z0 z1) then Z.one else Z.zero in
       eval_operand2_and_update op zneq2z op0 op1 st in
     (Neq (op', op0', op1'), st, phis)
  | Lshift (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Lshift (op', op0', op1'), st, phis)
  | Rshift (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Rshift (op', op0', op1'), st, phis)
  | Lrotate (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Lrotate (op', op0', op1'), st, phis)
  | Rrotate (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Rrotate (op', op0', op1'), st, phis)
  | _ -> assert false
  (*
             | Ite of operand_t * operand_t * operand_t * operand_t
             | Min of operand_t * operand_t * operand_t
             | Max of operand_t * operand_t * operand_t
             | RealPart of operand_t * operand_t
             | ImagPart of operand_t * operand_t
             | Call of operand_t option * string * operand_t list
             | CondBranch of cond_t * label_t * label_t
             | Goto of label_t
             | Return of operand_t option

             | Wmullo of operand_t * operand_t * operand_t
             | Wmulhi of operand_t * operand_t * operand_t
             | Wmadd of operand_t * operand_t * operand_t * operand_t
             | Wmsub of operand_t * operand_t * operand_t * operand_t
             | VecUnpackLo of operand_t * operand_t
             | VecUnpackHi of operand_t * operand_t
             | DeferredInit of operand_t
             | BitFieldRef of operand_t * operand_t * operand_t * operand_t
             | VCondMask of operand_t * operand_t *operand_t * operand_t
             | ViewConvertExpr of operand_t * type_t * operand_t
             | VecPermExpr of operand_t * operand_t * operand_t * operand_t
             | VecPackTruncExpr of operand_t * operand_t * operand_t
             | StoreLanes of operand_t * operand_t
   *)  

let _unroll_basic_blocks f =
  let _hash_bb =
    let ret = Hashtbl.create 7 in
    let _ = List.iter (fun bb -> Hashtbl.add ret bb.id bb.instrs)
              f.basic_blocks in
    ret in
  let _hash_var =
    let ret_var = Hashtbl.create 23 in
    let _ = List.iter (fun v -> Hashtbl.add ret_var v.vname v.vty) f.vars in
    ret_var in
  f

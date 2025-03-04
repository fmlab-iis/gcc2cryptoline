open Ast

let no_label = BB (Z.neg Z.one)

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
  | Neg op -> Neg (eval_operand op st)
  | Ref op -> Ref (eval_operand op st)
  | Deref op ->  Deref (eval_operand op st)
  | Element (op0, op1) -> Element (eval_operand op0 st, eval_operand op1 st)
  | Member (op0, op1) -> Member (eval_operand op0 st, eval_operand op1 st)
  | Mem (ty, loc) -> Mem (ty, eval_loc loc st)
  | Ops ops -> Ops (List.rev (List.rev_map (fun op -> eval_operand op st) ops))

let eval_left_operand (op : operand_t) st : operand_t =
  match op with
  | Var _ | Const _ | String _ -> op
  | Neg (Const z) -> Const (Z.neg z)
  | Neg op -> Neg (eval_operand op st)
  | Ref op -> Ref (eval_operand op st)
  | Deref op ->  Deref (eval_operand op st)
  | Element (op0, op1) -> Element (eval_operand op0 st, eval_operand op1 st)
  | Member (op0, op1) -> Member (eval_operand op0 st, eval_operand op1 st)
  | Mem (ty, loc) -> Mem (ty, eval_loc loc st)
  | Ops ops -> Ops (List.rev (List.rev_map (fun op -> eval_operand op st) ops))

let eval_cond (c : cond_t) st =
  let op0, op1 =
    match c with
    | Eq (op0, op1) | Neq (op0, op1) | Gt (op0, op1) | Ge (op0, op1) 
    | Lt (op0, op1) | Le (op0, op1) ->
       eval_operand op0 st, eval_operand op1 st in
  match op0, op1 with
  | Const z0, Const z1 ->
     (match c with
      | Eq _ -> Some (Z.equal z0 z1)
      | Neq _ -> Some (not (Z.equal z0 z1))
      | Gt _ -> Some (Z.gt z0 z1)
      | Ge _ -> Some (not (Z.lt z0 z1))
      | Lt _ -> Some (Z.lt z0 z1)
      | Le _ -> Some (not (Z.gt z0 z1)))
  | _ -> None

let eval_instr instr st =
  let update_store v z st =
    if Hashtbl.mem st v then
      Hashtbl.replace st v z else Hashtbl.add st v z in
  let eval_operand1 op op0 st =
    let op' = eval_left_operand op st in
    let op0' = eval_operand op0 st in
    (op', op0') in
  let eval_operand1_and_update op f op0 st =
    let op' = eval_left_operand op st in
    let op0' = eval_operand op0 st in
    let _ = match op', op0' with
      | Var v, Const z -> update_store v (f z) st
      | _ -> () in
    (op', op0') in
  let eval_operand2 op op0 op1 st =
    let op' = eval_left_operand op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    (op', op0', op1') in
  let eval_operand2_and_update op f op0 op1 st =
    let op' = eval_left_operand op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    let _ = match op', op0', op1' with
      | Var v, Const z0, Const z1 -> update_store v (f z0 z1) st
      | _ -> () in
    (op', op0', op1') in
  let eval_operand3 op op0 op1 op2 st =
    let op' = eval_left_operand op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    let op2' = eval_operand op2 st in
    (op', op0', op1', op2') in
    
  match instr with
  | Comment _  | Nop | Asm _ -> (instr, st)
  | Assign (op, ty, op0) ->
     let op', op0' = eval_operand1_and_update op (fun x -> x) op0 st in
     (Assign (op', ty, op0'), st)
  | Label (BB _) -> assert false
  | Label (Name _) -> (instr, st)
  | VAssign (op, ty, op0) ->
     let op', op0' = eval_operand1_and_update op (fun x -> x) op0 st in
     (VAssign (op', ty, op0'), st)
  | Add (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.add op0 op1 st in
     (Add (op', op0', op1'), st)
  | Sub (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.sub op0 op1 st in
     (Sub (op', op0', op1'), st)
  | Mul (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.mul op0 op1 st in
     (Mul (op', op0', op1'), st)
  | Div (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Div (op', op0', op1'), st)
  | Mod (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Mod (op', op0', op1'), st)
  | Wmul (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.mul op0 op1 st in
     (Wmul (op', op0', op1'), st)
  | Gt (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Gt (op', op0', op1'), st)
  | Ge (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Ge (op', op0', op1'), st)
  | Lt (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Lt (op', op0', op1'), st)
  | Le (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Le (op', op0', op1'), st)
  | And (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.logand op0 op1 st in
     (And (op', op0', op1'), st)
  | Or (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.logor op0 op1 st in
     (Or (op', op0', op1'), st)
  | Xor (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.logxor op0 op1 st in
     (Xor (op', op0', op1'), st)
  | Not (op, op0) ->
     let op', op0' = eval_operand1_and_update op Z.lognot op0 st in
     (Not (op', op0'), st)
  | Eq (op, op0, op1) ->
     let op', op0', op1' =
       let zeq2z z0 z1 = if Z.equal z0 z1 then Z.one else Z.zero in
       eval_operand2_and_update op zeq2z op0 op1 st in
     (Eq (op', op0', op1'), st)
  | Neq (op, op0, op1) ->
     let op', op0', op1' =
       let zneq2z z0 z1 = if not (Z.equal z0 z1) then Z.one else Z.zero in
       eval_operand2_and_update op zneq2z op0 op1 st in
     (Neq (op', op0', op1'), st)
  | Lshift (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Lshift (op', op0', op1'), st)
  | Rshift (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Rshift (op', op0', op1'), st)
  | Lrotate (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Lrotate (op', op0', op1'), st)
  | Rrotate (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Rrotate (op', op0', op1'), st)
  | Ite (op, opc, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     let opc' = eval_operand opc st in
     (Ite (op', opc', op0', op1'), st)
  | Min (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.min op0 op1 st in
     (Min (op', op0', op1'), st)
  | Max (op, op0, op1) ->
     let op', op0', op1' = eval_operand2_and_update op Z.max op0 op1 st in
     (Max (op', op0', op1'), st)
  | RealPart (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (RealPart (op', op0'), st)
  | ImagPart (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (ImagPart (op', op0'), st)
  | Call (oop, name, ops) ->
     let oop' = match oop with None -> None
                             | Some op -> Some (eval_operand op st) in
     let ops' = List.rev (List.rev_map (fun op -> eval_operand op st) ops) in
     (Call (oop', name, ops'), st)
  | CondBranch _ | Goto _ -> (instr, st)
  | Return oop ->
     let oop' = match oop with None -> None
                             | Some op -> Some (eval_operand op st) in
     (Return oop', st)
  (* intrinsics *)
  | Wmullo (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Wmullo (op', op0', op1'), st)
  | Wmulhi  (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (Wmulhi (op', op0', op1'), st)
  | Wmadd (op, op0, op1, op2) ->
     let op', op0', op1', op2' = eval_operand3 op op0 op1 op2 st in
     (Wmadd (op', op0', op1', op2'), st)
  | Wmsub (op, op0, op1, op2) ->
     let op', op0', op1', op2' = eval_operand3 op op0 op1 op2 st in
     (Wmsub (op', op0', op1', op2'), st)
  | VecUnpackLo (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (VecUnpackLo (op', op0'), st)
  | VecUnpackHi  (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (VecUnpackHi (op', op0'), st)
  | DeferredInit op ->
     let op' = eval_operand op st in
     (DeferredInit op', st)
  | BitFieldRef (op, op0, op1, op2) ->
     let op', op0', op1', op2' = eval_operand3 op op0 op1 op2 st in
     (BitFieldRef (op', op0', op1', op2'), st)
  | VCondMask (op, op0, op1, op2) ->
     let op', op0', op1', op2' = eval_operand3 op op0 op1 op2 st in
     (VCondMask (op', op0', op1', op2'), st)
  | ViewConvertExpr (op, ty, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (ViewConvertExpr (op', ty, op0'), st)
  | VecPermExpr (op, op0, op1, op2) ->
     let op', op0', op1', op2' = eval_operand3 op op0 op1 op2 st in
     (VecPermExpr (op', op0', op1', op2'), st)
  | VecPackTruncExpr (op, op0, op1) ->
     let op', op0', op1' = eval_operand2 op op0 op1 st in
     (VecPackTruncExpr (op', op0', op1'), st)
  | StoreLanes (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (StoreLanes (op', op0'), st)

let rec expand_block hash_bb first current last_bb rev_ret st_ =
  let rev_phi_ret, st =
    if last_bb = no_label then
      (rev_ret, st_)
    else
      List.fold_left (fun (r, s) p ->
          (*
          let _ = Format.printf "@[%s -> %s@]@."
                    (Utils.string_of_label current.id)
                    (Utils.string_of_label last_bb) in
           *)
          let _ = assert (List.mem_assoc last_bb p.choice) in
          let op0 = List.assoc last_bb p.choice in
          let phi_instr = Assign (p.op, Void, op0) in
          let _instr', s' = eval_instr phi_instr s in
          (*
          let _ = print_endline (Utils.string_of_instr instr') in
           *)
          (phi_instr::r, s')) (rev_ret, st_) current.phi in
  let rev_phi_ret', st' = 
    List.fold_left (fun (r, s) instr ->
        let instr', s' = eval_instr instr s in
        (*
        let _ = print_endline (Utils.string_of_instr instr') in
         *)
          (instr'::r, s'))
      (rev_phi_ret, st) current.instrs in
  match rev_phi_ret' with
  | Goto labl as instr::instrs ->
     let comment0 = Format.sprintf "@[ %s @]"
                     (Utils.string_of_instr instr) in
     let comment1 = Format.sprintf "@[ Basic Block: %s@]"
                     (Utils.string_of_label labl) in
     (*
     let _ = print_endline comment0 in
     let _ = print_endline comment1 in
      *)
     let next, _ = Hashtbl.find hash_bb labl in
     expand_block hash_bb first next
       current.id (Comment comment1::Comment comment0::instrs) st'
  | CondBranch (c, labl0, labl1) as instr::instrs ->
     (match eval_cond c st' with
      | None ->
         ({ id = first.id; instrs = List.rev rev_phi_ret';
            phi = first.phi }, [labl0; labl1])
      | Some b ->
         let labl = if b then labl0 else labl1 in
         let comment0 = Format.sprintf "@[ %s @]"
                          (Utils.string_of_instr instr) in
         let comment1 = Format.sprintf "@[ Basic Block: %s@]"
                         (Utils.string_of_label labl) in
         (*
         let _ = print_endline comment0 in
         let _ = print_endline comment1 in
          *)
         let next, _ = Hashtbl.find hash_bb labl in
         expand_block hash_bb first next
           current.id (Comment comment1::Comment comment0::instrs) st')
  | Return _::_ ->
     ({ id = first.id; instrs = List.rev rev_phi_ret';
        phi = first.phi }, [])
  | _ ->
     (* continue to next block *)
     match snd (Hashtbl.find hash_bb current.id) with
     | None -> ({ id = first.id; instrs = List.rev rev_phi_ret';
                  phi = first.phi }, [])
     | Some next ->
        let comment = Format.sprintf "@[ Basic Block: %s@]"
                        (Utils.string_of_label next.id) in
        (*
        let _ = print_endline comment in
         *)
        expand_block hash_bb first next current.id
          (Comment comment::rev_phi_ret') st'

let unroll_blocks f =
  let hash_bb =
    let ret = Hashtbl.create 7 in
    let _ =
      let basic_blocks_next =
        List.rev (None::(List.fold_left (fun ret b -> Some b::ret)
                          [] (List.tl f.basic_blocks))) in
      List.iter2 (fun bb nbb -> Hashtbl.add ret bb.id (bb, nbb))
        f.basic_blocks basic_blocks_next in
    ret in
  let rec helper (rev_ret, rev_labls) labls =
    match labls with
    | labl::more_labls ->
       if List.mem labl rev_labls then
         helper (rev_ret, rev_labls) more_labls
       else
         let fake_last = no_label in
         let first, _ = Hashtbl.find hash_bb labl in
         let block, todo = expand_block hash_bb first first fake_last
                             [] (Hashtbl.create 17) in
         let _ = assert (block.id = labl) in
         helper (block::rev_ret, labl::rev_labls)
           (List.rev_append (List.rev more_labls) todo)
    | _ -> List.rev rev_ret in
  let start = List.nth f.basic_blocks 0 in
  let _ = assert (start.phi = []) in
  { attr = f.attr; fty = f.fty; fname = f.fname;
    params = f.params; vars = f.vars;
    basic_blocks = helper ([], []) [start.id] }

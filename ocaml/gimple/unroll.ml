open Ast

type cond_result_t = Decided of bool | Undecided of cond_t

let no_label = BB (Z.neg Z.one)

let mk_loc_var z = Var ("L0x" ^ Z.format "%08x" z)

let rec eval_offset (off : offset_t) st : offset_t =
  match off with
  | Const _ -> off
  | Var v -> if Hashtbl.mem st v then Const (Hashtbl.find st v) else off
  | Add (o0, o1) ->
     let o0', o1' = eval_offset o0 st, eval_offset o1 st in
     (match o0', o1' with
      | Const i0, Const i1 -> Const (Z.add i0 i1)
      | _ -> Add (o0', o1'))
  | Mul (o0, o1) ->
     let o0', o1' = eval_offset o0 st, eval_offset o1 st in
     (match o0', o1' with
      | Const i0, Const i1 -> Const (Z.mul i0 i1)
      | _ -> Mul (o0', o1'))

let rec eval_loc ?(evalvar=false) loc st =
  { lty = loc.lty; lop = eval_operand ~evalvar:evalvar loc.lop st;
    loffset = eval_offset loc.loffset st }
and eval_operand ?(evalvar=true) (op : operand_t) st : operand_t =
  match op with
  | Var v ->
     if evalvar then
       if Hashtbl.mem st v then Const (Hashtbl.find st v) else op
     else op
  | Const _ | String _ -> op
  | Neg op ->
     let op' = eval_operand ~evalvar:evalvar op st in
     (match op' with
     | Const z -> Const (Z.neg z)
     | _ -> Neg op')
  | Ref op -> Ref (eval_operand ~evalvar:evalvar op st)
  | Deref op ->
     let op' = eval_operand op st in
     (match op' with
     | Const z -> mk_loc_var z
     | _ -> Deref (eval_operand ~evalvar:false op st))
  | Element (op0, op1) ->
     Element (eval_operand ~evalvar:evalvar op0 st,
              eval_operand ~evalvar:evalvar op1 st)
  | Member (op0, op1) ->
     Member (eval_operand ~evalvar:evalvar op0 st,
             eval_operand ~evalvar:evalvar op1 st)
  | Mem (ty, loc) ->
     let loc' = eval_loc ~evalvar:true loc st in
     (match loc'.lop, loc'.loffset with
     | Const z0, Const z1 -> mk_loc_var (Z.add z0 z1)
     | _ -> Mem (ty, eval_loc ~evalvar:false loc st))
  | Ops ops ->
     Ops (List.rev
            (List.rev_map
               (fun op -> eval_operand ~evalvar:evalvar op st) ops))

let eval_cond (c : cond_t) st =
  let op0, op1 =
    match c with
    | Eq (op0, op1) | Neq (op0, op1) | Gt (op0, op1) | Ge (op0, op1) 
    | Lt (op0, op1) | Le (op0, op1) ->
       eval_operand op0 st, eval_operand op1 st in
  match op0, op1 with
  | Const z0, Const z1 ->
     (match c with
      | Eq _ -> Decided (Z.equal z0 z1)
      | Neq _ -> Decided (not (Z.equal z0 z1))
      | Gt _ -> Decided (Z.gt z0 z1)
      | Ge _ -> Decided (not (Z.lt z0 z1))
      | Lt _ -> Decided (Z.lt z0 z1)
      | Le _ -> Decided (not (Z.gt z0 z1)))
  | _ -> match c with
         | Eq _ -> Undecided (Eq (op0, op1))
         | Neq _ -> Undecided (Neq (op0, op1))
         | Gt _ -> Undecided (Gt (op0, op1))
         | Ge _ -> Undecided (Ge (op0, op1))
         | Lt _ -> Undecided (Lt (op0, op1))
         | Le _ -> Undecided (Le (op0, op1))

let sign_nbits_of_type ty =
  match ty with
  | Char -> Some (true, 8) | Uchar -> Some (false, 8)
  | Short -> Some (true, 16) | Ushort -> Some (false, 16)
  | Int -> Some (true, 32) | Uint -> Some (false, 32)
  | Long -> Some (true, 64) | Ulong -> Some (false, 64)
  | Llong -> Some (true, 128) | Ullong -> Some (false, 128)
  | Sizetype -> Some (false, 64)
  | Pointer _ -> Some (false, 64)
  | _ -> None

(* cast z to type ty if possible, return z otherwise *)
let cast_type ty z =
  match sign_nbits_of_type ty with
  | None -> z
  | Some (sign, nbits) ->
     let two = Z.succ Z.one in
     let twonbits = Z.pow two nbits in
     let mask = Z.sub twonbits Z.one in
     let _ = assert (nbits = Z.numbits mask) in
     let truncated_z = Z.logand z mask in
     if sign && Z.gt truncated_z (Z.shift_right twonbits 1) then
       Z.sub truncated_z twonbits
     else
       truncated_z

let eval_instr vtypes instr st =
  let update_store ty v z st =
    let zz = cast_type ty z in
    (*
      let _ = Format.printf "@[%s <- %s@]@." v (Z.to_string zz) in
     *)
    if Hashtbl.mem st v then
      Hashtbl.replace st v zz else Hashtbl.add st v zz in
  let print_op vtypes op value =
    match op with
    | Var v -> let vty = try Hashtbl.find vtypes v with Not_found -> Void in
               (match vty with
               | Pointer _ -> op | _ -> value)
    | _ -> value in
  let eval_operand1 op op0 st =
    let op' = eval_operand ~evalvar:false op st in
    let op0' = eval_operand op0 st in
    (op', op0') in
  let eval_operand1_and_update vtypes op f op0 st =
    let op', op0' = eval_operand1 op op0 st in
    let _ = match op', op0' with
      | Var v, Const z ->
         let vty = try Hashtbl.find vtypes v
                   with Not_found -> Void in
         update_store vty v (f z) st
      | Var v, _ -> Hashtbl.remove st v
      | _ -> () in
    let pop0' = print_op vtypes op0 op0' in
    (op', pop0') in
  let eval_operand2 op op0 op1 st =
    let op' = eval_operand ~evalvar:false op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    (op', op0', op1') in
  let eval_operand2_and_update vtypes op f op0 op1 st =
    let op', op0', op1' = eval_operand2 op op0 op1 st in
    let _ = match op', op0', op1' with
      | Var v, Const z0, Const z1 ->
         let vty = try Hashtbl.find vtypes v
                   with Not_found -> Void in
         update_store vty v (f z0 z1) st
      | Var v, _, _ -> Hashtbl.remove st v
      | _ -> () in
    let pop0' = print_op vtypes op0 op0' in
    let pop1' = print_op vtypes op1 op1' in
    (op', pop0', pop1') in
  let eval_operand3 op op0 op1 op2 st =
    let op' = eval_operand ~evalvar:false op st in
    let op0' = eval_operand op0 st in
    let op1' = eval_operand op1 st in
    let op2' = eval_operand op2 st in
    (op', op0', op1', op2') in
  let eval_operand3_and_update vtypes op f op0 op1 op2 st =
    let op', op0', op1', op2' = eval_operand3 op op0 op1 op2 st in
    let _ = match op', op0', op1', op2' with
      | Var v, Const z0, Const z1, Const z2 ->
         let vty = try Hashtbl.find vtypes v with Not_found -> Void in
         update_store vty v (f z0 z1 z2) st
      | Var v, _, _, _ -> Hashtbl.remove st v
      | _ -> () in
    let pop0' = print_op vtypes op0 op0' in
    let pop1' = print_op vtypes op1 op1' in
    let pop2' = print_op vtypes op2 op2' in
    (op', pop0', pop1', pop2') in
  match instr with
  | Comment _  | Nop | Asm _ -> (instr, st)
  | Assign (op, ty, op0) ->
     let op', op0' =
       eval_operand1_and_update vtypes op (fun x -> x) op0 st in
     (Assign (op', ty, op0'), st)
  | Label (BB _) -> assert false
  | Label (Name _) -> (instr, st)
  | VAssign (op, ty, op0) ->
     let op', op0' =
       eval_operand1_and_update vtypes op (fun x -> x) op0 st in
     (VAssign (op', ty, op0'), st)
  | Add (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.add op0 op1 st in
     (Add (op', op0', op1'), st)
  | Sub (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.sub op0 op1 st in
     (Sub (op', op0', op1'), st)
  | Mul (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.mul op0 op1 st in
     (Mul (op', op0', op1'), st)
  | Div (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.div op0 op1 st in
     (Div (op', op0', op1'), st)
  | Mod (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.rem op0 op1 st in
     (Mod (op', op0', op1'), st)
  | Wmul (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.mul op0 op1 st in
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
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.logand op0 op1 st in
     (And (op', op0', op1'), st)
  | Or (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.logor op0 op1 st in
     (Or (op', op0', op1'), st)
  | Xor (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.logxor op0 op1 st in
     (Xor (op', op0', op1'), st)
  | Not (op, op0) ->
     let op', op0' =
       eval_operand1_and_update vtypes op Z.lognot op0 st in
     (Not (op', op0'), st)
  | Eq (op, op0, op1) ->
     let op', op0', op1' =
       let zeq2z z0 z1 = if Z.equal z0 z1 then Z.one else Z.zero in
       eval_operand2_and_update vtypes op zeq2z op0 op1 st in
     (Eq (op', op0', op1'), st)
  | Neq (op, op0, op1) ->
     let op', op0', op1' =
       let zneq2z z0 z1 = if not (Z.equal z0 z1) then Z.one else Z.zero in
       eval_operand2_and_update vtypes op zneq2z op0 op1 st in
     (Neq (op', op0', op1'), st)
  | Lshift (op, op0, op1) ->
     let op', op0', op1' =
       let f z0 z1 = Z.shift_left z0 (Z.to_int z1) in
       eval_operand2_and_update vtypes op f op0 op1 st in
     (Lshift (op', op0', op1'), st)
  | Rshift (op, op0, op1) ->
     let op', op0', op1' =
       let f z0 z1 = Z.shift_right z0 (Z.to_int z1) in
       eval_operand2_and_update vtypes op f op0 op1 st in
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
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.min op0 op1 st in
     (Min (op', op0', op1'), st)
  | Max (op, op0, op1) ->
     let op', op0', op1' =
       eval_operand2_and_update vtypes op Z.max op0 op1 st in
     (Max (op', op0', op1'), st)
  | RealPart (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (RealPart (op', op0'), st)
  | ImagPart (op, op0) ->
     let op', op0' = eval_operand1 op op0 st in
     (ImagPart (op', op0'), st)
  | Call (oop, name, ops) ->
     let oop' =
       match oop with None -> None
                    | Some op -> Some (eval_operand ~evalvar:false op st) in
     let ops' = List.rev (List.rev_map (fun op -> eval_operand op st) ops) in
     let _ = match oop', name with
       | Some (Var v), "__builtin_alloca" ->
          if not (Hashtbl.mem st v) then
            let _ = if Hashtbl.mem vtypes v then ()
                    else Hashtbl.add vtypes v (Pointer Void) in
            update_store (Hashtbl.find vtypes v) v (Z.random_bits 64) st
          else
            ()
       | Some (Var v), _ -> Hashtbl.remove st v
       | _ -> () in
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
     let op', op0', op1', op2' =
       eval_operand3_and_update vtypes op
         (fun z0 z1 z2 -> Z.add (Z.mul z0 z1) z2) op0 op1 op2 st in
     (Wmadd (op', op0', op1', op2'), st)
  | Wmsub (op, op0, op1, op2) ->
     let op', op0', op1', op2' =
       eval_operand3_and_update vtypes op
         (fun z0 z1 z2 -> Z.sub (Z.mul z0 z1) z2) op0 op1 op2 st in
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

let rec expand_block no_branch vtypes hash_bb todos rets =
  match todos with
  | [] -> rets
  | (current, last_bb, current_st, rev_ret, first)::todos' ->
     if not no_branch && List.exists (fun (f, _) -> f.id = first.id) rets then
       expand_block no_branch vtypes hash_bb todos' rets
     else
       (* add and evaluate PHI assignment by last basic block *)
       let rev_phi_ret, st =
         if last_bb = no_label then
           (rev_ret, current_st)
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
               let instr', s' = eval_instr vtypes phi_instr s in
               (*
               let _ = print_endline (Utils.string_of_instr instr') in
                *)
               (instr'::r, s')) (rev_ret, current_st) current.phi in
       (* evaluate instructions in current basic block *)
       let rev_phi_ret', st' = 
         List.fold_left (fun (r, s) instr ->
             let instr', s' = eval_instr vtypes instr s in
             (*
             let _ = print_endline (Utils.string_of_instr instr') in
              *)
             (instr'::r, s'))
           (rev_phi_ret, st) current.instrs in
       (* evaluate the last instruction in the current basic block *)
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
          let rev_ret' = Comment comment1::Comment comment0::instrs in
          let cont = (next, current.id, st', rev_ret', first) in
          expand_block no_branch vtypes hash_bb (cont::todos') rets
       | CondBranch (c, labl0, labl1) as instr::instrs ->
          (match eval_cond c st' with
          | Undecided cond ->
             let next0, _ = Hashtbl.find hash_bb labl0 in
             let next1, _ = Hashtbl.find hash_bb labl1 in
             if no_branch then
               (* expand all indeterminate conditional branches *)
               let comment = Comment (Format.sprintf "@[ %s @]"
                                        (Utils.string_of_instr instr)) in
               let rev_ret0' =
                 let comment0 = Format.sprintf "@[ assume %s @]"
                                  (Utils.string_of_cond cond) in
                 Comment comment0::comment::instrs in
               let rev_ret1' =
                 let comment1 = Format.sprintf "@[ not %s @]"
                                  (Utils.string_of_cond cond) in
                 Comment comment1::comment::instrs in
               let cont0 = (next0, current.id, st', rev_ret0', first) in
               let cont1 =
                 let st'' = Hashtbl.copy st' in
                 (next1, current.id, st'', rev_ret1', first) in
               expand_block no_branch vtypes hash_bb
                 (cont0::cont1::todos') rets
             else
               (* initiate indeterminate conditional branches *)
               let cont0 = (next0, current.id, st', [], next0) in
               let cont1 =
                 let st'' = Hashtbl.copy st' in
                 (next1, current.id, st'', [], next1) in
               expand_block no_branch vtypes hash_bb (cont0::cont1::todos')
                 ((first, rev_phi_ret')::rets)
          | Decided b ->
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
             let rev_ret' = Comment comment1::Comment comment0::instrs in
             let cont = (next, current.id, st', rev_ret', first) in
             expand_block no_branch vtypes hash_bb (cont::todos') rets)
       | Return _::_ ->
          expand_block no_branch vtypes hash_bb todos'
            ((first, rev_phi_ret')::rets)
       | _ ->
          (* continue to next block *)
          match snd (Hashtbl.find hash_bb current.id) with
          | None ->
             expand_block no_branch vtypes hash_bb todos'
               ((first, rev_phi_ret')::rets)
          | Some next ->
             let comment = Format.sprintf "@[ Basic Block: %s@]"
                             (Utils.string_of_label next.id) in
             let rev_ret' = Comment comment::rev_phi_ret' in
             let cont = (next, current.id, st', rev_ret', first) in
             (*
             let _ = print_endline comment in
              *)
             expand_block no_branch vtypes hash_bb (cont::todos') rets

let unroll_first_block no_branch fnameopt init_st f =
  let hash_bb =
    let ret = Hashtbl.create 7 in
    let _ =
      let basic_blocks_next =
        List.rev (None::(List.fold_left (fun ret b -> Some b::ret)
                          [] (List.tl f.basic_blocks))) in
      List.iter2 (fun bb nbb -> Hashtbl.add ret bb.id (bb, nbb))
        f.basic_blocks basic_blocks_next in
    ret in
  (* expand the basic block with labl *)
  let expand_top_block vtypes labl st =
    let fake_last = no_label in
    let first, _ = Hashtbl.find hash_bb labl in
    let start = (first, fake_last, st, [], first) in
    let block_rev_instss = expand_block no_branch vtypes hash_bb [start] [] in
    List.fold_left (fun ret (first, rev_insts) ->
        let block = { id = first.id; instrs = List.rev rev_insts;
                      phi = first.phi } in
        block::ret) [] block_rev_instss in
  let vtypes =
    let ret = Hashtbl.create 17 in
    let _ = List.iter (fun v -> Hashtbl.add ret v.vname v.vty) f.vars in
    ret in
  let start = List.nth f.basic_blocks 0 in
  let _ = assert (start.phi = []) in
  match fnameopt with
  | None ->
     let top_blocks =
       expand_top_block vtypes start.id (Hashtbl.copy init_st) in
     let _ = assert (not no_branch ||
                       List.for_all (fun b -> b.id = start.id) top_blocks) in
     Some { attr = f.attr; fty = f.fty; fname = f.fname;
                   params = f.params; vars = f.vars;
                   basic_blocks = top_blocks }
  | Some name ->
     if name = f.fname then
       let top_blocks =
         expand_top_block vtypes start.id (Hashtbl.copy init_st) in
       let _ = assert (not no_branch ||
                         List.for_all (fun b -> b.id = start.id) top_blocks) in
       Some { attr = f.attr; fty = f.fty; fname = f.fname;
              params = f.params; vars = f.vars;
              basic_blocks = top_blocks }
     else
       None


open Ast

let rec string_of_type typ =
  match typ with
  | CharRefAll -> "char * {ref-all}"
  | Void -> "void"
  | Bool -> "_Bool"
  | Char -> "char"
  | Uchar -> "unsigned char"
  | Short -> "short"
  | Ushort -> "unsigned short"
  | Int -> "int"
  | Uint -> "unsigned int"
  | Long -> "long"
  | Ulong -> "unsigned long"
  | Llong -> "long long"
  | Ullong -> "unsigned long long"
  | Bools w -> "<signed-boolean:" ^ string_of_int w ^ ">"
  | Ubools w -> "<unsigned-boolean:" ^ string_of_int w ^ ">"
  | Sword w -> "int" ^ string_of_int w
  | Uword w -> "uint" ^ string_of_int w
  | Const t -> "const " ^ string_of_type t
  | Pointer t -> (string_of_type t) ^ " * "
  | Struct s -> "struct " ^ s
  | Vector (d, t) -> "vector[" ^ Z.to_string d ^ "] " ^ string_of_type t
  | Array (d, t) -> string_of_type t ^ "[" ^ Z.to_string d ^ "]"
  | Complex t -> "__complex__ " ^ string_of_type t
  | Typedef s -> s

let rec string_of_offset (off : offset_t) =
  match off with
  | Const z -> Z.to_string z
  | Var s -> s
  | Add (off0, off1) -> string_of_offset off0 ^ " + " ^ string_of_offset off1
  | Mul (off0, off1) -> string_of_offset off0 ^ " * " ^ string_of_offset off1

let rec string_of_loc loc =
  "(" ^ string_of_type loc.lty ^ ")" ^ string_of_operand loc.lop ^
    " + " ^ string_of_offset loc.loffset
and string_of_operand (op : operand_t) =
  match op with
  | Var s -> s
  | Const z -> Z.to_string z
  | String s -> "\"" ^ s ^ "\""
  | Neg p -> "-" ^ string_of_operand p
  | Element (p, op) -> string_of_operand p ^ "[" ^ string_of_operand op ^ "]"
  | Member (p, op) -> string_of_operand p ^ "->" ^ string_of_operand op ^ "]"
  | Mem (t, l) -> "MEM <" ^ string_of_type t ^ "> [" ^ string_of_loc l ^ "]"
  | Ref p -> "&" ^ string_of_operand p
  | Deref p -> "*" ^ string_of_operand p
  | Ops ps -> let pstrs = List.map string_of_operand ps in
              "{ " ^ (String.concat ", " pstrs) ^ " }"

let string_of_cond (cond : cond_t) =
  match cond with
  | Eq (op0, op1) -> string_of_operand op0 ^ " == " ^ string_of_operand op1
  | Neq (op0, op1) -> string_of_operand op0 ^ " != " ^ string_of_operand op1
  | Gt (op0, op1) -> string_of_operand op0 ^ " > " ^ string_of_operand op1
  | Ge (op0, op1) -> string_of_operand op0 ^ " >= " ^ string_of_operand op1
  | Lt (op0, op1) -> string_of_operand op0 ^ " < " ^ string_of_operand op1
  | Le (op0, op1) -> string_of_operand op0 ^ " <= " ^ string_of_operand op1

let string_of_label l =
  match l with
  | BB z -> "<bb " ^ Z.to_string z ^ ">"
  | Name s -> s ^ ":"

let string_of_instr instr =
  match instr with
  | Nop -> ""
  | Comment str -> "(* " ^ str ^ " *)"
  | Label l -> string_of_label l
  | Asm (asm, out_params, in_params, anno) ->
     let asm_header = "__asm__(\"" ^ asm ^ "\"" in
     let asm_params params =
       let param_str (param_attr, op) =
         "\"" ^ param_attr ^ "\"" ^ (string_of_operand op) in
       List.rev (List.rev_map param_str params) in
     let asm_out_params = String.concat ", " (asm_params out_params) in
     let asm_in_params = String.concat ", " (asm_params in_params) in
     let asm_anno = match anno with | None -> "none" | Some str -> str in
     (String.concat " : " [asm_header; asm_out_params; asm_in_params; asm_anno]) ^ ")"
  | Assign (l, t, op) -> string_of_operand l ^ " = (" ^
                           string_of_type t ^ ") " ^ string_of_operand op
  | VAssign (l, t, op) -> string_of_operand l ^ " ={v} (" ^
                            string_of_type t ^ ") " ^ string_of_operand op
  | Add (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " + " ^ string_of_operand r1
  | Sub (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " - " ^ string_of_operand r1
  | Mul (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " * " ^ string_of_operand r1
  | Div (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " / " ^ string_of_operand r1
  | Mod (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " % " ^ string_of_operand r1
  | Wmul (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                          " w* " ^ string_of_operand r1
  | Gt (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                          " > " ^ string_of_operand r1
  | Ge (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                          " >= " ^ string_of_operand r1
  | Lt (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                          " < " ^ string_of_operand r1
  | Le (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                          " <= " ^ string_of_operand r1
  | And (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " & " ^ string_of_operand r1
  | Or (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                        " | " ^ string_of_operand r1
  | Xor (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                        " ^ " ^ string_of_operand r1
  | Not (l, r) -> string_of_operand l ^ " = ~" ^ string_of_operand r
  | Eq (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                        " == " ^ string_of_operand r1
  | Neq (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                        " != " ^ string_of_operand r1
  | Lshift (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0
                          ^ " << " ^ string_of_operand r1
  | Rshift (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0
                          ^ " >> " ^ string_of_operand r1
  | Lrotate (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0
                          ^ " r<< " ^ string_of_operand r1
  | Rrotate (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0
                          ^ " r>> " ^ string_of_operand r1
  | Ite (l, cond, b0, b1) -> string_of_operand l ^ " = " ^
                               string_of_operand cond ^ " ? " ^
                               string_of_operand b0 ^ " : " ^
                                 string_of_operand b1
  | Min (l, r0, r1) -> string_of_operand l ^ " = MIN_EXPR <" ^ string_of_operand r0
                       ^ ", " ^ string_of_operand r1 ^ ">"
  | Max (l, r0, r1) -> string_of_operand l ^ " = MAX_EXPR <" ^ string_of_operand r0
                       ^ ", " ^ string_of_operand r1 ^ ">"
  | RealPart (l, r) -> string_of_operand l ^ " = REALPART_EXPR <" ^
                         string_of_operand r ^ ">"
  | ImagPart (l, r) -> string_of_operand l ^ " = IMAGPART_EXPR <" ^
                         string_of_operand r ^ ">"
  | Call (op, f, ops) -> let op_strs = List.map string_of_operand ops in
                         (match op with
                            None -> ""
                          | Some p -> string_of_operand p ^ " = ") ^
                           f ^ " (" ^ (String.concat "," op_strs) ^ ")"
  | CondBranch (c, l0, l1) -> "if (" ^ string_of_cond c ^ ")" ^
                                " goto " ^ (string_of_label l0) ^
                                " else" ^
                                " goto " ^ (string_of_label l1)
  | Goto l -> "goto " ^ string_of_label l
  | Return op -> "return" ^ (match op with
                             | None -> ""
                             | Some p -> string_of_operand p)
  | Wmullo (l, r0, r1) -> string_of_operand l ^
                            " = WIDEN_MULT_LO_EXPR <" ^
                               string_of_operand r0 ^ ", " ^
                               string_of_operand r1 ^ ">"
  | Wmulhi (l, r0, r1) -> string_of_operand l ^
                            " = WIDEN_MULT_HI_EXPR <" ^
                               string_of_operand r0 ^ ", " ^
                               string_of_operand r1 ^ ">"
  | Wmadd (l, r0, r1, r2) -> string_of_operand l ^
                               " = WIDEN_MULT_PLUS_EXPR <" ^
                               string_of_operand r0 ^ ", " ^
                               string_of_operand r1 ^ ", " ^
                               string_of_operand r2 ^ ">"
  | Wmsub (l, r0, r1, r2) -> string_of_operand l ^
                               " = WIDEN_MULT_MINUS_EXPR <" ^
                               string_of_operand r0 ^ ", " ^
                               string_of_operand r1 ^ ", " ^
                                 string_of_operand r2 ^ ">"
  | VecUnpackLo (l, r) -> string_of_operand l ^
                            " = [vec_unpack_lo_expr] " ^ string_of_operand r
  | VecUnpackHi (l, r) -> string_of_operand l ^
                            " = [vec_unpack_hi_expr] " ^ string_of_operand r
  | DeferredInit v -> string_of_operand v ^ " = DEFERRED_INIT"
  | BitFieldRef (l, p0, p1, p2) -> string_of_operand l ^ " = BIT_FIELD_REF <" ^
                                   string_of_operand p0 ^ ", " ^
                                   string_of_operand p1 ^ ", " ^
                                   string_of_operand p2 ^ ">"
  | VCondMask (l, p0, p1, p2) -> string_of_operand l ^ " = VCOND_MASK (" ^
                                   string_of_operand p0 ^ ", " ^
                                   string_of_operand p1 ^ ", " ^
                                   string_of_operand p2 ^ ")"
  | ViewConvertExpr (l, t, r) -> string_of_operand l ^ " = VIEW_CONVERT_EXPR <" ^
                                   string_of_type t ^ ">(" ^
                                   string_of_operand r ^ ")"
  | VecPermExpr (l, op0, op1, op2) -> string_of_operand l ^ " = VEC_PERM_EXPR <" ^
                                        string_of_operand op0 ^ ", " ^
                                        string_of_operand op1 ^ ", " ^
                                        string_of_operand op2 ^ ">"
  | VecPackTruncExpr (l, op0, op1) -> string_of_operand l ^ " = VEC_PACK_TRUNC_EXPR <" ^
                                        string_of_operand op0 ^ ", " ^
                                        string_of_operand op1 ^ ">"
  | StoreLanes (m, r) -> string_of_operand m ^ " = STORE_LANES (" ^
                           string_of_operand r ^ ")"

let rec print_params params =
  let print_param p =
    Format.printf "@[%s %s@]" (string_of_type p.pty) p.pname in
  match params with
  | [p] -> print_param p
  | p::ps -> print_param p; Format.printf ", "; print_params ps
  | _ -> ()

let print_vars vars =
  let print_var v =
    Format.printf "\t@[%s %s@];@." (string_of_type v.vty) v.vname in
  List.iter print_var vars

let print_basic_block bb =
  Format.printf "@[Basic Block: %s@]@." (string_of_label bb.id);
  List.iter (fun i -> Format.printf "\t@[%s@]@." (string_of_instr i)) bb.instrs

let print_function f =
  Format.printf "__attribute__((access (@[%s@])))@." (String.concat ", " f.attr);
  Format.printf "@[%s@] (" f.fname;
  print_params f.params;
  Format.printf ")@.{@.";
  print_vars f.vars;
  List.iter print_basic_block f.basic_blocks;
  Format.printf "}@."


  


open Parsing
open Syntax

let get_line_start () = (symbol_start_pos()).pos_lnum
let get_line_end () = (symbol_end_pos()).pos_lnum

let raise_parse_error lexbuf =
  let curr = lexbuf.Lexing.lex_curr_p in
  let fn = if String.length curr.Lexing.pos_fname > 0
           then (curr.Lexing.pos_fname ^ ":") else "" in
  let line = curr.Lexing.pos_lnum in
  let cnum = curr.Lexing.pos_cnum - curr.Lexing.pos_bol in
  let tok = Lexing.lexeme lexbuf in
  let msg = Printf.sprintf "Parser error at %s(%d, %d): `%s`" fn line cnum tok in
  raise (Failure msg)

let string_of_access_pat pats : string =
  String.concat "," pats

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
  | Typedef s -> s

let string_of_var v =
  "(" ^ string_of_type v.vty ^ ") " ^ v.vname

let string_of_params params =
  String.concat ", "
    (List.rev (List.rev_map
                 (fun p -> string_of_type p.pty ^ " " ^ p.pname) params))

let rec string_of_offset (off : offset_t) =
  match off with
  | Const c -> string_of_int c
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
  | Name s -> "<ll " ^ s ^ ">"

let string_of_instr instr =
  match instr with
  | Nop -> "nop"
  | Label l -> string_of_label l
  | Assign (l, t, op) -> string_of_operand l ^ " = (" ^
                            string_of_type t ^ ") " ^ string_of_operand op
  | Add (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " + " ^ string_of_operand r1
  | Sub (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " - " ^ string_of_operand r1
  | Mul (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " * " ^ string_of_operand r1
  | Div (l, r0, r1) -> string_of_operand l ^ " = " ^ string_of_operand r0 ^
                         " / " ^ string_of_operand r1
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
  | Call (op, f, ops) -> let op_strs = List.map string_of_operand ops in
                         (match op with
                            None -> ""
                          | Some p -> string_of_operand p ^ " = ") ^
                           f ^ " (" ^ (String.concat "," op_strs) ^ ")"
  | CondBranch (c, l0, l1) -> "if (" ^ string_of_cond c ^ ")\n" ^
                                "  goto " ^ (string_of_label l0) ^ "\n" ^
                                "else\n" ^
                                "  goto " ^ (string_of_label l1)
  | Goto l -> "goto " ^ string_of_label l
  | Return op -> "return" ^ (match op with
                             | None -> ""
                             | Some p -> string_of_operand p)
  | Wmadd (l, r0, r1, r2) -> string_of_operand l ^
                               " = WIDEN_MULT_PLUS_EXPR <" ^
                               string_of_operand r0 ^ ", " ^
                               string_of_operand r1 ^ ", " ^
                               string_of_operand r2
  | Wmsub (l, r0, r1, r2) -> string_of_operand l ^
                               " = WIDEN_MULT_MINUS_EXPR <" ^
                               string_of_operand r0 ^ ", " ^
                               string_of_operand r1 ^ ", " ^
                                 string_of_operand r2
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

let string_of_func f =
  let strings_of_instrs =
    List.rev ("}"::List.rev_map string_of_instr f.instrs) in
  String.concat "\n"
    (("__attribute__((access (" ^ (string_of_access_pat f.attr) ^ ")))")::
     ((string_of_type f.fty) ^ " " ^ f.fname ^ " (" ^ (string_of_params f.params) ^ ")")::
     "{"::
     strings_of_instrs)

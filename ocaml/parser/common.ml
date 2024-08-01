
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
  | Void -> "void"
  | Char -> "char"
  | Uchar -> "unsigned char"
  | Int -> "int"
  | Uint -> "unsigned int"
  | Long -> "long"
  | Ulong -> "unsigned long"
  | Llong -> "long long"
  | Ullong -> "unsigned long long"
  | Sword w -> "int" ^ string_of_int w
  | Uword w -> "uint" ^ string_of_int w
  | Const t -> "const " ^ string_of_type t
  | Pointer t -> (string_of_type t) ^ " * "
  | Vector (d, t) -> "vector[" ^ Z.to_string d ^ "] " ^ string_of_type t

let string_of_var v =
  "(" ^ string_of_type v.vty ^ ") " ^ v.vname

let string_of_params params =
  String.concat ", "
    (List.rev (List.rev_map
                 (fun p -> string_of_type p.pty ^ " " ^ p.pname) params))

let string_of_operand op =
  match op with
  | Var s -> s
  | Const z -> Z.to_string z

let string_of_loc loc =
  string_of_var loc.lvar ^ " + " ^ string_of_int loc.loffset

let string_of_instr instr =
  match instr with
  | Label z -> "L" ^ (Z.to_string z)
  | Assign (l, t, op) -> l ^ " = (" ^ string_of_type t ^ ") " ^ string_of_operand op
  | Vassign (l, rs) -> l ^ " = {" ^ (String.concat ", " rs) ^ "}"
  | Add (l, r0, r1) -> l ^ " = " ^ r0 ^ " + " ^ string_of_operand r1
  | Sub (l, r0, r1) -> l ^ " = " ^ r0 ^ " - " ^ string_of_operand r1
  | Mul (l, r0, r1) -> l ^ " = " ^ r0 ^ " * " ^ string_of_operand r1
  | Wmul (l, r0, r1) -> l ^ " = " ^ r0 ^ " w* " ^ string_of_operand r1
  | And (l, r0, r1) -> l ^ " = " ^ r0 ^ " & " ^ string_of_operand r1
  | Or (l, r0, r1) -> l ^ " = " ^ r0 ^ " | " ^ string_of_operand r1
  | Rshift (l, r0, r1) -> l ^ " = " ^ r0 ^ " >> " ^ string_of_operand r1
  | Lshift (l, r0, r1) -> l ^ " = " ^ r0 ^ " << " ^ string_of_operand r1
  | Load (l, t, loc) -> l ^ " = MEM <" ^ string_of_type t ^ "> [" ^
                          string_of_loc loc ^ "]"
  | Store (loc, t, r) -> "MEM <" ^ string_of_type t ^ "> [" ^
                           string_of_loc loc ^ "] = " ^ r
  | Return -> "return"
  | Wmadd (l, r0, r1, r2) -> l ^ " = WIDEN_MULT_PLUS_EXPR <" ^ r0 ^ ", " ^ r1 ^ ", " ^ r2
  
let string_of_func f =
  let strings_of_instrs =
    List.rev ("}"::List.rev_map string_of_instr f.instrs) in
  String.concat "\n"
    (("__attribute__((access (" ^ (string_of_access_pat f.attr) ^ ")))")::
     ((string_of_type f.fty) ^ " " ^ f.fname ^ " (" ^ (string_of_params f.params) ^ ")")::
     "{"::
     strings_of_instrs)

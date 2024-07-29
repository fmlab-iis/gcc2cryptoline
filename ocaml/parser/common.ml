
open Parsing

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


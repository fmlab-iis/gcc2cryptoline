
let args = []

let usage = "Usage: gcc2cryptoline OPTIONS FILE\n"

let anon file =
  let lexbuf = Lexing.from_channel ~with_positions:true (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  let _ast = 
    try
      Parser.GimpleParser.gimple Parser.GimpleLexer.token lexbuf
    with
    | Failure msg ->
       raise (Failure ("Error at line " ^
                         string_of_int ((Parsing.symbol_start_pos()).pos_lnum) ^
                           ". " ^ msg))
    | Parsing.Parse_error -> Parser.Common.raise_parse_error lexbuf
  in
  ()



let extract_func_name = ref None

let args = [
    ("-f", Arg.String (fun s -> extract_func_name := Some s),
     "<name>: Extract the specified procedure <name>.")
  ]

let args = List.sort Stdlib.compare args

let usage = "Usage: gcc2cryptoline OPTIONS FILE\n"

let anon file =
  let lexbuf = Lexing.from_channel ~with_positions:true (open_in file) in
  let _ = Lexing.set_filename lexbuf file in
  let parse_tree = 
    try
      Parser.GimpleParser.gimple Parser.GimpleLexer.token lexbuf
    with
    | Failure msg ->
       raise (Failure ("Error at line " ^
                         string_of_int ((Parsing.symbol_start_pos()).pos_lnum) ^
                           ". " ^ msg))
    | Parsing.Parse_error -> Parser.Common.raise_parse_error lexbuf in
  let asts = List.rev_map Gimple.parse_func parse_tree in
  let init_st = Hashtbl.create 17 in
  let expanded_asts = List.fold_left (fun ret f ->
                          match Gimple.unroll_basic_blocks
                                  !extract_func_name init_st f with
                          | None -> ret | Some f -> f::ret) [] asts in
  (*
  List.iter (fun f -> print_endline (Parser.Common.string_of_func f)) parse_tree
   *)
  List.iter Gimple.print_function expanded_asts

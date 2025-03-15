
let extract_func_name = ref None
let init_st = ref (Hashtbl.create 17)

let setup_init_st str =
  let pairs = List.rev (List.rev_map (String.split_on_char ':')
                          (String.split_on_char ',' str)) in
  let rec helper pairs =
    match pairs with
    | [varname; valstr]::ps ->
       let v = try int_of_string valstr
                 with Failure _ ->
                   failwith (Format.sprintf
                               "@[`%s' is not an integer value@]" valstr) in
       let _ =  if Hashtbl.mem !init_st varname then
                  Hashtbl.replace !init_st varname (Z.of_int v)
                else
                  Hashtbl.add !init_st varname (Z.of_int v) in
       helper ps
    | [] -> ()
    | _ -> failwith (Format.sprintf
                       "@[%s is not of the form <var>:<value>,... @]" str) in
  helper pairs

let args = [
    ("-f", Arg.String (fun s -> extract_func_name := Some s),
     "<name>: Extract the specified procedure <name>.");
    ("-set", Arg.String (fun init_str -> setup_init_st init_str),
     "<var0>:<value0>,<var1>:<value1>,...: Set vari to valuei.");
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
  let expanded_asts = List.fold_left (fun ret f ->
                          match Gimple.unroll_basic_blocks
                                  !extract_func_name !init_st f with
                          | None -> ret | Some f -> f::ret) [] asts in
  (*
  List.iter (fun f -> print_endline (Parser.Common.string_of_func f)) parse_tree
   *)
  List.iter Gimple.print_function expanded_asts

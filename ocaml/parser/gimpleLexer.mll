{
  open GimpleParser
  exception Eof

  let keywords = Hashtbl.create 100
  let _ = List.iter (fun (keyword, token) -> Hashtbl.replace keywords keyword token)
            [
              (********** keywords **********)
              "__attribute__"              , ATTRIBUTE;
	      "access"                     , ACCESS;
              "void"                       , VOID;
              "char"                       , CHAR;
              "int"                        , INT;
              "const"                      , CONST;
              "unsigned"                   , UNSIGNED;
              "long"                       , LONG;
              "vector"                     , VECTOR;
              "MEM"                        , MEM;
	      "return"                     , RETURN;
	      "local"                      , LOCAL;
	      "count"                      , COUNT;
            ]
}

let letter = ['a'-'z' 'A'-'Z' '_']
let number = ['0'-'9']
let bin = ['0' '1']
let hex = ['0'-'9' 'a'-'f' 'A'-'F']
let identity = '_'? (letter | '_' | number)* ("(D)")?
let comment_line = (";;"([^ '\n' ]+))|('#'([^ '\n' ]+))

rule line_comment = parse
    ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; token lexbuf }
  | _                              { line_comment lexbuf }

and

token = parse
    [' ' '\t']                     { token lexbuf }
  | ("\r\n"|'\n'|'\r')             { Lexing.new_line lexbuf; token lexbuf }
  (* Others *)
  | ";;"                           { line_comment lexbuf }
  | "#"                            { line_comment lexbuf }
  (* Symbols *)
  | '('                            { LPAREN }
  | ')'                            { RPAREN }
  | '['                            { LSQUARE }
  | ']'                            { RSQUARE }
  | '{'                            { LBRACK }
  | '}'                            { RBRACK }
  | '<'                            { LANGLE }
  | '>'                            { RANGLE }
  | ','                            { COMMA }
  | ':'                            { COLON }
  | ';'                            { SEMICOLON }
  | '"'                            { DQUOTE }
  (* Operators *)
  | '+'                            { ADDOP }
  | '-'                            { SUBOP }
  | '*'                            { MULOP }
  | "w*"                           { WMULOP }
  | '&'                            { ANDOP }
  | '|'                            { OROP }
  | '^'                            { XOROP }
  | '='                            { EQOP }
  | "<<"                           { LSHIFT }
  | ">>"                           { RSHIFT }
  | "bb"                           { BB }
  (* intrinsics *)
  | "WIDEN_MULT_PLUS_EXPR"          { WMADDOP }
  (* Types *)
  | "uint" ((number+) as w) "_t"   { UINT (int_of_string w) }
  | "u" ((number+) as w)           { UINT (int_of_string w) }
  | "int" ((number+) as w) "_t"    { SINT (int_of_string w) }
  | "__int" ((number+) as w)       { SINT (int_of_string w) }
  (* Numbers *)
  | (number+) as num               { NUM (Z.of_string num) }
  | ("-" (number+)) as num         { NUM (Z.of_string num) }
  (* Offsets *)
  | ((number+) as byte) "B"        { BYTE (int_of_string byte) }
  (* Strings *)
  | '"' (([^'\r''\n'' ']+) as s) '"'            { STRING s }
  | identity as id                 { try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       ID id
                                   }
  | eof                            { EOF }
  | _                              { raise (Invalid_argument ("Unexpected character: " ^ Lexing.lexeme lexbuf ^ " at line " ^ string_of_int (Common.get_line_end ()))) }

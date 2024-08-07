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
              "_Bool"                      , BOOL;
              "char"                       , CHAR;
              "int"                        , INT;
              "short"                      , SHORT;
              "struct"                     , STRUCT;
              "const"                      , CONST;
              "signed"                     , SIGNED;
              "unsigned"                   , UNSIGNED;
              "long"                       , LONG;
              "vector"                     , VECTOR;
              "MEM"                        , MEM;
              "bb"                         , BB;
              "if"                         , IF;
              "else"                       , ELSE;
              "goto"                       , GOTO;
	      "return"                     , RETURN;
            ]
}

let letter = ['a'-'z' 'A'-'Z' '_']
let number = ['0'-'9']
let bin = ['0' '1']
let hex = ['0'-'9' 'a'-'f' 'A'-'F']
let identity = '_'? (letter | '_' | '.' | '$' | number)* ("(D)")?
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
  | '%'                            { PERCENT }
  (* Operators *)
  | '+'                            { ADDOP }
  | '-'                            { SUBOP }
  | '*'                            { MULOP }
  | "w*"                           { WMULOP }
  | '&'                            { ANDOP }
  | '|'                            { OROP }
  | '^'                            { XOROP }
  | '='                            { EQOP }
  | "!="                           { NEQOP }
  | "<="                           { LEOP }
  | '?'                            { QUESTION }
  | "<<"                           { LSHIFT }
  | ">>"                           { RSHIFT }
  | "->"                           { RARROW }
  (* intrinsics *)
  | "WIDEN_MULT_PLUS_EXPR"         { WMADDOP }
  | "WIDEN_MULT_MINUS_EXPR"        { WMSUBOP }
  | ".DEFERRED_INIT"               { DEFERRED_INIT }
  | "vec_unpack_lo_expr"           { VEC_UNPACK_LO_EXPR }
  | "vec_unpack_hi_expr"           { VEC_UNPACK_HI_EXPR }
  (* Types *)
  | "uint" ((number+) as w) "_t"   { UINT (int_of_string w) }
  | "u" ((number+) as w)           { UINT (int_of_string w) }
  | "int" ((number+) as w) "_t"    { SINT (int_of_string w) }
  | "__int" ((number+) as w)       { SINT (int_of_string w) }
  (* Numbers *)
  | ('-'? number+) as num          { NUM (Z.of_string num) }
  | (number+ '.' number+) as num   { FLOAT (float_of_string num) }
  (* Offsets *)
  | ('-'? (number+) as byte) "B"        { BYTE (int_of_string byte) }
  (* Strings *)
  | '"' (([^'\r''\n'' ']+) as s) '"'            { STRING s }
  (* Misc *)
  | "local count"                  { LOCAL_COUNT }
  | "Removing basic block"         { REMOVING_BASIC_BLOCK }
  | "char * {ref-all}"             { CHAR_REF_ALL }
  | "CLOBBER(eos)"                 { CLOBBER_EOS }
  | "CLOBBER(eol)"                 { CLOBBER_EOL }
  | "tail call"                    { TAIL_CALL }
  | identity as id                 { try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       ID id
                                   }
  | eof                            { EOF }
  | _                              { raise (Invalid_argument ("Unexpected character: " ^ Lexing.lexeme lexbuf ^ " at line " ^ string_of_int (Common.get_line_end ()))) }

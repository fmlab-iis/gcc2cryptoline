{
  open GimpleParser
  exception Eof

  let keywords = Hashtbl.create 100
  let _ = List.iter (fun (keyword, token) -> Hashtbl.replace keywords keyword token)
            [
              (********** keywords **********)
              "__attribute__"              , ATTRIBUTE;
              "__asm__"                    , ASM;
	      "access"                     , ACCESS;
              "void"                       , VOID;
              "_Bool"                      , BOOL;
              "char"                       , CHAR;
              "int"                        , INT;
              "short"                      , SHORT;
              "struct"                     , STRUCT;
              "const"                      , CONST;
              "static"                     , STATIC;
              "signed"                     , SIGNED;
              "unsigned"                   , UNSIGNED;
              "long"                       , LONG;
              "vector"                     , VECTOR;
              "MEM"                        , MEM;
              "MIN_EXPR"                   , MIN_EXPR;
              "MAX_EXPR"                   , MAX_EXPR;
              "INV"                        , INV;
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
let comment_line = (";;"([^ '\n' ]+))|('#'([^ '\n' ]+))|("//"([^ '\n' ]+))

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
  | "//"                           { line_comment lexbuf }
  (* Symbols *)
  | '('                            { LPAREN }
  | ')'                            { RPAREN }
  | '['                            { LSQUARE }
  | ']'                            { RSQUARE }
  | '{'                            { LBRACK }
  | '}'                            { RBRACK }
  | '<'                            { LANGLE }
  | '>'                            { RANGLE }
  | '.'                            { DOT }
  | ','                            { COMMA }
  | ':'                            { COLON }
  | ';'                            { SEMICOLON }
  | '"'                            { DQUOTE }
  | '%'                            { PERCENT }
  (* Operators *)
  | '+'                            { ADDOP }
  | '-'                            { SUBOP }
  | '*'                            { MULOP }
  | '/'                            { DIVOP }
  | "w*"                           { WMULOP }
  | '&'                            { ANDOP }
  | '|'                            { OROP }
  | '^'                            { XOROP }
  | '~'                            { NOTOP }
  | '='                            { EQOP }
  | "={v}"                         { VEQOP }
  | "=="                           { EEQOP }
  | "!="                           { NEQOP }
  | "<="                           { LEOP }
  | ">="                           { GEOP }
  | '?'                            { QUESTION }
  | "<<"                           { LSHIFT }
  | ">>"                           { RSHIFT }
  | "r<<"                          { LROTATE }
  | "r>>"                          { RROTATE }
  | "->"                           { RARROW }
  (* intrinsics *)
  | "WIDEN_MULT_PLUS_EXPR"         { WMADDOP }
  | "WIDEN_MULT_MINUS_EXPR"        { WMSUBOP }
  | ".DEFERRED_INIT"               { DEFERRED_INIT }
  | "BIT_FIELD_REF"                { BIT_FIELD_REF }
  | ".VCOND_MASK"                  { VCOND_MASK }
  | ".STORE_LANES"                 { STORE_LANES }
  | "VIEW_CONVERT_EXPR"            { VIEW_CONVERT_EXPR }
  | "VEC_PERM_EXPR"                { VEC_PERM_EXPR }
  | "VEC_PACK_TRUNC_EXPR"          { VEC_PACK_TRUNC_EXPR }
  | "vec_unpack_lo_expr"           { VEC_UNPACK_LO_EXPR }
  | "vec_unpack_hi_expr"           { VEC_UNPACK_HI_EXPR }
  | "vzero"                        { VZERO }
  | "vone"                         { VONE }
  (* Types *)
  | "uint" ((number+) as w) "_t"   { UINT (int_of_string w) }
  | "u128"                         { UINT 128 }
  | "int" ((number+) as w) "_t"    { SINT (int_of_string w) }
  | "__int" ((number+) as w)       { SINT (int_of_string w) }
  | "<signed-boolean:" ((number+) as w) ">"
                                   { BOOLS (int_of_string w) }
  | "<unsigned-boolean:" ((number+) as w) ">"
                                   { UBOOLS (int_of_string w) }
  (* Numbers *)
  | ('-'? number+) as num          { NUM (Z.of_string num) }
  | (number+ '.' number+) as num   { FLOAT (float_of_string num) }
  (* Offsets *)
  | ('-'? (number+) as byte) "B"   { BYTE (int_of_string byte) }
  (* Strings *)
  | '"' (([^'\r''\n''"']*) as s) '"'  { STRING s }
  (* Misc *)
  | "Removing basic block"         { REMOVING_BASIC_BLOCK }
  | "char * {ref-all}"             { CHAR_REF_ALL }
  | "CLOBBER(eos)"                 { CLOBBER_EOS }
  | "CLOBBER(eol)"                 { CLOBBER_EOL }
  | "CLOBBER"                      { CLOBBER }
  | "tail call"                    { TAIL_CALL }
  | identity as id                 { try
                                       Hashtbl.find keywords id
                                     with Not_found ->
                                       ID id
                                   }
  | eof                            { EOF }
  | _                              { raise (Invalid_argument ("Unexpected character: " ^ Lexing.lexeme lexbuf ^ " at line " ^ string_of_int (Common.get_line_end ()))) }

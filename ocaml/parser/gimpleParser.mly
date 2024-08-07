%{

(*
 * Use raise_at_line or raise_at to raise an exception if the error location
 * can be determined. Raise ParseError otherwise.
 *)

  open Syntax

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <float> FLOAT
%token <string> ID STRING
%token <int> UINT SINT BYTE BOOLS UBOOLS

%token LPAREN RPAREN LSQUARE RSQUARE LBRACK RBRACK LANGLE RANGLE
%token COMMA SEMICOLON COLON DQUOTE
/* Operators */
%token ADDOP SUBOP MULOP WMULOP ANDOP OROP XOROP LSHIFT RSHIFT EQOP NEQOP
%token LEOP
%token WMADDOP WMSUBOP QUESTION RARROW DEFERRED_INIT
%token VEC_UNPACK_LO_EXPR VEC_UNPACK_HI_EXPR
/* Types */
%token CONST VOID BOOL CHAR INT SHORT LONG SIGNED UNSIGNED VECTOR STRUCT
%token BOOLS UBOOLS
/* Others */
%token ATTRIBUTE ACCESS MEM EOF RETURN BB IF ELSE GOTO
%token REMOVING_BASIC_BLOCK CHAR_REF_ALL PERCENT LOCAL_COUNT
%token CLOBBER_EOS CLOBBER_EOL TAIL_CALL

%start gimple
%type <Syntax.function_t list> gimple

%%

gimple:
  funcs EOF                               { $1 }
;

funcs:
| REMOVING_BASIC_BLOCK NUM funcs          { $3 }
| func funcs                              { $1::$2 }
|                                         { [] }
;

func:
  attribute typ ID LPAREN parameters RPAREN LBRACK var_decls body RBRACK
    { { attr = $1; fty = $2; fname = $3; params = $5; vars = $8; instrs = $9 } }
| typ ID LPAREN parameters RPAREN LBRACK var_decls body RBRACK
    { { attr = []; fty = $1; fname = $2; params = $4; vars = $7; instrs = $8 } }
;

attribute:
  ATTRIBUTE LPAREN LPAREN ACCESS LPAREN access_pat RPAREN RPAREN RPAREN
                                          { $6 }
;

access_pat:
  STRING COMMA access_pat                 { $1::$3 }
|                                         { [] }
;

parameters:
  parameter COMMA parameters              { $1::$3 }
| parameter                               { [$1] }
|                                         { [] }
;

parameter:
  typ ID                                  { { pty = $1; pname = $2 } }
;

var_decls:
  var_decl var_decls                      { $1::$2 }
|                                         { [] }
;

var_decl:
  typ ID SEMICOLON                        { { vty = $1; vname = $2 } }
| typ ID LSQUARE NUM RSQUARE SEMICOLON    { { vty = Array ($4, $1);
                                              vname = $2 } }
;

ground_typ:
| VOID                                    { Void }
| BOOL                                    { Bool }
| UNSIGNED CHAR                           { Uchar }
| SIGNED CHAR                             { Char }
| SHORT INT                               { Short }
| SHORT UNSIGNED INT                      { Ushort }
| INT                                     { Int }
| UNSIGNED INT                            { Uint }
| SIGNED INT                              { Int }
| LONG LONG UNSIGNED INT                  { Ullong }
| LONG LONG INT                           { Llong }
| UNSIGNED LONG                           { Ulong }
| BOOLS                                   { Bools $1 }
| UBOOLS                                  { Ubools $1 }
| UINT                                    { Uword $1 }
| SINT                                    { Sword $1 }
| SINT UNSIGNED                           { Uword $1 }
| STRUCT ID                               { Struct $2 }
| VECTOR LPAREN NUM RPAREN ground_typ     { Vector ($3, $5) }
| CONST ground_typ                        { Const $2 }
| ID                                      { Typedef $1 }
;

typ:
  ground_typ                              { $1 }
| typ MULOP                               { Pointer $1 }
| typ LSQUARE NUM RSQUARE                 { Array ($3, $1) }
;

body:
| LANGLE BB NUM RANGLE LSQUARE LOCAL_COUNT COLON NUM RSQUARE COLON instrs
                                          { Label $3::$11 }
;

instrs:
| instr instrs                            { $1::$2 }
|                                         { [] }
;

instr_lhs:
| ID LSQUARE ID RSQUARE                   { Element (Var $1, Var $3) }
| ID                                      { Var $1 }
| ID LSQUARE NUM RSQUARE                  { Element (Var $1, Const $3) }
| ID RARROW ID LSQUARE NUM RSQUARE        { Element (Member (Var $1, Var $3),
                                                     Const $5) }
;

instr:
| instr_lhs EQOP LBRACK args RBRACK LBRACK CLOBBER_EOS RBRACK SEMICOLON
                                          { Nop }
| instr_lhs EQOP LBRACK args RBRACK LBRACK CLOBBER_EOL RBRACK SEMICOLON
                                          { Nop }
| instr_lhs EQOP LPAREN typ RPAREN ID SEMICOLON
                                          { Assign ($1, $4, Var $6) }
| instr_lhs EQOP LPAREN typ RPAREN ANDOP ID SEMICOLON
                                          { Assign ($1, $4, Ref (Var $7)) }
| instr_lhs EQOP LBRACK args RBRACK SEMICOLON
                                          { Vassign ($1, $4) }
| instr_lhs EQOP ID LSQUARE ID RSQUARE SEMICOLON
                                          { Assign ($1, Void,
                                                    Element (Var $3, Var $5)) }
| instr_lhs EQOP ID LSQUARE NUM RSQUARE SEMICOLON
                                          { Assign ($1, Void,
                                                    Element (Var $3, Const $5)) }
| instr_lhs EQOP ID SEMICOLON             { Assign ($1, Void, Var $3) }
| instr_lhs EQOP ID RARROW ID SEMICOLON   { Assign ($1, Void,
                                                    Member (Var $3, Var $5))}
| instr_lhs EQOP ID RARROW ID LSQUARE NUM RSQUARE SEMICOLON
                                          { Assign ($1, Void,
                                                    Element (Member (Var $3,
                                                                     Var $5),
                                                             Const $7)) }
| instr_lhs EQOP ANDOP ID RARROW ID SEMICOLON
                                          { Assign ($1, Void,
                                                    Ref (Member (Var $4,
                                                                 Var $6)))}
| instr_lhs EQOP ID ADDOP ID SEMICOLON    { Add ($1, Var $3, Var $5) }
| instr_lhs EQOP ID ADDOP NUM SEMICOLON   { Add ($1, Var $3, Const $5) }
| instr_lhs EQOP ID ADDOP LBRACK nums RBRACK SEMICOLON
                                          { Add ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID SUBOP ID SEMICOLON    { Sub ($1, Var $3, Var $5) }
| instr_lhs EQOP ID SUBOP NUM SEMICOLON   { Sub ($1, Var $3, Const $5) }
| instr_lhs EQOP ID SUBOP LBRACK nums RBRACK SEMICOLON
                                          { Sub ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID WMULOP ID SEMICOLON   { Wmul ($1, Var $3, Var $5) }
| instr_lhs EQOP ID WMULOP NUM SEMICOLON  { Wmul ($1, Var $3, Const $5) }
| instr_lhs EQOP ID WMULOP LBRACK nums RBRACK SEMICOLON
                                          { Wmul ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID MULOP ID SEMICOLON    { Mul ($1, Var $3, Var $5) }
| instr_lhs EQOP ID MULOP NUM SEMICOLON   { Mul ($1, Var $3, Const $5) }
| instr_lhs EQOP ID MULOP LBRACK nums RBRACK SEMICOLON
                                          { Mul ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID ANDOP ID SEMICOLON    { And ($1, Var $3, Var $5) }
| instr_lhs EQOP ID ANDOP NUM SEMICOLON   { And ($1, Var $3, Const $5) }
| instr_lhs EQOP ID ANDOP LBRACK nums RBRACK SEMICOLON
                                          { And ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID OROP ID SEMICOLON     { Or ($1, Var $3, Var $5) }
| instr_lhs EQOP ID OROP NUM SEMICOLON    { Or ($1, Var $3, Const $5) }
| instr_lhs EQOP ID OROP LBRACK nums RBRACK SEMICOLON
                                          { Or ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID XOROP ID SEMICOLON    { Xor ($1, Var $3, Var $5) }
| instr_lhs EQOP ID XOROP NUM SEMICOLON   { Xor ($1, Var $3, Const $5) }
| instr_lhs EQOP ID XOROP LBRACK nums RBRACK SEMICOLON
                                          { Xor ($1, Var $3, Consts $6) }
| instr_lhs EQOP ID RSHIFT ID SEMICOLON   { Rshift ($1, Var $3, Var $5) }
| instr_lhs EQOP ID RSHIFT NUM SEMICOLON  { Rshift ($1, Var $3, Const $5) }
| instr_lhs EQOP ID LSHIFT ID SEMICOLON   { Lshift ($1, Var $3, Var $5) }
| instr_lhs EQOP ID LSHIFT NUM SEMICOLON  { Lshift ($1, Var $3, Const $5) }
| LANGLE BB NUM RANGLE LSQUARE LOCAL_COUNT COLON NUM RSQUARE COLON
                                          { Label $3 }
| instr_lhs EQOP ID QUESTION ID COLON ID SEMICOLON
                                          { Ite ($1,Var $3,Var $5,Var $7) }
| instr_lhs EQOP MULOP loc SEMICOLON      { Load ($1, Void, $4) }
| instr_lhs EQOP MEM LSQUARE loc RSQUARE SEMICOLON
                                          { Load ($1, Void, $5) }
| instr_lhs EQOP MEM LANGLE typ RANGLE LSQUARE loc RSQUARE SEMICOLON
                                          { Load ($1, $5, $8) }
| ID LPAREN args RPAREN SEMICOLON         { Call ($1, $3) }
| ID LPAREN args RPAREN SEMICOLON LSQUARE TAIL_CALL RSQUARE
                                          { Call ($1, $3) }
| MULOP loc EQOP ID SEMICOLON             { Store ($2, Void, Var $4) }
| MEM LSQUARE loc RSQUARE EQOP ID SEMICOLON
                                          { Store ($3, Void, Var $6) }
| MEM LANGLE typ RANGLE LSQUARE loc RSQUARE EQOP ID SEMICOLON
                                          { Store ($6, $3, Var $9) }
| MEM LANGLE typ RANGLE LSQUARE LPAREN CHAR_REF_ALL RPAREN ANDOP ID RSQUARE
  EQOP MEM LANGLE typ RANGLE LSQUARE LPAREN CHAR_REF_ALL RPAREN ID RSQUARE
  SEMICOLON                               { Copy ($3, Ref (Var $10),
                                                  $15, Var $21) }
| instr_lhs EQOP WMADDOP LANGLE ID COMMA ID COMMA ID RANGLE SEMICOLON
                                          { Wmadd ($1, Var $5, Var $7, Var $9) }
| instr_lhs EQOP WMADDOP LANGLE ID COMMA NUM COMMA ID RANGLE SEMICOLON
                                          { Wmadd ($1, Var $5, Const $7, Var $9) }
| instr_lhs EQOP WMSUBOP LANGLE ID COMMA ID COMMA ID RANGLE SEMICOLON
                                          { Wmsub ($1, Var $5, Var $7, Var $9) }
| instr_lhs EQOP WMSUBOP LANGLE ID COMMA NUM COMMA ID RANGLE SEMICOLON
                                          { Wmsub ($1, Var $5, Const $7, Var $9) }
| instr_lhs EQOP LSQUARE VEC_UNPACK_LO_EXPR RSQUARE ID SEMICOLON
                                          { VecUnpackLo ($1, Var $6) }
| instr_lhs EQOP LSQUARE VEC_UNPACK_HI_EXPR RSQUARE ID SEMICOLON
                                          { VecUnpackHi ($1, Var $6) }
| instr_lhs EQOP DEFERRED_INIT LPAREN NUM COMMA NUM COMMA
  ANDOP STRING LSQUARE NUM RSQUARE RPAREN SEMICOLON
                                          { DeferredInit ($1) }
| IF LPAREN condition RPAREN
  GOTO LANGLE BB NUM RANGLE SEMICOLON LSQUARE FLOAT PERCENT RSQUARE
  ELSE
  GOTO LANGLE BB NUM RANGLE SEMICOLON LSQUARE FLOAT PERCENT RSQUARE
                                          { CondBranch ($3, $8, $19) }
| GOTO LANGLE BB NUM RANGLE SEMICOLON LSQUARE FLOAT PERCENT RSQUARE
                                          { Goto $4 }
| RETURN SEMICOLON                        { Return }
;

nums:
  NUM                                     { [ $1 ] }
| NUM COMMA nums                          { $1::$3 }
;

args:
  ID                                      { [ Var $1 ] }
| ID COMMA args                           { Var $1::$3 }
| NUM                                     { [ Const $1 ] }
| NUM COMMA args                          { Const $1::$3 }
| ANDOP ID                                { [ Ref (Var $2) ] }
| ANDOP ID COMMA args                     { Ref (Var $2)::$4 }
;

loc:
  ID                                      { { lty = Void; lop = Var $1;
                                              loffset = Const 0 } }
| LPAREN typ RPAREN ID ADDOP BYTE         { { lty = $2; lop = Var $4;
                                              loffset = Const $6 } }
| LPAREN typ RPAREN ID                    { { lty = $2; lop = Var $4;
                                              loffset = Const 0 } }
| LPAREN typ RPAREN ANDOP ID              { { lty = $2; lop = Ref (Var $5);
                                              loffset = Const 0 } }
| LPAREN typ RPAREN ANDOP ID ADDOP BYTE   { { lty = $2; lop = Ref (Var $5);
                                              loffset = Const $7 } }
| LPAREN typ RPAREN ANDOP ID ADDOP ID MULOP NUM
      { { lty = $2; lop = Ref (Var $5);
          loffset = Mul (Var $7, Const (Z.to_int $9)) } }
| LPAREN typ RPAREN ANDOP ID ADDOP BYTE ADDOP ID MULOP NUM
      { { lty = $2; lop = Ref (Var $5);
          loffset = Add (Const $7, Mul (Var $9, Const (Z.to_int $11))) } }
| LPAREN typ RPAREN ID ADDOP ID MULOP NUM
      { { lty = $2; lop = Var $4;
          loffset = Mul (Var $6, Const (Z.to_int $8)) } }
;

condition:
  ID NEQOP NUM                            { Neq (Var $1, Const $3) }
| ID NEQOP ID                             { Neq (Var $1, Var $3) }
| ID RANGLE NUM                           { Gt (Var $1, Const $3) }
| ID RANGLE ID                            { Gt (Var $1, Var $3) }
| ID LEOP ID                              { Le (Var $1, Var $3) }
| ID LEOP NUM                             { Le (Var $1, Const $3) }
;

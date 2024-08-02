%{

(*
 * Use raise_at_line or raise_at to raise an exception if the error location
 * can be determined. Raise ParseError otherwise.
 *)

  open Syntax

%}

%token <string> COMMENT
%token <Z.t> NUM
%token <string> ID STRING
%token <int> UINT SINT BYTE

%token LPAREN RPAREN LSQUARE RSQUARE LBRACK RBRACK LANGLE RANGLE
%token COMMA SEMICOLON COLON DQUOTE
/* Operators */
%token ADDOP SUBOP MULOP WMULOP ANDOP OROP XOROP LSHIFT RSHIFT EQOP
%token WMADDOP WMSUBOP QUESTION
/* Types */
%token CONST VOID BOOL CHAR INT SIGNED UNSIGNED LONG VECTOR
/* Others */
%token ATTRIBUTE ACCESS MEM EOF RETURN LOCAL COUNT BB
%token REMOVING_BASIC_BLOCK CHAR_REF_ALL

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
  attribute typ ID LPAREN parameters RPAREN LBRACK vars instrs RBRACK
    { { attr = $1; fty = $2; fname = $3; params = $5; vars = $8; instrs = $9 } }
| typ ID LPAREN parameters RPAREN LBRACK vars instrs RBRACK
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

vars:
  var vars                                { $1::$2 }
|                                         { [] }
;

var:
  typ ID SEMICOLON                        { { vty = $1; vname = $2 } }
| typ ID LSQUARE NUM RSQUARE SEMICOLON    { { vty = Array ($4, $1);
                                              vname = $2 } }
;


ground_typ:
| VOID                                    { Void }
| BOOL                                    { Bool }
| UNSIGNED CHAR                           { Uchar }
| SIGNED CHAR                             { Char }
| INT                                     { Int }
| UNSIGNED INT                            { Uint }
| SIGNED INT                              { Int }
| LONG LONG UNSIGNED INT                  { Ullong }
| LONG LONG INT                           { Llong }
| UNSIGNED LONG                           { Ulong }
| UINT                                    { Uword $1 }
| SINT                                    { Sword $1 }
| SINT UNSIGNED                           { Uword $1 }
| VECTOR LPAREN NUM RPAREN ground_typ     { Vector ($3, $5) }
| CONST ground_typ                        { Const $2 }
;

typ:
  ground_typ                              { $1 }
| typ MULOP                               { Pointer $1 }
| typ LSQUARE NUM RSQUARE                 { Array ($3, $1) }
;

instrs:
  instr instrs                            { $1::$2 }
|                                         { [] }
;

instr:
| ID EQOP LPAREN typ RPAREN ID SEMICOLON  { Assign (Var $1, $4, Var $6) }
| ID EQOP LBRACK args RBRACK SEMICOLON     { Vassign (Var $1, $4) }
| ID EQOP ID LSQUARE NUM RSQUARE SEMICOLON{ Assign (Var $1, Void,
                                                    Access ($3, $5)) }
| ID LSQUARE NUM RSQUARE EQOP ID SEMICOLON{ Assign (Access ($1, $3), Void,
                                                    Var $6) }
| ID EQOP ID ADDOP ID SEMICOLON           { Add (Var $1, Var $3, Var $5) }
| ID EQOP ID ADDOP NUM SEMICOLON          { Add (Var $1, Var $3, Const $5) }
| ID EQOP ID SUBOP ID SEMICOLON           { Sub (Var $1, Var $3, Var $5) }
| ID EQOP ID SUBOP NUM SEMICOLON          { Sub (Var $1, Var $3, Const $5) }
| ID EQOP ID WMULOP ID SEMICOLON          { Wmul (Var $1, Var $3, Var $5) }
| ID EQOP ID WMULOP NUM SEMICOLON         { Wmul (Var $1, Var $3, Const $5) }
| ID EQOP ID MULOP ID SEMICOLON           { Mul (Var $1, Var $3, Var $5) }
| ID EQOP ID MULOP NUM SEMICOLON          { Mul (Var $1, Var $3, Const $5) }
| ID EQOP ID ANDOP ID SEMICOLON           { And (Var $1, Var $3, Var $5) }
| ID EQOP ID ANDOP NUM SEMICOLON          { And (Var $1, Var $3, Const $5) }
| ID EQOP ID OROP ID SEMICOLON            { Or (Var $1, Var $3, Var $5) }
| ID EQOP ID OROP NUM SEMICOLON           { Or (Var $1, Var $3, Const $5) }
| ID EQOP ID XOROP ID SEMICOLON           { Xor (Var $1, Var $3, Var $5) }
| ID EQOP ID XOROP NUM SEMICOLON          { Xor (Var $1, Var $3, Const $5) }
| ID EQOP ID RSHIFT ID SEMICOLON          { Rshift (Var $1, Var $3, Var $5) }
| ID EQOP ID RSHIFT NUM SEMICOLON         { Rshift (Var $1, Var $3, Const $5) }
| ID EQOP ID LSHIFT ID SEMICOLON          { Lshift (Var $1, Var $3, Var $5) }
| ID EQOP ID LSHIFT NUM SEMICOLON         { Lshift (Var $1, Var $3, Const $5) }
| LANGLE BB NUM RANGLE LSQUARE LOCAL COUNT COLON NUM RSQUARE COLON
                                          { Label $3 }
| ID EQOP ID QUESTION ID COLON ID SEMICOLON
                                          { Ite (Var $1,Var $3,Var $5,Var $7) }
| ID EQOP MULOP loc SEMICOLON             { Load (Var $1, Void, $4) }
| ID EQOP MEM LSQUARE loc RSQUARE SEMICOLON
                                          { Load (Var $1, Void, $5) }
| ID EQOP MEM LANGLE typ RANGLE LSQUARE loc RSQUARE SEMICOLON
                                          { Load (Var $1, $5, $8) }
| ID LPAREN args RPAREN SEMICOLON         { Call ($1, $3) }
| MULOP loc EQOP ID SEMICOLON             { Store ($2, Void, Var $4) }
| MEM LSQUARE loc RSQUARE EQOP ID SEMICOLON
                                          { Store ($3, Void, Var $6) }
| MEM LANGLE typ RANGLE LSQUARE loc RSQUARE EQOP ID SEMICOLON
                                          { Store ($6, $3, Var $9) }
| MEM LANGLE typ RANGLE LSQUARE LPAREN CHAR_REF_ALL RPAREN ANDOP ID RSQUARE
  EQOP MEM LANGLE typ RANGLE LSQUARE LPAREN CHAR_REF_ALL RPAREN ID RSQUARE
  SEMICOLON                               { Copy ($3, Ref $10, $15, Var $21) }
| ID EQOP WMADDOP LANGLE ID COMMA ID COMMA ID RANGLE SEMICOLON
                                          { Wmadd (Var $1, Var $5, Var $7, Var $9) }
| ID EQOP WMADDOP LANGLE ID COMMA NUM COMMA ID RANGLE SEMICOLON
                                          { Wmadd (Var $1, Var $5, Const $7, Var $9) }
| ID EQOP WMSUBOP LANGLE ID COMMA ID COMMA ID RANGLE SEMICOLON
                                          { Wmsub (Var $1, Var $5, Var $7, Var $9) }
| ID EQOP WMSUBOP LANGLE ID COMMA NUM COMMA ID RANGLE SEMICOLON
                                          { Wmsub (Var $1, Var $5, Const $7, Var $9) }
| RETURN SEMICOLON                        { Return }
;

args:
  ID                                      { [ Var $1 ] }
| ID COMMA args                           { Var $1::$3 }
| ANDOP ID                                { [ Ref $2 ] }
| ANDOP ID COMMA args                     { Ref $2::$4 }
;

loc:
  ID                                      { { lty = Void; lop = Var $1;
                                              loffset = 0 } }
| LPAREN typ RPAREN ID ADDOP BYTE         { { lty = $2; lop = Var $4;
                                              loffset = $6 } }
| LPAREN typ RPAREN ID                    { { lty = $2; lop = Var $4;
                                              loffset = 0 } }
| LPAREN typ RPAREN ANDOP ID              { { lty = $2; lop = Ref $5;
                                              loffset = 0 } }
| LPAREN typ RPAREN ANDOP ID ADDOP BYTE   { { lty = $2; lop = Ref $5;
                                              loffset = $7 } }
;

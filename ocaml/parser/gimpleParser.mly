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
%token WMADDOP
/* Types */
%token CONST VOID CHAR INT UNSIGNED LONG VECTOR
/* Others */
%token ATTRIBUTE ACCESS MEM EOF RETURN LOCAL COUNT BB

%start gimple
%type <Syntax.function_t list> gimple

%%

gimple:
  funcs EOF                                       { $1 }
;

funcs:
  func funcs                                      { $1::$2 }
|                                                 { [] }
;

func:
  attribute typ ID LPAREN parameters RPAREN LBRACK vars instrs RBRACK
    { { attr = $1; fty = $2; fname = $3; params = $5; vars = $8; instrs = $9 } }
;

attribute:
  ATTRIBUTE LPAREN LPAREN ACCESS LPAREN access_pat RPAREN RPAREN RPAREN
                                                  { $6 }
;

direct_typ:
  VOID                                            { Void }
| SINT                                            { Sint $1 }
| UINT                                            { Uint $1 }
| UNSIGNED SINT                                   { Uint $2 }
| CONST direct_typ                                { Const $2 }
;

typ:
| direct_typ                                      { $1 }
| typ MULOP                                       { Pointer $1 }
;

access_pat:
  STRING COMMA access_pat                         { $1::$3 }
|                                                 { [] }
;

parameters:
  parameter COMMA parameters                      { $1::$3 }
| parameter                                       { [$1] }
|                                                 { [] }
;

parameter:
  typ ID                                          { { pty = $1; pname = $2 } }
;

vars:
  var vars                                        { $1::$2 }
|                                                 { [] }
;

var:
  vtyp ID SEMICOLON                               { { vty = $1; vname = $2 } }
;

vtyp:
| UNSIGNED CHAR                                   { Uchar }
| INT                                             { Int }
| LONG LONG UNSIGNED INT                          { Ullong }
| LONG LONG INT                                   { Llong }
| UNSIGNED LONG                                   { Ulong }
| UINT                                            { Uint $1 }
| SINT                                            { Sint $1 }
| SINT UNSIGNED                                   { Uint $1 }
| VECTOR LPAREN NUM RPAREN vtyp                   { Vector ($3, $5) }
;

instrs:
  instr instrs                                    { $1::$2 }
|                                                 { [] }
;

instr:
| ID EQOP LPAREN vtyp RPAREN ID SEMICOLON         { Assign ($1, $4, Var $6) }
| ID EQOP LBRACK ids RBRACK SEMICOLON             { Vassign ($1, $4) }
| ID EQOP ID ADDOP ID SEMICOLON                   { Add ($1, $3, Var $5) }
| ID EQOP ID ADDOP NUM SEMICOLON                  { Add ($1, $3, Const $5) }
| ID EQOP ID SUBOP ID SEMICOLON                   { Sub ($1, $3, Var $5) }
| ID EQOP ID SUBOP NUM SEMICOLON                  { Sub ($1, $3, Const $5) }
| ID EQOP ID WMULOP ID SEMICOLON                  { Wmul ($1, $3, Var $5) }
| ID EQOP ID WMULOP NUM SEMICOLON                 { Wmul ($1, $3, Const $5) }
| ID EQOP ID MULOP ID SEMICOLON                   { Mul ($1, $3, Var $5) }
| ID EQOP ID MULOP NUM SEMICOLON                  { Mul ($1, $3, Const $5) }
| ID EQOP ID ANDOP ID SEMICOLON                   { And ($1, $3, Var $5) }
| ID EQOP ID ANDOP NUM SEMICOLON                  { And ($1, $3, Const $5) }
| ID EQOP ID OROP ID SEMICOLON                    { Or ($1, $3, Var $5) }
| ID EQOP ID OROP NUM SEMICOLON                   { Or ($1, $3, Const $5) }
| ID EQOP ID RSHIFT ID SEMICOLON                  { Rshift ($1, $3, Var $5) }
| ID EQOP ID RSHIFT NUM SEMICOLON                 { Rshift ($1, $3, Const $5) }
| ID EQOP ID LSHIFT ID SEMICOLON                  { Lshift ($1, $3, Var $5) }
| ID EQOP ID LSHIFT NUM SEMICOLON                 { Lshift ($1, $3, Const $5) }
| LANGLE BB NUM RANGLE LSQUARE LOCAL COUNT COLON NUM RSQUARE COLON  { Label $3 }
| ID EQOP MULOP loc SEMICOLON                     { Load ($1, $4) }
| ID EQOP MEM LSQUARE loc RSQUARE SEMICOLON       { Load ($1, $5) }
| MULOP loc EQOP ID SEMICOLON                     { Store ($2, $4) }
| MEM LSQUARE loc RSQUARE EQOP ID SEMICOLON       { Store ($3, $6) }
| MEM LANGLE vtyp RANGLE LSQUARE loc RSQUARE EQOP ID SEMICOLON
                                                  { Vstore ($3, $6, $9) }
| ID EQOP WMADDOP LANGLE ID COMMA ID COMMA ID RANGLE SEMICOLON
                                                  { Wmadd ($1, $5, $7, $9) }
| RETURN SEMICOLON                                { Return }
;

ids:
  ID COMMA ids                                    { $1::$3 }
| ID                                              { [$1] }
;

loc:
  ID                                              { { lvar = { vname = $1; vty = Void };
                                                      loffset = 0 } }
| LPAREN typ RPAREN ID ADDOP BYTE                 { { lvar = { vname = $4; vty = $2 };
                                                      loffset = $6 } }
| LPAREN typ RPAREN ID                            { { lvar = { vname = $4; vty = $2 };
                                                      loffset = 0 } }
;

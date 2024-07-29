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

%token LPAREN RPAREN LSQUARE RSQUARE LBRACK RBRACK COMMA SEMICOLON COLON DQUOTE
/* Operators */
%token ADDOP SUBOP MULOP WMULOP ANDOP OROP XOROP LSHIFT RSHIFT EQOP LESS GREATER
/* Types */
%token CONST VOID INT UNSIGNED LONG
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
| INT                                             { Int }
| LONG LONG UNSIGNED INT                          { Ullong }
| UNSIGNED LONG                                   { Ulong }
| UINT                                            { Uint $1 }
| SINT                                            { Sint $1 }
| SINT UNSIGNED                                   { Uint $1 }
;

instrs:
  instr instrs                                    { $1::$2 }
|                                                 { [] }
;

instr:
| ID EQOP LPAREN vtyp RPAREN ID SEMICOLON         { Assign ($1, $4, Var $6) }
| ID EQOP ID ADDOP ID SEMICOLON                   { Add ($1, $3, Var $5) }
| ID EQOP ID ADDOP NUM SEMICOLON                  { Add ($1, $3, Const $5) }
| ID EQOP ID WMULOP ID SEMICOLON                  { Wmul ($1, $3, Var $5) }
| ID EQOP ID WMULOP NUM SEMICOLON                 { Wmul ($1, $3, Const $5) }
| ID EQOP ID MULOP ID SEMICOLON                   { Mul ($1, $3, Var $5) }
| ID EQOP ID MULOP NUM SEMICOLON                  { Mul ($1, $3, Const $5) }
| ID EQOP ID ANDOP ID SEMICOLON                   { And ($1, $3, Var $5) }
| ID EQOP ID ANDOP NUM SEMICOLON                  { And ($1, $3, Const $5) }
| ID EQOP ID RSHIFT ID SEMICOLON                  { Rshift ($1, $3, Var $5) }
| ID EQOP ID RSHIFT NUM SEMICOLON                 { Rshift ($1, $3, Const $5) }
| ID EQOP ID LSHIFT ID SEMICOLON                  { Lshift ($1, $3, Var $5) }
| ID EQOP ID LSHIFT NUM SEMICOLON                 { Lshift ($1, $3, Const $5) }
| LESS BB NUM GREATER LSQUARE LOCAL COUNT COLON NUM RSQUARE COLON  { Label $3 }
| ID EQOP MULOP ID SEMICOLON                      { Load ($1, {vty = Void; vname = $4},
							  0) }
| ID EQOP MEM LSQUARE LPAREN typ RPAREN ID ADDOP BYTE RSQUARE SEMICOLON
                                   { Load ($1, { vty = $6; vname = $8 }, $10) }
| MULOP ID EQOP ID SEMICOLON                      { Store ($4, {vty = Void; vname = $2},
                                                           0) }
| MEM LSQUARE LPAREN typ RPAREN ID ADDOP BYTE RSQUARE EQOP ID SEMICOLON
                                   { Store ($11, { vty = $4; vname = $6 }, $8) }
| RETURN SEMICOLON                                { Return }
;

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
%token COMMA SEMICOLON COLON DQUOTE DOT
/* Operators */
%token ADDOP SUBOP MULOP WMULOP ANDOP OROP XOROP LSHIFT RSHIFT EQOP NEQOP
%token LEOP GEOP EEQOP DIVOP NOTOP LROTATE RROTATE
%token WMADDOP WMSUBOP QUESTION RARROW DEFERRED_INIT VCOND_MASK
%token VEC_UNPACK_LO_EXPR VEC_UNPACK_HI_EXPR VIEW_CONVERT_EXPR
%token STORE_LANES VEC_PERM_EXPR BIT_FIELD_REF VEC_PACK_TRUNC_EXPR

/* Types */
%token CONST VOID BOOL CHAR INT SHORT LONG SIGNED UNSIGNED VECTOR STRUCT
%token BOOLS UBOOLS STATIC
/* Others */
%token ATTRIBUTE ACCESS MEM EOF RETURN BB IF ELSE GOTO
%token REMOVING_BASIC_BLOCK CHAR_REF_ALL PERCENT LOCAL_COUNT
%token CLOBBER_EOS CLOBBER_EOL CLOBBER TAIL_CALL

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
| typ ID LSQUARE NUM RSQUARE LSQUARE NUM RSQUARE SEMICOLON
                                          { { vty = Array ($7, Array ($4, $1));
                                              vname = $2 } }
| STATIC typ ID LSQUARE NUM RSQUARE EQOP STRING SEMICOLON
                                          { { vty = Array ($5, $2);
                                              vname = $3 } }
;

ground_typ:
| CHAR_REF_ALL                            { CharRefAll }
| VOID                                    { Void }
| BOOL                                    { Bool }
| CHAR                                    { Char }
| UNSIGNED CHAR                           { Uchar }
| SIGNED CHAR                             { Char }
| UNSIGNED SHORT                          { Ushort }
| SHORT UNSIGNED INT                      { Ushort }
| SIGNED SHORT                            { Short }
| SHORT INT                               { Short }
| UNSIGNED INT                            { Uint }
| INT                                     { Int }
| SIGNED INT                              { Int }
| UNSIGNED LONG                           { Ulong }
| LONG INT                                { Long }
| LONG LONG UNSIGNED INT                  { Ullong }
| LONG UNSIGNED INT                       { Ulong }
| LONG LONG INT                           { Llong }
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
| STRUCT MULOP                            { Pointer (Struct "") }
| typ MULOP                               { Pointer $1 }
| typ LSQUARE NUM RSQUARE                 { Array ($3, $1) }
| typ LSQUARE NUM COLON ID RSQUARE        { Array (Z.zero, $1) }
;

body:
| LANGLE BB NUM RANGLE LSQUARE LOCAL_COUNT COLON NUM RSQUARE COLON instrs
                                          { Label (BB $3)::$11 }
;

instrs:
| instr instrs                            { $1::$2 }
|                                         { [] }
;

ground_op:
| ID                                      { Var $1 : operand_t }
| NUM                                     { Const $1 }
| BYTE                                    { Const (Z.of_int $1) }
| STRING                                  { String $1 }
| MEM LSQUARE loc RSQUARE                 { Mem (Void, $3) }
| MEM LANGLE typ RANGLE LSQUARE loc RSQUARE
                                          { Mem ($3, $6) }
| ground_op ID                            { let field = String.sub $2 1
                                                          (pred (String.length $2))
                                            in Member ($1, Var field) }
;

composite_op_prefix:
| ground_op                               { $1 }
| SUBOP ground_op                         { Neg $2 }
| ANDOP ground_op                         { Ref $2 }
| MULOP ground_op                         { Deref $2 }
| LPAREN MULOP ground_op RPAREN           { Ref $3 }
;

composite_op:
| composite_op_prefix                     { $1 }
| composite_op LSQUARE ground_op RSQUARE  { Element ($1, $3) }
| composite_op RARROW ID                  { Member ($1, Var $3) }
;

op:
| composite_op                            { $1 }
| LBRACK ops RBRACK                       { Ops $2 }
;

ops:
| op COMMA ops                            { $1::$3 }
| op                                      { [$1] }
|                                         { [] }
;

instr:
| op EQOP LBRACK ops RBRACK LBRACK CLOBBER_EOS RBRACK SEMICOLON
                                          { Nop }
| op EQOP LBRACK ops RBRACK LBRACK CLOBBER_EOL RBRACK SEMICOLON
                                          { Nop }
| op EQOP LBRACK ops RBRACK LBRACK CLOBBER RBRACK SEMICOLON
                                          { Nop }
| ID COLON                                { Label (Name $1) }
| LANGLE BB NUM RANGLE LSQUARE LOCAL_COUNT COLON NUM RSQUARE COLON
                                          { Label (BB $3) }
| LANGLE BB NUM RANGLE LSQUARE ID COLON NUM RSQUARE COLON
                                          { Label (BB $3) }
| op EQOP LPAREN typ RPAREN op SEMICOLON
                                          { Assign ($1, $4, $6) }
| op EQOP op SEMICOLON                    { Assign ($1, Void, $3) }
| op EQOP op ADDOP op SEMICOLON           { Add ($1, $3, $5) }
| op EQOP op SUBOP op SEMICOLON           { Sub ($1, $3, $5) }
| op EQOP op WMULOP op SEMICOLON          { Wmul ($1, $3, $5) }
| op EQOP op MULOP op SEMICOLON           { Mul ($1, $3, $5) }
| op EQOP op DIVOP op SEMICOLON           { Div ($1, $3, $5) }
| op EQOP op RANGLE op SEMICOLON          { Gt ($1, $3, $5) }
| op EQOP op GEOP op SEMICOLON            { Ge ($1, $3, $5) }
| op EQOP op LANGLE op SEMICOLON          { Lt ($1, $3, $5) }
| op EQOP op LEOP op SEMICOLON            { Le ($1, $3, $5) }
| op EQOP op ANDOP op SEMICOLON           { And ($1, $3, $5) }
| op EQOP op OROP op SEMICOLON            { Or ($1, $3, $5) }
| op EQOP op XOROP op SEMICOLON           { Xor ($1, $3, $5) }
| op EQOP NOTOP op SEMICOLON              { Not ($1, $4) }
| op EQOP op EEQOP op SEMICOLON           { Eq ($1, $3, $5) }
| op EQOP op NEQOP op SEMICOLON           { Neq ($1, $3, $5) }
| op EQOP op LSHIFT op SEMICOLON          { Lshift ($1, $3, $5) }
| op EQOP op RSHIFT op SEMICOLON          { Rshift ($1, $3, $5) }
| op EQOP op LROTATE op SEMICOLON          { Lrotate ($1, $3, $5) }
| op EQOP op RROTATE op SEMICOLON          { Rrotate ($1, $3, $5) }
| op EQOP op QUESTION op COLON op SEMICOLON
                                          { Ite ($1, $3, $5, $7) }
| ID LPAREN ops RPAREN SEMICOLON          { Call (None, $1, $3) }
| ID LPAREN ops RPAREN SEMICOLON LSQUARE TAIL_CALL RSQUARE
                                          { Call (None, $1, $3) }
| op EQOP ID LPAREN ops RPAREN SEMICOLON  { Call (Some $1, $3, $5) }
| op EQOP ID LPAREN ops RPAREN SEMICOLON LSQUARE TAIL_CALL RSQUARE
                                          { Call (Some $1, $3, $5) }
| op EQOP WMADDOP LANGLE op COMMA op COMMA op RANGLE SEMICOLON
                                          { Wmadd ($1, $5, $7, $9) }
| op EQOP WMSUBOP LANGLE op COMMA op COMMA op RANGLE SEMICOLON
                                          { Wmsub ($1, $5, $7, $9) }
| op EQOP LSQUARE VEC_UNPACK_LO_EXPR RSQUARE op SEMICOLON
                                          { VecUnpackLo ($1, $6) }
| op EQOP LSQUARE VEC_UNPACK_HI_EXPR RSQUARE op SEMICOLON
                                          { VecUnpackHi ($1, $6) }
| op EQOP DEFERRED_INIT LPAREN op COMMA NUM COMMA
  ANDOP STRING LSQUARE NUM RSQUARE RPAREN SEMICOLON
                                          { DeferredInit ($1) }
| op EQOP BIT_FIELD_REF LANGLE op COMMA op COMMA op RANGLE SEMICOLON
                                          { BitFieldRef ($1, $5, $7, $9) }
| op EQOP VCOND_MASK LPAREN op COMMA op COMMA op RPAREN SEMICOLON
                                          { VCondMask ($1, $5, $7, $9) }
| op EQOP VIEW_CONVERT_EXPR LANGLE typ RANGLE LPAREN op RPAREN SEMICOLON
                                          { ViewConvertExpr ($1, $5, $8) }
| op EQOP VEC_PERM_EXPR LANGLE op COMMA op COMMA op RANGLE SEMICOLON
                                          { VecPermExpr ($1, $5, $7, $9) }
| op EQOP VEC_PACK_TRUNC_EXPR LANGLE op COMMA op RANGLE SEMICOLON
                                          { VecPackTruncExpr ($1, $5, $7) }
| op EQOP STORE_LANES LPAREN op RPAREN SEMICOLON
                                          { StoreLanes ($1, $5) }
| IF LPAREN condition RPAREN
  GOTO LANGLE BB NUM RANGLE SEMICOLON LSQUARE FLOAT PERCENT RSQUARE
  ELSE
  GOTO LANGLE BB NUM RANGLE SEMICOLON LSQUARE FLOAT PERCENT RSQUARE
                                          { CondBranch ($3, BB $8, BB $19) }
| GOTO LANGLE BB NUM RANGLE SEMICOLON LSQUARE FLOAT PERCENT RSQUARE
                                          { Goto (BB $4) }
| RETURN op SEMICOLON                     { Return (Some $2) }
| RETURN SEMICOLON                        { Return None }
;

loc:
  op                                      { { lty = Void; lop = $1;
                                              loffset = Const 0 } }
| LPAREN typ RPAREN op                    { { lty = $2; lop = $4;
                                              loffset = Const 0 } }
| LPAREN typ RPAREN op ADDOP BYTE         { { lty = $2; lop = $4;
                                              loffset = Const $6 } }
| LPAREN typ RPAREN op ADDOP ID MULOP NUM { { lty = $2; lop = $4;
                                              loffset =
                                                Mul (Var $6, Const (Z.to_int $8)) } }
| LPAREN typ RPAREN op ADDOP BYTE ADDOP ID MULOP NUM
                                          { { lty = $2; lop = $4;
                                              loffset =
                                                Add (Const $6,
                                                     Mul (Var $8,
                                                          Const (Z.to_int $10))) } }
;

(*
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
*)

condition:
| op EEQOP op                             { Eq ($1, $3) }
| op NEQOP op                             { Neq ($1, $3) }
| op RANGLE op                            { Gt ($1, $3) }
| op GEOP op                              { Ge ($1, $3) }
| op LANGLE op                            { Lt ($1, $3) }
| op LEOP op                              { Le ($1, $3) }
;

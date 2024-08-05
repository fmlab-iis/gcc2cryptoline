
type access_t = string

type attribute_t = access_t list

type type_t = Void | Bool | Char | Uchar | Int | Uint
              | Long | Ulong | Llong | Ullong
              | Sword of int | Uword of int
              | Const of type_t | Pointer of type_t
              | Vector of Z.t * type_t | Array of Z.t * type_t

type param_t = { pty : type_t; pname : string }

type var_t = { vty : type_t; vname : string }

type operand_t = Var of string | Const of Z.t | Consts of Z.t list
                 | Access of string * operand_t | Ref of string

type loc_t = { lty : type_t; lop : operand_t; loffset : int }

type cond_t = Neq of operand_t * operand_t

type label_t = Z.t

type instr_t = Nop
             | Label of label_t
             | Assign of operand_t * type_t * operand_t
             | Vassign of operand_t * operand_t list
             | Add of operand_t * operand_t * operand_t
             | Sub of operand_t * operand_t * operand_t
             | Mul of operand_t * operand_t * operand_t
             | Wmul of operand_t * operand_t * operand_t
             | And of operand_t * operand_t * operand_t
             | Or of operand_t * operand_t * operand_t
             | Xor of operand_t * operand_t * operand_t
             | Rshift of operand_t * operand_t * operand_t
             | Lshift of operand_t * operand_t * operand_t
             | Load of operand_t * type_t * loc_t
             | Store of loc_t * type_t * operand_t
             | Copy of type_t * operand_t * type_t * operand_t
             | Ite of operand_t * operand_t * operand_t * operand_t
             | Call of string * operand_t list
             | CondBranch of cond_t * label_t * label_t
             | Goto of label_t
             | Return
             | Wmadd of operand_t * operand_t * operand_t * operand_t
             | Wmsub of operand_t * operand_t * operand_t * operand_t

type function_t = { attr : attribute_t; fty : type_t; fname : string;
                    params : param_t list; vars : var_t list; instrs : instr_t list }


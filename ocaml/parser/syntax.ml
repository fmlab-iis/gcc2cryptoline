
type access_t = string

type attribute_t = access_t list

type type_t = Void | Char | Uchar | Int | Long | Ulong | Llong | Ullong
              | Sint of int | Uint of int 
              | Const of type_t | Pointer of type_t
              | Vector of Z.t * type_t

type param_t = { pty : type_t; pname : string }

type var_t = { vty : type_t; vname : string }

type operand_t = Var of string | Const of Z.t

type id_t = string

type loc_t = { lvar : var_t; loffset : int }

type instr_t = Label of Z.t
             | Assign of id_t * type_t * operand_t
             | Vassign of id_t * id_t list
             | Add of id_t * id_t * operand_t
             | Sub of id_t * id_t * operand_t
             | Mul of id_t * id_t * operand_t
             | Wmul of id_t * id_t * operand_t
             | And of id_t * id_t * operand_t
             | Or of id_t * id_t * operand_t
             | Rshift of id_t * id_t * operand_t
             | Lshift of id_t * id_t * operand_t
             | Load of id_t * loc_t
             | Store of loc_t * id_t
             | Vstore of type_t * loc_t * id_t
             | Return
             | Wmadd of id_t * id_t * id_t * id_t

type function_t = { attr : attribute_t; fty : type_t; fname : string;
                    params : param_t list; vars : var_t list; instrs : instr_t list }


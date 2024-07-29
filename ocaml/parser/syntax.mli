
type access_t = string

type attribute_t = access_t list

type type_t = Void | Int | Long | Ulong | Llong | Ullong
              | Sint of int | Uint of int
              | Const of type_t | Pointer of type_t

type param_t = { pty : type_t; pname : string }

type var_t = { vty : type_t; vname : string }

type operand_t = Var of string | Const of Z.t

type instr_t = Label of Z.t
             | Assign of string * type_t * operand_t
             | Add of string * string * operand_t
             | Sub of string * string * operand_t
             | Mul of string * string * operand_t
             | Wmul of string * string * operand_t
             | And of string * string * operand_t
             | Rshift of string * string * operand_t
             | Lshift of string * string * operand_t
             | Load of string * var_t * int
             | Store of string * var_t * int
             | Return

type function_t = { attr : attribute_t; fty : type_t; fname : string;
                    params : param_t list; vars : var_t list; instrs : instr_t list }

                                                  

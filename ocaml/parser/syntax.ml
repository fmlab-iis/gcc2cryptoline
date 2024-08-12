
(* the string appears in access (_) *)
type access_t = string

(* the strings appears in __attribute__((access (_, ))) *)
type attribute_t = access_t list

(* types *)
(* short, int, long may depend on the architecture during compilation *)
(* word specifies bit width *)
(* Vector (n, t) denotes the vector type t of size n *)
(* Array (n, t) denotes the array type t of size n *)
type type_t = Void | Bool | Char | Uchar | Short | Ushort | Int | Uint
              | Long | Ulong | Llong | Ullong | CharRefAll
              | Sword of int | Uword of int | Bools of int | Ubools of int
              | Const of type_t | Pointer of type_t | Struct of string
              | Vector of Z.t * type_t | Array of Z.t * type_t
              | Typedef of string

(* function call parameters *)
type param_t = { pty : type_t; pname : string }

(* variable *)
type var_t = { vty : type_t; vname : string }

(* offsets for memory location *)
type offset_t = Const of int | Var of string
                | Add of offset_t * offset_t | Mul of offset_t * offset_t

(* a memory location starts at `lop` with offset `loffset` *)
type loc_t = { lty : type_t; lop : operand_t; loffset : offset_t }

(* operands *)
(* Element (op0, op1) denotes the `op1`-th element in the array `op0` *)
(* Member (op0, op1) denotes the field `op1` in `op0` *)
(* Mem (t, loc) denotes a memory location at `loc` of type `t` *)
and  operand_t = Var of string | Const of Z.t | String of string
                 | Neg of operand_t | Ref of operand_t | Deref of operand_t
                 | Element of operand_t * operand_t
                 | Member of operand_t * operand_t
                 | Mem of type_t * loc_t
                 | Ops of operand_t list

(* conditions *)
type cond_t = | Eq of operand_t * operand_t | Neq of operand_t * operand_t
              | Gt of operand_t * operand_t | Ge of operand_t * operand_t
              | Lt of operand_t * operand_t | Le of operand_t * operand_t

(* labels in <bb NUM> [local count: ...] *)
type label_t = Z.t

(* instructions *)
(* Wmul is the wide multiplication *)
(* the semantics of intrinsics is unclear *)
type instr_t = Nop | Err
             | Label of label_t
             | Assign of operand_t * type_t * operand_t
             | Add of operand_t * operand_t * operand_t
             | Sub of operand_t * operand_t * operand_t
             | Mul of operand_t * operand_t * operand_t
             | Div of operand_t * operand_t * operand_t
             | Wmul of operand_t * operand_t * operand_t
             | Gt of operand_t * operand_t * operand_t
             | Ge of operand_t * operand_t * operand_t
             | Lt of operand_t * operand_t * operand_t
             | Le of operand_t * operand_t * operand_t
             | And of operand_t * operand_t * operand_t
             | Or of operand_t * operand_t * operand_t
             | Xor of operand_t * operand_t * operand_t
             | Not of operand_t * operand_t
             | Eq of operand_t * operand_t * operand_t
             | Neq of operand_t * operand_t * operand_t
             | Lshift of operand_t * operand_t * operand_t
             | Rshift of operand_t * operand_t * operand_t
             | Lrotate of operand_t * operand_t * operand_t
             | Rrotate of operand_t * operand_t * operand_t
             | Load of type_t * operand_t * operand_t
             | Store of type_t * operand_t * operand_t
             | Copy of operand_t * operand_t
             | Ite of operand_t * operand_t * operand_t * operand_t
             | Call of operand_t option * string * operand_t list
             | CondBranch of cond_t * label_t * label_t
             | Goto of label_t
             | Return of operand_t option
             (* instrinsics *)
             | Wmadd of operand_t * operand_t * operand_t * operand_t
             | Wmsub of operand_t * operand_t * operand_t * operand_t
             | VecUnpackLo of operand_t * operand_t
             | VecUnpackHi of operand_t * operand_t
             | DeferredInit of operand_t
             | BitFieldRef of operand_t * operand_t * operand_t * operand_t
             | VCondMask of operand_t * operand_t *operand_t * operand_t
             | ViewConvertExpr of operand_t * type_t * operand_t
             | VecPermExpr of operand_t * operand_t * operand_t * operand_t
             | VecPackTruncExpr of operand_t * operand_t * operand_t
             | StoreLanes of operand_t * operand_t

(* function definitions *)
type function_t = { attr : attribute_t; fty : type_t; fname : string;
                    params : param_t list; vars : var_t list; instrs : instr_t list }


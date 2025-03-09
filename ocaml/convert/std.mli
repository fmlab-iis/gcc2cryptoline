open Gimple
open Ast.Cryptoline

type data_model_t =
  | LP32
  | ILP32
  | LP64
  | LLP64
  | ILP64
  | SILP64
(* Reference: https://github.com/cpredef/predef/blob/master/DataModels.md *)

(** Mempry Model *)

type var_kind =
  {
    mutable gbase: GimpleAst.var_t;
    mutable goffset : int;
    mutable gsize : int;         (* the maximal offset *)
    mutable is_pointer : bool;   (* true -> is a pointer *)
  }

type addr_t = { base : string;
                offset : int }
type cell_t =
  | MemVal of var_kind
  | MemAddr of addr_t

(** Conversion *)

val convert : GimpleAst.function_t list -> (spec list) SM.t

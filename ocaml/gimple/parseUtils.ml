
open Parser
open Ast

let rec from_type ty =
  match ty with
  | Syntax.Void -> Void | Syntax.Bool -> Bool
  | Syntax.Char -> Char | Syntax.Uchar -> Uchar
  | Syntax.Short -> Short| Syntax.Ushort -> Ushort
  | Syntax.Int -> Int | Syntax.Uint -> Uint
  | Syntax.Long -> Long | Syntax.Ulong -> Ulong
  | Syntax.Llong -> Llong | Syntax.Ullong -> Ullong
  | Syntax.CharRefAll -> CharRefAll
  | Syntax.Sword i -> Sword i | Syntax.Uword i -> Uword i
  | Syntax.Bools i -> Bools i | Syntax.Ubools i -> Ubools i
  | Syntax.Const ty' -> Const (from_type ty')
  | Syntax.Pointer ty' -> Pointer (from_type ty')
  | Syntax.Struct str -> Struct str
  | Syntax.Vector (z, ty') -> Vector (z, from_type ty')
  | Syntax.Array (z, ty') -> Array (z, from_type ty')
  | Syntax.Complex ty' -> Complex (from_type ty')
  | Syntax.Typedef str -> Typedef str

let from_param p =
  { pty = from_type p.Syntax.pty; pname = p.Syntax.pname }

let from_var v =
  { vty = from_type v.Syntax.vty; vname = p.Syntax.vname }

let rec from_offset (off : Syntax.offset_t) =
  match off with
  | Syntax.Const i -> Const i | Syntax.Var str -> Var str
  | Syntax.Add (off0, off1) -> Add (from_offset off0, from_offset off1)
  | Syntax.Mul (off0, off1) -> Mul (from_offset off0, from_offset off1)

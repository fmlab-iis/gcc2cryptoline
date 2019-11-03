proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* secp256k1_scalar_mul_512 (&l, a_2(D), b_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_scalar_reduce_512 (r_5(D), &l); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
(* End with unsed lhs *)


{
  true
  &&
  true
}

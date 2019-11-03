proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* fe_sub (&tmp0, &x3, &z3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sub (&tmp1, &x2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_add (&x2, &x2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_add (&z2, &x3, &z3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul (&z3, &tmp0, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul (&z2, &z2, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sq (&tmp0, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sq (&tmp1, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_add (&x3, &z3, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sub (&z2, &z3, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul (&x2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sub (&tmp1, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sq (&z2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul121666 (&z3, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sq (&x3, &x3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_add (&tmp0, &tmp0, &z3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul (&z3, &x1, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul (&z2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_tobytes (q_20(D), &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return 0; *)


(* Start with unused lhs *)
(* End with unsed lhs *)


{
  true
  &&
  true
}

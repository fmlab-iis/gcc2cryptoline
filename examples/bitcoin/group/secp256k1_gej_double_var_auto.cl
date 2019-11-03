proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a6_120@int32 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_6(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v1 a6_120;
(* r_7(D)->infinity = _1; *)
mov r7_120 v1;
(* if (_1 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 5> *)

(* BB's index is 3 *)

(* if (rzr_9(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 4>, False label: <bb 6> *)

(* BB's index is 4 *)

(* rzr_9(D)->n[4] = 0; *)
mov rzr9_32 0x0@uint64;
(* MEM[(long unsigned int * )rzr_9(D)] = { 1, 0 }; *)
mov rzr9_0 0x1@uint64;
mov rzr9_8 0x1@uint64;
(* MEM[(long unsigned int * )rzr_9(D) + 16B] = { 0, 0 }; *)
mov rzr9_16 0x0@uint64;
mov rzr9_24 0x0@uint64;
(* goto <bb 6> *)
(* TODO: unconditional jump *)

(* BB's index is 5 *)

(* secp256k1_gej_double_var.part.14 (r_7(D), a_6(D), rzr_9(D)); [tail call] *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* goto <bb 6> *)
(* TODO: unconditional jump *)

(* BB's index is 6 *)

(* .MEM_2 = PHI <.MEM_3(5), .MEM_19(4), .MEM_8(3)> *)
(* return; *)


(* Start with unused lhs *)
mov _ r7_120@int32;
mov _ rzr9_0@uint64;
mov _ rzr9_8@uint64;
mov _ rzr9_16@uint64;
mov _ rzr9_24@uint64;
mov _ rzr9_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

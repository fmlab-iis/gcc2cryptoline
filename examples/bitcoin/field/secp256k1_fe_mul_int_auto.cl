proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a14@int32 _;
mov r13_0@uint64 _;
mov r13_8@uint64 _;
mov r13_16@uint64 _;
mov r13_24@uint64 _;
mov r13_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = r_13(D)->n[0]; *)
mov v1 r13_0;
(* _2 = (long unsigned int) a_14(D); *)
cast v2@uint64 a14@int32;
(* _3 = _1 * _2; *)
umul v3 v1 v2;
(* r_13(D)->n[0] = _3; *)
mov r13_0 v3;
(* _4 = r_13(D)->n[1]; *)
mov v4 r13_8;
(* _5 = _2 * _4; *)
umul v5 v2 v4;
(* r_13(D)->n[1] = _5; *)
mov r13_8 v5;
(* _6 = r_13(D)->n[2]; *)
mov v6 r13_16;
(* _7 = _2 * _6; *)
umul v7 v2 v6;
(* r_13(D)->n[2] = _7; *)
mov r13_16 v7;
(* _8 = r_13(D)->n[3]; *)
mov v8 r13_24;
(* _9 = _2 * _8; *)
umul v9 v2 v8;
(* r_13(D)->n[3] = _9; *)
mov r13_24 v9;
(* _10 = r_13(D)->n[4]; *)
mov v10 r13_32;
(* _11 = _2 * _10; *)
umul v11 v2 v10;
(* r_13(D)->n[4] = _11; *)
mov r13_32 v11;
(* return; *)


(* Start with unused lhs *)
mov _ r13_0@uint64;
mov _ r13_8@uint64;
mov _ r13_16@uint64;
mov _ r13_24@uint64;
mov _ r13_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

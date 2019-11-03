proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a18_0@uint64 _;
mov a18_8@uint64 _;
mov a18_16@uint64 _;
mov a18_24@uint64 _;
mov a18_32@uint64 _;
mov m16@int32 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = m_16(D) + 1; *)
sadd v1 m16 0x1@int32;
(* _2 = (long long unsigned int) _1; *)
cast v2@uint64 v1@int32;
(* _3 = _2 * 9007190664804446; *)
umul v3 v2 0x1ffffdfffff85e@uint64;
(* _4 = a_18(D)->n[0]; *)
mov v4 a18_0;
(* _5 = _3 - _4; *)
usub v5 v3 v4;
(* r_19(D)->n[0] = _5; *)
mov r19_0 v5;
(* _6 = _2 * 9007199254740990; *)
umul v6 v2 0x1ffffffffffffe@uint64;
(* _7 = a_18(D)->n[1]; *)
mov v7 a18_8;
(* _8 = _6 - _7; *)
usub v8 v6 v7;
(* r_19(D)->n[1] = _8; *)
mov r19_8 v8;
(* _9 = a_18(D)->n[2]; *)
mov v9 a18_16;
(* _10 = _6 - _9; *)
usub v10 v6 v9;
(* r_19(D)->n[2] = _10; *)
mov r19_16 v10;
(* _11 = a_18(D)->n[3]; *)
mov v11 a18_24;
(* _12 = _6 - _11; *)
usub v12 v6 v11;
(* r_19(D)->n[3] = _12; *)
mov r19_24 v12;
(* _13 = _2 * 562949953421310; *)
umul v13 v2 0x1fffffffffffe@uint64;
(* _14 = a_18(D)->n[4]; *)
mov v14 a18_32;
(* _15 = _13 - _14; *)
usub v15 v13 v14;
(* r_19(D)->n[4] = _15; *)
mov r19_32 v15;
(* return; *)


(* Start with unused lhs *)
mov _ r19_0@uint64;
mov _ r19_8@uint64;
mov _ r19_16@uint64;
mov _ r19_24@uint64;
mov _ r19_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

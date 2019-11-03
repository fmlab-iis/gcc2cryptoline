proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov overflow23@uint32 _;
mov r22_0@uint64 _;
mov r22_8@uint64 _;
mov r22_16@uint64 _;
mov r22_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = r_22(D)->d[0]; *)
mov v1 r22_0;
(* _2 = (__int128 unsigned) _1; *)
vpc v2@uint128 v1@uint64;
(* _3 = (long unsigned int) overflow_23(D); *)
vpc v3@uint64 overflow23@uint32;
(* _4 = _3 * 4624529908474429119; *)
umul v4 v3 0x402da1732fc9bebf@uint64;
(* _5 = (__int128 unsigned) _4; *)
vpc v5@uint128 v4@uint64;
(* t_24 = _2 + _5; *)
uadd t24 v2 v5;
(* _6 = _1 + _4; *)
uadd v6 v1 v4;
(* r_22(D)->d[0] = _6; *)
mov r22_0 v6;
(* t_26 = t_24 >> 64; *)
usplit t26 tmp_to_use t24 64;
(* _7 = r_22(D)->d[1]; *)
mov v7 r22_8;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _9 = _3 * 4994812053365940164; *)
umul v9 v3 0x4551231950b75fc4@uint64;
(* _10 = (__int128 unsigned) _9; *)
vpc v10@uint128 v9@uint64;
(* _11 = _8 + _10; *)
uadd v11 v8 v10;
(* t_27 = _11 + t_26; *)
uadd t27 v11 t26;
(* _12 = (long unsigned int) t_27; *)
cast v12@uint64 t27@uint128;
(* r_22(D)->d[1] = _12; *)
mov r22_8 v12;
(* t_29 = t_27 >> 64; *)
usplit t29 tmp_to_use t27 64;
(* _13 = r_22(D)->d[2]; *)
mov v13 r22_16;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _15 = (__int128 unsigned) overflow_23(D); *)
vpc v15@uint128 overflow23@uint32;
(* _16 = _14 + _15; *)
uadd v16 v14 v15;
(* t_30 = _16 + t_29; *)
uadd t30 v16 t29;
(* _17 = (long unsigned int) t_30; *)
cast v17@uint64 t30@uint128;
(* r_22(D)->d[2] = _17; *)
mov r22_16 v17;
(* t_32 = t_30 >> 64; *)
usplit t32 tmp_to_use t30 64;
(* _18 = r_22(D)->d[3]; *)
mov v18 r22_24;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* t_33 = _19 + t_32; *)
uadd t33 v19 t32;
(* _20 = (long unsigned int) t_33; *)
cast v20@uint64 t33@uint128;
(* r_22(D)->d[3] = _20; *)
mov r22_24 v20;
(* _35 = (int) overflow_23(D); *)
cast v35@int32 overflow23@uint32;
(* return _35; *)


(* Start with unused lhs *)
mov _ r22_0@uint64;
mov _ r22_8@uint64;
mov _ r22_16@uint64;
mov _ r22_24@uint64;
mov _ v35@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

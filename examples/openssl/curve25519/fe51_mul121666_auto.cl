proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f27_0@uint64 _;
mov f27_8@uint64 _;
mov f27_16@uint64 _;
mov f27_24@uint64 _;
mov f27_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *f_27(D); *)
mov v1 f27_0;
(* h0_28 = _1 w* 121666; *)
umulj h028 v1 0x1db42@uint64;
(* _3 = MEM[(uint64_t * )f_27(D) + 8B]; *)
mov v3 f27_8;
(* h1_29 = _3 w* 121666; *)
umulj h129 v3 0x1db42@uint64;
(* _5 = MEM[(uint64_t * )f_27(D) + 16B]; *)
mov v5 f27_16;
(* h2_30 = _5 w* 121666; *)
umulj h230 v5 0x1db42@uint64;
(* _7 = MEM[(uint64_t * )f_27(D) + 24B]; *)
mov v7 f27_24;
(* h3_31 = _7 w* 121666; *)
umulj h331 v7 0x1db42@uint64;
(* _9 = MEM[(uint64_t * )f_27(D) + 32B]; *)
mov v9 f27_32;
(* h4_32 = _9 w* 121666; *)
umulj h432 v9 0x1db42@uint64;
(* _11 = h2_30 >> 51; *)
usplit v11 tmp_to_use h230 51;
(* h3_33 = _11 + h3_31; *)
uadd h333 v11 h331;
(* _12 = (long unsigned int) h2_30; *)
cast v12@uint64 h230@uint128;
(* g2_34 = _12 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g234 v12 0x7ffffffffffff@uint64;
(* _13 = h0_28 >> 51; *)
usplit v13 tmp_to_use h028 51;
(* h1_35 = _13 + h1_29; *)
uadd h135 v13 h129;
(* _14 = (long unsigned int) h0_28; *)
cast v14@uint64 h028@uint128;
(* g0_36 = _14 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g036 v14 0x7ffffffffffff@uint64;
(* _15 = h3_33 >> 51; *)
usplit v15 tmp_to_use h333 51;
(* h4_37 = _15 + h4_32; *)
uadd h437 v15 h432;
(* _16 = (long unsigned int) h3_33; *)
cast v16@uint64 h333@uint128;
(* g3_38 = _16 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g338 v16 0x7ffffffffffff@uint64;
(* _17 = h1_35 >> 51; *)
usplit v17 tmp_to_use h135 51;
(* _18 = (long unsigned int) _17; *)
cast v18@uint64 v17@uint128;
(* g2_39 = _18 + g2_34; *)
uadd g239 v18 g234;
(* _19 = (long unsigned int) h1_35; *)
cast v19@uint64 h135@uint128;
(* g1_40 = _19 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g140 v19 0x7ffffffffffff@uint64;
(* _20 = h4_37 >> 51; *)
usplit v20 tmp_to_use h437 51;
(* _21 = (long unsigned int) _20; *)
cast v21@uint64 v20@uint128;
(* _22 = _21 * 19; *)
umul v22 v21 0x13@uint64;
(* g0_41 = _22 + g0_36; *)
uadd g041 v22 g036;
(* _23 = (long unsigned int) h4_37; *)
cast v23@uint64 h437@uint128;
(* g4_42 = _23 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g442 v23 0x7ffffffffffff@uint64;
(* _24 = g2_39 >> 51; *)
usplit v24 tmp_to_use g239 51;
(* g3_43 = _24 + g3_38; *)
uadd g343 v24 g338;
(* g2_44 = g2_39 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g244 g239 0x7ffffffffffff@uint64;
(* _25 = g0_41 >> 51; *)
usplit v25 tmp_to_use g041 51;
(* g1_45 = _25 + g1_40; *)
uadd g145 v25 g140;
(* g0_46 = g0_41 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g046 g041 0x7ffffffffffff@uint64;
(* *h_47(D) = g0_46; *)
mov h47_0 g046;
(* MEM[(uint64_t * )h_47(D) + 8B] = g1_45; *)
mov h47_8 g145;
(* MEM[(uint64_t * )h_47(D) + 16B] = g2_44; *)
mov h47_16 g244;
(* MEM[(uint64_t * )h_47(D) + 24B] = g3_43; *)
mov h47_24 g343;
(* MEM[(uint64_t * )h_47(D) + 32B] = g4_42; *)
mov h47_32 g442;
(* return; *)


(* Start with unused lhs *)
mov _ h47_0@uint64;
mov _ h47_8@uint64;
mov _ h47_16@uint64;
mov _ h47_24@uint64;
mov _ h47_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

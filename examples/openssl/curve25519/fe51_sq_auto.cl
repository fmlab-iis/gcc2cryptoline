proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f37_0@uint64 _;
mov f37_8@uint64 _;
mov f37_16@uint64 _;
mov f37_24@uint64 _;
mov f37_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* g0_38 = *f_37(D); *)
mov g038 f37_0;
(* g1_39 = MEM[(const uint64_t * )f_37(D) + 8B]; *)
mov g139 f37_8;
(* g2_40 = MEM[(const uint64_t * )f_37(D) + 16B]; *)
mov g240 f37_16;
(* g3_41 = MEM[(const uint64_t * )f_37(D) + 24B]; *)
mov g341 f37_24;
(* g4_42 = MEM[(const uint64_t * )f_37(D) + 32B]; *)
mov g442 f37_32;
(* h0_43 = g0_38 w* g0_38; *)
umulj h043 g038 g038;
(* g0_44 = g0_38 * 2; *)
umul g044 g038 0x2@uint64;
(* h1_45 = g0_44 w* g1_39; *)
umulj h145 g044 g139;
(* h2_46 = g0_44 w* g2_40; *)
umulj h246 g044 g240;
(* h3_47 = g0_44 w* g3_41; *)
umulj h347 g044 g341;
(* h4_48 = g0_44 w* g4_42; *)
umulj h448 g044 g442;
(* g4_50 = g4_42 * 19; *)
umul g450 g442 0x13@uint64;
(* _51 = g4_42 w* g4_50; *)
umulj v51 g442 g450;
(* h3_52 = h3_47 + _51; *)
uadd h352 h347 v51;
(* _8 = g1_39 w* g1_39; *)
umulj v8 g139 g139;
(* g1_54 = g1_39 * 2; *)
umul g154 g139 0x2@uint64;
(* _10 = g2_40 w* g1_54; *)
umulj v10 g240 g154;
(* h3_55 = _10 + h3_52; *)
uadd h355 v10 h352;
(* _11 = g3_41 w* g1_54; *)
umulj v11 g341 g154;
(* h4_56 = _11 + h4_48; *)
uadd h456 v11 h448;
(* _12 = g4_50 w* g1_54; *)
umulj v12 g450 g154;
(* g3_59 = g3_41 * 19; *)
umul g359 g341 0x13@uint64;
(* _60 = g3_41 w* g3_59; *)
umulj v60 g341 g359;
(* h1_61 = h1_45 + _60; *)
uadd h161 h145 v60;
(* _14 = g3_41 * 2; *)
umul v14 g341 0x2@uint64;
(* _16 = g4_50 w* _14; *)
umulj v16 g450 v14;
(* _88 = _16 + h2_46; *)
uadd v88 v16 h246;
(* h2_62 = _8 + _88; *)
uadd h262 v8 v88;
(* _17 = g2_40 w* g2_40; *)
umulj v17 g240 g240;
(* h4_63 = _17 + h4_56; *)
uadd h463 v17 h456;
(* g2_64 = g2_40 * 2; *)
umul g264 g240 0x2@uint64;
(* _19 = g3_59 w* g2_64; *)
umulj v19 g359 g264;
(* _89 = _12 + _19; *)
uadd v89 v12 v19;
(* h0_65 = h0_43 + _89; *)
uadd h065 h043 v89;
(* _20 = g4_50 w* g2_64; *)
umulj v20 g450 g264;
(* h1_66 = _20 + h1_61; *)
uadd h166 v20 h161;
(* _21 = h2_62 >> 51; *)
usplit v21 tmp_to_use h262 51;
(* _49 = _21 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v49 v21 value;
(* h3_67 = _49 + h3_55; *)
uadd h367 v49 h355;
(* _22 = (long unsigned int) h2_62; *)
cast v22@uint64 h262@uint128;
(* g2_68 = _22 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g268 v22 0x7ffffffffffff@uint64;
(* _23 = h0_65 >> 51; *)
usplit v23 tmp_to_use h065 51;
(* _58 = _23 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v58 v23 value;
(* h1_69 = _58 + h1_66; *)
uadd h169 v58 h166;
(* _24 = (long unsigned int) h0_65; *)
cast v24@uint64 h065@uint128;
(* g0_70 = _24 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g070 v24 0x7ffffffffffff@uint64;
(* _25 = h3_67 >> 51; *)
usplit v25 tmp_to_use h367 51;
(* _87 = _25 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 v25 value;
(* h4_71 = h4_63 + _87; *)
uadd h471 h463 v87;
(* _26 = (long unsigned int) h3_67; *)
cast v26@uint64 h367@uint128;
(* g3_72 = _26 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g372 v26 0x7ffffffffffff@uint64;
(* _27 = h1_69 >> 51; *)
usplit v27 tmp_to_use h169 51;
(* _28 = (long unsigned int) _27; *)
cast v28@uint64 v27@uint128;
(* g2_73 = _28 + g2_68; *)
uadd g273 v28 g268;
(* _29 = (long unsigned int) h1_69; *)
cast v29@uint64 h169@uint128;
(* g1_74 = _29 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g174 v29 0x7ffffffffffff@uint64;
(* _30 = h4_71 >> 51; *)
usplit v30 tmp_to_use h471 51;
(* _31 = (long unsigned int) _30; *)
cast v31@uint64 v30@uint128;
(* _32 = _31 * 19; *)
umul v32 v31 0x13@uint64;
(* g0_75 = _32 + g0_70; *)
uadd g075 v32 g070;
(* _33 = (long unsigned int) h4_71; *)
cast v33@uint64 h471@uint128;
(* g4_76 = _33 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g476 v33 0x7ffffffffffff@uint64;
(* _34 = g2_73 >> 51; *)
usplit v34 tmp_to_use g273 51;
(* g3_77 = _34 + g3_72; *)
uadd g377 v34 g372;
(* g2_78 = g2_73 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g278 g273 0x7ffffffffffff@uint64;
(* _35 = g0_75 >> 51; *)
usplit v35 tmp_to_use g075 51;
(* g1_79 = _35 + g1_74; *)
uadd g179 v35 g174;
(* g0_80 = g0_75 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g080 g075 0x7ffffffffffff@uint64;
(* *h_81(D) = g0_80; *)
mov h81_0 g080;
(* MEM[(uint64_t * )h_81(D) + 8B] = g1_79; *)
mov h81_8 g179;
(* MEM[(uint64_t * )h_81(D) + 16B] = g2_78; *)
mov h81_16 g278;
(* MEM[(uint64_t * )h_81(D) + 24B] = g3_77; *)
mov h81_24 g377;
(* MEM[(uint64_t * )h_81(D) + 32B] = g4_76; *)
mov h81_32 g476;
(* return; *)


(* Start with unused lhs *)
mov _ h81_0@uint64;
mov _ h81_8@uint64;
mov _ h81_16@uint64;
mov _ h81_24@uint64;
mov _ h81_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

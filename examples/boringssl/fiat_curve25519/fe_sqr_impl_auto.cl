proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in147_0@uint64 _;
mov in147_8@uint64 _;
mov in147_16@uint64 _;
mov in147_24@uint64 _;
mov in147_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* x7_48 = MEM[(const uint64_t * )in1_47(D) + 32B]; *)
mov x748 in147_32;
(* x8_49 = MEM[(const uint64_t * )in1_47(D) + 24B]; *)
mov x849 in147_24;
(* x6_50 = MEM[(const uint64_t * )in1_47(D) + 16B]; *)
mov x650 in147_16;
(* x4_51 = MEM[(const uint64_t * )in1_47(D) + 8B]; *)
mov x451 in147_8;
(* x2_52 = *in1_47(D); *)
mov x252 in147_0;
(* x9_53 = x2_52 * 2; *)
umul x953 x252 0x2@uint64;
(* x10_54 = x4_51 * 2; *)
umul x1054 x451 0x2@uint64;
(* x11_55 = x6_50 * 38; *)
umul x1155 x650 0x26@uint64;
(* x12_56 = x7_48 * 19; *)
umul x1256 x748 0x13@uint64;
(* x13_57 = x7_48 * 38; *)
umul x1357 x748 0x26@uint64;
(* _2 = x2_52 w* x2_52; *)
umulj v2 x252 x252;
(* _5 = x13_57 w* x4_51; *)
umulj v5 x1357 x451;
(* _9 = x11_55 w* x8_49; *)
umulj v9 x1155 x849;
(* _88 = _5 + _9; *)
uadd v88 v5 v9;
(* x14_58 = _2 + _88; *)
uadd x1458 v2 v88;
(* _11 = x4_51 w* x9_53; *)
umulj v11 x451 x953;
(* _13 = x13_57 w* x6_50; *)
umulj v13 x1357 x650;
(* _14 = _11 + _13; *)
uadd v14 v11 v13;
(* _15 = x8_49 * 19; *)
umul v15 x849 0x13@uint64;
(* _17 = x8_49 w* _15; *)
umulj v17 x849 v15;
(* x15_59 = _14 + _17; *)
uadd x1559 v14 v17;
(* _18 = x9_53 w* x6_50; *)
umulj v18 x953 x650;
(* _19 = x4_51 w* x4_51; *)
umulj v19 x451 x451;
(* _21 = x13_57 w* x8_49; *)
umulj v21 x1357 x849;
(* _89 = _18 + _21; *)
uadd v89 v18 v21;
(* x16_60 = _19 + _89; *)
uadd x1660 v19 v89;
(* _22 = x8_49 w* x9_53; *)
umulj v22 x849 x953;
(* _24 = x6_50 w* x10_54; *)
umulj v24 x650 x1054;
(* _25 = _22 + _24; *)
uadd v25 v22 v24;
(* _28 = x7_48 w* x12_56; *)
umulj v28 x748 x1256;
(* x17_61 = _25 + _28; *)
uadd x1761 v25 v28;
(* _29 = x9_53 w* x7_48; *)
umulj v29 x953 x748;
(* _30 = x8_49 w* x10_54; *)
umulj v30 x849 x1054;
(* _31 = _29 + _30; *)
uadd v31 v29 v30;
(* _32 = x6_50 w* x6_50; *)
umulj v32 x650 x650;
(* x18_62 = _31 + _32; *)
uadd x1862 v31 v32;
(* _33 = x14_58 >> 51; *)
usplit v33 tmp_to_use x1458 51;
(* _34 = (long unsigned int) x14_58; *)
cast v34@uint64 x1458@uint128;
(* x20_63 = _34 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2063 v34 0x7ffffffffffff@uint64;
(* _45 = _33 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v45 v33 value;
(* x21_64 = _45 + x15_59; *)
uadd x2164 v45 x1559;
(* _35 = x21_64 >> 51; *)
usplit v35 tmp_to_use x2164 51;
(* _36 = (long unsigned int) x21_64; *)
cast v36@uint64 x2164@uint128;
(* x23_65 = _36 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2365 v36 0x7ffffffffffff@uint64;
(* _85 = _35 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v85 v35 value;
(* x24_66 = x16_60 + _85; *)
uadd x2466 x1660 v85;
(* _37 = x24_66 >> 51; *)
usplit v37 tmp_to_use x2466 51;
(* _38 = (long unsigned int) x24_66; *)
cast v38@uint64 x2466@uint128;
(* x26_67 = _38 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2667 v38 0x7ffffffffffff@uint64;
(* _86 = _37 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v86 v37 value;
(* x27_68 = x17_61 + _86; *)
uadd x2768 x1761 v86;
(* _39 = x27_68 >> 51; *)
usplit v39 tmp_to_use x2768 51;
(* _40 = (long unsigned int) x27_68; *)
cast v40@uint64 x2768@uint128;
(* x29_69 = _40 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2969 v40 0x7ffffffffffff@uint64;
(* _87 = _39 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 v39 value;
(* x30_70 = x18_62 + _87; *)
uadd x3070 x1862 v87;
(* _41 = x30_70 >> 51; *)
usplit v41 tmp_to_use x3070 51;
(* x31_71 = (uint64_t) _41; *)
cast x3171@uint64 v41@uint128;
(* _42 = (long unsigned int) x30_70; *)
cast v42@uint64 x3070@uint128;
(* x32_72 = _42 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3272 v42 0x7ffffffffffff@uint64;
(* _43 = x31_71 * 19; *)
umul v43 x3171 0x13@uint64;
(* x33_73 = _43 + x20_63; *)
uadd x3373 v43 x2063;
(* x34_74 = x33_73 >> 51; *)
usplit x3474 tmp_to_use x3373 51;
(* x35_75 = x33_73 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3575 x3373 0x7ffffffffffff@uint64;
(* x36_76 = x23_65 + x34_74; *)
uadd x3676 x2365 x3474;
(* x37_77 = x36_76 >> 51; *)
usplit x3777 tmp_to_use x3676 51;
(* x38_78 = x36_76 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3878 x3676 0x7ffffffffffff@uint64;
(* *out_79(D) = x35_75; *)
mov out79_0 x3575;
(* MEM[(uint64_t * )out_79(D) + 8B] = x38_78; *)
mov out79_8 x3878;
(* _44 = x26_67 + x37_77; *)
uadd v44 x2667 x3777;
(* MEM[(uint64_t * )out_79(D) + 16B] = _44; *)
mov out79_16 v44;
(* MEM[(uint64_t * )out_79(D) + 24B] = x29_69; *)
mov out79_24 x2969;
(* MEM[(uint64_t * )out_79(D) + 32B] = x32_72; *)
mov out79_32 x3272;
(* return; *)


(* Start with unused lhs *)
mov _ out79_0@uint64;
mov _ out79_8@uint64;
mov _ out79_16@uint64;
mov _ out79_24@uint64;
mov _ out79_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

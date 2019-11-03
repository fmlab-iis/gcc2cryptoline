proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a82_0@uint64 _;
mov a82_8@uint64 _;
mov a82_16@uint64 _;
mov a82_24@uint64 _;
mov a82_32@uint64 _;
mov b89_0@uint64 _;
mov b89_8@uint64 _;
mov b89_16@uint64 _;
mov b89_24@uint64 _;
mov b89_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* a0_83 = *a_82(D); *)
mov a083 a82_0;
(* a1_84 = MEM[(const uint64_t * )a_82(D) + 8B]; *)
mov a184 a82_8;
(* a2_85 = MEM[(const uint64_t * )a_82(D) + 16B]; *)
mov a285 a82_16;
(* a3_86 = MEM[(const uint64_t * )a_82(D) + 24B]; *)
mov a386 a82_24;
(* a4_87 = MEM[(const uint64_t * )a_82(D) + 32B]; *)
mov a487 a82_32;
(* _2 = MEM[(const uint64_t * )b_89(D) + 24B]; *)
mov v2 b89_24;
(* _4 = a0_83 w* _2; *)
umulj v4 a083 v2;
(* _6 = MEM[(const uint64_t * )b_89(D) + 16B]; *)
mov v6 b89_16;
(* _8 = a1_84 w* _6; *)
umulj v8 a184 v6;
(* _141 = _4 + _8; *)
uadd v141 v4 v8;
(* _11 = *b_89(D); *)
mov v11 b89_0;
(* _13 = a3_86 w* _11; *)
umulj v13 a386 v11;
(* _15 = MEM[(const uint64_t * )b_89(D) + 8B]; *)
mov v15 b89_8;
(* _17 = a2_85 w* _15; *)
umulj v17 a285 v15;
(* _142 = _13 + _141; *)
uadd v142 v13 v141;
(* d_90 = _17 + _142; *)
uadd d90 v17 v142;
(* _20 = MEM[(const uint64_t * )b_89(D) + 32B]; *)
mov v20 b89_32;
(* c_91 = a4_87 w* _20; *)
umulj c91 a487 v20;
(* _22 = c_91 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v22 c91 value;
(* _23 = _22 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v23 v22 value;
(* d_92 = _23 + d_90; *)
uadd d92 v23 d90;
(* c_93 = c_91 >> 52; *)
usplit c93 tmp_to_use c91 52;
(* _24 = (long unsigned int) d_92; *)
cast v24@uint64 d92@uint128;
(* t3_94 = _24 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t394 v24 0xfffffffffffff@uint64;
(* d_95 = d_92 >> 52; *)
usplit d95 tmp_to_use d92 52;
(* _26 = a0_83 w* _20; *)
umulj v26 a083 v20;
(* _27 = _2 w* a1_84; *)
umulj v27 v2 a184;
(* _135 = _26 + _27; *)
uadd v135 v26 v27;
(* _29 = a3_86 w* _15; *)
umulj v29 a386 v15;
(* _30 = _6 w* a2_85; *)
umulj v30 v6 a285;
(* _136 = _29 + _135; *)
uadd v136 v29 v135;
(* _137 = _30 + _136; *)
uadd v137 v30 v136;
(* _33 = _11 w* a4_87; *)
umulj v33 v11 a487;
(* _138 = _33 + _137; *)
uadd v138 v33 v137;
(* _35 = c_93 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v35 c93 value;
(* _139 = _35 + _138; *)
uadd v139 v35 v138;
(* d_97 = d_95 + _139; *)
uadd d97 d95 v139;
(* _36 = (long unsigned int) d_97; *)
cast v36@uint64 d97@uint128;
(* d_98 = d_97 >> 52; *)
usplit d98 tmp_to_use d97 52;
(* _25 = _36 >> 48; *)
usplit v25 tmp_to_use v36 48;
(* tx_99 = _25 & 15; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xf@uint64 = 0x0000000000000f *)
(* Note: 0xf@uint64 = 0b00000000000000000000000000000000000000000000000000000000001111 *)
and uint64 tx99 v25 0xf@uint64;
(* t4_100 = _36 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t4100 v36 0xffffffffffff@uint64;
(* c_101 = a0_83 w* _11; *)
umulj c101 a083 v11;
(* _37 = a1_84 w* _20; *)
umulj v37 a184 v20;
(* _38 = _2 w* a2_85; *)
umulj v38 v2 a285;
(* _132 = _37 + _38; *)
uadd v132 v37 v38;
(* _40 = _15 w* a4_87; *)
umulj v40 v15 a487;
(* _41 = _6 w* a3_86; *)
umulj v41 v6 a386;
(* _133 = _40 + _132; *)
uadd v133 v40 v132;
(* _43 = _41 + _133; *)
uadd v43 v41 v133;
(* d_102 = _43 + d_98; *)
uadd d102 v43 d98;
(* _44 = (long unsigned int) d_102; *)
cast v44@uint64 d102@uint128;
(* d_103 = d_102 >> 52; *)
usplit d103 tmp_to_use d102 52;
(* _88 = _44 << 4; *)
usplit tmp1 tmp2 v44 60;
shl v88 tmp2 4;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _45 = _88 & 72057594037927920; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff0@uint64 = 0xfffffffffffff0 *)
(* Note: 0xfffffffffffff0@uint64 = 0b00000011111111111111111111111111111111111111111111111111110000 *)
and uint64 v45 v88 0xfffffffffffff0@uint64;
(* u0_104 = _45 | tx_99; *)
(* Bitwise or , may need assert and assume *)
or uint64 u0104 v45 tx99;
(* _47 = u0_104 w* 4294968273; *)
umulj v47 u0104 0x1000003d1@uint64;
(* c_105 = _47 + c_101; *)
uadd c105 v47 c101;
(* _48 = (long unsigned int) c_105; *)
cast v48@uint64 c105@uint128;
(* _49 = _48 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v49 v48 0xfffffffffffff@uint64;
(* *r_106(D) = _49; *)
mov r106_0 v49;
(* c_108 = c_105 >> 52; *)
usplit c108 tmp_to_use c105 52;
(* _50 = a0_83 w* _15; *)
umulj v50 a083 v15;
(* _51 = a1_84 w* _11; *)
umulj v51 a184 v11;
(* _129 = _50 + _51; *)
uadd v129 v50 v51;
(* _53 = a2_85 w* _20; *)
umulj v53 a285 v20;
(* _54 = _2 w* a3_86; *)
umulj v54 v2 a386;
(* _55 = _53 + _54; *)
uadd v55 v53 v54;
(* _56 = _6 w* a4_87; *)
umulj v56 v6 a487;
(* _57 = _55 + _56; *)
uadd v57 v55 v56;
(* d_110 = _57 + d_103; *)
uadd d110 v57 d103;
(* _58 = d_110 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v58 d110 value;
(* _59 = _58 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v59 v58 value;
(* _130 = _59 + _129; *)
uadd v130 v59 v129;
(* c_111 = c_108 + _130; *)
uadd c111 c108 v130;
(* d_112 = d_110 >> 52; *)
usplit d112 tmp_to_use d110 52;
(* _60 = (long unsigned int) c_111; *)
cast v60@uint64 c111@uint128;
(* _61 = _60 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v61 v60 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_106(D) + 8B] = _61; *)
mov r106_8 v61;
(* c_114 = c_111 >> 52; *)
usplit c114 tmp_to_use c111 52;
(* _62 = a0_83 w* _6; *)
umulj v62 a083 v6;
(* _63 = a1_84 w* _15; *)
umulj v63 a184 v15;
(* _128 = _62 + _63; *)
uadd v128 v62 v63;
(* _65 = _11 w* a2_85; *)
umulj v65 v11 a285;
(* _127 = _65 + _128; *)
uadd v127 v65 v128;
(* _67 = a3_86 w* _20; *)
umulj v67 a386 v20;
(* _68 = _2 w* a4_87; *)
umulj v68 v2 a487;
(* _69 = _67 + _68; *)
uadd v69 v67 v68;
(* d_116 = _69 + d_112; *)
uadd d116 v69 d112;
(* _70 = d_116 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v70 d116 value;
(* _71 = _70 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v71 v70 value;
(* _126 = _71 + _127; *)
uadd v126 v71 v127;
(* c_117 = c_114 + _126; *)
uadd c117 c114 v126;
(* d_118 = d_116 >> 52; *)
usplit d118 tmp_to_use d116 52;
(* _72 = (long unsigned int) c_117; *)
cast v72@uint64 c117@uint128;
(* _73 = _72 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v73 v72 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_106(D) + 16B] = _73; *)
mov r106_16 v73;
(* c_120 = c_117 >> 52; *)
usplit c120 tmp_to_use c117 52;
(* _74 = d_118 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v74 d118 value;
(* _75 = (__int128 unsigned) t3_94; *)
vpc v75@uint128 t394@uint64;
(* _76 = _74 + _75; *)
uadd v76 v74 v75;
(* c_121 = _76 + c_120; *)
uadd c121 v76 c120;
(* _77 = (long unsigned int) c_121; *)
cast v77@uint64 c121@uint128;
(* _78 = _77 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v78 v77 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_106(D) + 24B] = _78; *)
mov r106_24 v78;
(* c_123 = c_121 >> 52; *)
usplit c123 tmp_to_use c121 52;
(* _79 = (__int128 unsigned) t4_100; *)
vpc v79@uint128 t4100@uint64;
(* c_124 = _79 + c_123; *)
uadd c124 v79 c123;
(* _80 = (long unsigned int) c_124; *)
cast v80@uint64 c124@uint128;
(* MEM[(uint64_t * )r_106(D) + 32B] = _80; *)
mov r106_32 v80;
(* return; *)


(* Start with unused lhs *)
mov _ r106_0@uint64;
mov _ r106_8@uint64;
mov _ r106_16@uint64;
mov _ r106_24@uint64;
mov _ r106_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

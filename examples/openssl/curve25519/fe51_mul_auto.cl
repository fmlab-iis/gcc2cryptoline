proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f47_0@uint64 _;
mov f47_8@uint64 _;
mov f47_16@uint64 _;
mov f47_24@uint64 _;
mov f47_32@uint64 _;
mov g49_0@uint64 _;
mov g49_8@uint64 _;
mov g49_16@uint64 _;
mov g49_24@uint64 _;
mov g49_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f_i_48 = *f_47(D); *)
mov f_i48 f47_0;
(* g0_50 = *g_49(D); *)
mov g050 g49_0;
(* h0_51 = f_i_48 w* g0_50; *)
umulj h051 f_i48 g050;
(* g1_52 = MEM[(const uint64_t * )g_49(D) + 8B]; *)
mov g152 g49_8;
(* h1_53 = f_i_48 w* g1_52; *)
umulj h153 f_i48 g152;
(* g2_54 = MEM[(const uint64_t * )g_49(D) + 16B]; *)
mov g254 g49_16;
(* h2_55 = f_i_48 w* g2_54; *)
umulj h255 f_i48 g254;
(* g3_56 = MEM[(const uint64_t * )g_49(D) + 24B]; *)
mov g356 g49_24;
(* h3_57 = f_i_48 w* g3_56; *)
umulj h357 f_i48 g356;
(* g4_58 = MEM[(const uint64_t * )g_49(D) + 32B]; *)
mov g458 g49_32;
(* h4_59 = f_i_48 w* g4_58; *)
umulj h459 f_i48 g458;
(* f_i_60 = MEM[(const uint64_t * )f_47(D) + 8B]; *)
mov f_i60 f47_8;
(* g4_61 = g4_58 * 19; *)
umul g461 g458 0x13@uint64;
(* _62 = f_i_60 w* g4_61; *)
umulj v62 f_i60 g461;
(* h0_63 = h0_51 + _62; *)
uadd h063 h051 v62;
(* _9 = g0_50 w* f_i_60; *)
umulj v9 g050 f_i60;
(* h1_64 = _9 + h1_53; *)
uadd h164 v9 h153;
(* _10 = g1_52 w* f_i_60; *)
umulj v10 g152 f_i60;
(* h2_65 = _10 + h2_55; *)
uadd h265 v10 h255;
(* _11 = g2_54 w* f_i_60; *)
umulj v11 g254 f_i60;
(* h3_66 = _11 + h3_57; *)
uadd h366 v11 h357;
(* _12 = g3_56 w* f_i_60; *)
umulj v12 g356 f_i60;
(* h4_67 = _12 + h4_59; *)
uadd h467 v12 h459;
(* f_i_68 = MEM[(const uint64_t * )f_47(D) + 16B]; *)
mov f_i68 f47_16;
(* g3_69 = g3_56 * 19; *)
umul g369 g356 0x13@uint64;
(* _70 = f_i_68 w* g3_69; *)
umulj v70 f_i68 g369;
(* h0_71 = h0_63 + _70; *)
uadd h071 h063 v70;
(* _15 = g4_61 w* f_i_68; *)
umulj v15 g461 f_i68;
(* h1_72 = _15 + h1_64; *)
uadd h172 v15 h164;
(* _16 = g0_50 w* f_i_68; *)
umulj v16 g050 f_i68;
(* h2_73 = _16 + h2_65; *)
uadd h273 v16 h265;
(* _17 = g1_52 w* f_i_68; *)
umulj v17 g152 f_i68;
(* h3_74 = _17 + h3_66; *)
uadd h374 v17 h366;
(* _18 = g2_54 w* f_i_68; *)
umulj v18 g254 f_i68;
(* h4_75 = _18 + h4_67; *)
uadd h475 v18 h467;
(* f_i_76 = MEM[(const uint64_t * )f_47(D) + 24B]; *)
mov f_i76 f47_24;
(* g2_77 = g2_54 * 19; *)
umul g277 g254 0x13@uint64;
(* _78 = f_i_76 w* g2_77; *)
umulj v78 f_i76 g277;
(* h0_79 = h0_71 + _78; *)
uadd h079 h071 v78;
(* _21 = g3_69 w* f_i_76; *)
umulj v21 g369 f_i76;
(* h1_80 = _21 + h1_72; *)
uadd h180 v21 h172;
(* _22 = g4_61 w* f_i_76; *)
umulj v22 g461 f_i76;
(* h2_81 = _22 + h2_73; *)
uadd h281 v22 h273;
(* _23 = g0_50 w* f_i_76; *)
umulj v23 g050 f_i76;
(* h3_82 = _23 + h3_74; *)
uadd h382 v23 h374;
(* _24 = g1_52 w* f_i_76; *)
umulj v24 g152 f_i76;
(* h4_83 = _24 + h4_75; *)
uadd h483 v24 h475;
(* f_i_84 = MEM[(const uint64_t * )f_47(D) + 32B]; *)
mov f_i84 f47_32;
(* g1_85 = g1_52 * 19; *)
umul g185 g152 0x13@uint64;
(* _86 = f_i_84 w* g1_85; *)
umulj v86 f_i84 g185;
(* h0_87 = h0_79 + _86; *)
uadd h087 h079 v86;
(* _27 = g2_77 w* f_i_84; *)
umulj v27 g277 f_i84;
(* h1_88 = _27 + h1_80; *)
uadd h188 v27 h180;
(* _28 = g3_69 w* f_i_84; *)
umulj v28 g369 f_i84;
(* h2_89 = _28 + h2_81; *)
uadd h289 v28 h281;
(* _29 = g4_61 w* f_i_84; *)
umulj v29 g461 f_i84;
(* h3_90 = _29 + h3_82; *)
uadd h390 v29 h382;
(* _30 = g0_50 w* f_i_84; *)
umulj v30 g050 f_i84;
(* h4_91 = _30 + h4_83; *)
uadd h491 v30 h483;
(* _31 = h2_89 >> 51; *)
usplit v31 tmp_to_use h289 51;
(* _112 = _31 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v112 v31 value;
(* h3_92 = h3_90 + _112; *)
uadd h392 h390 v112;
(* _32 = (long unsigned int) h2_89; *)
cast v32@uint64 h289@uint128;
(* g2_93 = _32 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g293 v32 0x7ffffffffffff@uint64;
(* _33 = h0_87 >> 51; *)
usplit v33 tmp_to_use h087 51;
(* _113 = _33 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v113 v33 value;
(* h1_94 = h1_88 + _113; *)
uadd h194 h188 v113;
(* _34 = (long unsigned int) h0_87; *)
cast v34@uint64 h087@uint128;
(* g0_95 = _34 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g095 v34 0x7ffffffffffff@uint64;
(* _35 = h3_92 >> 51; *)
usplit v35 tmp_to_use h392 51;
(* _114 = _35 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v114 v35 value;
(* h4_96 = h4_91 + _114; *)
uadd h496 h491 v114;
(* _36 = (long unsigned int) h3_92; *)
cast v36@uint64 h392@uint128;
(* g3_97 = _36 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g397 v36 0x7ffffffffffff@uint64;
(* _37 = h1_94 >> 51; *)
usplit v37 tmp_to_use h194 51;
(* _38 = (long unsigned int) _37; *)
cast v38@uint64 v37@uint128;
(* g2_98 = _38 + g2_93; *)
uadd g298 v38 g293;
(* _39 = (long unsigned int) h1_94; *)
cast v39@uint64 h194@uint128;
(* g1_99 = _39 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g199 v39 0x7ffffffffffff@uint64;
(* _40 = h4_96 >> 51; *)
usplit v40 tmp_to_use h496 51;
(* _41 = (long unsigned int) _40; *)
cast v41@uint64 v40@uint128;
(* _42 = _41 * 19; *)
umul v42 v41 0x13@uint64;
(* g0_100 = _42 + g0_95; *)
uadd g0100 v42 g095;
(* _43 = (long unsigned int) h4_96; *)
cast v43@uint64 h496@uint128;
(* g4_101 = _43 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g4101 v43 0x7ffffffffffff@uint64;
(* _44 = g2_98 >> 51; *)
usplit v44 tmp_to_use g298 51;
(* g3_102 = _44 + g3_97; *)
uadd g3102 v44 g397;
(* g2_103 = g2_98 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g2103 g298 0x7ffffffffffff@uint64;
(* _45 = g0_100 >> 51; *)
usplit v45 tmp_to_use g0100 51;
(* g1_104 = _45 + g1_99; *)
uadd g1104 v45 g199;
(* g0_105 = g0_100 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g0105 g0100 0x7ffffffffffff@uint64;
(* *h_106(D) = g0_105; *)
mov h106_0 g0105;
(* MEM[(uint64_t * )h_106(D) + 8B] = g1_104; *)
mov h106_8 g1104;
(* MEM[(uint64_t * )h_106(D) + 16B] = g2_103; *)
mov h106_16 g2103;
(* MEM[(uint64_t * )h_106(D) + 24B] = g3_102; *)
mov h106_24 g3102;
(* MEM[(uint64_t * )h_106(D) + 32B] = g4_101; *)
mov h106_32 g4101;
(* return; *)


(* Start with unused lhs *)
mov _ h106_0@uint64;
mov _ h106_8@uint64;
mov _ h106_16@uint64;
mov _ h106_24@uint64;
mov _ h106_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

(* @frege 
*)
(* @mac
*)
proc secp256k1_fe_mul_inner (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) = 
{
  true
  &&
  and
  [
    a0 < (8*(2**53-1))@64,
    a1 < (8*(2**53-1))@64,
    a2 < (8*(2**53-1))@64,
    a3 < (8*(2**53-1))@64,
    a4 < (8*(2**49-1))@64,
    b0 < (8*(2**53-1))@64,
    b1 < (8*(2**53-1))@64,
    b2 < (8*(2**53-1))@64,
    b3 < (8*(2**53-1))@64,
    b4 < (8*(2**49-1))@64
  ]
}


(* Start with undefined rhs *)
mov a82_0@uint64 a0;
mov a82_8@uint64 a1;
mov a82_16@uint64 a2;
mov a82_24@uint64 a3;
mov a82_32@uint64 a4;
mov b89_0@uint64 b0;
mov b89_8@uint64 b1;
mov b89_16@uint64 b2;
mov b89_24@uint64 b3;
mov b89_32@uint64 b4;
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
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v22 c91 52;
(* _23 = _22 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v23 v22 value;
(* d_92 = _23 + d_90; *)
uadd d92 v23 d90;
(* c_93 = c_91 >> 52; *)
usplit c93 tmp_to_use c91 52;

assert true && tmp_to_use = v22;
assume tmp_to_use = v22 && true;

(* _24 = (long unsigned int) d_92; *)
cast v24@uint64 d92@uint128;
(* t3_94 = _24 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and t394 v24 52;
(* d_95 = d_92 >> 52; *)
usplit d95 tmp_to_use d92 52;

vpc uint64 tmp_to_use_p tmp_to_use;
assert true && tmp_to_use_p = t394;
assume tmp_to_use = t394 && true;

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
usplit d98 tmp_to_use1 d97 52;
(* _25 = _36 >> 48; *)
usplit v25 tmp_to_use2 v36 48;
(* tx_99 = _25 & 15; *)
(* Note: 0xf@uint64 = 0x0000000000000f *)
(* Note: 0xf@uint64 = 0b00000000000000000000000000000000000000000000000000000000001111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and tx99 v25 4;

vpc uint64 tmp_to_use1_p tmp_to_use1;
assert true && tmp_to_use1_p = tx99 * (2**48)@64 + tmp_to_use2;
assume tmp_to_use1 = tx99 * (2**48) + tmp_to_use2 && true;

(* t4_100 = _36 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and t4100 v36 48;

assert true && tmp_to_use2 = t4100;
assume tmp_to_use2 = t4100 && true;

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

(* false
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
*)
(* _45 = _88 & 72057594037927920; *)
(* Note: 0xfffffffffffff0@uint64 = 0xfffffffffffff0 *)
(* Note: 0xfffffffffffff0@uint64 = 0b00000011111111111111111111111111111111111111111111111111110000 *)
and uint64 v45 v88 0xfffffffffffff0@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v45 = tmp_to_use_p * (2**4)@64;
assume v45 = tmp_to_use * (2**4) && true;

(* u0_104 = _45 | tx_99; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 u0104 v45 tx99;

assert true && u0104 = v45 + tx99;
assume u0104 = v45 + tx99 && true;


(* _47 = u0_104 w* 4294968273; *)
umulj v47 u0104 0x1000003d1@uint64;
(* c_105 = _47 + c_101; *)
uadd c105 v47 c101;
(* _48 = (long unsigned int) c_105; *)
cast v48@uint64 c105@uint128;
(* _49 = _48 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v49 v48 52;
(* *r_106(D) = _49; *)
mov r106_0 v49;
(* c_108 = c_105 >> 52; *)
usplit c108 tmp_to_use c105 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v49;
assume tmp_to_use = v49 && true;

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
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v58 d110 52;
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

assert true && tmp_to_use = v58;
assume tmp_to_use = v58 && true;

(* _60 = (long unsigned int) c_111; *)
cast v60@uint64 c111@uint128;
(* _61 = _60 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v61 v60 52;
(* MEM[(uint64_t * )r_106(D) + 8B] = _61; *)
mov r106_8 v61;
(* c_114 = c_111 >> 52; *)
usplit c114 tmp_to_use c111 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v61;
assume tmp_to_use = v61 && true;

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
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v70 d116 52;
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

assert true && tmp_to_use = v70;
assume tmp_to_use = v70 && true;

(* _72 = (long unsigned int) c_117; *)
cast v72@uint64 c117@uint128;
(* _73 = _72 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v73 v72 52;
(* MEM[(uint64_t * )r_106(D) + 16B] = _73; *)
mov r106_16 v73;
(* c_120 = c_117 >> 52; *)
usplit c120 tmp_to_use c117 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v73;
assume tmp_to_use = v73 && true;

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
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and v78 v77 52;
(* MEM[(uint64_t * )r_106(D) + 24B] = _78; *)
mov r106_24 v78;
(* c_123 = c_121 >> 52; *)
usplit c123 tmp_to_use c121 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v78;
assume tmp_to_use = v78 && true;

(* _79 = (__int128 unsigned) t4_100; *)
vpc v79@uint128 t4100@uint64;
(* c_124 = _79 + c_123; *)
uadd c124 v79 c123;
(* _80 = (long unsigned int) c_124; *)
(* cast -> vpc *)
(* cast v80@uint64 c124@uint128; *)
vpc v80@uint64 c124@uint128;
(* MEM[(uint64_t * )r_106(D) + 32B] = _80; *)
mov r106_32 v80;
(* return; *)


(* Start with unused lhs *)
mov c0 r106_0@uint64;
mov c1 r106_8@uint64;
mov c2 r106_16@uint64;
mov c3 r106_24@uint64;
mov c4 r106_32@uint64;
(* End with unsed lhs *)


{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      (limbs 52 [a0, a1, a2, a3, a4])
      *
      (limbs 52 [b0, b1, b2, b3, b4])
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  and [
        c0 < (2**53-1)@64,
        c1 < (2**53-1)@64,
        c2 < (2**53-1)@64,
        c3 < (2**53-1)@64,
        c4 < (2**49-1)@64
  ]
}


(* ======================================================== *)

proc secp256k1_fe_sqr_inner (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) = 
{
  true
  &&
  and
  [
    a0 < (8*(2**53-1))@64,
    a1 < (8*(2**53-1))@64,
    a2 < (8*(2**53-1))@64,
    a3 < (8*(2**53-1))@64,
    a4 < (8*(2**49-1))@64
  ]
}


(* Start with undefined rhs *)
mov a59_0@uint64 a0;
mov a59_8@uint64 a1;
mov a59_16@uint64 a2;
mov a59_24@uint64 a3;
mov a59_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* a0_60 = *a_59(D); *)
mov a060 a59_0;
(* a1_61 = MEM[(const uint64_t * )a_59(D) + 8B]; *)
mov a161 a59_8;
(* a2_62 = MEM[(const uint64_t * )a_59(D) + 16B]; *)
mov a262 a59_16;
(* a3_63 = MEM[(const uint64_t * )a_59(D) + 24B]; *)
mov a363 a59_24;
(* a4_64 = MEM[(const uint64_t * )a_59(D) + 32B]; *)
mov a464 a59_32;
(* _1 = a0_60 * 2; *)
umul v1 a060 0x2@uint64;
(* _4 = _1 w* a3_63; *)
umulj v4 v1 a363;
(* _5 = a1_61 * 2; *)
umul v5 a161 0x2@uint64;
(* _8 = _5 w* a2_62; *)
umulj v8 v5 a262;
(* d_66 = _4 + _8; *)
uadd d66 v4 v8;
(* c_67 = a4_64 w* a4_64; *)
umulj c67 a464 a464;
(* _11 = c_67 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v11 c67 value;
(* _12 = _11 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v12 v11 value;
(* d_68 = _12 + d_66; *)
uadd d68 v12 d66;
(* c_69 = c_67 >> 52; *)
usplit c69 tmp_to_use c67 52;

assert true && tmp_to_use = v11;
assume tmp_to_use = v11 && true;

(* _13 = (long int) d_68; *)
cast v13@int64 d68@uint128;
(* t3_70 = _13 & 4503599627370495; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff@int64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@int64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and int64 t370 v13 0xfffffffffffff@int64;
(* d_71 = d_68 >> 52; *)
usplit d71 tmp_to_use d68 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = t370;
assume tmp_to_use = t370 && true;


(* a4_72 = a4_64 * 2; *)
umul a472 a464 0x2@uint64;
(* _16 = a0_60 w* a4_72; *)
umulj v16 a060 a472;
(* _17 = a3_63 w* _5; *)
umulj v17 a363 v5;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* _19 = a2_62 w* a2_62; *)
umulj v19 a262 a262;
(* _20 = _18 + _19; *)
uadd v20 v18 v19;
(* _21 = c_69 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v21 c69 value;
(* _105 = _20 + _21; *)
uadd v105 v20 v21;
(* d_74 = d_71 + _105; *)
uadd d74 d71 v105;
(* _22 = (long int) d_74; *)
cast v22@int64 d74@uint128;
(* d_75 = d_74 >> 52; *)
usplit d75 tmp_to_use1 d74 52;
(* _10 = _22 >> 48; *)
(* TODO: signed operation, need check *)
ssplit v10 tmp_to_use2 v22 48;
(* tx_76 = _10 & 15; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xf@int64 = 0x0000000000000f *)
(* Note: 0xf@int64 = 0b00000000000000000000000000000000000000000000000000000000001111 *)
and int64 tx76 v10 0xf@int64;

vpc tmp_to_use1_p@uint64 tmp_to_use1;


assert true && tmp_to_use1_p = (tx76 * (2**48)@64) + tmp_to_use2;
assume tmp_to_use1 = (tx76 * (2**48)) + tmp_to_use2 && true;

(* t4_77 = _22 & 281474976710655; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xffffffffffff@int64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@int64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and int64 t477 v22 0xffffffffffff@int64;

assert true && tmp_to_use2 = t477;
assume tmp_to_use2 = t477 && true;

(* c_78 = a0_60 w* a0_60; *)
umulj c78 a060 a060;
(* _24 = a4_72 w* a1_61; *)
umulj v24 a472 a161;
(* _25 = a2_62 * 2; *)
umul v25 a262 0x2@uint64;
(* _27 = a3_63 w* _25; *)
umulj v27 a363 v25;
(* _28 = _24 + _27; *)
uadd v28 v24 v27;
(* d_79 = _28 + d_75; *)
uadd d79 v28 d75;
(* _29 = (long int) d_79; *)
cast v29@int64 d79@uint128;
(* d_80 = d_79 >> 52; *)
usplit d80 tmp_to_use d79 52;
(* _65 = _29 << 4; *)
ssplit tmp1 tmp2 v29 60;
shl v65 tmp2 4;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _30 = _65 & 72057594037927920; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff0@int64 = 0xfffffffffffff0 *)
(* Note: 0xfffffffffffff0@int64 = 0b00000011111111111111111111111111111111111111111111111111110000 *)
and int64 v30 v65 0xfffffffffffff0@int64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true &&  v30 = tmp_to_use_p * (2**4)@64;
assume v30 = tmp_to_use * (2**4) && true;

vpc v30@uint64 v30;

(* u0_81 = _30 | tx_76; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint64 u081 v30 tx76; *)

vpc tx76@uint64 tx76;
uadd u081 v30 tx76;

(* _32 = u0_81 w* 4294968273; *)
umulj v32 u081 0x1000003d1@uint64;
(* c_82 = _32 + c_78; *)
uadd c82 v32 c78;
(* _33 = (long unsigned int) c_82; *)
cast v33@uint64 c82@uint128;
(* _34 = _33 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v34 v33 0xfffffffffffff@uint64;
(* *r_83(D) = _34; *)
mov r83_0 v34;
(* c_85 = c_82 >> 52; *)
usplit c85 tmp_to_use c82 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v34;
assume tmp_to_use = v34 && true;

(* _35 = _1 w* a1_61; *)
umulj v35 v1 a161;
(* _36 = a2_62 w* a4_72; *)
umulj v36 a262 a472;
(* _37 = a3_63 w* a3_63; *)
umulj v37 a363 a363;
(* _38 = _36 + _37; *)
uadd v38 v36 v37;
(* d_87 = _38 + d_80; *)
uadd d87 v38 d80;
(* _39 = d_87 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v39 d87 value;
(* _40 = _39 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v40 v39 value;
(* _103 = _35 + _40; *)
uadd v103 v35 v40;
(* c_88 = c_85 + _103; *)
uadd c88 c85 v103;
(* d_89 = d_87 >> 52; *)
usplit d89 tmp_to_use d87 52;

assert true && tmp_to_use = v39;
assume tmp_to_use = v39 && true;

(* _41 = (long unsigned int) c_88; *)
cast v41@uint64 c88@uint128;
(* _42 = _41 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v42 v41 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_83(D) + 8B] = _42; *)
mov r83_8 v42;
(* c_91 = c_88 >> 52; *)
usplit c91 tmp_to_use c88 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v42;
assume tmp_to_use = v42 && true;

(* _43 = _1 w* a2_62; *)
umulj v43 v1 a262;
(* _44 = a1_61 w* a1_61; *)
umulj v44 a161 a161;
(* _45 = _43 + _44; *)
uadd v45 v43 v44;
(* _46 = a3_63 w* a4_72; *)
umulj v46 a363 a472;
(* d_93 = _46 + d_89; *)
uadd d93 v46 d89;
(* _47 = d_93 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v47 d93 value;
(* _48 = _47 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v48 v47 value;
(* _104 = _45 + _48; *)
uadd v104 v45 v48;
(* c_94 = c_91 + _104; *)
uadd c94 c91 v104;
(* d_95 = d_93 >> 52; *)
usplit d95 tmp_to_use d93 52;

assert true && tmp_to_use = v47;
assume tmp_to_use = v47 && true;

(* _49 = (long unsigned int) c_94; *)
cast v49@uint64 c94@uint128;
(* _50 = _49 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v50 v49 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_83(D) + 16B] = _50; *)
mov r83_16 v50;
(* c_97 = c_94 >> 52; *)
usplit c97 tmp_to_use c94 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v50;
assume tmp_to_use = v50 && true;

(* _51 = d_95 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v51 d95 value;
(* _52 = (__int128 unsigned) t3_70; *)
vpc v52@uint128 t370@int64;
(* _53 = _51 + _52; *)
uadd v53 v51 v52;
(* c_98 = _53 + c_97; *)
uadd c98 v53 c97;
(* _54 = (long unsigned int) c_98; *)
cast v54@uint64 c98@uint128;
(* _55 = _54 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v55 v54 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_83(D) + 24B] = _55; *)
mov r83_24 v55;
(* c_100 = c_98 >> 52; *)
usplit c100 tmp_to_use c98 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v55;
assume tmp_to_use = v55 && true;

(* _56 = (__int128 unsigned) t4_77; *)
vpc v56@uint128 t477@int64;
(* c_101 = _56 + c_100; *)
uadd c101 v56 c100;
(* _57 = (long unsigned int) c_101; *)
vpc v57@uint64 c101@uint128;
(* MEM[(uint64_t * )r_83(D) + 32B] = _57; *)
mov r83_32 v57;
(* return; *)


(* Start with unused lhs *)
mov c0 r83_0@uint64;
mov c1 r83_8@uint64;
mov c2 r83_16@uint64;
mov c3 r83_24@uint64;
mov c4 r83_32@uint64;
(* End with unsed lhs *)


{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      sq
      (limbs 52 [a0, a1, a2, a3, a4])
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  and [
        c0 < (2**53-1)@64,
        c1 < (2**53-1)@64,
        c2 < (2**53-1)@64,
        c3 < (2**53-1)@64,
        c4 < (2**49-1)@64
  ]
}

(* ============= secp256k1_fe_normalize_weak ======================== *)

const p0 = 0xFFFFEFFFFFC2F
const p1 = 0xFFFFFFFFFFFFF
const p2 = 0xFFFFFFFFFFFFF
const p3 = 0xFFFFFFFFFFFFF
const p4 = 0xFFFFFFFFFFFF

proc secp256k1_fe_normalize_weak (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) =
{
  true
&&
  and [
    a0 <=u (2**63)@64, a1 <=u (2**63)@64, a2 <=u (2**63)@64, a3 <=u (2**63)@64,
    a4 <=u (2**63)@64
  ]
}

(* Start with undefined rhs *)
mov r7_0@uint64 a0;
mov r7_8@uint64 a1;
mov r7_16@uint64 a2;
mov r7_24@uint64 a3;
mov r7_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_8 = r_7(D)->n[0]; *)
mov t08  r7_0;
(* t1_9 = r_7(D)->n[1]; *)
mov t19  r7_8;
(* t2_10 = r_7(D)->n[2]; *)
mov t210  r7_16;
(* t3_11 = r_7(D)->n[3]; *)
mov t311  r7_24;
(* t4_12 = r_7(D)->n[4]; *)
mov t412  r7_32;
(* x_13 = t4_12 >> 48; *)
(* NOTE: merge with t4_14 = t4_12 & 281474976710655; *)
usplit x13 t414 t412 48;
(* t4_14 = t4_12 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t414 t412 48; *)
(* _1 = x_13 * 4294968273; *)
umul v1 x13 0x1000003d1@uint64;
(* t0_15 = _1 + t0_8; *)
uadd t015 v1 t08;
(* _2 = t0_15 >> 52; *)
(* NOTE: merge with t0_17 = t0_15 & 4503599627370495; *)
usplit v2 t017 t015 52;
(* t1_16 = _2 + t1_9; *)
uadd t116 v2 t19;
(* t0_17 = t0_15 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t017 t015 52; *)
(* _3 = t1_16 >> 52; *)
(* NOTE: merge with t1_19 = t1_16 & 4503599627370495; *)
usplit v3 t119 t116 52;
(* t2_18 = _3 + t2_10; *)
uadd t218 v3 t210;
(* t1_19 = t1_16 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t119 t116 52; *)
(* _4 = t2_18 >> 52; *)
(* NOTE: merge with t2_21 = t2_18 & 4503599627370495; *)
usplit v4 t221 t218 52;
(* t3_20 = _4 + t3_11; *)
uadd t320 v4 t311;
(* t2_21 = t2_18 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t221 t218 52; *)
(* _5 = t3_20 >> 52; *)
(* NOTE: merge with t3_23 = t3_20 & 4503599627370495; *)
usplit v5 t323 t320 52;
(* t4_22 = _5 + t4_14; *)
uadd t422 v5 t414;
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t323 t320 52; *)
(* r_7(D)->n[0] = t0_17; *)
mov r7_0 t017;
(* r_7(D)->n[1] = t1_19; *)
mov r7_8 t119;
(* r_7(D)->n[2] = t2_21; *)
mov r7_16 t221;
(* r_7(D)->n[3] = t3_23; *)
mov r7_24 t323;
(* r_7(D)->n[4] = t4_22; *)
mov r7_32 t422;
(* return; *)


(* Start with unused lhs *)
mov c0 r7_0@uint64;
mov c1 r7_8@uint64;
mov c2 r7_16@uint64;
mov c3 r7_24@uint64;
mov c4 r7_32@uint64;
(* End with unsed lhs *)


{
  eqmod (limbs 52 [c0, c1, c2, c3, c4])
          (limbs 52 [a0, a1, a2, a3, a4])
          (limbs 52 [$p0, $p1, $p2, $p3, $p4])
&&
  and [
    eqmod (limbs 52 [c0, c1, c2, c3, c4])
          (limbs 52 [a0, a1, a2, a3, a4])
          (limbs 52 [$p0@64, $p1@64, $p2@64, $p3@64, $p4@64]),
    c0 <u (2**52)@64, c1 <u (2**52)@64, c2 <u (2**52)@64, c3 <u (2**52)@64,
    c4 <u (2**52)@64
  ]
}


proc secp256k1_gej_double_var_part_14 (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 z0, uint64 z1, uint64 z2, uint64 z3, uint64 z4; uint64 rx0, uint64 rx1, uint64 rx2, uint64 rx3, uint64 rx4, uint64 ry0, uint64 ry1, uint64 ry2, uint64 ry3, uint64 ry4, uint64 rz0, uint64 rz1, uint64 rz2, uint64 rz3, uint64 rz4) = 
{
  true
  &&
   and
  [
    x0 < (8*(2**53-1))@64,
    x1 < (8*(2**53-1))@64,
    x2 < (8*(2**53-1))@64,
    x3 < (8*(2**53-1))@64,
    x4 < (8*(2**49-1))@64,
    y0 < (8*(2**53-1))@64,
    y1 < (8*(2**53-1))@64,
    y2 < (8*(2**53-1))@64,
    y3 < (8*(2**53-1))@64,
    y4 < (8*(2**49-1))@64,
    z0 < (8*(2**53-1))@64,
    z1 < (8*(2**53-1))@64,
    z2 < (8*(2**53-1))@64,
    z3 < (8*(2**53-1))@64,
    z4 < (8*(2**49-1))@64
  ]
}

(* Start with undefined rhs *)
(* modified *)
mov a2_0@uint64 x0;
mov a2_8@uint64 x1;
mov a2_16@uint64 x2;
mov a2_24@uint64 x3;
mov a2_32@uint64 x4;
mov a2_40@uint64 y0;
mov a2_48@uint64 y1;
mov a2_56@uint64 y2;
mov a2_64@uint64 y3;
mov a2_72@uint64 y4;
mov a2_80@uint64 z0;
mov a2_88@uint64 z1;
mov a2_96@uint64 z2;
mov a2_104@uint64 z3;
mov a2_112@uint64 z4;


(* 
    mov rzr1_8@uint64 _;
    mov rzr1_16@uint64 _;
    mov rzr1_24@uint64 _;
    mov rzr1_32@uint64 _;
*)
(* function output 
    mov t1_0@uint64 _;
    mov t1_8@uint64 _;
    mov t1_16@uint64 _;
    mov t1_24@uint64 _;
    mov t1_32@uint64 _;

    mov t3_0@uint64 _;
    mov t3_8@uint64 _;
    mov t3_16@uint64 _;
    mov t3_24@uint64 _;
    mov t3_32@uint64 _;
    mov t4_0@uint64 _;
    mov t4_8@uint64 _;
    mov t4_16@uint64 _;
    mov t4_24@uint64 _;
    mov t4_32@uint64 _;


    mov r15_0@uint64 _;
    mov r15_8@uint64 _;
    mov r15_16@uint64 _;
    mov r15_24@uint64 _;
    mov r15_32@uint64 _;
    mov r15_40@uint64 _;
    mov r15_48@uint64 _;
    mov r15_56@uint64 _;
    mov r15_64@uint64 _;
    mov r15_72@uint64 _;
    mov r15_80@uint64 _;
    mov r15_88@uint64 _;
    mov r15_96@uint64 _;
    mov r15_104@uint64 _;
    mov r15_112@uint64 _;
*)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* if (rzr_1(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 3 *)

(* *rzr_1(D) = a_2(D)->y; *)
(* rhs field y's offset is 40 *)

mov rzr1_0 a2_40;
mov rzr1_8 a2_48;
mov rzr1_16 a2_56;
mov rzr1_24 a2_64;
mov rzr1_32 a2_72;


(* secp256k1_fe_normalize_weak (rzr_1(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_normalize_weak(rzr1_0, rzr1_8, rzr1_16, rzr1_24, rzr1_32, rzr1_0, rzr1_8, rzr1_16, rzr1_24, rzr1_32);

(* _3 = rzr_1(D)->n[0]; *)
mov v3 rzr1_0;
(* _4 = _3 * 2; *)
umul v4 v3 0x2@uint64;
(* rzr_1(D)->n[0] = _4; *)
mov rzr1_0 v4;
(* _5 = rzr_1(D)->n[1]; *)
mov v5 rzr1_8;
(* _6 = _5 * 2; *)
umul v6 v5 0x2@uint64;
(* rzr_1(D)->n[1] = _6; *)
mov rzr1_8 v6;
(* _7 = rzr_1(D)->n[2]; *)
mov v7 rzr1_16;
(* _8 = _7 * 2; *)
umul v8 v7 0x2@uint64;
(* rzr_1(D)->n[2] = _8; *)
mov rzr1_16 v8;
(* _9 = rzr_1(D)->n[3]; *)
mov v9 rzr1_24;
(* _10 = _9 * 2; *)
umul v10 v9 0x2@uint64;
(* rzr_1(D)->n[3] = _10; *)
mov rzr1_24 v10;
(* _11 = rzr_1(D)->n[4]; *)
mov v11 rzr1_32;
(* _12 = _11 * 2; *)
umul v12 v11 0x2@uint64;
(* rzr_1(D)->n[4] = _12; *)
mov rzr1_32 v12;

(* BB's index is 4 *)

(* .MEM_124 = PHI <.MEM_132(3), .MEM_125(D)(2)> *)





(* _13 = &MEM[(const struct secp256k1_fe * )a_2(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* _14 = &MEM[(const struct secp256k1_fe * )a_2(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* _16 = &MEM[(struct secp256k1_fe * )r_15(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_16, _14, _13); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

(*  =======
    combine following line:
    _13 = &MEM[(const struct secp256k1_fe * )a_2(D) + 40B].n
    _14 = &MEM[(const struct secp256k1_fe * )a_2(D) + 80B].n;
    _16 = &MEM[(struct secp256k1_fe * )r_15(D) + 80B].n;

    typedef struct {
    /* X = sum(i=0..4, elem[i]*2^52) mod n */
    uint64_t n[5];
    #ifdef VERIFY
        int magnitude;
        int normalized;
    #endif
    } secp256k1_fe;

====== *)

inline secp256k1_fe_mul_inner(a2_80, a2_88 ,a2_96, a2_104, a2_112, a2_40, a2_48, a2_56, a2_64, a2_72, r15_80, r15_88 ,r15_96, r15_104, r15_112);

(* _17 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[0]; *)
mov v17 r15_80;
(* _18 = _17 * 2; *)
umul v18 v17 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[0] = _18; *)
mov r15_80 v18;
(* _19 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[1]; *)
mov v19 r15_88;
(* _20 = _19 * 2; *)
umul v20 v19 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[1] = _20; *)
mov r15_88 v20;
(* _21 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[2]; *)
mov v21 r15_96;
(* _22 = _21 * 2; *)
umul v22 v21 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[2] = _22; *)
mov r15_96 v22;
(* _23 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[3]; *)
mov v23 r15_104;
(* _24 = _23 * 2; *)
umul v24 v23 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[3] = _24; *)
mov r15_104 v24;
(* _25 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[4]; *)
mov v25 r15_112;
(* _26 = _25 * 2; *)
umul v26 v25 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[4] = _26; *)
mov r15_112 v26;
(* _27 = &MEM[(const struct secp256k1_fe * )a_2(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_sqr_inner (&t1.n, _27); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

(*  =======
    combine following line:
    _27 = &MEM[(const struct secp256k1_fe * )a_2(D)].n; 
    typedef struct {
    /* X = sum(i=0..4, elem[i]*2^52) mod n */
    uint64_t n[5];
    #ifdef VERIFY
        int magnitude;
        int normalized;
    #endif
    } secp256k1_fe;
====== *)

inline secp256k1_fe_sqr_inner(a2_0, a2_8, a2_16, a2_24, a2_32 , t1_0, t1_8 ,t1_16, t1_24, t1_32);

(* _28 = t1.n[0]; *)
mov v28 t1_0;
(* _29 = _28 * 3; *)
umul v29 v28 0x3@uint64;
(* t1.n[0] = _29; *)
mov t1_0 v29;
(* _30 = t1.n[1]; *)
mov v30 t1_8;
(* _31 = _30 * 3; *)
umul v31 v30 0x3@uint64;
(* t1.n[1] = _31; *)
mov t1_8 v31;
(* _32 = t1.n[2]; *)
mov v32 t1_16;
(* _33 = _32 * 3; *)
umul v33 v32 0x3@uint64;
(* t1.n[2] = _33; *)
mov t1_16 v33;
(* _34 = t1.n[3]; *)
mov v34 t1_24;
(* _35 = _34 * 3; *)
umul v35 v34 0x3@uint64;
(* t1.n[3] = _35; *)
mov t1_24 v35;
(* _36 = t1.n[4]; *)
mov v36 t1_32;
(* _37 = _36 * 3; *)
umul v37 v36 0x3@uint64;
(* t1.n[4] = _37; *)
mov t1_32 v37;
(* ====================== 
    gcc combine following line in souce code 
    secp256k1_fe_mul_int(&t1, 3); 
    secp256k1_fe_sqr(&t2, &t1);

=======================*)
(* _190 = _28 * 6; *)
umul v190 v28 0x6@uint64;
(* _193 = _190 w* _35; *)
umulj v193 v190 v35;
(* _194 = _30 * 6; *)
umul v194 v30 0x6@uint64;
(* _197 = _194 w* _33; *)
umulj v197 v194 v33;
(* d_198 = _193 + _197; *)
uadd d198 v193 v197;
(* c_200 = _37 w* _37; *)
umulj c200 v37 v37;
(* _201 = c_200 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v201 c200 value;
(* _202 = _201 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v202 v201 value;
(* d_203 = d_198 + _202; *)
uadd d203 d198 v202;
(* c_204 = c_200 >> 52; *)
usplit c204 tmp_to_use c200 52;

assert true && tmp_to_use = v201;
assume tmp_to_use = v201 && true;

(* _205 = (long int) d_203; *)
cast v205@int64 d203@uint128;
(* t3_206 = _205 & 4503599627370495; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff@int64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@int64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and int64 t3206 v205 0xfffffffffffff@int64;
(* d_207 = d_203 >> 52; *)
usplit d207 tmp_to_use d203 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = t3206;
assume tmp_to_use = t3206 && true;

(* a4_208 = _36 * 6; *)
umul a4208 v36 0x6@uint64;
(* _211 = _29 w* a4_208; *)
umulj v211 v29 a4208;
(* _212 = _35 w* _194; *)
umulj v212 v35 v194;
(* _213 = _211 + _212; *)
uadd v213 v211 v212;
(* _214 = _33 w* _33; *)
umulj v214 v33 v33;
(* _215 = _213 + _214; *)
uadd v215 v213 v214;
(* _217 = c_204 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v217 c204 value;
(* _285 = _215 + _217; *)
uadd v285 v215 v217;
(* d_218 = d_207 + _285; *)
uadd d218 d207 v285;
(* _219 = (long int) d_218; *)
cast v219@int64 d218@uint128;
(* d_220 = d_218 >> 52; *)
usplit d220 tmp_to_use1 d218 52;
(* _221 = _219 >> 48; *)
(* TODO: signed operation, need check *)
ssplit v221 tmp_to_use2 v219 48;
(* tx_222 = _221 & 15; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xf@int64 = 0x0000000000000f *)
(* Note: 0xf@int64 = 0b00000000000000000000000000000000000000000000000000000000001111 *)
and int64 tx222 v221 0xf@int64;

vpc tmp_to_use1_p@uint64 tmp_to_use1;
assert true && tmp_to_use1_p = (tx222 * (2**48)@64) + tmp_to_use2;
assume tmp_to_use1 = (tx222 * (2**48)) + tmp_to_use2 && true;

(* t4_223 = _219 & 281474976710655; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xffffffffffff@int64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@int64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and int64 t4223 v219 0xffffffffffff@int64;

assert true && tmp_to_use2 = t4223;
assume tmp_to_use2 = t4223 && true;

(* c_224 = _29 w* _29; *)
umulj c224 v29 v29;
(* _226 = a4_208 w* _31; *)
umulj v226 a4208 v31;
(* _227 = _32 * 6; *)
umul v227 v32 0x6@uint64;
(* _229 = _35 w* _227; *)
umulj v229 v35 v227;
(* _230 = _226 + _229; *)
uadd v230 v226 v229;
(* d_231 = d_220 + _230; *)
uadd d231 d220 v230;
(* _232 = (long int) d_231; *)
cast v232@int64 d231@uint128;
(* d_233 = d_231 >> 52; *)
usplit d233 tmp_to_use d231 52;
(* _234 = _232 << 4; *)
ssplit tmp1 tmp2 v232 60;
shl v234 tmp2 4;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _235 = _234 & 72057594037927920; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff0@int64 = 0xfffffffffffff0 *)
(* Note: 0xfffffffffffff0@int64 = 0b00000011111111111111111111111111111111111111111111111111110000 *)
and int64 v235 v234 0xfffffffffffff0@int64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true &&  v235 = tmp_to_use_p * (2**4)@64;
assume v235 = tmp_to_use * (2**4) && true;

vpc v235@uint64 v235;

(* u0_236 = tx_222 | _235; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or int64 u0236 tx222 v235; *)

vpc tx222@uint64 tx222;
uadd u0236 tx222 v235;

(* _238 = u0_236 w* 4294968273; *)
umulj v238 u0236 0x1000003d1@uint64;
(* c_239 = c_224 + _238; *)
uadd c239 c224 v238;
(* _240 = (long unsigned int) c_239; *)
cast v240@uint64 c239@uint128;
(* _241 = _240 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v241 v240 0xfffffffffffff@uint64;
(* c_242 = c_239 >> 52; *)


usplit c242 tmp_to_use c239 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v241;
assume tmp_to_use = v241 && true;

(* _243 = _190 w* _31; *)
umulj v243 v190 v31;
(* _245 = _33 w* a4_208; *)
umulj v245 v33 a4208;
(* _246 = _35 w* _35; *)
umulj v246 v35 v35;
(* _247 = _245 + _246; *)
uadd v247 v245 v246;
(* d_248 = d_233 + _247; *)
uadd d248 d233 v247;
(* _249 = d_248 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v249 d248 value;
(* _250 = _249 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v250 v249 value;
(* _284 = _243 + _250; *)
uadd v284 v243 v250;
(* c_251 = c_242 + _284; *)
uadd c251 c242 v284;
(* d_252 = d_248 >> 52; *)
usplit d252 tmp_to_use d248 52;

assert true && tmp_to_use = v249;
assume tmp_to_use = v249 && true;

(* _253 = (long unsigned int) c_251; *)
cast v253@uint64 c251@uint128;
(* _254 = _253 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v254 v253 0xfffffffffffff@uint64;
(* c_255 = c_251 >> 52; *)
usplit c255 tmp_to_use c251 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v254;
assume tmp_to_use = v254 && true;

(* _256 = _190 w* _33; *)
umulj v256 v190 v33;
(* _257 = _31 w* _31; *)
umulj v257 v31 v31;
(* _258 = _256 + _257; *)
uadd v258 v256 v257;
(* _260 = _35 w* a4_208; *)
umulj v260 v35 a4208;
(* d_261 = d_252 + _260; *)
uadd d261 d252 v260;
(* _262 = d_261 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v262 d261 value;
(* _263 = _262 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v263 v262 value;
(* _145 = _258 + _263; *)
uadd v145 v258 v263;
(* c_264 = _145 + c_255; *)
uadd c264 v145 c255;
(* d_265 = d_261 >> 52; *)
usplit d265 tmp_to_use d261 52;

assert true && tmp_to_use = v262;
assume tmp_to_use = v262 && true;

(* _266 = (long unsigned int) c_264; *)
cast v266@uint64 c264@uint128;
(* _267 = _266 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v267 v266 0xfffffffffffff@uint64;
(* c_268 = c_264 >> 52; *)
usplit c268 tmp_to_use c264 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v267;
assume tmp_to_use = v267 && true;

(* _269 = d_265 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v269 d265 value;
(* _270 = (__int128 unsigned) t3_206; *)
(* ====== csat -> vpc ===== *)
vpc v270@uint128 t3206@int64;
(* _271 = _269 + _270; *)
uadd v271 v269 v270;
(* c_272 = c_268 + _271; *)
uadd c272 c268 v271;
(* _273 = (long unsigned int) c_272; *)
cast v273@uint64 c272@uint128;
(* _274 = _273 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v274 v273 0xfffffffffffff@uint64;
(* c_275 = c_272 >> 52; *)
usplit c275 tmp_to_use c272 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v274;
assume tmp_to_use = v274 && true;

(* _276 = (__int128 unsigned) t4_223; *)
(* ====== csat -> vpc ===== *)
vpc v276@uint128 t4223@int64;
(* c_277 = c_275 + _276; *)
uadd c277 c275 v276;
(* _278 = (long unsigned int) c_277; *)
(* ====== csat -> vpc ===== *)
vpc v278@uint64 c277@uint128;

(* =========== finish combination ============ *)
(* secp256k1_fe_sqr_inner (&t3.n, _13); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* recall that r13 is a2_40 ~ a2_72 *)
inline secp256k1_fe_sqr_inner(a2_40, a2_48, a2_56, a2_64, a2_72 , t3_0, t3_8, t3_16, t3_24, t3_32);


(* _38 = t3.n[0]; *)
mov v38 t3_0;
(* _39 = _38 * 2; *)
umul v39 v38 0x2@uint64;
(* t3.n[0] = _39; *)
mov t3_0 v39;
(* _40 = t3.n[1]; *)
mov v40 t3_8;
(* _41 = _40 * 2; *)
umul v41 v40 0x2@uint64;
(* t3.n[1] = _41; *)
mov t3_8 v41;
(* _42 = t3.n[2]; *)
mov v42 t3_16;
(* _43 = _42 * 2; *)
umul v43 v42 0x2@uint64;
(* t3.n[2] = _43; *)
mov t3_16 v43;
(* _44 = t3.n[3]; *)
mov v44 t3_24;
(* _45 = _44 * 2; *)
umul v45 v44 0x2@uint64;
(* t3.n[3] = _45; *)
mov t3_24 v45;
(* _46 = t3.n[4]; *)
mov v46 t3_32;
(* _47 = _46 * 2; *)
umul v47 v46 0x2@uint64;
(* t3.n[4] = _47; *)
mov t3_32 v47;
(* secp256k1_fe_sqr_inner (&t4.n, &t3.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline secp256k1_fe_sqr_inner(t3_0, t3_8, t3_16, t3_24, t3_32, t4_0, t4_8, t4_16, t4_24, t4_32);

(* _48 = t4.n[0]; *)
mov v48 t4_0;
(* _49 = _48 * 2; *)
umul v49 v48 0x2@uint64;
(* t4.n[0] = _49; *)
mov t4_0 v49;
(* _50 = t4.n[1]; *)
mov v50 t4_8;
(* _51 = _50 * 2; *)
umul v51 v50 0x2@uint64;
(* t4.n[1] = _51; *)
mov t4_8 v51;
(* _52 = t4.n[2]; *)
mov v52 t4_16;
(* _53 = _52 * 2; *)
umul v53 v52 0x2@uint64;
(* t4.n[2] = _53; *)
mov t4_16 v53;
(* _54 = t4.n[3]; *)
mov v54 t4_24;
(* _55 = _54 * 2; *)
umul v55 v54 0x2@uint64;
(* t4.n[3] = _55; *)
mov t4_24 v55;
(* _56 = t4.n[4]; *)
mov v56 t4_32;
(* _57 = _56 * 2; *)
umul v57 v56 0x2@uint64;
(* t4.n[4] = _57; *)
mov t4_32 v57;
(* secp256k1_fe_mul_inner (&t3.n, &t3.n, _27); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

(* recall that v27 is a2_0 ~ a2_32 *)

inline secp256k1_fe_mul_inner(t3_0, t3_8, t3_16 ,t3_24, t3_32, a2_0, a2_8, a2_16, a2_24, a2_32, t3_0, t3_8, t3_16, t3_24, t3_32);


(* r_15(D)->x = t3; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)

(* Note: r15->x is r15_0 ~ r15_32 *)

mov r15_0 t3_0;
mov r15_8 t3_8;
mov r15_16 t3_16;
mov r15_24 t3_24;
mov r15_32 t3_32;


(* _58 = MEM[(struct secp256k1_fe * )r_15(D)].n[0]; *)
mov v58 r15_0;
(* _59 = _58 * 4; *)
umul v59 v58 0x4@uint64;
(* _60 = MEM[(struct secp256k1_fe * )r_15(D)].n[1]; *)
mov v60 r15_8;
(* _61 = _60 * 4; *)
umul v61 v60 0x4@uint64;
(* _62 = MEM[(struct secp256k1_fe * )r_15(D)].n[2]; *)
mov v62 r15_16;
(* _63 = _62 * 4; *)
umul v63 v62 0x4@uint64;
(* _64 = MEM[(struct secp256k1_fe * )r_15(D)].n[3]; *)
mov v64 r15_24;
(* _65 = _64 * 4; *)
umul v65 v64 0x4@uint64;
(* _66 = MEM[(struct secp256k1_fe * )r_15(D)].n[4]; *)
mov v66 r15_32;
(* _67 = _66 * 4; *)
umul v67 v66 0x4@uint64;
(* _68 = 45035953324022230 - _59; *)
usub v68 0x9ffff5ffffd9d6@uint64 v59;
(* _69 = 45035996273704950 - _61; *)
usub v69 0x9ffffffffffff6@uint64 v61;
(* _70 = 45035996273704950 - _63; *)
usub v70 0x9ffffffffffff6@uint64 v63;
(* _71 = 45035996273704950 - _65; *)
usub v71 0x9ffffffffffff6@uint64 v65;
(* _72 = 2814749767106550 - _67; *)
usub v72 0x9fffffffffff6@uint64 v67;
(* _74 = _68 + _241; *)
uadd v74 v68 v241;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[0] = _74; *)
mov r15_0 v74;
(* _76 = _69 + _254; *)
uadd v76 v69 v254;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[1] = _76; *)
mov r15_8 v76;
(* _78 = _70 + _267; *)
uadd v78 v70 v267;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[2] = _78; *)
mov r15_16 v78;
(* _80 = _71 + _274; *)
uadd v80 v71 v274;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[3] = _80; *)
mov r15_24 v80;
(* _82 = _72 + _278; *)
uadd v82 v72 v278;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[4] = _82; *)
mov r15_32 v82;
(* _88 = t3.n[0]; *)
mov v88 t3_0;
(* _89 = _88 * 6; *)
umul v89 v88 0x6@uint64;
(* _81 = _89 + 18014381329608892; *)
uadd v81 v89 0x3ffffbfffff0bc@uint64;
(* _90 = t3.n[1]; *)
mov v90 t3_8;
(* _91 = _90 * 6; *)
umul v91 v90 0x6@uint64;
(* _79 = _91 + 18014398509481980; *)
uadd v79 v91 0x3ffffffffffffc@uint64;
(* _92 = t3.n[2]; *)
mov v92 t3_16;
(* _93 = _92 * 6; *)
umul v93 v92 0x6@uint64;
(* _77 = _93 + 18014398509481980; *)
uadd v77 v93 0x3ffffffffffffc@uint64;
(* _94 = t3.n[3]; *)
mov v94 t3_24;
(* _95 = _94 * 6; *)
umul v95 v94 0x6@uint64;
(* _75 = _95 + 18014398509481980; *)
uadd v75 v95 0x3ffffffffffffc@uint64;
(* _96 = t3.n[4]; *)
mov v96 t3_32;
(* _97 = _96 * 6; *)
umul v97 v96 0x6@uint64;
(* _73 = _97 + 1125899906842620; *)
uadd v73 v97 0x3fffffffffffc@uint64;
(* _98 = _81 - _241; *)
usub v98 v81 v241;
(* t3.n[0] = _98; *)
mov t3_0 v98;
(* _99 = _79 - _254; *)
usub v99 v79 v254;
(* t3.n[1] = _99; *)
mov t3_8 v99;
(* _100 = _77 - _267; *)
usub v100 v77 v267;
(* t3.n[2] = _100; *)
mov t3_16 v100;
(* _101 = _75 - _274; *)
usub v101 v75 v274;
(* t3.n[3] = _101; *)
mov t3_24 v101;
(* _102 = _73 - _278; *)
usub v102 v73 v278;
(* t3.n[4] = _102; *)
mov t3_32 v102;
(* _103 = &MEM[(struct secp256k1_fe * )r_15(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)

(* secp256k1_fe_mul_inner (_103, &t1.n, &t3.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(t1_0, t1_8, t1_16, t1_24, t1_32, t3_0, t3_8, t3_16, t3_24, t3_32, r15_40, r15_48, r15_56, r15_64, r15_72);

(* vect__104.343_279 = MEM[(long unsigned int * )&t4]; *)
mov vect__104343279_0 t4_0;
mov vect__104343279_1 t4_8;
(* vect__104.344_281 = MEM[(long unsigned int * )&t4 + 16B]; *)
mov vect__104344281_0 t4_16;
mov vect__104344281_1 t4_24;
(* vect__105.345_166 = { 27021571994413338, 27021597764222970 } - vect__104.343_279; *)
usub vect__105345166_0 0x5ffff9ffffe91a@uint64 vect__104343279_0;
usub vect__105345166_1 0x5ffffffffffffa@uint64 vect__104343279_1;
(* vect__105.345_167 = { 27021597764222970, 27021597764222970 } - vect__104.344_281; *)
usub vect__105345167_0 0x5ffffffffffffa@uint64 vect__104344281_0;
usub vect__105345167_1 0x5ffffffffffffa@uint64 vect__104344281_1;
(* _112 = t4.n[4]; *)
mov v112 t4_32;
(* _113 = 1688849860263930 - _112; *)
usub v113 0x5fffffffffffa@uint64 v112;
(* vect__114.348_169 = MEM[(long unsigned int * )r_15(D) + 40B]; *)
mov vect__114348169_0 r15_40;
mov vect__114348169_1 r15_48;
(* vect__114.349_186 = MEM[(long unsigned int * )r_15(D) + 56B]; *)
mov vect__114349186_0 r15_56;
mov vect__114349186_1 r15_64;
(* vect__115.350_188 = vect__105.345_166 + vect__114.348_169; *)
uadd vect__115350188_0 vect__105345166_0 vect__114348169_0;
uadd vect__115350188_1 vect__105345166_1 vect__114348169_1;
(* vect__115.350_189 = vect__105.345_167 + vect__114.349_186; *)
uadd vect__115350189_0 vect__105345167_0 vect__114349186_0;
uadd vect__115350189_1 vect__105345167_1 vect__114349186_1;
(* MEM[(long unsigned int * )r_15(D) + 40B] = vect__115.350_188; *)
mov r15_40 vect__115350188_0;
mov r15_48 vect__115350188_1;
(* MEM[(long unsigned int * )r_15(D) + 56B] = vect__115.350_189; *)
mov r15_56 vect__115350189_0;
mov r15_64 vect__115350189_1;
(* _122 = MEM[(struct secp256k1_fe * )r_15(D) + 40B].n[4]; *)
mov v122 r15_72;
(* _123 = _113 + _122; *)
uadd v123 v113 v122;
(* MEM[(struct secp256k1_fe * )r_15(D) + 40B].n[4] = _123; *)
mov r15_72 v123;
(* t1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t4 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov rx0 r15_0@uint64;
mov rx1 r15_8@uint64;
mov rx2 r15_16@uint64;
mov rx3 r15_24@uint64;
mov rx4 r15_32@uint64;
mov ry0 r15_40@uint64;
mov ry1 r15_48@uint64;
mov ry2 r15_56@uint64;
mov ry3 r15_64@uint64;
mov ry4 r15_72@uint64;
mov rz0 r15_80@uint64;
mov rz1 r15_88@uint64;
mov rz2 r15_96@uint64;
mov rz3 r15_104@uint64;
mov rz4 r15_112@uint64;
mov _ rzr1_0@uint64;
mov _ rzr1_8@uint64;
mov _ rzr1_16@uint64;
mov _ rzr1_24@uint64;
mov _ rzr1_32@uint64;

(*
    mov _ t1_0@uint64;
    mov _ t1_8@uint64;
    mov _ t1_16@uint64;
    mov _ t1_24@uint64;
    mov _ t1_32@uint64;
    mov _ t3_0@uint64;
    mov _ t3_8@uint64;
    mov _ t3_16@uint64;
    mov _ t3_24@uint64;
    mov _ t3_32@uint64;
*)
(* End with unsed lhs *)


{
  and [
      (* X' = 9*X^4 - 8*X*Y^2 *)

      (
          (limbs 52 [rx0, rx1, rx2 ,rx3 ,rx4])
          =
          (
              9 * ((limbs 52 [x0, x1, x2, x3, x4]) **4 )
              -
              8 * (limbs 52 [x0, x1, x2 ,x3 ,x4]) * ((limbs 52 [y0 ,y1, y2, y3, y4]) ** 2)
          )
          (
              mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F
          )
      ),
      (* Y' = 36*X^3*Y^2 - 27*X^6 - 8*Y^4 *)
      (
          (limbs 52 [ry0, ry1, ry2 ,ry3 ,ry4])
          =
          (
              36 * ((limbs 52 [x0, x1, x2, x3, x4]) ** 3) * ((limbs 52 [y0 ,y1, y2, y3, y4]) ** 2)
              -
              27 * ((limbs 52 [x0, x1, x2 ,x3 ,x4]) ** 6)
              -
              8 * ((limbs 52 [y0 ,y1, y2, y3, y4]) ** 4)
          )
          (
              mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F
          )
      )
  ]
  &&
  true
}

(* ====================== main ========================================== *)


proc main (uint64 ax0, uint64 ax1, uint64 ax2, uint64 ax3, uint64 ax4, uint64 ay0, uint64 ay1, uint64 ay2, uint64 ay3, uint64 ay4, uint64 az0, uint64 az1, uint64 az2, uint64 az3, uint64 az4, int32 ainifity, uint64 bx0, uint64 bx1, uint64 bx2, uint64 bx3, uint64 bx4, uint64 by0, uint64 by1, uint64 by2, uint64 by3, uint64 by4, int32 binifity, uint64 bzinv0, uint64 bzinv1, uint64 bzinv2, uint64 bzinv3, uint64 bzinv4) = 
{
  true
  &&
   and
  [
    ax0 < (8*(2**53-1))@64,
    ax1 < (8*(2**53-1))@64,
    ax2 < (8*(2**53-1))@64,
    ax3 < (8*(2**53-1))@64,
    ax4 < (8*(2**49-1))@64,
    ay0 < (8*(2**53-1))@64,
    ay1 < (8*(2**53-1))@64,
    ay2 < (8*(2**53-1))@64,
    ay3 < (8*(2**53-1))@64,
    ay4 < (8*(2**49-1))@64,
    az0 < (8*(2**53-1))@64,
    az1 < (8*(2**53-1))@64,
    az2 < (8*(2**53-1))@64,
    az3 < (8*(2**53-1))@64,
    az4 < (8*(2**49-1))@64,
    ainifity <= (1)@32,

    bx0 < (8*(2**53-1))@64,
    bx1 < (8*(2**53-1))@64,
    bx2 < (8*(2**53-1))@64,
    bx3 < (8*(2**53-1))@64,
    bx4 < (8*(2**49-1))@64,
    by0 < (8*(2**53-1))@64,
    by1 < (8*(2**53-1))@64,
    by2 < (8*(2**53-1))@64,
    by3 < (8*(2**53-1))@64,
    by4 < (8*(2**49-1))@64,
    binifity <= (1)@32,

    bzinv0 < (8*(2**53-1))@64,
    bzinv1 < (8*(2**53-1))@64,
    bzinv2 < (8*(2**53-1))@64,
    bzinv3 < (8*(2**53-1))@64,
    bzinv4 < (8*(2**49-1))@64
  ]
}


(* Start with undefined rhs *)
mov a11_0@uint64 ax0;
mov a11_8@uint64 ax1;
mov a11_16@uint64 ax2;
mov a11_24@uint64 ax3;
mov a11_32@uint64 ax4;
mov a11_40@uint64 ay0;
mov a11_48@uint64 ay1;
mov a11_56@uint64 ay2;
mov a11_64@uint64 ay3;
mov a11_72@uint64 ay4;
mov a11_80@uint64 az0;
mov a11_88@uint64 az1;
mov a11_96@uint64 az2;
mov a11_104@uint64 az3;
mov a11_112@uint64 az4;
mov a11_120@int32 ainifity;

mov b9_0@uint64 bx0;
mov b9_8@uint64 bx1;
mov b9_16@uint64 bx2;
mov b9_24@uint64 bx3;
mov b9_32@uint64 bx4;
mov b9_40@uint64 by0;
mov b9_48@uint64 by1;
mov b9_56@uint64 by2;
mov b9_64@uint64 by3;
mov b9_72@uint64 by4;
mov b9_80@int32 binifity; 

mov bzinv14_0@uint64 bzinv0;
mov bzinv14_8@uint64 bzinv1;
mov bzinv14_16@uint64 bzinv2;
mov bzinv14_24@uint64 bzinv3;
mov bzinv14_32@uint64 bzinv4;

(*
    mov h3_0@uint64 _;
    mov h3_8@uint64 _;
    mov h3_16@uint64 _;
    mov h3_24@uint64 _;
    mov h3_32@uint64 _;
    mov i2_0@uint64 _;
    mov i2_8@uint64 _;
    mov i2_16@uint64 _;
    mov i2_24@uint64 _;
    mov i2_32@uint64 _;
    mov r10_0@uint64 _;
    mov r10_8@uint64 _;
    mov r10_16@uint64 _;
    mov r10_24@uint64 _;
    mov r10_32@uint64 _;
    mov s1_8@uint64 _;
    mov s1_16@uint64 _;
    mov s1_24@uint64 _;
    mov s1_32@uint64 _;
    mov s2_0@uint64 _;
    mov s2_8@uint64 _;
    mov s2_16@uint64 _;
    mov s2_24@uint64 _;
    mov s2_32@uint64 _;
    mov t_0@uint64 _;
    mov t_8@uint64 _;
    mov t_16@uint64 _;
    mov t_24@uint64 _;
    mov t_32@uint64 _;
    mov u1_8@uint64 _;
    mov u1_16@uint64 _;
    mov u1_24@uint64 _;
    mov u1_32@uint64 _;
    mov u2_0@uint64 _;
    mov u2_8@uint64 _;
    mov u2_16@uint64 _;
    mov u2_24@uint64 _;
    mov u2_32@uint64 _;
*)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = b_9(D)->infinity; *)
(* rhs field infinity's offset is 80 *)
mov v1 b9_80;
(* if (_1 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 3 *)

(* *r_10(D) = *a_11(D); *)
(* TODO: skipped, no heuristics ,need self translating *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 4 *)

(* _2 = a_11(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v2 a11_120;
(* pretmp_253 = &MEM[(const struct secp256k1_fe * )b_9(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* pretmp_254 = &MEM[(const struct secp256k1_fe * )b_9(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* pretmp_256 = &bzinv_14(D)->n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* if (_2 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 5>, False label: <bb 6> *)

(* BB's index is 5 *)

(* r_10(D)->infinity = 0; *)
mov r10_120 0x0@int32;
(* secp256k1_fe_sqr_inner (&bzinv2.n, pretmp_256); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&bzinv3.n, &bzinv2.n, pretmp_256); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _52 = &MEM[(struct secp256k1_fe * )r_10(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_52, pretmp_254, &bzinv2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _50 = &MEM[(struct secp256k1_fe * )r_10(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_50, pretmp_253, &bzinv3.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* MEM[(struct secp256k1_fe * )r_10(D) + 80B].n[4] = 0; *)
mov r10_112 0x0@uint64;
(* MEM[(long unsigned int * )r_10(D) + 80B] = { 1, 0 }; *)
mov r10_80 0x1@uint64;
mov r10_88 0x1@uint64;
(* MEM[(long unsigned int * )r_10(D) + 96B] = { 0, 0 }; *)
mov r10_96 0x0@uint64;
mov r10_104 0x0@uint64;
(* bzinv2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* bzinv3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 6 *)

(* ======================= starting general cases ==================== *)

(* r_10(D)->infinity = 0; *)
mov r10_120 0x0@int32;
(* _97 = &MEM[(const struct secp256k1_fe * )a_11(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (&az.n, _97, pretmp_256); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline secp256k1_fe_mul_inner(a11_80, a11_88, a11_96, a11_104, a11_112, bzinv14_0, bzinv14_8, bzinv14_16, bzinv14_24, bzinv14_32, az_0, az_8, az_16, az_24, az_32);

(* secp256k1_fe_sqr_inner (&z12.n, &az.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_sqr_inner(az_0, az_8, az_16, az_24, az_32, z12_0, z12_8, z12_16, z12_24, z12_32);


(* u1 = a_11(D)->x; *)
(* rhs field x's offset is 0 *)

mov u1_0 a11_0;
mov u1_8 a11_8;
mov u1_16 a11_16;
mov u1_24 a11_24;
mov u1_32 a11_32;

(* t0_219 = u1.n[0]; *)
mov t0219 u1_0;
(* t1_220 = u1.n[1]; *)
mov t1220 u1_8;
(* t2_221 = u1.n[2]; *)
mov t2221 u1_16;
(* t3_222 = u1.n[3]; *)
mov t3222 u1_24;
(* t4_223 = u1.n[4]; *)
mov t4223 u1_32;
(* x_224 = t4_223 >> 48; *)
usplit x224 tmp_to_use t4223 48;
(* t4_225 = t4_223 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t4225 t4223 0xffffffffffff@uint64;

assert true && tmp_to_use = t4225;
assume tmp_to_use = t4225 && true;

(* _226 = x_224 * 4294968273; *)
umul v226 x224 0x1000003d1@uint64;
(* t0_227 = t0_219 + _226; *)
uadd t0227 t0219 v226;
(* _228 = t0_227 >> 52; *)
usplit v228 tmp_to_use t0227 52;
(* t1_229 = t1_220 + _228; *)
uadd t1229 t1220 v228;
(* t0_230 = t0_227 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t0230 t0227 0xfffffffffffff@uint64;

assert true && tmp_to_use = t0230;
assume tmp_to_use = t0230 && true;

(* _231 = t1_229 >> 52; *)
usplit v231 tmp_to_use t1229 52;
(* t2_232 = t2_221 + _231; *)
uadd t2232 t2221 v231;
(* t1_233 = t1_229 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t1233 t1229 0xfffffffffffff@uint64;

assert true && tmp_to_use = t1233;
assume tmp_to_use = t1233 && true;

(* _234 = t2_232 >> 52; *)
usplit v234 tmp_to_use t2232 52;
(* t3_235 = t3_222 + _234; *)
uadd t3235 t3222 v234;
(* t2_236 = t2_232 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t2236 t2232 0xfffffffffffff@uint64;

assert true && tmp_to_use = t2236;
assume tmp_to_use = t2236 && true;

(* _237 = t3_235 >> 52; *)
usplit v237 tmp_to_use t3235 52;
(* t4_238 = t4_225 + _237; *)
uadd t4238 t4225 v237;
(* t3_239 = t3_235 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t3239 t3235 0xfffffffffffff@uint64;

assert true && tmp_to_use = t3239;
assume tmp_to_use = t3239 && true;

(* u1.n[0] = t0_230; *)
mov u1_0 t0230;
(* u1.n[1] = t1_233; *)
mov u1_8 t1233;
(* u1.n[2] = t2_236; *)
mov u1_16 t2236;
(* u1.n[3] = t3_239; *)
mov u1_24 t3239;
(* u1.n[4] = t4_238; *)
mov u1_32 t4238;
(* secp256k1_fe_mul_inner (&u2.n, pretmp_254, &z12.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(b9_0, b9_8, b9_16, b9_24, b9_32, z12_0, z12_8, z12_16, z12_24, z12_32, u2_0, u2_8, u2_16, u2_24, u2_32);

(* s1 = a_11(D)->y; *)
(* rhs field y's offset is 40 *)

mov s1_0 a11_40;
mov s1_8 a11_48;
mov s1_16 a11_56;
mov s1_24 a11_64;
mov s1_32 a11_72;

(* secp256k1_fe_normalize_weak (&s1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_normalize_weak(s1_0, s1_8, s1_16, s1_24, s1_32, s1_0, s1_8, s1_16, s1_24, s1_32);

(* secp256k1_fe_mul_inner (&s2.n, pretmp_253, &z12.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(b9_40, b9_48, b9_56, b9_64, b9_72, z12_0, z12_8, z12_16, z12_24, z12_32, s2_0, s2_8, s2_16, s2_24, s2_32);

(* secp256k1_fe_mul_inner (&s2.n, &s2.n, &az.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(s2_0, s2_8, s2_16, s2_24, s2_32, az_0, az_8, az_16, az_24, az_32, s2_0, s2_8, s2_16, s2_24, s2_32);

(* vect__84.653_269 = MEM[(long unsigned int * )&u1]; *)
mov vect__84653269_0 u1_0;
mov vect__84653269_1 u1_8;
(* vect__84.654_271 = MEM[(long unsigned int * )&u1 + 16B]; *)
mov vect__84654271_0 u1_16;
mov vect__84654271_1 u1_24;
(* _92 = u1.n[4]; *)
mov v92 u1_32;
(* vect__74.648_257 = MEM[(long unsigned int * )&u2]; *)
mov vect__74648257_0 u2_0;
mov vect__74648257_1 u2_8;
(* vect__74.649_260 = MEM[(long unsigned int * )&u2 + 16B]; *)
mov vect__74649260_0 u2_16;
mov vect__74649260_1 u2_24;
(* vect__302.650_266 = vect__74.648_257 + { 18014381329608892, 18014398509481980 }; *)
uadd vect__302650266_0 vect__74648257_0 0x3ffffbfffff0bc@uint64;
uadd vect__302650266_1 vect__74648257_1 0x3ffffffffffffc@uint64;
(* vect__302.650_268 = vect__74.649_260 + { 18014398509481980, 18014398509481980 }; *)
uadd vect__302650268_0 vect__74649260_0 0x3ffffffffffffc@uint64;
uadd vect__302650268_1 vect__74649260_1 0x3ffffffffffffc@uint64;
(* vect__75.655_273 = vect__302.650_266 - vect__84.653_269; *)
usub vect__75655273_0 vect__302650266_0 vect__84653269_0;
usub vect__75655273_1 vect__302650266_1 vect__84653269_1;
(* vect__75.655_274 = vect__302.650_268 - vect__84.654_271; *)
usub vect__75655274_0 vect__302650268_0 vect__84654271_0;
usub vect__75655274_1 vect__302650268_1 vect__84654271_1;
(* MEM[(long unsigned int * )&h] = vect__75.655_273; *)
mov h_0 vect__75655273_0;
mov h_8 vect__75655273_1;
(* MEM[(long unsigned int * )&h + 16B] = vect__75.655_274; *)
mov h_16 vect__75655274_0;
mov h_24 vect__75655274_1;
(* _82 = u2.n[4]; *)
mov v82 u2_32;
(* _298 = _82 + 1125899906842620; *)
uadd v298 v82 0x3fffffffffffc@uint64;
(* _83 = _298 - _92; *)
usub v83 v298 v92;
(* h.n[4] = _83; *)
mov h_32 v83;
(* vect__64.665_71 = MEM[(long unsigned int * )&s1]; *)
mov vect__6466571_0 s1_0;
mov vect__6466571_1 s1_8;
(* vect__64.666_255 = MEM[(long unsigned int * )&s1 + 16B]; *)
mov vect__64666255_0 s1_16;
mov vect__64666255_1 s1_24;
(* _72 = s1.n[4]; *)
mov v72 s1_32;
(* vect__54.660_85 = MEM[(long unsigned int * )&s2]; *)
mov vect__5466085_0 s2_0;
mov vect__5466085_1 s2_8;
(* vect__54.661_89 = MEM[(long unsigned int * )&s2 + 16B]; *)
mov vect__5466189_0 s2_16;
mov vect__5466189_1 s2_24;
(* vect__297.662_67 = vect__54.660_85 + { 18014381329608892, 18014398509481980 }; *)
uadd vect__29766267_0 vect__5466085_0 0x3ffffbfffff0bc@uint64;
uadd vect__29766267_1 vect__5466085_1 0x3ffffffffffffc@uint64;
(* vect__297.662_69 = vect__54.661_89 + { 18014398509481980, 18014398509481980 }; *)
uadd vect__29766269_0 vect__5466189_0 0x3ffffffffffffc@uint64;
uadd vect__29766269_1 vect__5466189_1 0x3ffffffffffffc@uint64;
(* vect__55.667_258 = vect__297.662_67 - vect__64.665_71; *)
usub vect__55667258_0 vect__29766267_0 vect__6466571_0;
usub vect__55667258_1 vect__29766267_1 vect__6466571_1;
(* vect__55.667_153 = vect__297.662_69 - vect__64.666_255; *)
usub vect__55667153_0 vect__29766269_0 vect__64666255_0;
usub vect__55667153_1 vect__29766269_1 vect__64666255_1;
(* MEM[(long unsigned int * )&i] = vect__55.667_258; *)
mov i_0 vect__55667258_0;
mov i_8 vect__55667258_1;
(* MEM[(long unsigned int * )&i + 16B] = vect__55.667_153; *)
mov i_16 vect__55667153_0;
mov i_24 vect__55667153_1;
(* _62 = s2.n[4]; *)
mov v62 s2_32;
(* _293 = _62 + 1125899906842620; *)
uadd v293 v62 0x3fffffffffffc@uint64;
(* _63 = _293 - _72; *)
usub v63 v293 v72;
(* i.n[4] = _63; *)
mov i_32 v63;

(* ====================== skip branch start ======================== *)
(* _3 = secp256k1_fe_normalizes_to_zero_var (&h); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (_3 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 7>, False label: <bb 11> *)

(* BB's index is 7 *)

(* _4 = secp256k1_fe_normalizes_to_zero_var (&i); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (_4 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 8>, False label: <bb 10> *)

(* BB's index is 8 *)

(* _98 = a_11(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v98 a11_120;
(* r_10(D)->infinity = _98; *)
mov r10_120 v98;
(* if (_98 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 12>, False label: <bb 9> *)

(* BB's index is 9 *)

(* secp256k1_gej_double_var.part.14 (r_10(D), a_11(D), 0B); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 10 *)

(* r_10(D)->infinity = 1; *)
mov r10_120 0x1@int32;
(* goto <bb 12> *)
(* TODO: unconditional jump *)


(* ====================== skip branch end ======================== *)

(* BB's index is 11 *)

(* secp256k1_fe_sqr_inner (&i2.n, &i.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_sqr_inner(i_0, i_8, i_16, i_24, i_32, i2_0, i2_8, i2_16, i2_24, i2_32);

(* secp256k1_fe_sqr_inner (&h2.n, &h.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_sqr_inner(h_0, h_8, h_16, h_24, h_32, h2_0, h2_8, h2_16, h2_24, h2_32);

(* secp256k1_fe_mul_inner (&h3.n, &h.n, &h2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(h_0, h_8, h_16, h_24, h_32, h2_0, h2_8, h2_16, h2_24, h2_32, h3_0, h3_8, h3_16, h3_24, h3_32);

(* r_10(D)->z = a_11(D)->z; *)
(* lhs field z's offset is 80 *)
(* rhs field z's offset is 80 *)

mov r10_80 a11_80;
mov r10_88 a11_88;
mov r10_96 a11_96;
mov r10_104 a11_104;
mov r10_112 a11_112;


(* _170 = &MEM[(const struct secp256k1_fe * )r_10(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_170, _170, &h.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(r10_80, r10_88 ,r10_96, r10_104, r10_112, h_0, h_8, h_16, h_24, h_32, r10_80, r10_88, r10_96, r10_104, r10_112);

(* secp256k1_fe_mul_inner (&t.n, &u1.n, &h2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline 
function or self translte *)

inline secp256k1_fe_mul_inner(u1_0, u1_8, u1_16, u1_24, u1_32, h2_0, h2_8, h2_16, h2_24, h2_32, t_0, t_8, t_16, t_24, t_32);

(* r_10(D)->x = t; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)

mov r10_0 t_0;
mov r10_8 t_8;
mov r10_16 t_16;
mov r10_24 t_24;
mov r10_32 t_32;

(* _160 = MEM[(struct secp256k1_fe * )r_10(D)].n[0]; *)
mov v160 r10_0;
(* _161 = _160 * 2; *)
umul v161 v160 0x2@uint64;
(* _162 = MEM[(struct secp256k1_fe * )r_10(D)].n[1]; *)
mov v162 r10_8;
(* _163 = _162 * 2; *)
umul v163 v162 0x2@uint64;
(* _164 = MEM[(struct secp256k1_fe * )r_10(D)].n[2]; *)
mov v164 r10_16;
(* _165 = _164 * 2; *)
umul v165 v164 0x2@uint64;
(* _166 = MEM[(struct secp256k1_fe * )r_10(D)].n[3]; *)
mov v166 r10_24;
(* _167 = _166 * 2; *)
umul v167 v166 0x2@uint64;
(* _168 = MEM[(struct secp256k1_fe * )r_10(D)].n[4]; *)
mov v168 r10_32;
(* _169 = _168 * 2; *)
umul v169 v168 0x2@uint64;
(* _150 = h3.n[0]; *)
mov v150 h3_0;
(* _152 = h3.n[1]; *)
mov v152 h3_8;
(* _154 = h3.n[2]; *)
mov v154 h3_16;
(* _156 = h3.n[3]; *)
mov v156 h3_24;
(* _158 = h3.n[4]; *)
mov v158 h3_32;
(* _135 = i2.n[0]; *)
mov v135 i2_0;
(* _291 = _135 + 36028762659217784; *)
uadd v291 v135 0x7ffff7ffffe178@uint64;
(* _292 = _291 - _150; *)
usub v292 v291 v150;
(* _136 = _292 - _161; *)
usub v136 v292 v161;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[0] = _136; *)
mov r10_0 v136;
(* _137 = i2.n[1]; *)
mov v137 i2_8;
(* _289 = _137 + 36028797018963960; *)
uadd v289 v137 0x7ffffffffffff8@uint64;
(* _290 = _289 - _152; *)
usub v290 v289 v152;
(* _138 = _290 - _163; *)
usub v138 v290 v163;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[1] = _138; *)
mov r10_8 v138;
(* _139 = i2.n[2]; *)
mov v139 i2_16;
(* _287 = _139 + 36028797018963960; *)
uadd v287 v139 0x7ffffffffffff8@uint64;
(* _288 = _287 - _154; *)
usub v288 v287 v154;
(* _140 = _288 - _165; *)
usub v140 v288 v165;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[2] = _140; *)
mov r10_16 v140;
(* _141 = i2.n[3]; *)
mov v141 i2_24;
(* _285 = _141 + 36028797018963960; *)
uadd v285 v141 0x7ffffffffffff8@uint64;
(* _286 = _285 - _156; *)
usub v286 v285 v156;
(* _142 = _286 - _167; *)
usub v142 v286 v167;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[3] = _142; *)
mov r10_24 v142;
(* _143 = i2.n[4]; *)
mov v143 i2_32;
(* _283 = _143 + 2251799813685240; *)
uadd v283 v143 0x7fffffffffff8@uint64;
(* _284 = _283 - _158; *)
usub v284 v283 v158;
(* _144 = _284 - _169; *)
usub v144 v284 v169;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[4] = _144; *)
mov r10_32 v144;
(* _120 = t.n[0]; *)
mov v120 t_0;
(* _346 = _120 + _150; *)
uadd v346 v120 v150;
(* _347 = _346 + 54043143988826676; *)
uadd v347 v346 0xbffff3ffffd234@uint64;
(* _348 = _347 - _291; *)
usub v348 v347 v291;
(* _121 = _161 + _348; *)
uadd v121 v161 v348;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[0] = _121; *)
mov r10_40 v121;
(* _122 = t.n[1]; *)
mov v122 t_8;
(* _342 = _122 + _152; *)
uadd v342 v122 v152;
(* _343 = _342 + 54043195528445940; *)
uadd v343 v342 0xbffffffffffff4@uint64;
(* _344 = _343 - _289; *)
usub v344 v343 v289;
(* _123 = _163 + _344; *)
uadd v123 v163 v344;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[1] = _123; *)
mov r10_48 v123;
(* _124 = t.n[2]; *)
mov v124 t_16;
(* _338 = _124 + _154; *)
uadd v338 v124 v154;
(* _339 = _338 + 54043195528445940; *)
uadd v339 v338 0xbffffffffffff4@uint64;
(* _340 = _339 - _287; *)
usub v340 v339 v287;
(* _125 = _165 + _340; *)
uadd v125 v165 v340;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[2] = _125; *)
mov r10_56 v125;
(* _126 = t.n[3]; *)
mov v126 t_24;
(* _334 = _126 + _156; *)
uadd v334 v126 v156;
(* _335 = _334 + 54043195528445940; *)
uadd v335 v334 0xbffffffffffff4@uint64;
(* _336 = _335 - _285; *)
usub v336 v335 v285;
(* _127 = _167 + _336; *)
uadd v127 v167 v336;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[3] = _127; *)
mov r10_64 v127;
(* _128 = t.n[4]; *)
mov v128 t_32;
(* _330 = _128 + _158; *)
uadd v330 v128 v158;
(* _331 = _330 + 3377699720527860; *)
uadd v331 v330 0xbfffffffffff4@uint64;
(* _332 = _331 - _283; *)
usub v332 v331 v283;
(* _129 = _169 + _332; *)
uadd v129 v169 v332;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[4] = _129; *)
mov r10_72 v129;
(* _119 = &MEM[(const struct secp256k1_fe * )r_10(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_119, _119, &i.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(r10_40, r10_48, r10_56, r10_64, r10_72, i_0, i_8, i_16, i_24, i_32, r10_40, r10_48, r10_56, r10_64, r10_72);

(* secp256k1_fe_mul_inner (&h3.n, &h3.n, &s1.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

inline secp256k1_fe_mul_inner(h3_0, h3_8, h3_16, h3_24, h3_32, s1_0, s1_8, s1_16, s1_24, s1_32, h3_0, h3_8, h3_16, h3_24, h3_32);

(* vect__109.676_147 = MEM[(long unsigned int * )&h3]; *)
mov vect__109676147_0 h3_0;
mov vect__109676147_1 h3_8;
(* vect__109.677_149 = MEM[(long unsigned int * )&h3 + 16B]; *)
mov vect__109677149_0 h3_16;
mov vect__109677149_1 h3_24;
(* vect__110.678_133 = { 18014381329608892, 18014398509481980 } - vect__109.676_147; *)
usub vect__110678133_0 0x3ffffbfffff0bc@uint64 vect__109676147_0;
usub vect__110678133_1 0x3ffffffffffffc@uint64 vect__109676147_1;
(* vect__110.678_134 = { 18014398509481980, 18014398509481980 } - vect__109.677_149; *)
usub vect__110678134_0 0x3ffffffffffffc@uint64 vect__109677149_0;
usub vect__110678134_1 0x3ffffffffffffc@uint64 vect__109677149_1;
(* _117 = h3.n[4]; *)
mov v117 h3_32;
(* _118 = 1125899906842620 - _117; *)
usub v118 0x3fffffffffffc@uint64 v117;
(* vect__99.672_267 = MEM[(long unsigned int * )r_10(D) + 40B]; *)
mov vect__99672267_0 r10_40;
mov vect__99672267_1 r10_48;
(* vect__99.673_145 = MEM[(long unsigned int * )r_10(D) + 56B]; *)
mov vect__99673145_0 r10_56;
mov vect__99673145_1 r10_64;
(* vect__100.679_303 = vect__110.678_133 + vect__99.672_267; *)
uadd vect__100679303_0 vect__110678133_0 vect__99672267_0;
uadd vect__100679303_1 vect__110678133_1 vect__99672267_1;
(* vect__100.679_304 = vect__110.678_134 + vect__99.673_145; *)
uadd vect__100679304_0 vect__110678134_0 vect__99673145_0;
uadd vect__100679304_1 vect__110678134_1 vect__99673145_1;
(* MEM[(long unsigned int * )r_10(D) + 40B] = vect__100.679_303; *)
mov r10_40 vect__100679303_0;
mov r10_48 vect__100679303_1;
(* MEM[(long unsigned int * )r_10(D) + 56B] = vect__100.679_304; *)
mov r10_56 vect__100679304_0;
mov r10_64 vect__100679304_1;
(* _107 = MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[4]; *)
mov v107 r10_72;
(* _108 = _107 + _118; *)
uadd v108 v107 v118;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[4] = _108; *)
mov r10_72 v108;
(* az ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z12 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* goto <bb 13> *)
(* TODO: unconditional jump *)

(* BB's index is 12 *)

(* .MEM_6 = PHI <.MEM_12(3), .MEM_16(5), .MEM_22(10), .MEM_218(9), .MEM_217(8)> *)
(* az ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z12 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* goto <bb 13> *)
(* TODO: unconditional jump *)

(* BB's index is 13 *)

(* .MEM_7 = PHI <.MEM_36(11), .MEM_48(12)> *)
(* return; *)



(* Start with unused lhs *)
(*
    mov _ h_0@uint64;
    mov _ h_8@uint64;
    mov _ h_16@uint64;
    mov _ h_24@uint64;
    mov _ h_32@uint64;
    mov _ i_0@uint64;
    mov _ i_8@uint64;
    mov _ i_16@uint64;
    mov _ i_24@uint64;
    mov _ i_32@uint64;
*)
mov rx0 r10_0@uint64;
mov rx1 r10_8@uint64;
mov rx2 r10_16@uint64;
mov rx3 r10_24@uint64;
mov rx4 r10_32@uint64;
mov ry0 r10_40@uint64;
mov ry1 r10_48@uint64;
mov ry2 r10_56@uint64;
mov ry3 r10_64@uint64;
mov ry4 r10_72@uint64;
mov rz0 r10_80@uint64;
mov rz1 r10_88@uint64;
mov rz2 r10_96@uint64;
mov rz3 r10_104@uint64;
mov rz4 r10_112@uint64;
mov rinfinity r10_120@int32;
(*
    mov _ v1@int32;
    mov _ v2@int32;
*)
(* End with unsed lhs *)


{
  (* https://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-0.html#addition-add-1998-cmo-2 *)
  and [
      (* X3 = r2-HHH-2*V *)
      (
          (limbs 52 [rx0, rx1, rx2 ,rx3 ,rx4])
          =
          (
            (
                (limbs 52 [by0, by1, by2, by3, by4]) * (((limbs 52 [az0, az1, az2, az3 ,az4]) * (limbs 52 [bzinv0, bzinv1, bzinv2, bzinv3, bzinv4])) ** 3) 
                -
                (limbs 52 [ay0, ay1, ay2, ay3, ay4])
            )**2
            -
            (
                (limbs 52 [bx0, bx1, bx2 ,bx3 ,bx4]) *(((limbs 52 [az0, az1, az2, az3 ,az4]) * (limbs 52 [bzinv0, bzinv1, bzinv2, bzinv3, bzinv4])) ** 2)
                -
                (limbs 52 [ax0, ax1, ax2 ,ax3 ,ax4])
            ) ** 3 
            - 2 * (limbs 52 [ax0, ax1, ax2 ,ax3 ,ax4]) 
             *  (
                (limbs 52 [bx0, bx1, bx2 ,bx3 ,bx4]) * (((limbs 52 [az0, az1, az2, az3 ,az4]) * (limbs 52 [bzinv0, bzinv1, bzinv2, bzinv3, bzinv4])) ** 2)
                -
                (limbs 52 [ax0, ax1, ax2 ,ax3 ,ax4])
            )**2
          )
          (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F )
      ),
      (*  Z3 = Z1*Z2*H *)
      (
          (limbs 52 [rz0, rz1, rz2 ,rz3 ,rz4])
          =
          (
            (limbs 52 [bx0, bx1, bx2 ,bx3 ,bx4]) * (limbs 52 [az0, az1, az2, az3, az4]) ** 3 * (limbs 52 [bzinv0, bzinv1, bzinv2, bzinv3, bzinv4]) ** 2 
            -
            ((limbs 52 [ax0, ax1, ax2 ,ax3 ,ax4]) * (limbs 52 [az0, az1, az2, az3 ,az4]))
          )
          (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F )
      )
  ]
  &&
  true
}


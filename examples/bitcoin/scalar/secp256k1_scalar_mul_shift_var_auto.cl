proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov shift44@uint32 _;
mov v10@uint64 _;
mov v112@uint64 _;
mov v18@uint64 _;
mov v2@uint64 _;
mov v228@uint128 _;
mov v231@uint128 _;
mov v234@uint128 _;
mov v236@uint128 _;
mov v245@uint64 _;
mov v30@uint64 _;
mov v48@uint64 _;
mov v52@uint64 _;
mov v55@uint64 _;
mov v58@uint64 _;
mov v89@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* secp256k1_scalar_mul_512 (&l, a_41(D), b_42(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (shift_44(D) <= 511) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 13> *)

(* BB's index is 3 *)

(* shiftlimbs_45 = shift_44(D) >> 6; *)
usplit shiftlimbs45 tmp_to_use shift44 6;
(* shiftlow_46 = shift_44(D) & 63; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0x3f@uint32 = 0x00003f *)
(* Note: 0x3f@uint32 = 0b000000000000000000000000111111 *)
and uint32 shiftlow46 shift44 0x3f@uint32;
(* shifthigh_47 = 64 - shiftlow_46; *)
usub shifthigh47 0x40@uint32 shiftlow46;
(* _1 = l[shiftlimbs_45]; *)
(* TODO: arary index is not constant is not implemented *)
(* _2 = _1 >> shiftlow_46; *)
(* TODO: skip, because shift amount is not constant *)
(* _3 = shift_44(D) <= 447; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0x1bf@uint32 1@uint32;
subb v3 dontcare shift44 tmp_for_compare;
vpc v3@uint8 v3@uint1;
(* _4 = shiftlow_46 != 0; *)
subb lt_value dontcare shiftlow46 0x0@uint32;
subb gt_value dontcare 0x0@uint32 shiftlow46;
or uint1 v4 lt_value gt_value;
vpc v4@uint8 v4@uint1;
(* _5 = _3 & _4; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint8 v5 v3 v4;
(* if (_5 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 4>, False label: <bb 5> *)

(* BB's index is 4 *)

(* _6 = shiftlimbs_45 + 1; *)
uadd v6 shiftlimbs45 0x1@uint32;
(* _7 = l[_6]; *)
(* TODO: arary index is not constant is not implemented *)
(* iftmp.107_48 = _7 << shifthigh_47; *)
(* TODO: skip, because shift amount is not constant *)
(* iftmp.106_87 = _2 | iftmp.107_48; *)
(* Bitwise or , may need assert and assume *)
or uint64 v87 v2 v48;
(* r_50(D)->d[0] = iftmp.106_87; *)
mov r50_0 v87;
(* _266 = (__int128 unsigned) iftmp.106_87; *)
vpc v266@uint128 v87@uint64;
(* _10 = _7 >> shiftlow_46; *)
(* TODO: skip, because shift amount is not constant *)
(* _11 = shift_44(D) <= 383; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0x17f@uint32 1@uint32;
subb v11 dontcare shift44 tmp_for_compare;
vpc v11@uint8 v11@uint1;
(* if (shift_44(D) <= 383) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 7>, False label: <bb 15> *)

(* BB's index is 5 *)

(* r_50(D)->d[0] = _2; *)
mov r50_0 v2;
(* _265 = (__int128 unsigned) _2; *)
vpc v265@uint128 v2@uint64;
(* if (shift_44(D) <= 447) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 6>, False label: <bb 13> *)

(* BB's index is 6 *)

(* _237 = shiftlimbs_45 + 1; *)
uadd v237 shiftlimbs45 0x1@uint32;
(* pretmp_239 = l[_237]; *)
(* TODO: arary index is not constant is not implemented *)
(* _248 = pretmp_239 >> shiftlow_46; *)
(* TODO: skip, because shift amount is not constant *)
(* _247 = shift_44(D) <= 383; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0x17f@uint32 1@uint32;
subb v247 dontcare shift44 tmp_for_compare;
vpc v247@uint8 v247@uint1;
(* goto <bb 15> *)
(* TODO: unconditional jump *)

(* BB's index is 7 *)

(* _14 = shiftlimbs_45 + 2; *)
uadd v14 shiftlimbs45 0x2@uint32;
(* _15 = l[_14]; *)
(* TODO: arary index is not constant is not implemented *)
(* iftmp.109_52 = _15 << shifthigh_47; *)
(* TODO: skip, because shift amount is not constant *)
(* iftmp.108_35 = _10 | iftmp.109_52; *)
(* Bitwise or , may need assert and assume *)
or uint64 v35 v10 v52;
(* r_50(D)->d[1] = iftmp.108_35; *)
mov r50_8 v35;
(* _18 = _15 >> shiftlow_46; *)
(* TODO: skip, because shift amount is not constant *)
(* _264 = (__int128 unsigned) iftmp.108_35; *)
vpc v264@uint128 v35@uint64;
(* if (shift_44(D) <= 319) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 8>, False label: <bb 16> *)

(* BB's index is 8 *)

(* _22 = shiftlimbs_45 + 3; *)
uadd v22 shiftlimbs45 0x3@uint32;
(* _23 = l[_22]; *)
(* TODO: arary index is not constant is not implemented *)
(* iftmp.111_55 = _23 << shifthigh_47; *)
(* TODO: skip, because shift amount is not constant *)
(* iftmp.110_102 = _18 | iftmp.111_55; *)
(* Bitwise or , may need assert and assume *)
or uint64 v102 v18 v55;
(* _269 = (__int128 unsigned) iftmp.110_102; *)
vpc v269@uint128 v102@uint64;
(* goto <bb 10> *)
(* TODO: unconditional jump *)

(* BB's index is 9 *)

(* _252 = shiftlimbs_45 + 3; *)
uadd v252 shiftlimbs45 0x3@uint32;
(* pretmp_254 = l[_252]; *)
(* TODO: arary index is not constant is not implemented *)
(* goto <bb 10> *)
(* TODO: unconditional jump *)

(* BB's index is 10 *)

(* .MEM_122 = PHI <.MEM_33(8), .MEM_57(9)> *)
(* prephitmp_255 = PHI <_23(8), pretmp_254(9)> *)
(* prephitmp_268 = PHI <_264(8), _251(9)> *)
(* prephitmp_270 = PHI <_269(8), _262(9)> *)
(* iftmp.106_242 = PHI <iftmp.106_87(8), iftmp.106_241(9)> *)
(* prephitmp_219 = PHI <_266(8), prephitmp_218(9)> *)
(* iftmp.112_58 = prephitmp_255 >> shiftlow_46; *)
(* TODO: skip, because shift amount is not constant *)
(* _235 = (__int128 unsigned) iftmp.112_58; *)
vpc v235@uint128 v58@uint64;
(* goto <bb 11> *)
(* TODO: unconditional jump *)

(* BB's index is 11 *)

(* iftmp.106_112 = PHI <iftmp.106_242(10), iftmp.106_113(12), iftmp.106_87(16), iftmp.106_241(14)> *)
(* .MEM_120 = PHI <.MEM_122(10), .MEM_119(12), .MEM_33(16), .MEM_57(14)> *)
(* prephitmp_228 = PHI <prephitmp_219(10), prephitmp_223(12), _266(16), prephitmp_218(14)> *)
(* prephitmp_231 = PHI <prephitmp_268(10), prephitmp_225(12), _264(16), _251(14)> *)
(* prephitmp_234 = PHI <prephitmp_270(10), 0(12), _117(16), _262(14)> *)
(* prephitmp_236 = PHI <_235(10), 0(12), 0(16), 0(14)> *)
(* _26 = shift_44(D) + 4294967295; *)
uadd v26 shift44 0xffffffff@uint32;
(* _27 = _26 >> 6; *)
usplit v27 tmp_to_use v26 6;
(* _28 = l[_27]; *)
(* TODO: arary index is not constant is not implemented *)
(* _29 = _26 & 63; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0x3f@uint32 = 0x00003f *)
(* Note: 0x3f@uint32 = 0b000000000000000000000000111111 *)
and uint32 v29 v26 0x3f@uint32;
(* _30 = _28 >> _29; *)
(* TODO: skip, because shift amount is not constant *)
(* _31 = (int) _30; *)
cast v31@int32 v30@uint64;
(* _32 = _31 & 1; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int32 = 0x000001 *)
(* Note: 0x1@int32 = 0b000000000000000000000000000001 *)
and int32 v32 v31 0x1@int32;
(* flag.2_62 = (unsigned int) _32; *)
cast v62@uint32 v32@int32;
(* _63 = flag.2_62 + 4294967295; *)
uadd v63 v62 0xffffffff@uint32;
(* _71 = _63 >> 6; *)
usplit v71 tmp_to_use v63 6;
(* _68 = _71 & 4; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0x4@uint32 = 0x000004 *)
(* Note: 0x4@uint32 = 0b000000000000000000000000000100 *)
and uint32 v68 v71 0x4@uint32;
(* _69 = _68 == 0; *)
subb lt_value dontcare v68 0x0@uint32;
subb gt_value dontcare 0x0@uint32 v68;
or uint1 v69 lt_value gt_value;
not uint1 v69 v69;
vpc v69@uint8 v69@uint1;
(* _70 = (long unsigned int) _69; *)
vpc v70@uint64 v69@uint8;
(* _73 = (__int128 unsigned) _69; *)
vpc v73@uint128 v69@uint8;
(* t_74 = _73 + prephitmp_228; *)
uadd t74 v73 v228;
(* _75 = _70 + iftmp.106_112; *)
uadd v75 v70 v112;
(* r_50(D)->d[0] = _75; *)
mov r50_0 v75;
(* t_76 = t_74 >> 64; *)
usplit t76 tmp_to_use t74 64;
(* t_84 = t_76 + prephitmp_231; *)
uadd t84 t76 v231;
(* _85 = (long unsigned int) t_84; *)
cast v85@uint64 t84@uint128;
(* r_50(D)->d[1] = _85; *)
mov r50_8 v85;
(* t_86 = t_84 >> 64; *)
usplit t86 tmp_to_use t84 64;
(* t_94 = t_86 + prephitmp_234; *)
uadd t94 t86 v234;
(* _95 = (long unsigned int) t_94; *)
cast v95@uint64 t94@uint128;
(* r_50(D)->d[2] = _95; *)
mov r50_16 v95;
(* t_96 = t_94 >> 64; *)
usplit t96 tmp_to_use t94 64;
(* t_104 = t_96 + prephitmp_236; *)
uadd t104 t96 v236;
(* _105 = (long unsigned int) t_104; *)
cast v105@uint64 t104@uint128;
(* r_50(D)->d[3] = _105; *)
mov r50_24 v105;
(* l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)

(* BB's index is 12 *)

(* iftmp.106_113 = PHI <iftmp.106_114(13), iftmp.106_241(15)> *)
(* .MEM_119 = PHI <.MEM_118(13), .MEM_91(15)> *)
(* prephitmp_223 = PHI <prephitmp_221(13), prephitmp_218(15)> *)
(* prephitmp_225 = PHI <0(13), _251(15)> *)
(* goto <bb 11> *)
(* TODO: unconditional jump *)

(* BB's index is 13 *)

(* iftmp.106_114 = PHI <0(2), _2(5)> *)
(* .MEM_118 = PHI <.MEM_43(2), .MEM_51(5)> *)
(* prephitmp_221 = PHI <0(2), _265(5)> *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 14 *)

(* _64 = shiftlimbs_45 + 2; *)
uadd v64 shiftlimbs45 0x2@uint32;
(* _82 = l[_64]; *)
(* TODO: arary index is not constant is not implemented *)
(* _89 = _82 >> shiftlow_46; *)
(* TODO: skip, because shift amount is not constant *)
(* r_50(D)->d[2] = _89; *)
mov r50_16 v89;
(* _262 = (__int128 unsigned) _89; *)
vpc v262@uint128 v89@uint64;
(* if (shift_44(D) <= 319) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 9>, False label: <bb 11> *)

(* BB's index is 15 *)

(* _245 = PHI <_248(6), _10(4)> *)
(* _244 = PHI <_247(6), _11(4)> *)
(* .MEM_243 = PHI <.MEM_51(6), .MEM_83(4)> *)
(* iftmp.106_241 = PHI <_2(6), iftmp.106_87(4)> *)
(* prephitmp_218 = PHI <_265(6), _266(4)> *)
(* r_50(D)->d[1] = _245; *)
mov r50_8 v245;
(* _251 = (__int128 unsigned) _245; *)
vpc v251@uint128 v245@uint64;
(* if (_244 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 14>, False label: <bb 12> *)

(* BB's index is 16 *)

(* _117 = (__int128 unsigned) _18; *)
vpc v117@uint128 v18@uint64;
(* goto <bb 11> *)
(* TODO: unconditional jump *)


(* Start with unused lhs *)
mov _ r50_0@uint64;
mov _ r50_8@uint64;
mov _ r50_16@uint64;
mov _ r50_24@uint64;
mov _ shifthigh47@uint32;
mov _ v11@uint8;
mov _ v117@uint128;
mov _ v14@uint32;
mov _ v22@uint32;
mov _ v235@uint128;
mov _ v237@uint32;
mov _ v247@uint8;
mov _ v251@uint128;
mov _ v252@uint32;
mov _ v262@uint128;
mov _ v264@uint128;
mov _ v265@uint128;
mov _ v266@uint128;
mov _ v269@uint128;
mov _ v27@uint32;
mov _ v29@uint32;
mov _ v5@uint8;
mov _ v6@uint32;
mov _ v64@uint32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

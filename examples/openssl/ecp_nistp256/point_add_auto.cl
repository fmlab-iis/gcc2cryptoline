proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov ftmp_0@uint128 _;
mov ftmp_16@uint128 _;
mov ftmp_32@uint128 _;
mov ftmp_48@uint128 _;
mov ftmp2_0@uint128 _;
mov ftmp2_16@uint128 _;
mov ftmp2_32@uint128 _;
mov ftmp2_48@uint128 _;
mov ftmp4_0@uint128 _;
mov ftmp4_16@uint128 _;
mov ftmp4_32@uint128 _;
mov ftmp4_48@uint128 _;
mov tmp_0@uint128 _;
mov tmp_16@uint128 _;
mov tmp_32@uint128 _;
mov tmp_48@uint128 _;
mov tmp2_0@uint128 _;
mov tmp2_16@uint128 _;
mov tmp2_32@uint128 _;
mov tmp2_48@uint128 _;
mov tmp2_64@uint128 _;
mov tmp2_80@uint128 _;
mov tmp2_96@uint128 _;
mov tmp2_112@uint128 _;
mov v165@uint128 _;
mov v167@uint128 _;
mov v190@uint128 _;
mov v192@uint128 _;
mov v215@uint128 _;
mov v217@uint128 _;
mov v432@uint128 _;
mov v436@uint128 _;
mov v458@uint128 _;
mov v460@uint128 _;
mov v521@uint128 _;
mov v523@uint128 _;
mov v541@uint128 _;
mov v549@uint128 _;
mov v581@uint128 _;
mov v583@uint128 _;
mov v596@uint128 _;
mov v598@uint128 _;
mov v662@uint128 _;
mov v664@uint128 _;
mov v677@uint128 _;
mov v679@uint128 _;
mov v692@uint128 _;
mov v694@uint128 _;
mov x122_0@uint128 _;
mov x122_16@uint128 _;
mov x122_32@uint128 _;
mov x122_48@uint128 _;
mov x233_0@uint64 _;
mov x233_8@uint64 _;
mov x233_16@uint64 _;
mov x233_24@uint64 _;
mov x_equal39@uint128 _;
mov x_out_0@uint128 _;
mov x_out_16@uint128 _;
mov x_out_32@uint128 _;
mov x_out_48@uint128 _;
mov y130_0@uint128 _;
mov y130_16@uint128 _;
mov y130_32@uint128 _;
mov y130_48@uint128 _;
mov y243_0@uint64 _;
mov y243_8@uint64 _;
mov y243_16@uint64 _;
mov y243_24@uint64 _;
mov y_equal48@uint128 _;
mov z18_0@uint128 _;
mov z18_16@uint128 _;
mov z18_32@uint128 _;
mov z18_48@uint128 _;
mov z1_is_zero11@uint128 _;
mov z212_0@uint64 _;
mov z212_8@uint64 _;
mov z212_16@uint64 _;
mov z212_24@uint64 _;
mov z2_is_zero14@uint128 _;
mov z_out_0@uint128 _;
mov z_out_16@uint128 _;
mov z_out_32@uint128 _;
mov z_out_48@uint128 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* felem_shrink (&small3, z1_8(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* z1_is_zero_11 = smallfelem_is_zero (&small3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* z2_is_zero_14 = smallfelem_is_zero (z2_12(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_square (&tmp, &small3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small1, &ftmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* if (mixed_18(D) == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 4> */

/* BB's index is 3 */

/* smallfelem_square (&tmp, z2_12(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp2, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small5, x1_22(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, &small5, &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp3, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _118 = *z1_8(D); */
mov v118 z18_0;
/* _119 = MEM[(const limb *)z1_8(D) + 16B]; */
mov v119 z18_16;
/* _120 = MEM[(const limb *)z1_8(D) + 32B]; */
mov v120 z18_32;
/* _121 = MEM[(const limb *)z1_8(D) + 48B]; */
mov v121 z18_48;
/* _106 = *z2_12(D); */
mov v106 z212_0;
/* _107 = (__int128 unsigned) _106; */
vpc v107@uint128 v106@uint64;
/* _108 = _107 + _118; */
uadd v108 v107 v118;
/* MEM[(limb *)&ftmp5] = _108; */
mov ftmp5_0 v108;
/* _109 = MEM[(const u64 *)z2_12(D) + 8B]; */
mov v109 z212_8;
/* _110 = (__int128 unsigned) _109; */
vpc v110@uint128 v109@uint64;
/* _111 = _110 + _119; */
uadd v111 v110 v119;
/* MEM[(limb *)&ftmp5 + 16B] = _111; */
mov ftmp5_16 v111;
/* _112 = MEM[(const u64 *)z2_12(D) + 16B]; */
mov v112 z212_16;
/* _113 = (__int128 unsigned) _112; */
vpc v113@uint128 v112@uint64;
/* _114 = _113 + _120; */
uadd v114 v113 v120;
/* MEM[(limb *)&ftmp5 + 32B] = _114; */
mov ftmp5_32 v114;
/* _115 = MEM[(const u64 *)z2_12(D) + 24B]; */
mov v115 z212_24;
/* _116 = (__int128 unsigned) _115; */
vpc v116@uint128 v115@uint64;
/* _117 = _116 + _121; */
uadd v117 v116 v121;
/* MEM[(limb *)&ftmp5 + 48B] = _117; */
mov ftmp5_48 v117;
/* felem_shrink (&small, &ftmp5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_square (&tmp, &small); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_reduce (&ftmp5, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _47 = MEM[(limb *)&ftmp2]; */
mov v47 ftmp2_0;
/* _38 = MEM[(const limb *)&ftmp]; */
mov v38 ftmp_0;
/* _13 = _38 + _47; */
uadd v13 v38 v47;
/* MEM[(limb *)&ftmp2] = _13; */
mov ftmp2_0 v13;
/* _10 = MEM[(limb *)&ftmp2 + 16B]; */
mov v10 ftmp2_16;
/* _98 = MEM[(const limb *)&ftmp + 16B]; */
mov v98 ftmp_16;
/* _99 = _10 + _98; */
uadd v99 v10 v98;
/* MEM[(limb *)&ftmp2 + 16B] = _99; */
mov ftmp2_16 v99;
/* _100 = MEM[(limb *)&ftmp2 + 32B]; */
mov v100 ftmp2_32;
/* _101 = MEM[(const limb *)&ftmp + 32B]; */
mov v101 ftmp_32;
/* _102 = _100 + _101; */
uadd v102 v100 v101;
/* MEM[(limb *)&ftmp2 + 32B] = _102; */
mov ftmp2_32 v102;
/* _103 = MEM[(limb *)&ftmp2 + 48B]; */
mov v103 ftmp2_48;
/* _104 = MEM[(const limb *)&ftmp + 48B]; */
mov v104 ftmp_48;
/* _105 = _103 + _104; */
uadd v105 v103 v104;
/* MEM[(limb *)&ftmp2 + 48B] = _105; */
mov ftmp2_48 v105;
/* _333 = MEM[(limb *)&ftmp5]; */
mov v333 ftmp5_0;
/* _334 = _333 + 0x1fffffffffffffffdfffffffe00; */
uadd v334 v333 0x1fffffffffffffffdfffffffe00@uint128;
/* _335 = MEM[(limb *)&ftmp5 + 16B]; */
mov v335 ftmp5_16;
/* _336 = _335 + 0x200000000000000000000000000; */
uadd v336 v335 0x200000000000000000000000000@uint128;
/* _337 = MEM[(limb *)&ftmp5 + 32B]; */
mov v337 ftmp5_32;
/* _338 = _337 + 0x1fffffffffffffffe0000000200; */
uadd v338 v337 0x1fffffffffffffffe0000000200@uint128;
/* _339 = MEM[(limb *)&ftmp5 + 48B]; */
mov v339 ftmp5_48;
/* _340 = _339 + 0x1fffffffffffffffe0000000200; */
uadd v340 v339 0x1fffffffffffffffe0000000200@uint128;
/* _342 = _334 - _13; */
usub v342 v334 v13;
/* MEM[(limb *)&ftmp5] = _342; */
mov ftmp5_0 v342;
/* _344 = _336 - _99; */
usub v344 v336 v99;
/* MEM[(limb *)&ftmp5 + 16B] = _344; */
mov ftmp5_16 v344;
/* _346 = _338 - _102; */
usub v346 v338 v102;
/* MEM[(limb *)&ftmp5 + 32B] = _346; */
mov ftmp5_32 v346;
/* _348 = _340 - _105; */
usub v348 v340 v105;
/* MEM[(limb *)&ftmp5 + 48B] = _348; */
mov ftmp5_48 v348;
/* smallfelem_mul (&tmp, &small2, z2_12(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp2, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_mul (&tmp, y1_30(D), &ftmp2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp6, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* _134 = *x1_22(D); */
mov v134 x122_0;
/* MEM[(limb *)&ftmp3] = _134; */
mov ftmp3_0 v134;
/* _135 = MEM[(const limb *)x1_22(D) + 16B]; */
mov v135 x122_16;
/* MEM[(limb *)&ftmp3 + 16B] = _135; */
mov ftmp3_16 v135;
/* _136 = MEM[(const limb *)x1_22(D) + 32B]; */
mov v136 x122_32;
/* MEM[(limb *)&ftmp3 + 32B] = _136; */
mov ftmp3_32 v136;
/* _137 = MEM[(const limb *)x1_22(D) + 48B]; */
mov v137 x122_48;
/* MEM[(limb *)&ftmp3 + 48B] = _137; */
mov ftmp3_48 v137;
/* _130 = *z1_8(D); */
mov v130 z18_0;
/* _131 = MEM[(const limb *)z1_8(D) + 16B]; */
mov v131 z18_16;
/* _132 = MEM[(const limb *)z1_8(D) + 32B]; */
mov v132 z18_32;
/* _133 = MEM[(const limb *)z1_8(D) + 48B]; */
mov v133 z18_48;
/* _126 = _130 * 2; */
umul v126 v130 0x2@uint128;
/* MEM[(limb *)&ftmp5] = _126; */
mov ftmp5_0 v126;
/* _127 = _131 * 2; */
umul v127 v131 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 16B] = _127; */
mov ftmp5_16 v127;
/* _128 = _132 * 2; */
umul v128 v132 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 32B] = _128; */
mov ftmp5_32 v128;
/* _129 = _133 * 2; */
umul v129 v133 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 48B] = _129; */
mov ftmp5_48 v129;
/* _122 = *y1_30(D); */
mov v122 y130_0;
/* MEM[(limb *)&ftmp6] = _122; */
mov ftmp6_0 v122;
/* _123 = MEM[(const limb *)y1_30(D) + 16B]; */
mov v123 y130_16;
/* MEM[(limb *)&ftmp6 + 16B] = _123; */
mov ftmp6_16 v123;
/* _124 = MEM[(const limb *)y1_30(D) + 32B]; */
mov v124 y130_32;
/* MEM[(limb *)&ftmp6 + 32B] = _124; */
mov ftmp6_32 v124;
/* _125 = MEM[(const limb *)y1_30(D) + 48B]; */
mov v125 y130_48;
/* MEM[(limb *)&ftmp6 + 48B] = _125; */
mov ftmp6_48 v125;
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* MEM_5 = PHI <MEM_32(3), MEM_332(4)> */
/* smallfelem_mul (&tmp, x2_33(D), &small1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp4, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _365 = MEM[(limb *)&ftmp4]; */
mov v365 ftmp4_0;
/* _366 = _365 + 0x7fffffffffffffff7fffffff800; */
uadd v366 v365 0x7fffffffffffffff7fffffff800@uint128;
/* _367 = MEM[(limb *)&ftmp4 + 16B]; */
mov v367 ftmp4_16;
/* _368 = _367 + 0x800000000000000000000000000; */
uadd v368 v367 0x800000000000000000000000000@uint128;
/* _369 = MEM[(limb *)&ftmp4 + 32B]; */
mov v369 ftmp4_32;
/* _370 = _369 + 0x7fffffffffffffff80000000800; */
uadd v370 v369 0x7fffffffffffffff80000000800@uint128;
/* _371 = MEM[(limb *)&ftmp4 + 48B]; */
mov v371 ftmp4_48;
/* _372 = _371 + 0x7fffffffffffffff80000000800; */
uadd v372 v371 0x7fffffffffffffff80000000800@uint128;
/* _373 = MEM[(const limb *)&ftmp3]; */
mov v373 ftmp3_0;
/* _374 = _366 - _373; */
usub v374 v366 v373;
/* MEM[(limb *)&ftmp4] = _374; */
mov ftmp4_0 v374;
/* _375 = MEM[(const limb *)&ftmp3 + 16B]; */
mov v375 ftmp3_16;
/* _376 = _368 - _375; */
usub v376 v368 v375;
/* MEM[(limb *)&ftmp4 + 16B] = _376; */
mov ftmp4_16 v376;
/* _377 = MEM[(const limb *)&ftmp3 + 32B]; */
mov v377 ftmp3_32;
/* _378 = _370 - _377; */
usub v378 v370 v377;
/* MEM[(limb *)&ftmp4 + 32B] = _378; */
mov ftmp4_32 v378;
/* _379 = MEM[(const limb *)&ftmp3 + 48B]; */
mov v379 ftmp3_48;
/* _380 = _372 - _379; */
usub v380 v372 v379;
/* MEM[(limb *)&ftmp4 + 48B] = _380; */
mov ftmp4_48 v380;
/* felem_shrink (&small4, &ftmp4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* x_equal_39 = smallfelem_is_zero (&small4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, &small4, &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_reduce (&z_out, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, &small1, &small3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&ftmp, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, y2_43(D), &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_reduce (&ftmp5, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _349 = MEM[(limb *)&ftmp5]; */
mov v349 ftmp5_0;
/* _350 = _349 + 0x7fffffffffffffff7fffffff800; */
uadd v350 v349 0x7fffffffffffffff7fffffff800@uint128;
/* _351 = MEM[(limb *)&ftmp5 + 16B]; */
mov v351 ftmp5_16;
/* _352 = _351 + 0x800000000000000000000000000; */
uadd v352 v351 0x800000000000000000000000000@uint128;
/* _353 = MEM[(limb *)&ftmp5 + 32B]; */
mov v353 ftmp5_32;
/* _354 = _353 + 0x7fffffffffffffff80000000800; */
uadd v354 v353 0x7fffffffffffffff80000000800@uint128;
/* _355 = MEM[(limb *)&ftmp5 + 48B]; */
mov v355 ftmp5_48;
/* _356 = _355 + 0x7fffffffffffffff80000000800; */
uadd v356 v355 0x7fffffffffffffff80000000800@uint128;
/* _357 = MEM[(const limb *)&ftmp6]; */
mov v357 ftmp6_0;
/* _358 = _350 - _357; */
usub v358 v350 v357;
/* _359 = MEM[(const limb *)&ftmp6 + 16B]; */
mov v359 ftmp6_16;
/* _360 = _352 - _359; */
usub v360 v352 v359;
/* _361 = MEM[(const limb *)&ftmp6 + 32B]; */
mov v361 ftmp6_32;
/* _362 = _354 - _361; */
usub v362 v354 v361;
/* _363 = MEM[(const limb *)&ftmp6 + 48B]; */
mov v363 ftmp6_48;
/* _364 = _356 - _363; */
usub v364 v356 v363;
/* _139 = _358 * 2; */
umul v139 v358 0x2@uint128;
/* MEM[(limb *)&ftmp5] = _139; */
mov ftmp5_0 v139;
/* _141 = _360 * 2; */
umul v141 v360 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 16B] = _141; */
mov ftmp5_16 v141;
/* _143 = _362 * 2; */
umul v143 v362 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 32B] = _143; */
mov ftmp5_32 v143;
/* _145 = _364 * 2; */
umul v145 v364 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 48B] = _145; */
mov ftmp5_48 v145;
/* felem_shrink (&small1, &ftmp5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* y_equal_48 = smallfelem_is_zero (&small1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _1 = x_equal_39 != 0; */
subb lt_value dontcare x_equal39 0x0@uint128;
subb gt_value dontcare value 0x0@uint128 x_equal39;
or uint1 v1 lt_value gt_value;
vpc v1@uint8 v1@uint1;
/* _2 = y_equal_48 != 0; */
subb lt_value dontcare y_equal48 0x0@uint128;
subb gt_value dontcare value 0x0@uint128 y_equal48;
or uint1 v2 lt_value gt_value;
vpc v2@uint8 v2@uint1;
/* _3 = _1 & _2; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v3 v1 v2;
/* if (_3 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 8> */

/* BB's index is 6 */

/* _4 = z1_is_zero_11 | z2_is_zero_14; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v4 z1_is_zero11 z2_is_zero14;
/* if (_4 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 8> */

/* BB's index is 7 */

/* point_double (x3_49(D), y3_50(D), z3_51(D), x1_22(D), y1_30(D), z1_8(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* ftmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp6 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* y_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* _254 = MEM[(const limb *)&ftmp4]; */
mov v254 ftmp4_0;
/* _255 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v255 ftmp4_16;
/* _256 = MEM[(const limb *)&ftmp4 + 32B]; */
mov v256 ftmp4_32;
/* _257 = MEM[(const limb *)&ftmp4 + 48B]; */
mov v257 ftmp4_48;
/* _250 = _254 * 2; */
umul v250 v254 0x2@uint128;
/* MEM[(limb *)&ftmp] = _250; */
mov ftmp_0 v250;
/* _251 = _255 * 2; */
umul v251 v255 0x2@uint128;
/* MEM[(limb *)&ftmp + 16B] = _251; */
mov ftmp_16 v251;
/* _252 = _256 * 2; */
umul v252 v256 0x2@uint128;
/* MEM[(limb *)&ftmp + 32B] = _252; */
mov ftmp_32 v252;
/* _253 = _257 * 2; */
umul v253 v257 0x2@uint128;
/* MEM[(limb *)&ftmp + 48B] = _253; */
mov ftmp_48 v253;
/* felem_shrink (&small, &ftmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_square (&tmp, &small); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_reduce (&ftmp, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small1, &ftmp4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, &small1, &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_reduce (&ftmp2, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small1, &ftmp3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, &small1, &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_reduce (&ftmp4, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_square (&tmp, &small1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_reduce (&x_out, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _246 = MEM[(const limb *)&ftmp4]; */
mov v246 ftmp4_0;
/* _247 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v247 ftmp4_16;
/* _248 = MEM[(const limb *)&ftmp4 + 32B]; */
mov v248 ftmp4_32;
/* _249 = MEM[(const limb *)&ftmp4 + 48B]; */
mov v249 ftmp4_48;
/* _242 = _246 * 2; */
umul v242 v246 0x2@uint128;
/* _243 = _247 * 2; */
umul v243 v247 0x2@uint128;
/* _244 = _248 * 2; */
umul v244 v248 0x2@uint128;
/* _245 = _249 * 2; */
umul v245 v249 0x2@uint128;
/* _234 = MEM[(const limb *)&ftmp2]; */
mov v234 ftmp2_0;
/* _235 = _234 + _242; */
uadd v235 v234 v242;
/* MEM[(limb *)&ftmp4] = _235; */
mov ftmp4_0 v235;
/* _236 = MEM[(const limb *)&ftmp2 + 16B]; */
mov v236 ftmp2_16;
/* _237 = _236 + _243; */
uadd v237 v236 v243;
/* MEM[(limb *)&ftmp4 + 16B] = _237; */
mov ftmp4_16 v237;
/* _238 = MEM[(const limb *)&ftmp2 + 32B]; */
mov v238 ftmp2_32;
/* _239 = _238 + _244; */
uadd v239 v238 v244;
/* MEM[(limb *)&ftmp4 + 32B] = _239; */
mov ftmp4_32 v239;
/* _240 = MEM[(const limb *)&ftmp2 + 48B]; */
mov v240 ftmp2_48;
/* _241 = _240 + _245; */
uadd v241 v240 v245;
/* MEM[(limb *)&ftmp4 + 48B] = _241; */
mov ftmp4_48 v241;
/* _422 = MEM[(limb *)&x_out]; */
mov v422 x_out_0;
/* _423 = _422 + 0x1fffffffffffffffdfffffffe00; */
uadd v423 v422 0x1fffffffffffffffdfffffffe00@uint128;
/* _424 = MEM[(limb *)&x_out + 16B]; */
mov v424 x_out_16;
/* _425 = _424 + 0x200000000000000000000000000; */
uadd v425 v424 0x200000000000000000000000000@uint128;
/* _426 = MEM[(limb *)&x_out + 32B]; */
mov v426 x_out_32;
/* _427 = _426 + 0x1fffffffffffffffe0000000200; */
uadd v427 v426 0x1fffffffffffffffe0000000200@uint128;
/* _428 = MEM[(limb *)&x_out + 48B]; */
mov v428 x_out_48;
/* _429 = _428 + 0x1fffffffffffffffe0000000200; */
uadd v429 v428 0x1fffffffffffffffe0000000200@uint128;
/* _431 = _423 - _235; */
usub v431 v423 v235;
/* MEM[(limb *)&x_out] = _431; */
mov x_out_0 v431;
/* _433 = _425 - _237; */
usub v433 v425 v237;
/* MEM[(limb *)&x_out + 16B] = _433; */
mov x_out_16 v433;
/* _435 = _427 - _239; */
usub v435 v427 v239;
/* MEM[(limb *)&x_out + 32B] = _435; */
mov x_out_32 v435;
/* _437 = _429 - _241; */
usub v437 v429 v241;
/* MEM[(limb *)&x_out + 48B] = _437; */
mov x_out_48 v437;
/* _578 = _246 + 0x7fffffffffffffff7fffffff800; */
uadd v578 v246 0x7fffffffffffffff7fffffff800@uint128;
/* _589 = _235 + _578; */
uadd v589 v235 v578;
/* _415 = _589 - _423; */
usub v415 v589 v423;
/* MEM[(limb *)&ftmp3] = _415; */
mov ftmp3_0 v415;
/* _448 = _247 + 0x800000000000000000000000000; */
uadd v448 v247 0x800000000000000000000000000@uint128;
/* _507 = _237 + _448; */
uadd v507 v237 v448;
/* _417 = _507 - _425; */
usub v417 v507 v425;
/* MEM[(limb *)&ftmp3 + 16B] = _417; */
mov ftmp3_16 v417;
/* _481 = _248 + 0x7fffffffffffffff80000000800; */
uadd v481 v248 0x7fffffffffffffff80000000800@uint128;
/* _454 = _239 + _481; */
uadd v454 v239 v481;
/* _419 = _454 - _427; */
usub v419 v454 v427;
/* MEM[(limb *)&ftmp3 + 32B] = _419; */
mov ftmp3_32 v419;
/* _529 = _249 + 0x7fffffffffffffff80000000800; */
uadd v529 v249 0x7fffffffffffffff80000000800@uint128;
/* _483 = _241 + _529; */
uadd v483 v241 v529;
/* _421 = _483 - _429; */
usub v421 v483 v429;
/* MEM[(limb *)&ftmp3 + 48B] = _421; */
mov ftmp3_48 v421;
/* felem_shrink (&small2, &ftmp3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp, &small1, &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* felem_shrink (&small1, &ftmp6); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_mul (&tmp2, &small1, &small2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* _389 = MEM[(limb *)&tmp2]; */
mov v389 tmp2_0;
/* _391 = _389 * 2; */
umul v391 v389 0x2@uint128;
/* MEM[(limb *)&tmp2] = _391; */
mov tmp2_0 v391;
/* _392 = MEM[(limb *)&tmp2 + 16B]; */
mov v392 tmp2_16;
/* _393 = _392 * 2; */
umul v393 v392 0x2@uint128;
/* MEM[(limb *)&tmp2 + 16B] = _393; */
mov tmp2_16 v393;
/* _394 = MEM[(limb *)&tmp2 + 32B]; */
mov v394 tmp2_32;
/* _395 = _394 * 2; */
umul v395 v394 0x2@uint128;
/* MEM[(limb *)&tmp2 + 32B] = _395; */
mov tmp2_32 v395;
/* _396 = MEM[(limb *)&tmp2 + 48B]; */
mov v396 tmp2_48;
/* _397 = _396 * 2; */
umul v397 v396 0x2@uint128;
/* MEM[(limb *)&tmp2 + 48B] = _397; */
mov tmp2_48 v397;
/* _398 = MEM[(limb *)&tmp2 + 64B]; */
mov v398 tmp2_64;
/* _399 = _398 * 2; */
umul v399 v398 0x2@uint128;
/* MEM[(limb *)&tmp2 + 64B] = _399; */
mov tmp2_64 v399;
/* _400 = MEM[(limb *)&tmp2 + 80B]; */
mov v400 tmp2_80;
/* _401 = _400 * 2; */
umul v401 v400 0x2@uint128;
/* MEM[(limb *)&tmp2 + 80B] = _401; */
mov tmp2_80 v401;
/* _402 = MEM[(limb *)&tmp2 + 96B]; */
mov v402 tmp2_96;
/* _403 = _402 * 2; */
umul v403 v402 0x2@uint128;
/* MEM[(limb *)&tmp2 + 96B] = _403; */
mov tmp2_96 v403;
/* _404 = MEM[(limb *)&tmp2 + 112B]; */
mov v404 tmp2_112;
/* _405 = _404 * 2; */
umul v405 v404 0x2@uint128;
/* MEM[(limb *)&tmp2 + 112B] = _405; */
mov tmp2_112 v405;
/* longfelem_diff (&tmp, &tmp2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _381 = MEM[(const limb *)&tmp]; */
mov v381 tmp_0;
/* _382 = _381 + 0x1fffffffffffffffdfffffffe00; */
uadd v382 v381 0x1fffffffffffffffdfffffffe00@uint128;
/* MEM[(limb *)&y_out] = _382; */
mov y_out_0 v382;
/* _383 = MEM[(const limb *)&tmp + 16B]; */
mov v383 tmp_16;
/* _384 = _383 + 0x200000000000000000000000000; */
uadd v384 v383 0x200000000000000000000000000@uint128;
/* MEM[(limb *)&y_out + 16B] = _384; */
mov y_out_16 v384;
/* _385 = MEM[(const limb *)&tmp + 32B]; */
mov v385 tmp_32;
/* _386 = _385 + 0x1fffffffffffffffe0000000200; */
uadd v386 v385 0x1fffffffffffffffe0000000200@uint128;
/* MEM[(limb *)&y_out + 32B] = _386; */
mov y_out_32 v386;
/* _387 = MEM[(const limb *)&tmp + 48B]; */
mov v387 tmp_48;
/* _388 = _387 + 0x1fffffffffffffffe0000000200; */
uadd v388 v387 0x1fffffffffffffffe0000000200@uint128;
/* MEM[(limb *)&y_out + 48B] = _388; */
mov y_out_48 v388;
/* felem_reduce_ (&y_out, &tmp); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* mask64_219 = (const u64) z1_is_zero_11; */
cast mask64219@uint64 z1_is_zero11@uint128;
/* _535 = ~z1_is_zero_11; */
not uint128 v535 z1_is_zero11;
/* _704 = *x2_33(D); */
mov v704 x233_0;
/* _705 = mask64_219 & _704; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v705 mask64219 v704;
/* _706 = (__int128 unsigned) _705; */
vpc v706@uint128 v705@uint64;
/* _709 = MEM[(limb *)&x_out]; */
mov v709 x_out_0;
/* _710 = _535 & _709; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v710 v535 v709;
/* _711 = _706 | _710; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v711 v706 v710;
/* _721 = MEM[(const u64 *)x2_33(D) + 8B]; */
mov v721 x233_8;
/* _722 = mask64_219 & _721; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v722 mask64219 v721;
/* _723 = (__int128 unsigned) _722; */
vpc v723@uint128 v722@uint64;
/* _726 = MEM[(limb *)&x_out + 16B]; */
mov v726 x_out_16;
/* _727 = _535 & _726; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v727 v535 v726;
/* _728 = _723 | _727; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v728 v723 v727;
/* MEM[(limb *)&x_out + 16B] = _728; */
mov x_out_16 v728;
/* _738 = MEM[(const u64 *)x2_33(D) + 16B]; */
mov v738 x233_16;
/* _739 = mask64_219 & _738; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v739 mask64219 v738;
/* _740 = (__int128 unsigned) _739; */
vpc v740@uint128 v739@uint64;
/* _743 = MEM[(limb *)&x_out + 32B]; */
mov v743 x_out_32;
/* _744 = _535 & _743; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v744 v535 v743;
/* _745 = _740 | _744; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v745 v740 v744;
/* MEM[(limb *)&x_out + 32B] = _745; */
mov x_out_32 v745;
/* _224 = MEM[(const u64 *)x2_33(D) + 24B]; */
mov v224 x233_24;
/* _225 = mask64_219 & _224; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v225 mask64219 v224;
/* _226 = (__int128 unsigned) _225; */
vpc v226@uint128 v225@uint64;
/* _229 = MEM[(limb *)&x_out + 48B]; */
mov v229 x_out_48;
/* _231 = _229 & _535; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v231 v229 v535;
/* _232 = _226 | _231; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v232 v226 v231;
/* MEM[(limb *)&x_out + 48B] = _232; */
mov x_out_48 v232;
/* _659 = *x1_22(D); */
mov v659 x122_0;
/* _662 = _659 ^ _711; */
/* TODO: Skip translation for bit xor */
/* tmp_663 = z2_is_zero_14 & _662; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp663 z2_is_zero14 v662;
/* _664 = tmp_663 ^ _711; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&x_out] = _664; */
mov x_out_0 v664;
/* _674 = MEM[(const limb *)x1_22(D) + 16B]; */
mov v674 x122_16;
/* _677 = _674 ^ _728; */
/* TODO: Skip translation for bit xor */
/* tmp_678 = z2_is_zero_14 & _677; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp678 z2_is_zero14 v677;
/* _679 = tmp_678 ^ _728; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&x_out + 16B] = _679; */
mov x_out_16 v679;
/* _689 = MEM[(const limb *)x1_22(D) + 32B]; */
mov v689 x122_32;
/* _692 = _689 ^ _745; */
/* TODO: Skip translation for bit xor */
/* tmp_693 = z2_is_zero_14 & _692; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp693 z2_is_zero14 v692;
/* _694 = tmp_693 ^ _745; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&x_out + 32B] = _694; */
mov x_out_32 v694;
/* _212 = MEM[(const limb *)x1_22(D) + 48B]; */
mov v212 x122_48;
/* _215 = _212 ^ _232; */
/* TODO: Skip translation for bit xor */
/* tmp_216 = z2_is_zero_14 & _215; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp216 z2_is_zero14 v215;
/* _217 = tmp_216 ^ _232; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&x_out + 48B] = _217; */
mov x_out_48 v217;
/* _608 = *y2_43(D); */
mov v608 y243_0;
/* _609 = mask64_219 & _608; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v609 mask64219 v608;
/* _610 = (__int128 unsigned) _609; */
vpc v610@uint128 v609@uint64;
/* _613 = MEM[(limb *)&y_out]; */
mov v613 y_out_0;
/* _614 = _535 & _613; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v614 v535 v613;
/* _615 = _610 | _614; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v615 v610 v614;
/* _625 = MEM[(const u64 *)y2_43(D) + 8B]; */
mov v625 y243_8;
/* _626 = mask64_219 & _625; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v626 mask64219 v625;
/* _627 = (__int128 unsigned) _626; */
vpc v627@uint128 v626@uint64;
/* _630 = MEM[(limb *)&y_out + 16B]; */
mov v630 y_out_16;
/* _631 = _535 & _630; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v631 v535 v630;
/* _632 = _627 | _631; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v632 v627 v631;
/* MEM[(limb *)&y_out + 16B] = _632; */
mov y_out_16 v632;
/* _642 = MEM[(const u64 *)y2_43(D) + 16B]; */
mov v642 y243_16;
/* _643 = mask64_219 & _642; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v643 mask64219 v642;
/* _644 = (__int128 unsigned) _643; */
vpc v644@uint128 v643@uint64;
/* _647 = MEM[(limb *)&y_out + 32B]; */
mov v647 y_out_32;
/* _648 = _535 & _647; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v648 v535 v647;
/* _649 = _644 | _648; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v649 v644 v648;
/* MEM[(limb *)&y_out + 32B] = _649; */
mov y_out_32 v649;
/* _198 = MEM[(const u64 *)y2_43(D) + 24B]; */
mov v198 y243_24;
/* _199 = _198 & mask64_219; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v199 v198 mask64219;
/* _200 = (__int128 unsigned) _199; */
vpc v200@uint128 v199@uint64;
/* _203 = MEM[(limb *)&y_out + 48B]; */
mov v203 y_out_48;
/* _205 = _203 & _535; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v205 v203 v535;
/* _206 = _200 | _205; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v206 v200 v205;
/* MEM[(limb *)&y_out + 48B] = _206; */
mov y_out_48 v206;
/* _550 = *y1_30(D); */
mov v550 y130_0;
/* _549 = _550 ^ _615; */
/* TODO: Skip translation for bit xor */
/* tmp_545 = z2_is_zero_14 & _549; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp545 z2_is_zero14 v549;
/* _541 = tmp_545 ^ _615; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&y_out] = _541; */
mov y_out_0 v541;
/* _230 = MEM[(const limb *)y1_30(D) + 16B]; */
mov v230 y130_16;
/* _581 = _230 ^ _632; */
/* TODO: Skip translation for bit xor */
/* tmp_582 = z2_is_zero_14 & _581; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp582 z2_is_zero14 v581;
/* _583 = tmp_582 ^ _632; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&y_out + 16B] = _583; */
mov y_out_16 v583;
/* _593 = MEM[(const limb *)y1_30(D) + 32B]; */
mov v593 y130_32;
/* _596 = _593 ^ _649; */
/* TODO: Skip translation for bit xor */
/* tmp_597 = z2_is_zero_14 & _596; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp597 z2_is_zero14 v596;
/* _598 = tmp_597 ^ _649; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&y_out + 32B] = _598; */
mov y_out_32 v598;
/* _187 = MEM[(const limb *)y1_30(D) + 48B]; */
mov v187 y130_48;
/* _190 = _187 ^ _206; */
/* TODO: Skip translation for bit xor */
/* tmp_191 = z2_is_zero_14 & _190; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp191 z2_is_zero14 v190;
/* _192 = tmp_191 ^ _206; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&y_out + 48B] = _192; */
mov y_out_48 v192;
/* _390 = *z2_12(D); */
mov v390 z212_0;
/* _347 = mask64_219 & _390; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v347 mask64219 v390;
/* _345 = (__int128 unsigned) _347; */
vpc v345@uint128 v347@uint64;
/* _263 = MEM[(limb *)&z_out]; */
mov v263 z_out_0;
/* _262 = _263 & _535; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v262 v263 v535;
/* _261 = _262 | _345; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v261 v262 v345;
/* _169 = MEM[(const u64 *)z2_12(D) + 8B]; */
mov v169 z212_8;
/* _158 = _169 & mask64_219; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v158 v169 mask64219;
/* _144 = (__int128 unsigned) _158; */
vpc v144@uint128 v158@uint64;
/* _138 = MEM[(limb *)&z_out + 16B]; */
mov v138 z_out_16;
/* _81 = _138 & _535; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v81 v138 v535;
/* _79 = _81 | _144; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v79 v81 v144;
/* MEM[(limb *)&z_out + 16B] = _79; */
mov z_out_16 v79;
/* _573 = MEM[(const u64 *)z2_12(D) + 16B]; */
mov v573 z212_16;
/* _574 = mask64_219 & _573; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v574 mask64219 v573;
/* _576 = (__int128 unsigned) _574; */
vpc v576@uint128 v574@uint64;
/* _563 = MEM[(limb *)&z_out + 32B]; */
mov v563 z_out_32;
/* _566 = _535 & _563; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v566 v535 v563;
/* _567 = _566 | _576; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v567 v566 v576;
/* MEM[(limb *)&z_out + 32B] = _567; */
mov z_out_32 v567;
/* _173 = MEM[(const u64 *)z2_12(D) + 24B]; */
mov v173 z212_24;
/* _174 = _173 & mask64_219; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v174 v173 mask64219;
/* _175 = (__int128 unsigned) _174; */
vpc v175@uint128 v174@uint64;
/* _178 = MEM[(limb *)&z_out + 48B]; */
mov v178 z_out_48;
/* _180 = _178 & _535; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v180 v178 v535;
/* _181 = _175 | _180; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint128 v181 v175 v180;
/* MEM[(limb *)&z_out + 48B] = _181; */
mov z_out_48 v181;
/* _526 = *z1_8(D); */
mov v526 z18_0;
/* _523 = _261 ^ _526; */
/* TODO: Skip translation for bit xor */
/* tmp_522 = z2_is_zero_14 & _523; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp522 z2_is_zero14 v523;
/* _521 = _261 ^ tmp_522; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&z_out] = _521; */
mov z_out_0 v521;
/* _473 = MEM[(const limb *)z1_8(D) + 16B]; */
mov v473 z18_16;
/* _460 = _79 ^ _473; */
/* TODO: Skip translation for bit xor */
/* tmp_459 = z2_is_zero_14 & _460; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp459 z2_is_zero14 v460;
/* _458 = _79 ^ tmp_459; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&z_out + 16B] = _458; */
mov z_out_16 v458;
/* _440 = MEM[(const limb *)z1_8(D) + 32B]; */
mov v440 z18_32;
/* _436 = _440 ^ _567; */
/* TODO: Skip translation for bit xor */
/* tmp_434 = z2_is_zero_14 & _436; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp434 z2_is_zero14 v436;
/* _432 = tmp_434 ^ _567; */
/* TODO: Skip translation for bit xor */
/* MEM[(limb *)&z_out + 32B] = _432; */
mov z_out_32 v432;
/* _162 = MEM[(const limb *)z1_8(D) + 48B]; */
mov v162 z18_48;
/* _165 = _162 ^ _181; */
/* TODO: Skip translation for bit xor */
/* tmp_166 = z2_is_zero_14 & _165; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 tmp166 z2_is_zero14 v165;
/* _167 = tmp_166 ^ _181; */
/* TODO: Skip translation for bit xor */
/* *x3_49(D) = _664; */
mov x349_0 v664;
/* MEM[(limb *)x3_49(D) + 16B] = _679; */
mov x349_16 v679;
/* MEM[(limb *)x3_49(D) + 32B] = _694; */
mov x349_32 v694;
/* MEM[(limb *)x3_49(D) + 48B] = _217; */
mov x349_48 v217;
/* *y3_50(D) = _541; */
mov y350_0 v541;
/* MEM[(limb *)y3_50(D) + 16B] = _583; */
mov y350_16 v583;
/* MEM[(limb *)y3_50(D) + 32B] = _598; */
mov y350_32 v598;
/* MEM[(limb *)y3_50(D) + 48B] = _192; */
mov y350_48 v192;
/* *z3_51(D) = _521; */
mov z351_0 v521;
/* MEM[(limb *)z3_51(D) + 16B] = _458; */
mov z351_16 v458;
/* MEM[(limb *)z3_51(D) + 32B] = _432; */
mov z351_32 v432;
/* MEM[(limb *)z3_51(D) + 48B] = _167; */
mov z351_48 v167;
/* ftmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp6 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* y_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 9 */

/* MEM_6 = PHI <MEM_97(8), MEM_68(7)> */
/* return; */


/* Start with unused lhs */
mov _ ftmp_0@uint128;
mov _ ftmp_16@uint128;
mov _ ftmp_32@uint128;
mov _ ftmp_48@uint128;
mov _ ftmp3_0@uint128;
mov _ ftmp3_16@uint128;
mov _ ftmp3_32@uint128;
mov _ ftmp3_48@uint128;
mov _ ftmp4_0@uint128;
mov _ ftmp4_16@uint128;
mov _ ftmp4_32@uint128;
mov _ ftmp4_48@uint128;
mov _ ftmp5_0@uint128;
mov _ ftmp5_16@uint128;
mov _ ftmp5_32@uint128;
mov _ ftmp5_48@uint128;
mov _ tmp166@uint128;
mov _ tmp191@uint128;
mov _ tmp2_0@uint128;
mov _ tmp2_16@uint128;
mov _ tmp2_32@uint128;
mov _ tmp2_48@uint128;
mov _ tmp2_64@uint128;
mov _ tmp2_80@uint128;
mov _ tmp2_96@uint128;
mov _ tmp2_112@uint128;
mov _ tmp216@uint128;
mov _ tmp434@uint128;
mov _ tmp459@uint128;
mov _ tmp522@uint128;
mov _ tmp545@uint128;
mov _ tmp582@uint128;
mov _ tmp597@uint128;
mov _ tmp663@uint128;
mov _ tmp678@uint128;
mov _ tmp693@uint128;
mov _ v162@uint128;
mov _ v187@uint128;
mov _ v212@uint128;
mov _ v230@uint128;
mov _ v261@uint128;
mov _ v3@uint8;
mov _ v4@uint128;
mov _ v440@uint128;
mov _ v473@uint128;
mov _ v526@uint128;
mov _ v550@uint128;
mov _ v593@uint128;
mov _ v615@uint128;
mov _ v659@uint128;
mov _ v674@uint128;
mov _ v689@uint128;
mov _ v711@uint128;
mov _ x349_0@uint128;
mov _ x349_16@uint128;
mov _ x349_32@uint128;
mov _ x349_48@uint128;
mov _ x_out_0@uint128;
mov _ x_out_16@uint128;
mov _ x_out_32@uint128;
mov _ x_out_48@uint128;
mov _ y350_0@uint128;
mov _ y350_16@uint128;
mov _ y350_32@uint128;
mov _ y350_48@uint128;
mov _ y_out_0@uint128;
mov _ y_out_16@uint128;
mov _ y_out_32@uint128;
mov _ y_out_48@uint128;
mov _ z351_0@uint128;
mov _ z351_16@uint128;
mov _ z351_32@uint128;
mov _ z351_48@uint128;
mov _ z_out_0@uint128;
mov _ z_out_16@uint128;
mov _ z_out_32@uint128;
mov _ z_out_48@uint128;
/* End with unsed lhs */


{
  true
  &&
  true
}

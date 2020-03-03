proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a17_0@uint64 _;
mov a17_8@uint64 _;
mov a17_16@uint64 _;
mov a17_24@uint64 _;
mov b18_0@uint64 _;
mov b18_8@uint64 _;
mov b18_16@uint64 _;
mov b18_24@uint64 _;
mov v148@uint64 _;
mov v172@uint64 _;
mov v9_0@uint64 _;
mov v9_8@uint64 _;
mov v9_16@uint64 _;
mov v9_24@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _115 = *a_17(D); */
mov v115 a17_0;
/* _116 = *b_18(D); */
mov v116 b18_0;
/* diff_117 = _115 - _116; */
usub diff117 v115 v116;
/* _15 = _115 < _116; */
subb v15 dontcare v115 v116;
vpc v15@uint8 v15@uint1;
/* _88 = (long long unsigned int) _15; */
vpc v88@uint64 v15@uint8;
/* *c_23(D) = diff_117; */
mov c23_0 diff117;
/* _139 = MEM[(const dig_t *)a_17(D) + 8B]; */
mov v139 a17_8;
/* _140 = MEM[(const dig_t *)b_18(D) + 8B]; */
mov v140 b18_8;
/* diff_141 = _139 - _140; */
usub diff141 v139 v140;
/* r0_142 = diff_141 - _88; */
usub r0142 diff141 v88;
/* if (_139 < _140) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 4>, False label: <bb 3> */

/* BB's index is 3 */

/* _143 = (_Bool) _88; */
cast v143@uint8 v88@uint64;
/* _144 = diff_141 == 0; */
subb gt_value dontcare 0x0@uint64 diff141;
mov v144 gt_value;
not uint1 v144 v144;
vpc v144@uint8 v144@uint1;
/* _145 = _143 & _144; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v145 v143 v144;
/* _147 = (long long unsigned int) _145; */
vpc v147@uint64 v145@uint8;
/* goto <bb 4> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* prephitmp_148 = PHI <_147(3), 1(2)> */
/* MEM[(dig_t *)c_23(D) + 8B] = r0_142; */
mov c23_8 r0142;
/* _163 = MEM[(const dig_t *)a_17(D) + 16B]; */
mov v163 a17_16;
/* _164 = MEM[(const dig_t *)b_18(D) + 16B]; */
mov v164 b18_16;
/* diff_165 = _163 - _164; */
usub diff165 v163 v164;
/* r0_166 = diff_165 - prephitmp_148; */
usub r0166 diff165 v148;
/* if (_163 < _164) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 5> */

/* BB's index is 5 */

/* _167 = (_Bool) prephitmp_148; */
cast v167@uint8 v148@uint64;
/* _168 = diff_165 == 0; */
subb gt_value dontcare 0x0@uint64 diff165;
mov v168 gt_value;
not uint1 v168 v168;
vpc v168@uint8 v168@uint1;
/* _169 = _167 & _168; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v169 v167 v168;
/* _171 = (long long unsigned int) _169; */
vpc v171@uint64 v169@uint8;
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 6 */

/* prephitmp_172 = PHI <_171(5), 1(4)> */
/* MEM[(dig_t *)c_23(D) + 16B] = r0_166; */
mov c23_16 r0166;
/* _1 = MEM[(const dig_t *)a_17(D) + 24B]; */
mov v1 a17_24;
/* _2 = MEM[(const dig_t *)b_18(D) + 24B]; */
mov v2 b18_24;
/* diff_20 = _1 - _2; */
usub diff20 v1 v2;
/* r0_21 = diff_20 - prephitmp_172; */
usub r021 diff20 v172;
/* if (_1 < _2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 8> */

/* BB's index is 7 */

/* MEM[(dig_t *)c_23(D) + 24B] = r0_21; */
mov c23_24 r021;
/* goto <bb 10> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* _3 = (_Bool) prephitmp_172; */
cast v3@uint8 v172@uint64;
/* _4 = diff_20 == 0; */
subb gt_value dontcare 0x0@uint64 diff20;
mov v4 gt_value;
not uint1 v4 v4;
vpc v4@uint8 v4@uint1;
/* _5 = _3 & _4; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v5 v3 v4;
/* MEM[(dig_t *)c_23(D) + 24B] = r0_21; */
mov c23_24 r021;
/* if (_5 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 10>, False label: <bb 9> */

/* BB's index is 9 */

/* .MEM_73 = PHI <.MEM_46(10), .MEM_24(8)> */
/* return; */

/* BB's index is 10 */

/* .MEM_161 = PHI <.MEM_66(7), .MEM_24(8)> */
/* _9 = fp_prime_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _53 = MEM[(const dig_t *)c_23(D)]; */
mov v53 c23_0;
/* _45 = *_9; */
mov v45 v9_0;
/* _124 = ADD_OVERFLOW (_45, _53); */
adds carry v124_REAL v45 v53;
adc v124_IMAGE 0@uint64 0@uint64 carry;
/* r0_41 = REALPART_EXPR <_124>; */
mov r041 v124_REAL;
/* _107 = IMAGPART_EXPR <_124>; */
mov v107 v124_IMAGE;
/* _40 = _107 != 0; */
subb gt_value dontcare 0x0@uint64 v107;
mov v40 gt_value;
vpc v40@uint8 v40@uint1;
/* carry_12 = (dig_t) _40; */
vpc carry12@uint64 v40@uint8;
/* *c_23(D) = r0_41; */
mov c23_0 r041;
/* _77 = MEM[(const dig_t *)c_23(D) + 8B]; */
mov v77 c23_8;
/* _78 = MEM[(const dig_t *)_9 + 8B]; */
mov v78 v9_8;
/* _67 = ADD_OVERFLOW (_77, _78); */
adds carry v67_REAL v77 v78;
adc v67_IMAGE 0@uint64 0@uint64 carry;
/* r0_79 = REALPART_EXPR <_67>; */
mov r079 v67_REAL;
/* _8 = IMAGPART_EXPR <_67>; */
mov v8 v67_IMAGE;
/* _80 = _8 != 0; */
subb gt_value dontcare 0x0@uint64 v8;
mov v80 gt_value;
vpc v80@uint8 v80@uint1;
/* _175 = ADD_OVERFLOW (carry_12, r0_79); */
adds carry v175_REAL carry12 r079;
adc v175_IMAGE 0@uint64 0@uint64 carry;
/* r1_81 = REALPART_EXPR <_175>; */
mov r181 v175_REAL;
/* _131 = IMAGPART_EXPR <_175>; */
mov v131 v175_IMAGE;
/* _82 = _131 != 0; */
subb gt_value dontcare 0x0@uint64 v131;
mov v82 gt_value;
vpc v82@uint8 v82@uint1;
/* _83 = _80 | _82; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v83 v80 v82;
/* carry_84 = (dig_t) _83; */
vpc carry84@uint64 v83@uint8;
/* MEM[(dig_t *)c_23(D) + 8B] = r1_81; */
mov c23_8 r181;
/* _96 = MEM[(const dig_t *)c_23(D) + 16B]; */
mov v96 c23_16;
/* _97 = MEM[(const dig_t *)_9 + 16B]; */
mov v97 v9_16;
/* _155 = ADD_OVERFLOW (_96, _97); */
adds carry v155_REAL v96 v97;
adc v155_IMAGE 0@uint64 0@uint64 carry;
/* r0_98 = REALPART_EXPR <_155>; */
mov r098 v155_REAL;
/* _179 = IMAGPART_EXPR <_155>; */
mov v179 v155_IMAGE;
/* _99 = _179 != 0; */
subb gt_value dontcare 0x0@uint64 v179;
mov v99 gt_value;
vpc v99@uint8 v99@uint1;
/* _130 = ADD_OVERFLOW (carry_84, r0_98); */
adds carry v130_REAL carry84 r098;
adc v130_IMAGE 0@uint64 0@uint64 carry;
/* r1_100 = REALPART_EXPR <_130>; */
mov r1100 v130_REAL;
/* _154 = IMAGPART_EXPR <_130>; */
mov v154 v130_IMAGE;
/* _101 = _154 != 0; */
subb gt_value dontcare 0x0@uint64 v154;
mov v101 gt_value;
vpc v101@uint8 v101@uint1;
/* _102 = _99 | _101; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v102 v99 v101;
/* carry_103 = (dig_t) _102; */
vpc carry103@uint64 v102@uint8;
/* MEM[(dig_t *)c_23(D) + 16B] = r1_100; */
mov c23_16 r1100;
/* _30 = MEM[(const dig_t *)c_23(D) + 24B]; */
mov v30 c23_24;
/* _32 = MEM[(const dig_t *)_9 + 24B]; */
mov v32 v9_24;
/* r0_33 = _30 + _32; */
uadd r033 v30 v32;
/* r1_36 = r0_33 + carry_103; */
uadd r136 r033 carry103;
/* MEM[(dig_t *)c_23(D) + 24B] = r1_36; */
mov c23_24 r136;
/* goto <bb 9> */
/* TODO: unconditional jump */


/* Start with unused lhs */
mov _ c23_0@uint64;
mov _ c23_8@uint64;
mov _ c23_16@uint64;
mov _ c23_24@uint64;
mov _ v147@uint64;
mov _ v171@uint64;
mov _ v5@uint8;
/* End with unsed lhs */


{
  true
  &&
  true
}

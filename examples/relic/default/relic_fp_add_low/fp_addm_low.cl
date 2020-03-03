proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a19_0@uint64 _;
mov a19_8@uint64 _;
mov a19_16@uint64 _;
mov a19_24@uint64 _;
mov b20_0@uint64 _;
mov b20_8@uint64 _;
mov b20_16@uint64 _;
mov b20_24@uint64 _;
mov v10_0@uint64 _;
mov v10_8@uint64 _;
mov v10_16@uint64 _;
mov v10_24@uint64 _;
mov v114@uint64 _;
mov v93@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _126 = *a_19(D); */
mov v126 a19_0;
/* _127 = *b_20(D); */
mov v127 b20_0;
/* _15 = ADD_OVERFLOW (_126, _127); */
adds carry v15_REAL v126 v127;
adc v15_IMAGE 0@uint64 0@uint64 carry;
/* r0_128 = REALPART_EXPR <_15>; */
mov r0128 v15_REAL;
/* _118 = IMAGPART_EXPR <_15>; */
mov v118 v15_IMAGE;
/* _129 = _118 != 0; */
subb gt_value dontcare 0x0@uint64 v118;
mov v129 gt_value;
vpc v129@uint8 v129@uint1;
/* carry_133 = (dig_t) _129; */
vpc carry133@uint64 v129@uint8;
/* *c_25(D) = r0_128; */
mov c25_0 r0128;
/* _148 = MEM[(const dig_t *)a_19(D) + 8B]; */
mov v148 a19_8;
/* _149 = MEM[(const dig_t *)b_20(D) + 8B]; */
mov v149 b20_8;
/* _7 = ADD_OVERFLOW (_148, _149); */
adds carry v7_REAL v148 v149;
adc v7_IMAGE 0@uint64 0@uint64 carry;
/* r0_150 = REALPART_EXPR <_7>; */
mov r0150 v7_REAL;
/* _180 = IMAGPART_EXPR <_7>; */
mov v180 v7_IMAGE;
/* _151 = _180 != 0; */
subb gt_value dontcare 0x0@uint64 v180;
mov v151 gt_value;
vpc v151@uint8 v151@uint1;
/* _140 = ADD_OVERFLOW (carry_133, r0_150); */
adds carry v140_REAL carry133 r0150;
adc v140_IMAGE 0@uint64 0@uint64 carry;
/* r1_152 = REALPART_EXPR <_140>; */
mov r1152 v140_REAL;
/* _162 = IMAGPART_EXPR <_140>; */
mov v162 v140_IMAGE;
/* _153 = _162 != 0; */
subb gt_value dontcare 0x0@uint64 v162;
mov v153 gt_value;
vpc v153@uint8 v153@uint1;
/* _154 = _151 | _153; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v154 v151 v153;
/* carry_155 = (dig_t) _154; */
vpc carry155@uint64 v154@uint8;
/* MEM[(dig_t *)c_25(D) + 8B] = r1_152; */
mov c25_8 r1152;
/* _170 = MEM[(const dig_t *)a_19(D) + 16B]; */
mov v170 a19_16;
/* _171 = MEM[(const dig_t *)b_20(D) + 16B]; */
mov v171 b20_16;
/* _184 = ADD_OVERFLOW (_170, _171); */
adds carry v184_REAL v170 v171;
adc v184_IMAGE 0@uint64 0@uint64 carry;
/* r0_172 = REALPART_EXPR <_184>; */
mov r0172 v184_REAL;
/* _139 = IMAGPART_EXPR <_184>; */
mov v139 v184_IMAGE;
/* _173 = _139 != 0; */
subb gt_value dontcare 0x0@uint64 v139;
mov v173 gt_value;
vpc v173@uint8 v173@uint1;
/* _161 = ADD_OVERFLOW (carry_155, r0_172); */
adds carry v161_REAL carry155 r0172;
adc v161_IMAGE 0@uint64 0@uint64 carry;
/* r1_174 = REALPART_EXPR <_161>; */
mov r1174 v161_REAL;
/* _183 = IMAGPART_EXPR <_161>; */
mov v183 v161_IMAGE;
/* _175 = _183 != 0; */
subb gt_value dontcare 0x0@uint64 v183;
mov v175 gt_value;
vpc v175@uint8 v175@uint1;
/* _176 = _173 | _175; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v176 v173 v175;
/* carry_177 = (dig_t) _176; */
vpc carry177@uint64 v176@uint8;
/* MEM[(dig_t *)c_25(D) + 16B] = r1_174; */
mov c25_16 r1174;
/* _1 = MEM[(const dig_t *)a_19(D) + 24B]; */
mov v1 a19_24;
/* _2 = MEM[(const dig_t *)b_20(D) + 24B]; */
mov v2 b20_24;
/* _130 = ADD_OVERFLOW (_1, _2); */
adds carry v130_REAL v1 v2;
adc v130_IMAGE 0@uint64 0@uint64 carry;
/* r0_22 = REALPART_EXPR <_130>; */
mov r022 v130_REAL;
/* _132 = IMAGPART_EXPR <_130>; */
mov v132 v130_IMAGE;
/* _3 = _132 != 0; */
subb gt_value dontcare 0x0@uint64 v132;
mov v3 gt_value;
vpc v3@uint8 v3@uint1;
/* _136 = ADD_OVERFLOW (r0_22, carry_177); */
adds carry v136_REAL r022 carry177;
adc v136_IMAGE 0@uint64 0@uint64 carry;
/* r1_23 = REALPART_EXPR <_136>; */
mov r123 v136_REAL;
/* _24 = IMAGPART_EXPR <_136>; */
mov v24 v136_IMAGE;
/* _4 = _24 != 0; */
subb gt_value dontcare 0x0@uint64 v24;
mov v4 gt_value;
vpc v4@uint8 v4@uint1;
/* _18 = _3 | _4; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v18 v3 v4;
/* MEM[(dig_t *)c_25(D) + 24B] = r1_23; */
mov c25_24 r123;
/* if (_18 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 8> */

/* BB's index is 3 */

/* .MEM_81 = PHI <.MEM_26(2), .MEM_31(8)> */
/* _10 = fp_prime_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _59 = MEM[(const dig_t *)c_25(D)]; */
mov v59 c25_0;
/* _58 = *_10; */
mov v58 v10_0;
/* diff_56 = _59 - _58; */
usub diff56 v59 v58;
/* _11 = _58 > _59; */
subb v11 dontcare v59 v58;
vpc v11@uint8 v11@uint1;
/* _97 = (long long unsigned int) _11; */
vpc v97@uint64 v11@uint8;
/* *c_25(D) = diff_56; */
mov c25_0 diff56;
/* _84 = MEM[(const dig_t *)c_25(D) + 8B]; */
mov v84 c25_8;
/* _85 = MEM[(const dig_t *)_10 + 8B]; */
mov v85 v10_8;
/* diff_86 = _84 - _85; */
usub diff86 v84 v85;
/* r0_87 = diff_86 - _97; */
usub r087 diff86 v97;
/* if (_84 < _85) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 5>, False label: <bb 4> */

/* BB's index is 4 */

/* _88 = (_Bool) _97; */
cast v88@uint8 v97@uint64;
/* _89 = diff_86 == 0; */
subb gt_value dontcare 0x0@uint64 diff86;
mov v89 gt_value;
not uint1 v89 v89;
vpc v89@uint8 v89@uint1;
/* _90 = _88 & _89; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v90 v88 v89;
/* _92 = (long long unsigned int) _90; */
vpc v92@uint64 v90@uint8;
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* prephitmp_93 = PHI <_92(4), 1(3)> */
/* MEM[(dig_t *)c_25(D) + 8B] = r0_87; */
mov c25_8 r087;
/* _105 = MEM[(const dig_t *)c_25(D) + 16B]; */
mov v105 c25_16;
/* _106 = MEM[(const dig_t *)_10 + 16B]; */
mov v106 v10_16;
/* diff_107 = _105 - _106; */
usub diff107 v105 v106;
/* r0_108 = diff_107 - prephitmp_93; */
usub r0108 diff107 v93;
/* if (_105 < _106) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 6> */

/* BB's index is 6 */

/* _109 = (_Bool) prephitmp_93; */
cast v109@uint8 v93@uint64;
/* _110 = diff_107 == 0; */
subb gt_value dontcare 0x0@uint64 diff107;
mov v110 gt_value;
not uint1 v110 v110;
vpc v110@uint8 v110@uint1;
/* _111 = _109 & _110; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v111 v109 v110;
/* _113 = (long long unsigned int) _111; */
vpc v113@uint64 v111@uint8;
/* goto <bb 7> */
/* TODO: unconditional jump */

/* BB's index is 7 */

/* prephitmp_114 = PHI <_113(6), 1(5)> */
/* MEM[(dig_t *)c_25(D) + 16B] = r0_108; */
mov c25_16 r0108;
/* _34 = MEM[(const dig_t *)c_25(D) + 24B]; */
mov v34 c25_24;
/* _36 = MEM[(const dig_t *)_10 + 24B]; */
mov v36 v10_24;
/* diff_37 = _34 - _36; */
usub diff37 v34 v36;
/* r0_39 = diff_37 - prephitmp_114; */
usub r039 diff37 v114;
/* MEM[(dig_t *)c_25(D) + 24B] = r0_39; */
mov c25_24 r039;
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* _8 = fp_prime_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _9 = dv_cmp (c_25(D), _8, 4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* if (_9 != -1) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 9> */

/* BB's index is 9 */

/* .MEM_82 = PHI <.MEM_51(7), .MEM_31(8)> */
/* return; */


/* Start with unused lhs */
mov _ c25_0@uint64;
mov _ c25_8@uint64;
mov _ c25_16@uint64;
mov _ c25_24@uint64;
mov _ v113@uint64;
mov _ v18@uint8;
mov _ v92@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

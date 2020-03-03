proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a14_0@uint64 _;
mov a14_8@uint64 _;
mov a14_16@uint64 _;
mov a14_24@uint64 _;
mov b15_0@uint64 _;
mov b15_8@uint64 _;
mov b15_16@uint64 _;
mov b15_24@uint64 _;
mov v68@uint64 _;
mov v91@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _35 = *a_14(D); */
mov v35 a14_0;
/* _12 = *b_15(D); */
mov v12 b15_0;
/* diff_26 = _35 - _12; */
usub diff26 v35 v12;
/* _49 = _12 > _35; */
subb v49 dontcare v35 v12;
vpc v49@uint8 v49@uint1;
/* _72 = (long long unsigned int) _49; */
vpc v72@uint64 v49@uint8;
/* *c_13(D) = diff_26; */
mov c13_0 diff26;
/* _59 = MEM[(const dig_t *)a_14(D) + 8B]; */
mov v59 a14_8;
/* _60 = MEM[(const dig_t *)b_15(D) + 8B]; */
mov v60 b15_8;
/* diff_61 = _59 - _60; */
usub diff61 v59 v60;
/* r0_62 = diff_61 - _72; */
usub r062 diff61 v72;
/* if (_59 < _60) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 4>, False label: <bb 3> */

/* BB's index is 3 */

/* _63 = (_Bool) _72; */
cast v63@uint8 v72@uint64;
/* _64 = diff_61 == 0; */
subb gt_value dontcare 0x0@uint64 diff61;
mov v64 gt_value;
not uint1 v64 v64;
vpc v64@uint8 v64@uint1;
/* _65 = _63 & _64; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v65 v63 v64;
/* _67 = (long long unsigned int) _65; */
vpc v67@uint64 v65@uint8;
/* goto <bb 4> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* prephitmp_68 = PHI <_67(3), 1(2)> */
/* MEM[(dig_t *)c_13(D) + 8B] = r0_62; */
mov c13_8 r062;
/* _82 = MEM[(const dig_t *)a_14(D) + 16B]; */
mov v82 a14_16;
/* _83 = MEM[(const dig_t *)b_15(D) + 16B]; */
mov v83 b15_16;
/* diff_84 = _82 - _83; */
usub diff84 v82 v83;
/* r0_85 = diff_84 - prephitmp_68; */
usub r085 diff84 v68;
/* if (_82 < _83) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 5> */

/* BB's index is 5 */

/* _86 = (_Bool) prephitmp_68; */
cast v86@uint8 v68@uint64;
/* _87 = diff_84 == 0; */
subb gt_value dontcare 0x0@uint64 diff84;
mov v87 gt_value;
not uint1 v87 v87;
vpc v87@uint8 v87@uint1;
/* _88 = _86 & _87; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v88 v86 v87;
/* _90 = (long long unsigned int) _88; */
vpc v90@uint64 v88@uint8;
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 6 */

/* prephitmp_91 = PHI <_90(5), 1(4)> */
/* MEM[(dig_t *)c_13(D) + 16B] = r0_85; */
mov c13_16 r085;
/* _1 = MEM[(const dig_t *)a_14(D) + 24B]; */
mov v1 a14_24;
/* _2 = MEM[(const dig_t *)b_15(D) + 24B]; */
mov v2 b15_24;
/* diff_17 = _1 - _2; */
usub diff17 v1 v2;
/* r0_18 = diff_17 - prephitmp_91; */
usub r018 diff17 v91;
/* if (_1 < _2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 8>, False label: <bb 7> */

/* BB's index is 7 */

/* _3 = (_Bool) prephitmp_91; */
cast v3@uint8 v91@uint64;
/* _4 = diff_17 == 0; */
subb gt_value dontcare 0x0@uint64 diff17;
mov v4 gt_value;
not uint1 v4 v4;
vpc v4@uint8 v4@uint1;
/* _5 = _3 & _4; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint8 v5 v3 v4;
/* _32 = (long long unsigned int) _5; */
vpc v32@uint64 v5@uint8;
/* goto <bb 8> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* prephitmp_31 = PHI <_32(7), 1(6)> */
/* MEM[(dig_t *)c_13(D) + 24B] = r0_18; */
mov c13_24 r018;
/* return prephitmp_31; */


/* Start with unused lhs */
mov _ c13_0@uint64;
mov _ c13_8@uint64;
mov _ c13_16@uint64;
mov _ c13_24@uint64;
mov _ v32@uint64;
mov _ v67@uint64;
mov _ v90@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

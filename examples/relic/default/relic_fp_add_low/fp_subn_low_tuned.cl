proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a14_0@uint64 a0;
mov a14_8@uint64 a1;
mov a14_16@uint64 a2;
mov a14_24@uint64 a3;
mov b15_0@uint64 b0;
mov b15_8@uint64 b1;
mov b15_16@uint64 b2;
mov b15_24@uint64 b3;
/* End with undefined rhs */



/* BB's index is 2 */

/* _35 = *a_14(D); */
mov v35 a14_0;
/* _12 = *b_15(D); */
mov v12 b15_0;
/* diff_26 = _35 - _12; */
usubb carry diff26 v35 v12;
/* _49 = _12 > _35; */
subb v49 dontcare v35 v12;
assert true && carry = v49;
assume carry = v49 && true;
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
usubb carry1 diff61 v59 v60;
/* r0_62 = diff_61 - _72; */
usubb carry2 r062 diff61 v72;
/* if (_59 < _60) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 4>, False label: <bb 3> */
subb tmp_lt dontcare v59 v60;
assert true && carry1 = tmp_lt ;
assume carry1 = tmp_lt && true;
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
assert true && v65 = v63 * v64;
assume v65 = v63 * v64 && true;

vpc carry2@uint8 carry2;
assert true && v65 = carry2;
assume v65 = carry2 && true;

/* _67 = (long long unsigned int) _65; */
vpc v67@uint64 v65@uint8;
/* goto <bb 4> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* prephitmp_68 = PHI <_67(3), 1(2)> */
vpc tmp_lt@uint64 tmp_lt;
or uint64 v68 v67 tmp_lt;
assert true && v68 = v67 + tmp_lt;
assume v68 = v67 + tmp_lt && true;
/* MEM[(dig_t *)c_13(D) + 8B] = r0_62; */
mov c13_8 r062;
/* _82 = MEM[(const dig_t *)a_14(D) + 16B]; */
mov v82 a14_16;
/* _83 = MEM[(const dig_t *)b_15(D) + 16B]; */
mov v83 b15_16;
/* diff_84 = _82 - _83; */
usubb carry1 diff84 v82 v83;
/* r0_85 = diff_84 - prephitmp_68; */
usubb carry2 r085 diff84 v68;
/* if (_82 < _83) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 5> */
subb tmp_lt dontcare v82 v83;
assert true && carry1 = tmp_lt;
assume carry1 = tmp_lt && true;

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

assert true && v88 = v86 * v87;
assume v88 = v86 * v87 && true;

vpc carry2@uint8 carry2;
assert true && v88 = carry2;
assume v88 = carry2 && true;

/* _90 = (long long unsigned int) _88; */
vpc v90@uint64 v88@uint8;
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 6 */

/* prephitmp_91 = PHI <_90(5), 1(4)> */
vpc tmp_lt@uint64 tmp_lt;
or uint64 v91 v90 tmp_lt;
assert true && v91 = v90 + tmp_lt;
assume v91 = v90 + tmp_lt && true;
/* MEM[(dig_t *)c_13(D) + 16B] = r0_85; */
mov c13_16 r085;
/* _1 = MEM[(const dig_t *)a_14(D) + 24B]; */
mov v1 a14_24;
/* _2 = MEM[(const dig_t *)b_15(D) + 24B]; */
mov v2 b15_24;
/* diff_17 = _1 - _2; */
usubb carry1 diff17 v1 v2;
/* r0_18 = diff_17 - prephitmp_91; */
usubb carry2 r018 diff17 v91;
/* if (_1 < _2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 8>, False label: <bb 7> */
subb tmp_lt dontcare v1 v2;
assert true && carry1 = tmp_lt;
assume carry1 = tmp_lt && true;

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
assert true && v5 = v3 * v4;
assume v5 = v3 * v4 && true;

vpc carry2@uint8 carry2;
assert true && v5 = carry2;
assume v5 = carry2 && true;
/* _32 = (long long unsigned int) _5; */
vpc v32@uint64 v5@uint8;
/* goto <bb 8> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* prephitmp_31 = PHI <_32(7), 1(6)> */
vpc tmp_lt@uint64 tmp_lt;
or uint64 v31 v32 tmp_lt;
assert true && v31 = v32 + tmp_lt;
assume v31 = v32 + tmp_lt && true;
/* MEM[(dig_t *)c_13(D) + 24B] = r0_18; */
mov c13_24 r018;
/* return prephitmp_31; */


/* Start with unused lhs */
mov r0 c13_0@uint64;
mov r1 c13_8@uint64;
mov r2 c13_16@uint64;
mov r3 c13_24@uint64;
mov borrow_out v31;
/* End with unsed lhs */


{
  ((limbs 64 [r0, r1, r2, r3]) - (limbs 64 [0, 0, 0, 0, borrow_out]))
  =
  (
    (limbs 64 [a0, a1, a2, a3])
    -
    (limbs 64 [b0, b1, b2, b3])
  )
  &&
  true
}

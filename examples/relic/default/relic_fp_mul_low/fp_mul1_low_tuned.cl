proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b) =
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a15_0@uint64 a0;
mov a15_8@uint64 a1;
mov a15_16@uint64 a2;
mov a15_24@uint64 a3;
mov digit17@uint64 b;
/* End with undefined rhs */



/* BB's index is 2 */

/* _8 = *a_15(D); */
mov v8 a15_0;
/* _24 = digit_17(D) w* _8; */
umulj v24 digit17 v8;
/* _37 = (long long unsigned int) _24; */
cast v37@uint64 v24@uint128;
/* *c_14(D) = _37; */
mov c14_0 v37;
/* _39 = _24 >> 64; */
usplit v39 tmp_to_use v24 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v37;
assume tmp_to_use_p = v37 && true;
/* _51 = MEM[(const dig_t *)a_15(D) + 8B]; */
mov v51 a15_8;
/* _53 = digit_17(D) w* _51; */
umulj v53 digit17 v51;
/* r_55 = _39 + _53; */
uadd r55 v39 v53;
/* _56 = (long long unsigned int) r_55; */
cast v56@uint64 r55@uint128;
/* MEM[(dig_t *)c_14(D) + 8B] = _56; */
mov c14_8 v56;
/* _58 = r_55 >> 64; */
usplit v58 tmp_to_use r55 64;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v56;
assume tmp_to_use_p = v56 && true;
/* _70 = MEM[(const dig_t *)a_15(D) + 16B]; */
mov v70 a15_16;
/* _72 = digit_17(D) w* _70; */
umulj v72 digit17 v70;
/* r_74 = _58 + _72; */
uadd r74 v58 v72;
/* _75 = (long long unsigned int) r_74; */
cast v75@uint64 r74@uint128;
/* MEM[(dig_t *)c_14(D) + 16B] = _75; */
mov c14_16 v75;
/* _77 = r_74 >> 64; */
usplit v77 tmp_to_use r74 64;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v75;
assume tmp_to_use_p = v75 && true;
/* _1 = MEM[(const dig_t *)a_15(D) + 24B]; */
mov v1 a15_24;
/* _4 = _1 w* digit_17(D); */
umulj v4 v1 digit17;
/* r_18 = _4 + _77; */
uadd r18 v4 v77;
/* _6 = (long long unsigned int) r_18; */
cast v6@uint64 r18@uint128;
/* MEM[(dig_t *)c_14(D) + 24B] = _6; */
mov c14_24 v6;
/* _7 = r_18 >> 64; */
usplit v7 tmp_to_use r18 64;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v6;
assume tmp_to_use_p = v6 && true;
/* carry_20 = (dig_t) _7; */
vpc carry20@uint64 v7@uint128;
/* return carry_20; */


/* Start with unused lhs */
mov r0 c14_0@uint64;
mov r1 c14_8@uint64;
mov r2 c14_16@uint64;
mov r3 c14_24@uint64;
mov carry_out carry20@uint64;
/* End with unsed lhs */


{
  (limbs 64 [r0, r1, r2, r3, carry_out])
  = (
    (limbs 64 [a0, a1, a2, a3])
    * b
  )
  &&
  true
}

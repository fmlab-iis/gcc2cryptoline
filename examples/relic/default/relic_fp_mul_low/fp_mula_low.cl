proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a18_0@uint64 _;
mov a18_8@uint64 _;
mov a18_16@uint64 _;
mov a18_24@uint64 _;
mov c17_0@uint64 _;
mov c17_8@uint64 _;
mov c17_16@uint64 _;
mov c17_24@uint64 _;
mov digit20@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _27 = *c_17(D); */
mov v27 c17_0;
/* _15 = (__int128 unsigned) _27; */
vpc v15@uint128 v27@uint64;
/* _14 = *a_18(D); */
mov v14 a18_0;
/* _12 = _14 w* digit_20(D); */
umulj v12 v14 digit20;
/* _38 = _12 + _15; */
uadd v38 v12 v15;
/* _43 = (long long unsigned int) _38; */
cast v43@uint64 v38@uint128;
/* *c_17(D) = _43; */
mov c17_0 v43;
/* _45 = _38 >> 64; */
usplit v45 tmp_to_use v38 64;
/* _57 = MEM[(dig_t *)c_17(D) + 8B]; */
mov v57 c17_8;
/* _58 = (__int128 unsigned) _57; */
vpc v58@uint128 v57@uint64;
/* _59 = MEM[(const dig_t *)a_18(D) + 8B]; */
mov v59 a18_8;
/* _61 = digit_20(D) w* _59; */
umulj v61 digit20 v59;
/* _39 = _58 + _61; */
uadd v39 v58 v61;
/* r_64 = _39 + _45; */
uadd r64 v39 v45;
/* _65 = (long long unsigned int) r_64; */
cast v65@uint64 r64@uint128;
/* MEM[(dig_t *)c_17(D) + 8B] = _65; */
mov c17_8 v65;
/* _67 = r_64 >> 64; */
usplit v67 tmp_to_use r64 64;
/* _79 = MEM[(dig_t *)c_17(D) + 16B]; */
mov v79 c17_16;
/* _80 = (__int128 unsigned) _79; */
vpc v80@uint128 v79@uint64;
/* _81 = MEM[(const dig_t *)a_18(D) + 16B]; */
mov v81 a18_16;
/* _83 = digit_20(D) w* _81; */
umulj v83 digit20 v81;
/* _40 = _80 + _83; */
uadd v40 v80 v83;
/* r_86 = _40 + _67; */
uadd r86 v40 v67;
/* _87 = (long long unsigned int) r_86; */
cast v87@uint64 r86@uint128;
/* MEM[(dig_t *)c_17(D) + 16B] = _87; */
mov c17_16 v87;
/* _89 = r_86 >> 64; */
usplit v89 tmp_to_use r86 64;
/* _1 = MEM[(dig_t *)c_17(D) + 24B]; */
mov v1 c17_24;
/* _2 = (__int128 unsigned) _1; */
vpc v2@uint128 v1@uint64;
/* _3 = MEM[(const dig_t *)a_18(D) + 24B]; */
mov v3 a18_24;
/* _6 = _3 w* digit_20(D); */
umulj v6 v3 digit20;
/* _41 = _2 + _6; */
uadd v41 v2 v6;
/* r_21 = _41 + _89; */
uadd r21 v41 v89;
/* _9 = (long long unsigned int) r_21; */
cast v9@uint64 r21@uint128;
/* MEM[(dig_t *)c_17(D) + 24B] = _9; */
mov c17_24 v9;
/* _10 = r_21 >> 64; */
usplit v10 tmp_to_use r21 64;
/* carry_23 = (dig_t) _10; */
cast carry23@uint64 v10@uint128;
/* return carry_23; */


/* Start with unused lhs */
mov _ c17_0@uint64;
mov _ c17_8@uint64;
mov _ c17_16@uint64;
mov _ c17_24@uint64;
mov _ carry23@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

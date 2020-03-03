proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a13_0@uint64 _;
mov a13_8@uint64 _;
mov a13_16@uint64 _;
mov a13_24@uint64 _;
mov b14_0@uint64 _;
mov b14_8@uint64 _;
mov b14_16@uint64 _;
mov b14_24@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _8 = *a_13(D); */
mov v8 a13_0;
/* _7 = *b_14(D); */
mov v7 b14_0;
/* _45 = ADD_OVERFLOW (_7, _8); */
adds carry v45_REAL v7 v8;
adc v45_IMAGE 0@uint64 0@uint64 carry;
/* r0_6 = REALPART_EXPR <_45>; */
mov r06 v45_REAL;
/* _66 = IMAGPART_EXPR <_45>; */
mov v66 v45_IMAGE;
/* _5 = _66 != 0; */
subb gt_value dontcare 0x0@uint64 v66;
mov v5 gt_value;
vpc v5@uint8 v5@uint1;
/* carry_41 = (dig_t) _5; */
vpc carry41@uint64 v5@uint8;
/* *c_12(D) = r0_6; */
mov c12_0 r06;
/* _55 = MEM[(const dig_t *)a_13(D) + 8B]; */
mov v55 a13_8;
/* _56 = MEM[(const dig_t *)b_14(D) + 8B]; */
mov v56 b14_8;
/* _87 = ADD_OVERFLOW (_55, _56); */
adds carry v87_REAL v55 v56;
adc v87_IMAGE 0@uint64 0@uint64 carry;
/* r0_57 = REALPART_EXPR <_87>; */
mov r057 v87_REAL;
/* _44 = IMAGPART_EXPR <_87>; */
mov v44 v87_IMAGE;
/* _58 = _44 != 0; */
subb gt_value dontcare 0x0@uint64 v44;
mov v58 gt_value;
vpc v58@uint8 v58@uint1;
/* _65 = ADD_OVERFLOW (carry_41, r0_57); */
adds carry v65_REAL carry41 r057;
adc v65_IMAGE 0@uint64 0@uint64 carry;
/* r1_59 = REALPART_EXPR <_65>; */
mov r159 v65_REAL;
/* _86 = IMAGPART_EXPR <_65>; */
mov v86 v65_IMAGE;
/* _60 = _86 != 0; */
subb gt_value dontcare 0x0@uint64 v86;
mov v60 gt_value;
vpc v60@uint8 v60@uint1;
/* _61 = _58 | _60; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v61 v58 v60;
/* carry_62 = (dig_t) _61; */
vpc carry62@uint64 v61@uint8;
/* MEM[(dig_t *)c_12(D) + 8B] = r1_59; */
mov c12_8 r159;
/* _76 = MEM[(const dig_t *)a_13(D) + 16B]; */
mov v76 a13_16;
/* _77 = MEM[(const dig_t *)b_14(D) + 16B]; */
mov v77 b14_16;
/* _27 = ADD_OVERFLOW (_76, _77); */
adds carry v27_REAL v76 v77;
adc v27_IMAGE 0@uint64 0@uint64 carry;
/* r0_78 = REALPART_EXPR <_27>; */
mov r078 v27_REAL;
/* _28 = IMAGPART_EXPR <_27>; */
mov v28 v27_IMAGE;
/* _79 = _28 != 0; */
subb gt_value dontcare 0x0@uint64 v28;
mov v79 gt_value;
vpc v79@uint8 v79@uint1;
/* _21 = ADD_OVERFLOW (carry_62, r0_78); */
adds carry v21_REAL carry62 r078;
adc v21_IMAGE 0@uint64 0@uint64 carry;
/* r1_80 = REALPART_EXPR <_21>; */
mov r180 v21_REAL;
/* _22 = IMAGPART_EXPR <_21>; */
mov v22 v21_IMAGE;
/* _81 = _22 != 0; */
subb gt_value dontcare 0x0@uint64 v22;
mov v81 gt_value;
vpc v81@uint8 v81@uint1;
/* _82 = _79 | _81; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v82 v79 v81;
/* carry_83 = (dig_t) _82; */
vpc carry83@uint64 v82@uint8;
/* MEM[(dig_t *)c_12(D) + 16B] = r1_80; */
mov c12_16 r180;
/* _1 = MEM[(const dig_t *)a_13(D) + 24B]; */
mov v1 a13_24;
/* _2 = MEM[(const dig_t *)b_14(D) + 24B]; */
mov v2 b14_24;
/* _23 = ADD_OVERFLOW (_1, _2); */
adds carry v23_REAL v1 v2;
adc v23_IMAGE 0@uint64 0@uint64 carry;
/* r0_16 = REALPART_EXPR <_23>; */
mov r016 v23_REAL;
/* _73 = IMAGPART_EXPR <_23>; */
mov v73 v23_IMAGE;
/* _3 = _73 != 0; */
subb gt_value dontcare 0x0@uint64 v73;
mov v3 gt_value;
vpc v3@uint8 v3@uint1;
/* _74 = ADD_OVERFLOW (r0_16, carry_83); */
adds carry v74_REAL r016 carry83;
adc v74_IMAGE 0@uint64 0@uint64 carry;
/* r1_17 = REALPART_EXPR <_74>; */
mov r117 v74_REAL;
/* _75 = IMAGPART_EXPR <_74>; */
mov v75 v74_IMAGE;
/* _4 = _75 != 0; */
subb gt_value dontcare 0x0@uint64 v75;
mov v4 gt_value;
vpc v4@uint8 v4@uint1;
/* _11 = _3 | _4; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint8 v11 v3 v4;
/* carry_18 = (dig_t) _11; */
vpc carry18@uint64 v11@uint8;
/* MEM[(dig_t *)c_12(D) + 24B] = r1_17; */
mov c12_24 r117;
/* return carry_18; */


/* Start with unused lhs */
mov _ c12_0@uint64;
mov _ c12_8@uint64;
mov _ c12_16@uint64;
mov _ c12_24@uint64;
mov _ carry18@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

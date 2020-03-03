proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a11_0@uint64 _;
mov a11_8@uint64 _;
mov a11_16@uint64 _;
mov a11_24@uint64 _;
mov v18_IMAGE _;
mov v18_REAL _;
mov v27_IMAGE _;
mov v27_REAL _;
mov v34_IMAGE _;
mov v34_REAL _;
mov v64_IMAGE _;
mov v64_REAL _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _26 = *a_11(D); */
mov v26 a11_0;
/* _34 = SUB_OVERFLOW (_26, digit_9(D)); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */
/* r0_8 = REALPART_EXPR <_34>; */
mov r08 v34_REAL;
/* _49 = IMAGPART_EXPR <_34>; */
mov v49 v34_IMAGE;
/* _19 = _49 != 0; */
subb gt_value dontcare 0x0@uint64 v49;
mov v19 gt_value;
vpc v19@uint8 v19@uint1;
/* carry_20 = (dig_t) _19; */
vpc carry20@uint64 v19@uint8;
/* *c_10(D) = r0_8; */
mov c10_0 r08;
/* _42 = MEM[(const dig_t *)a_11(D) + 8B]; */
mov v42 a11_8;
/* _64 = SUB_OVERFLOW (_42, carry_20); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */
/* r0_43 = REALPART_EXPR <_64>; */
mov r043 v64_REAL;
/* _17 = IMAGPART_EXPR <_64>; */
mov v17 v64_IMAGE;
/* _44 = _17 != 0; */
subb gt_value dontcare 0x0@uint64 v17;
mov v44 gt_value;
vpc v44@uint8 v44@uint1;
/* carry_45 = (dig_t) _44; */
vpc carry45@uint64 v44@uint8;
/* MEM[(dig_t *)c_10(D) + 8B] = r0_43; */
mov c10_8 r043;
/* _57 = MEM[(const dig_t *)a_11(D) + 16B]; */
mov v57 a11_16;
/* _18 = SUB_OVERFLOW (_57, carry_45); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */
/* r0_58 = REALPART_EXPR <_18>; */
mov r058 v18_REAL;
/* _28 = IMAGPART_EXPR <_18>; */
mov v28 v18_IMAGE;
/* _59 = _28 != 0; */
subb gt_value dontcare 0x0@uint64 v28;
mov v59 gt_value;
vpc v59@uint8 v59@uint1;
/* carry_60 = (dig_t) _59; */
vpc carry60@uint64 v59@uint8;
/* MEM[(dig_t *)c_10(D) + 16B] = r0_58; */
mov c10_16 r058;
/* _1 = MEM[(const dig_t *)a_11(D) + 24B]; */
mov v1 a11_24;
/* _27 = SUB_OVERFLOW (_1, carry_60); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */
/* r0_13 = REALPART_EXPR <_27>; */
mov r013 v27_REAL;
/* _30 = IMAGPART_EXPR <_27>; */
mov v30 v27_IMAGE;
/* _3 = _30 != 0; */
subb gt_value dontcare 0x0@uint64 v30;
mov v3 gt_value;
vpc v3@uint8 v3@uint1;
/* carry_14 = (dig_t) _3; */
vpc carry14@uint64 v3@uint8;
/* MEM[(dig_t *)c_10(D) + 24B] = r0_13; */
mov c10_24 r013;
/* return carry_14; */


/* Start with unused lhs */
mov _ c10_0@uint64;
mov _ c10_8@uint64;
mov _ c10_16@uint64;
mov _ c10_24@uint64;
mov _ carry14@uint64;
mov _ carry20@uint64;
mov _ carry45@uint64;
mov _ carry60@uint64;
mov _ v1@uint64;
mov _ v26@uint64;
mov _ v42@uint64;
mov _ v57@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

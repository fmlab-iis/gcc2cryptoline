proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a178_0@uint64 _;
mov a178_8@uint64 _;
mov a194_0@uint64 _;
mov a194_8@uint64 _;
mov a20_0@uint64 _;
mov a20_8@uint64 _;
mov a20_16@uint64 _;
mov a20_24@uint64 _;
mov digit16@uint64 _;
mov i177@int32 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* if (digit_16(D) != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 10> */

/* BB's index is 3 */

/* _72 = *a_20(D); */
mov v72 a20_0;
/* _104 = ADD_OVERFLOW (digit_16(D), _72); */
adds carry v104_REAL digit16 v72;
adc v104_IMAGE 0@uint64 0@uint64 carry;
/* r0_73 = REALPART_EXPR <_104>; */
mov r073 v104_REAL;
/* _66 = IMAGPART_EXPR <_104>; */
mov v66 v104_IMAGE;
/* *c_19(D) = r0_73; */
mov c19_0 r073;
/* a_78 = a_20(D) + 8; */
/* c_79 = c_19(D) + 8; */
/* if (_66 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 4>, False label: <bb 11> */

/* BB's index is 4 */

/* _87 = MEM[(const dig_t *)a_20(D) + 8B]; */
mov v87 a20_8;
/* r0_88 = _87 + 1; */
uadd r088 v87 0x1@uint64;
/* MEM[(dig_t *)c_19(D) + 8B] = r0_88; */
mov c19_8 r088;
/* a_93 = &MEM[(void *)a_20(D) + 16B]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* c_94 = &MEM[(void *)c_19(D) + 16B]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* if (r0_88 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 5>, False label: <bb 11> */

/* BB's index is 5 */

/* _102 = MEM[(const dig_t *)a_20(D) + 16B]; */
mov v102 a20_16;
/* r0_103 = _102 + 1; */
uadd r0103 v102 0x1@uint64;
/* MEM[(dig_t *)c_19(D) + 16B] = r0_103; */
mov c19_16 r0103;
/* if (r0_103 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 12> */

/* BB's index is 6 */

/* _1 = MEM[(const dig_t *)a_20(D) + 24B]; */
mov v1 a20_24;
/* r0_22 = _1 + 1; */
uadd r022 v1 0x1@uint64;
/* _2 = r0_22 == 0; */
subb gt_value dontcare 0x0@uint64 r022;
mov v2 gt_value;
not uint1 v2 v2;
vpc v2@uint8 v2@uint1;
/* carry_23 = (dig_t) _2; */
vpc carry23@uint64 v2@uint8;
/* MEM[(dig_t *)c_19(D) + 24B] = r0_22; */
mov c19_24 r022;
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 7 */

/* .MEM_61 = PHI <.MEM_164(10), .MEM_39(11)> */
/* a_194 = PHI <a_166(10), a_35(11)> */
/* i_195 = PHI <2(10), i_37(11)> */
/* c_196 = PHI <c_167(10), c_57(11)> */
/* _62 = *a_194; */
mov v62 a194_0;
/* *c_196 = _62; */
mov c196_0 v62;
/* if (i_195 == 2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 8>, False label: <bb 9> */

/* BB's index is 8 */

/* _6 = MEM[(const dig_t *)a_194 + 8B]; */
mov v6 a194_8;
/* MEM[(dig_t *)c_196 + 8B] = _6; */
mov c196_8 v6;
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 9 */

/* .MEM_56 = PHI <.MEM_24(6), .MEM_28(8), .MEM_186(12), .MEM_63(7), .MEM_39(11)> */
/* carry_10 = PHI <carry_23(6), 0(8), r0_88(12), 0(7), 0(11)> */
/* return carry_10; */

/* BB's index is 10 */

/* _114 = *a_20(D); */
mov v114 a20_0;
/* *c_19(D) = _114; */
mov c19_0 v114;
/* _163 = MEM[(const dig_t *)a_20(D) + 8B]; */
mov v163 a20_8;
/* MEM[(dig_t *)c_19(D) + 8B] = _163; */
mov c19_8 v163;
/* a_166 = &MEM[(void *)a_20(D) + 16B]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* c_167 = &MEM[(void *)c_19(D) + 16B]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* goto <bb 7> */
/* TODO: unconditional jump */

/* BB's index is 11 */

/* i_177 = PHI <1(3), 2(4)> */
/* a_178 = PHI <a_78(3), a_93(4)> */
/* c_179 = PHI <c_79(3), c_94(4)> */
/* .MEM_180 = PHI <.MEM_76(3), .MEM_91(4)> */
/* _172 = *a_178; */
mov v172 a178_0;
/* *c_179 = _172; */
mov c179_0 v172;
/* _34 = MEM[(const dig_t *)a_178 + 8B]; */
mov v34 a178_8;
/* MEM[(dig_t *)c_179 + 8B] = _34; */
mov c179_8 v34;
/* i_37 = i_177 + 2; */
sadd i37 i177 0x2@int32;
/* a_35 = &MEM[(void *)a_178 + 16B]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* c_57 = &MEM[(void *)c_179 + 16B]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* if (i_37 != 4) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 9> */

/* BB's index is 12 */

/* _185 = MEM[(const dig_t *)a_20(D) + 24B]; */
mov v185 a20_24;
/* MEM[(dig_t *)c_19(D) + 24B] = _185; */
mov c19_24 v185;
/* goto <bb 9> */
/* TODO: unconditional jump */


/* Start with unused lhs */
mov _ c179_0@uint64;
mov _ c179_8@uint64;
mov _ c19_0@uint64;
mov _ c19_8@uint64;
mov _ c19_16@uint64;
mov _ c19_24@uint64;
mov _ c196_0@uint64;
mov _ c196_8@uint64;
mov _ carry23@uint64;
mov _ i37@int32;
mov _ v66@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

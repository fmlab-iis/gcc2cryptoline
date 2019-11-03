proc main (
           uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4,
           uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9
          ) =
{
  true
  &&
  and [
    a0 <=u (0xd333332)@32,
    a1 <=u (0x6999999)@32,
    a2 <=u (0xd333332)@32,
    a3 <=u (0x6999999)@32,
    a4 <=u (0xd333332)@32,
    a5 <=u (0x6999999)@32,
    a6 <=u (0xd333332)@32,
    a7 <=u (0x6999999)@32,
    a8 <=u (0xd333332)@32,
    a9 <=u (0x6999999)@32
  ]
}


/* Start with undefined rhs */
mov f3_0@uint32 a0;
mov f3_4@uint32 a1;
mov f3_8@uint32 a2;
mov f3_12@uint32 a3;
mov f3_16@uint32 a4;
mov f3_20@uint32 a5;
mov f3_24@uint32 a6;
mov f3_28@uint32 a7;
mov f3_32@uint32 a8;
mov f3_36@uint32 a9;
/* End with undefined rhs */



/* BB's index is 2 */

/* x20_7 = MEM[(const uint32_t *)f_3(D) + 36B]; */
mov x207 f3_36;
/* x21_8 = MEM[(const uint32_t *)f_3(D) + 32B]; */
mov x218 f3_32;
/* x19_9 = MEM[(const uint32_t *)f_3(D) + 28B]; */
mov x199 f3_28;
/* x17_10 = MEM[(const uint32_t *)f_3(D) + 24B]; */
mov x1710 f3_24;
/* x15_11 = MEM[(const uint32_t *)f_3(D) + 20B]; */
mov x1511 f3_20;
/* x13_12 = MEM[(const uint32_t *)f_3(D) + 16B]; */
mov x1312 f3_16;
/* x11_13 = MEM[(const uint32_t *)f_3(D) + 12B]; */
mov x1113 f3_12;
/* x9_14 = MEM[(const uint32_t *)f_3(D) + 8B]; */
mov x914 f3_8;
/* x7_15 = MEM[(const uint32_t *)f_3(D) + 4B]; */
mov x715 f3_4;
/* x5_16 = MEM[(const uint32_t *)f_3(D)]; */
mov x516 f3_0;
/* x40_18 = x5_16 w* 121666; */
umulj x4018 x516 0x1db42@uint32;
/* x41_20 = x7_15 w* 121666; */
umulj x4120 x715 0x1db42@uint32;
/* x42_22 = x9_14 w* 121666; */
umulj x4222 x914 0x1db42@uint32;
/* x43_24 = x11_13 w* 121666; */
umulj x4324 x1113 0x1db42@uint32;
/* x44_26 = x13_12 w* 121666; */
umulj x4426 x1312 0x1db42@uint32;
/* x45_28 = x15_11 w* 121666; */
umulj x4528 x1511 0x1db42@uint32;
/* x46_30 = x17_10 w* 121666; */
umulj x4630 x1710 0x1db42@uint32;
/* x47_32 = x19_9 w* 121666; */
umulj x4732 x199 0x1db42@uint32;
/* x48_34 = x21_8 w* 121666; */
umulj x4834 x218 0x1db42@uint32;
/* x49_36 = x20_7 w* 121666; */
umulj x4936 x207 0x1db42@uint32;
/* x86_37 = x40_18 >> 26; */
usplit x8637 tmp_to_use x4018 26;
/* _38 = (unsigned int) x40_18; */
cast v38@uint32 x4018@uint64;
/* x87_39 = _38 & 67108863; */
and uint32 x8739 v38 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x8739 = tmp_to_use_p;
assume x8739 = tmp_to_use_p && true;

/* x88_40 = x41_20 + x86_37; */
uadd x8840 x4120 x8637;
/* x89_41 = x88_40 >> 25; */
usplit x8941 tmp_to_use x8840 25;
/* _42 = (unsigned int) x88_40; */
cast v42@uint32 x8840@uint64;
/* x90_43 = _42 & 33554431; */
and uint32 x9043 v42 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x9043 = tmp_to_use_p;
assume x9043 = tmp_to_use_p && true;

/* x91_44 = x42_22 + x89_41; */
uadd x9144 x4222 x8941;
/* x92_45 = x91_44 >> 26; */
usplit x9245 tmp_to_use x9144 26;
/* _46 = (unsigned int) x91_44; */
cast v46@uint32 x9144@uint64;
/* x93_47 = _46 & 67108863; */
and uint32 x9347 v46 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x9347 = tmp_to_use_p;
assume x9347 = tmp_to_use_p && true;

/* x94_48 = x43_24 + x92_45; */
uadd x9448 x4324 x9245;
/* x95_49 = x94_48 >> 25; */
usplit x9549 tmp_to_use x9448 25;
/* _50 = (unsigned int) x94_48; */
cast v50@uint32 x9448@uint64;
/* x96_51 = _50 & 33554431; */
and uint32 x9651 v50 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x9651 = tmp_to_use_p;
assume x9651 = tmp_to_use_p && true;

/* x97_52 = x44_26 + x95_49; */
uadd x9752 x4426 x9549;
/* x98_53 = x97_52 >> 26; */
usplit x9853 tmp_to_use x9752 26;
/* _54 = (unsigned int) x97_52; */
cast v54@uint32 x9752@uint64;
/* x99_55 = _54 & 67108863; */
and uint32 x9955 v54 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x9955 = tmp_to_use_p;
assume x9955 = tmp_to_use_p && true;

/* x100_56 = x45_28 + x98_53; */
uadd x10056 x4528 x9853;
/* x101_57 = x100_56 >> 25; */
usplit x10157 tmp_to_use x10056 25;
/* _58 = (unsigned int) x100_56; */
cast v58@uint32 x10056@uint64;
/* x102_59 = _58 & 33554431; */
and uint32 x10259 v58 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x10259 = tmp_to_use_p;
assume x10259 = tmp_to_use_p && true;

/* x103_60 = x46_30 + x101_57; */
uadd x10360 x4630 x10157;
/* x104_61 = x103_60 >> 26; */
usplit x10461 tmp_to_use x10360 26;
/* _62 = (unsigned int) x103_60; */
cast v62@uint32 x10360@uint64;
/* x105_63 = _62 & 67108863; */
and uint32 x10563 v62 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x10563 = tmp_to_use_p;
assume x10563 = tmp_to_use_p && true;

/* x106_64 = x47_32 + x104_61; */
uadd x10664 x4732 x10461;
/* x107_65 = x106_64 >> 25; */
usplit x10765 tmp_to_use x10664 25;
/* _66 = (unsigned int) x106_64; */
cast v66@uint32 x10664@uint64;
/* x108_67 = _66 & 33554431; */
and uint32 x10867 v66 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x10867 = tmp_to_use_p;
assume x10867 = tmp_to_use_p && true;

/* x109_68 = x48_34 + x107_65; */
uadd x10968 x4834 x10765;
/* x110_69 = x109_68 >> 26; */
usplit x11069 tmp_to_use x10968 26;
/* _70 = (unsigned int) x109_68; */
cast v70@uint32 x10968@uint64;
/* x111_71 = _70 & 67108863; */
and uint32 x11171 v70 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x11171 = tmp_to_use_p;
assume x11171 = tmp_to_use_p && true;

/* x112_72 = x49_36 + x110_69; */
uadd x11272 x4936 x11069;
/* x113_73 = x112_72 >> 25; */
usplit x11373 tmp_to_use x11272 25;
/* _74 = (unsigned int) x112_72; */
cast v74@uint32 x11272@uint64;
/* x114_75 = _74 & 33554431; */
and uint32 x11475 v74 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x11475 = tmp_to_use_p;
assume x11475 = tmp_to_use_p && true;

/* _76 = (long long unsigned int) x87_39; */
vpc v76@uint64 x8739@uint32;
/* _77 = x113_73 * 19; */
umul v77 x11373 0x13@uint64;
/* x115_78 = _76 + _77; */
uadd x11578 v76 v77;
/* _79 = x115_78 >> 26; */
usplit v79 tmp_to_use x11578 26;
/* x116_80 = (uint32_t) _79; */
vpc x11680@uint32 v79@uint64;
/* _81 = (unsigned int) x115_78; */
cast v81@uint32 x11578@uint64;
/* x117_82 = _81 & 67108863; */
and uint32 x11782 v81 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x11782 = tmp_to_use_p;
assume x11782 = tmp_to_use_p && true;

/* x118_83 = x90_43 + x116_80; */
uadd x11883 x9043 x11680;
/* x119_84 = x118_83 >> 25; */
usplit x11984 tmp_to_use x11883 25;
/* x120_85 = x118_83 & 33554431; */
and uint32 x12085 x11883 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x12085 = tmp_to_use_p;
assume x12085 = tmp_to_use_p && true;

/* MEM[(uint32_t *)h_4(D)] = x117_82; */
mov h4_0 x11782;
/* MEM[(uint32_t *)h_4(D) + 4B] = x120_85; */
mov h4_4 x12085;
/* _86 = x93_47 + x119_84; */
uadd v86 x9347 x11984;
/* MEM[(uint32_t *)h_4(D) + 8B] = _86; */
mov h4_8 v86;
/* MEM[(uint32_t *)h_4(D) + 12B] = x96_51; */
mov h4_12 x9651;
/* MEM[(uint32_t *)h_4(D) + 16B] = x99_55; */
mov h4_16 x9955;
/* MEM[(uint32_t *)h_4(D) + 20B] = x102_59; */
mov h4_20 x10259;
/* MEM[(uint32_t *)h_4(D) + 24B] = x105_63; */
mov h4_24 x10563;
/* MEM[(uint32_t *)h_4(D) + 28B] = x108_67; */
mov h4_28 x10867;
/* MEM[(uint32_t *)h_4(D) + 32B] = x111_71; */
mov h4_32 x11171;
/* MEM[(uint32_t *)h_4(D) + 36B] = x114_75; */
mov h4_36 x11475;
/* return; */


/* Start with unused lhs */
mov c0 h4_0@uint32;
mov c1 h4_4@uint32;
mov c2 h4_8@uint32;
mov c3 h4_12@uint32;
mov c4 h4_16@uint32;
mov c5 h4_20@uint32;
mov c6 h4_24@uint32;
mov c7 h4_28@uint32;
mov c8 h4_32@uint32;
mov c9 h4_36@uint32;
/* End with unsed lhs */

{
  (
    c0 +
    c1 * (2**26) + c2 * (2**51) +
    c3 * (2**77) + c4 * (2**102) +
    c5 * (2**128) + c6 * (2**153) +
    c7 * (2**179) + c8 * (2**204) +
    c9 * (2**230)
  )
  =
  (
    (
      a0 +
      a1 * (2**26) + a2 * (2**51) +
      a3 * (2**77) + a4 * (2**102) +
      a5 * (2**128) + a6 * (2**153) +
      a7 * (2**179) + a8 * (2**204) +
      a9 * (2**230)
    )
    *
    121666
  )
  (mod (2**255 - 19))
  &&
  and
  [
    c0 <=u (0x4666666)@32,
    c1 <=u (0x2333333)@32,
    c2 <=u (0x4666666)@32,
    c3 <=u (0x2333333)@32,
    c4 <=u (0x4666666)@32,
    c5 <=u (0x2333333)@32,
    c6 <=u (0x4666666)@32,
    c7 <=u (0x2333333)@32,
    c8 <=u (0x4666666)@32,
    c9 <=u (0x2333333)@32
  ]
}

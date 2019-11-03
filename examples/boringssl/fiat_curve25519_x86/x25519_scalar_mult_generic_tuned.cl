/* @frege -- range
===== Verification =====
Arguments: -isafety -slicing -re -btor -jobs 24 -qfbv_solver mathsat -o boringssl_x86_range.log -disable_algebra x25519_scalar_mult_generic_tuned.cl
Verification result:                    [OK]            323.075893 seconds
        Command being timed: "verify -isafety -slicing -re -btor -jobs 24 -qfbv_solver mathsat -o boringssl_x86_range.log -disable_algebra x25519_scalar_mult_generic_tuned.cl"
        User time (seconds): 3675.98
        System time (seconds): 302.73
        Percent of CPU this job got: 1231%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 5:23.18
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 1605272
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 126632565
        Voluntary context switches: 96115
        Involuntary context switches: 315394
        Swaps: 0
        File system inputs: 0
        File system outputs: 357744
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
---------------- algebra
Verification result:                    [OK]            41.951677 seconds
        Command being timed: "verify -v -isafety -slicing -re -btor -jobs 24 -qfbv_solver mathsat -o boringssl_x86_algebra.log -disable_safety -disable_range x25519_scalar_mult_generic_tuned.cl"
        User time (seconds): 42.46
        System time (seconds): 2.05
        Percent of CPU this job got: 105%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:42.06
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 227180
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 500229
        Voluntary context switches: 32925
        Involuntary context switches: 1336
        Swaps: 0
        File system inputs: 0
        File system outputs: 260256
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*/


proc fe_sub (
           uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4,
           uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9,
           uint32 b0, uint32 b1, uint32 b2, uint32 b3, uint32 b4,
           uint32 b5, uint32 b6, uint32 b7, uint32 b8, uint32 b9
           ;
           uint32 c0, uint32 c1, uint32 c2, uint32 c3, uint32 c4,
           uint32 c5, uint32 c6, uint32 c7, uint32 c8, uint32 c9
          ) =
{
  true
  &&
  and [
   a0 <=u (0x4666666)@32,
   a1 <=u (0x2333333)@32,
   a2 <=u (0x4666666)@32,
   a3 <=u (0x2333333)@32,
   a4 <=u (0x4666666)@32,
   a5 <=u (0x2333333)@32,
   a6 <=u (0x4666666)@32,
   a7 <=u (0x2333333)@32,
   a8 <=u (0x4666666)@32,
   a9 <=u (0x2333333)@32,
   b0 <=u (0x4666666)@32,
   b1 <=u (0x2333333)@32,
   b2 <=u (0x4666666)@32,
   b3 <=u (0x2333333)@32,
   b4 <=u (0x4666666)@32,
   b5 <=u (0x2333333)@32,
   b6 <=u (0x4666666)@32,
   b7 <=u (0x2333333)@32,
   b8 <=u (0x4666666)@32,
   b9 <=u (0x2333333)@32
  ]
}


/* Start with undefined rhs */
mov f5_0@uint32 a0;
mov f5_4@uint32 a1;
mov f5_8@uint32 a2;
mov f5_12@uint32 a3;
mov f5_16@uint32 a4;
mov f5_20@uint32 a5;
mov f5_24@uint32 a6;
mov f5_28@uint32 a7;
mov f5_32@uint32 a8;
mov f5_36@uint32 a9;
mov g4_0@uint32 b0;
mov g4_4@uint32 b1;
mov g4_8@uint32 b2;
mov g4_12@uint32 b3;
mov g4_16@uint32 b4;
mov g4_20@uint32 b5;
mov g4_24@uint32 b6;
mov g4_28@uint32 b7;
mov g4_32@uint32 b8;
mov g4_36@uint32 b9;
/* End with undefined rhs */



/* BB's index is 2 */

/* x20_9 = MEM[(const uint32_t *)f_5(D) + 36B]; */
mov x209 f5_36;
/* x21_10 = MEM[(const uint32_t *)f_5(D) + 32B]; */
mov x2110 f5_32;
/* vect_x5_18601_8 = MEM[(const uint32_t *)f_5(D)]; */
mov vect_x5_186018_0 f5_0;
mov vect_x5_186018_4 f5_4;
mov vect_x5_186018_8 f5_8;
mov vect_x5_186018_12 f5_12;
/* vect_x5_18602_1 = MEM[(const uint32_t *)f_5(D) + 16B]; */
mov vect_x5_186021_0 f5_16;
mov vect_x5_186021_4 f5_20;
mov vect_x5_186021_8 f5_24;
mov vect_x5_186021_12 f5_28;
/* x38_19 = MEM[(const uint32_t *)g_4(D) + 36B]; */
mov x3819 g4_36;
/* x39_20 = MEM[(const uint32_t *)g_4(D) + 32B]; */
mov x3920 g4_32;
/* vect_x23_28606_29 = MEM[(const uint32_t *)g_4(D)]; */
mov vect_x23_2860629_0 g4_0;
mov vect_x23_2860629_4 g4_4;
mov vect_x23_2860629_8 g4_8;
mov vect_x23_2860629_12 g4_12;
/* vect_x23_28607_33 = MEM[(const uint32_t *)g_4(D) + 16B]; */
mov vect_x23_2860733_0 g4_16;
mov vect_x23_2860733_4 g4_20;
mov vect_x23_2860733_8 g4_24;
mov vect_x23_2860733_12 g4_28;
/* vect__74603_62 = vect_x5_18601_8 + { 134217690, 67108862, 134217726, 67108862 }; */
uadd vect__7460362_0 vect_x5_186018_0 0x7ffffda@uint32;
uadd vect__7460362_4 vect_x5_186018_4 0x3fffffe@uint32;
uadd vect__7460362_8 vect_x5_186018_8 0x7fffffe@uint32;
uadd vect__7460362_12 vect_x5_186018_12 0x3fffffe@uint32;
/* vect__74603_63 = vect_x5_18602_1 + { 134217726, 67108862, 134217726, 67108862 }; */
uadd vect__7460363_0 vect_x5_186021_0 0x7fffffe@uint32;
uadd vect__7460363_4 vect_x5_186021_4 0x3fffffe@uint32;
uadd vect__7460363_8 vect_x5_186021_8 0x7fffffe@uint32;
uadd vect__7460363_12 vect_x5_186021_12 0x3fffffe@uint32;
/* vect__30608_37 = vect__74603_62 - vect_x23_28606_29; */
usub vect__3060837_0 vect__7460362_0 vect_x23_2860629_0;
usub vect__3060837_4 vect__7460362_4 vect_x23_2860629_4;
usub vect__3060837_8 vect__7460362_8 vect_x23_2860629_8;
usub vect__3060837_12 vect__7460362_12 vect_x23_2860629_12;
/* vect__30608_39 = vect__74603_63 - vect_x23_28607_33; */
usub vect__3060839_0 vect__7460363_0 vect_x23_2860733_0;
usub vect__3060839_4 vect__7460363_4 vect_x23_2860733_4;
usub vect__3060839_8 vect__7460363_8 vect_x23_2860733_8;
usub vect__3060839_12 vect__7460363_12 vect_x23_2860733_12;
/* MEM[(uint32_t *)h_6(D)] = vect__30608_37; */
mov h6_0 vect__3060837_0;
mov h6_4 vect__3060837_4;
mov h6_8 vect__3060837_8;
mov h6_12 vect__3060837_12;
/* MEM[(uint32_t *)h_6(D) + 16B] = vect__30608_39; */
mov h6_16 vect__3060839_0;
mov h6_20 vect__3060839_4;
mov h6_24 vect__3060839_8;
mov h6_28 vect__3060839_12;
/* _66 = x21_10 + 134217726; */
uadd v66 x2110 0x7fffffe@uint32;
/* _46 = _66 - x39_20; */
usub v46 v66 x3920;
/* MEM[(uint32_t *)h_6(D) + 32B] = _46; */
mov h6_32 v46;
/* _65 = x20_9 + 67108862; */
uadd v65 x209 0x3fffffe@uint32;
/* _48 = _65 - x38_19; */
usub v48 v65 x3819;
/* MEM[(uint32_t *)h_6(D) + 36B] = _48; */
mov h6_36 v48;
/* return; */

/* Start with unused lhs */
mov c0 h6_0@uint32;
mov c1 h6_4@uint32;
mov c2 h6_8@uint32;
mov c3 h6_12@uint32;
mov c4 h6_16@uint32;
mov c5 h6_20@uint32;
mov c6 h6_24@uint32;
mov c7 h6_28@uint32;
mov c8 h6_32@uint32;
mov c9 h6_36@uint32;
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
    -
    (
      b0 +
      b1 * (2**26) + b2 * (2**51) +
      b3 * (2**77) + b4 * (2**102) +
      b5 * (2**128) + b6 * (2**153) +
      b7 * (2**179) + b8 * (2**204) +
      b9 * (2**230)
    )
  )
  (mod (2**255 - 19))
  &&
  and
  [
    c0 <=u (0xd333332)@32,
    c1 <=u (0x6999999)@32,
    c2 <=u (0xd333332)@32,
    c3 <=u (0x6999999)@32,
    c4 <=u (0xd333332)@32,
    c5 <=u (0x6999999)@32,
    c6 <=u (0xd333332)@32,
    c7 <=u (0x6999999)@32,
    c8 <=u (0xd333332)@32,
    c9 <=u (0x6999999)@32
  ]
}

proc fe_sq (
           uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4,
           uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9
           ;
           uint32 c0, uint32 c1, uint32 c2, uint32 c3, uint32 c4,
           uint32 c5, uint32 c6, uint32 c7, uint32 c8, uint32 c9
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
mov in1147_0@uint32 a0;
mov in1147_4@uint32 a1;
mov in1147_8@uint32 a2;
mov in1147_12@uint32 a3;
mov in1147_16@uint32 a4;
mov in1147_20@uint32 a5;
mov in1147_24@uint32 a6;
mov in1147_28@uint32 a7;
mov in1147_32@uint32 a8;
mov in1147_36@uint32 a9;
/* End with undefined rhs */



/* BB's index is 2 */

/* x17_148 = MEM[(const uint32_t *)in1_147(D) + 36B]; */
mov x17148 in1147_36;
/* x18_149 = MEM[(const uint32_t *)in1_147(D) + 32B]; */
mov x18149 in1147_32;
/* x16_150 = MEM[(const uint32_t *)in1_147(D) + 28B]; */
mov x16150 in1147_28;
/* x14_151 = MEM[(const uint32_t *)in1_147(D) + 24B]; */
mov x14151 in1147_24;
/* x12_152 = MEM[(const uint32_t *)in1_147(D) + 20B]; */
mov x12152 in1147_20;
/* x10_153 = MEM[(const uint32_t *)in1_147(D) + 16B]; */
mov x10153 in1147_16;
/* x8_154 = MEM[(const uint32_t *)in1_147(D) + 12B]; */
mov x8154 in1147_12;
/* x6_155 = MEM[(const uint32_t *)in1_147(D) + 8B]; */
mov x6155 in1147_8;
/* x4_156 = MEM[(const uint32_t *)in1_147(D) + 4B]; */
mov x4156 in1147_4;
/* x2_157 = *in1_147(D); */
mov x2157 in1147_0;
/* x19_158 = x2_157 w* x2_157; */
umulj x19158 x2157 x2157;
/* _2 = x2_157 * 2; */
umul v2 x2157 0x2@uint32;
/* x20_159 = _2 w* x4_156; */
umulj x20159 v2 x4156;
/* _5 = x4_156 w* x4_156; */
umulj v5 x4156 x4156;
/* _7 = x2_157 w* x6_155; */
umulj v7 x2157 x6155;
/* _8 = _5 + _7; */
uadd v8 v5 v7;
/* x21_160 = _8 * 2; */
umul x21160 v8 0x2@uint64;
/* _9 = x4_156 w* x6_155; */
umulj v9 x4156 x6155;
/* _11 = x2_157 w* x8_154; */
umulj v11 x2157 x8154;
/* _12 = _9 + _11; */
uadd v12 v9 v11;
/* x22_161 = _12 * 2; */
umul x22161 v12 0x2@uint64;
/* _13 = x6_155 w* x6_155; */
umulj v13 x6155 x6155;
/* _14 = x4_156 * 4; */
umul v14 x4156 0x4@uint32;
/* _16 = x8_154 w* _14; */
umulj v16 x8154 v14;
/* _19 = _2 w* x10_153; */
umulj v19 v2 x10153;
/* _259 = _16 + _19; */
uadd v259 v16 v19;
/* _260 = _13 + _259; */
uadd v260 v13 v259;
/* _20 = x6_155 w* x8_154; */
umulj v20 x6155 x8154;
/* _21 = x4_156 w* x10_153; */
umulj v21 x4156 x10153;
/* _22 = _20 + _21; */
uadd v22 v20 v21;
/* _24 = x2_157 w* x12_152; */
umulj v24 x2157 x12152;
/* _25 = _22 + _24; */
uadd v25 v22 v24;
/* x24_163 = _25 * 2; */
umul x24163 v25 0x2@uint64;
/* _26 = x8_154 w* x8_154; */
umulj v26 x8154 x8154;
/* _27 = x6_155 w* x10_153; */
umulj v27 x6155 x10153;
/* _28 = _26 + _27; */
uadd v28 v26 v27;
/* _29 = x4_156 * 2; */
umul v29 x4156 0x2@uint32;
/* _31 = x12_152 w* _29; */
umulj v31 x12152 v29;
/* _33 = x2_157 w* x14_151; */
umulj v33 x2157 x14151;
/* _281 = _28 + _33; */
uadd v281 v28 v33;
/* _35 = _31 + _281; */
uadd v35 v31 v281;
/* x25_164 = _35 * 2; */
umul x25164 v35 0x2@uint64;
/* _36 = x8_154 w* x10_153; */
umulj v36 x8154 x10153;
/* _37 = x6_155 w* x12_152; */
umulj v37 x6155 x12152;
/* _279 = _36 + _37; */
uadd v279 v36 v37;
/* _40 = x2_157 w* x16_150; */
umulj v40 x2157 x16150;
/* _41 = x4_156 w* x14_151; */
umulj v41 x4156 x14151;
/* _280 = _40 + _279; */
uadd v280 v40 v279;
/* _43 = _41 + _280; */
uadd v43 v41 v280;
/* x26_165 = _43 * 2; */
umul x26165 v43 0x2@uint64;
/* _44 = x10_153 w* x10_153; */
umulj v44 x10153 x10153;
/* _45 = x6_155 w* x14_151; */
umulj v45 x6155 x14151;
/* _47 = x2_157 w* x18_149; */
umulj v47 x2157 x18149;
/* _48 = _45 + _47; */
uadd v48 v45 v47;
/* _49 = x4_156 w* x16_150; */
umulj v49 x4156 x16150;
/* _50 = x8_154 w* x12_152; */
umulj v50 x8154 x12152;
/* _51 = _49 + _50; */
uadd v51 v49 v50;
/* _52 = _51 * 2; */
umul v52 v51 0x2@uint64;
/* _53 = _48 + _52; */
uadd v53 v48 v52;
/* _54 = _53 * 2; */
umul v54 v53 0x2@uint64;
/* _55 = x10_153 w* x12_152; */
umulj v55 x10153 x12152;
/* _56 = x8_154 w* x14_151; */
umulj v56 x8154 x14151;
/* _276 = _55 + _56; */
uadd v276 v55 v56;
/* _58 = x4_156 w* x18_149; */
umulj v58 x4156 x18149;
/* _59 = x6_155 w* x16_150; */
umulj v59 x6155 x16150;
/* _277 = _58 + _276; */
uadd v277 v58 v276;
/* _61 = _59 + _277; */
uadd v61 v59 v277;
/* _63 = x2_157 w* x17_148; */
umulj v63 x2157 x17148;
/* _64 = _61 + _63; */
uadd v64 v61 v63;
/* x28_167 = _64 * 2; */
umul x28167 v64 0x2@uint64;
/* _65 = x12_152 w* x12_152; */
umulj v65 x12152 x12152;
/* _66 = x10_153 w* x14_151; */
umulj v66 x10153 x14151;
/* _67 = _65 + _66; */
uadd v67 v65 v66;
/* _68 = x8_154 w* x16_150; */
umulj v68 x8154 x16150;
/* _69 = x4_156 w* x17_148; */
umulj v69 x4156 x17148;
/* _70 = _68 + _69; */
uadd v70 v68 v69;
/* _71 = _70 * 2; */
umul v71 v70 0x2@uint64;
/* _72 = x6_155 w* x18_149; */
umulj v72 x6155 x18149;
/* _274 = _67 + _72; */
uadd v274 v67 v72;
/* _74 = _71 + _274; */
uadd v74 v71 v274;
/* x29_168 = _74 * 2; */
umul x29168 v74 0x2@uint64;
/* _75 = x12_152 w* x14_151; */
umulj v75 x12152 x14151;
/* _76 = x10_153 w* x16_150; */
umulj v76 x10153 x16150;
/* _272 = _75 + _76; */
uadd v272 v75 v76;
/* _78 = x6_155 w* x17_148; */
umulj v78 x6155 x17148;
/* _79 = x8_154 w* x18_149; */
umulj v79 x8154 x18149;
/* _273 = _78 + _272; */
uadd v273 v78 v272;
/* _81 = _79 + _273; */
uadd v81 v79 v273;
/* x30_169 = _81 * 2; */
umul x30169 v81 0x2@uint64;
/* _82 = x14_151 w* x14_151; */
umulj v82 x14151 x14151;
/* _83 = x10_153 w* x18_149; */
umulj v83 x10153 x18149;
/* _84 = x12_152 w* x16_150; */
umulj v84 x12152 x16150;
/* _85 = x8_154 w* x17_148; */
umulj v85 x8154 x17148;
/* _86 = _84 + _85; */
uadd v86 v84 v85;
/* _87 = _86 * 2; */
umul v87 v86 0x2@uint64;
/* _88 = _83 + _87; */
uadd v88 v83 v87;
/* _89 = _88 * 2; */
umul v89 v88 0x2@uint64;
/* x31_170 = _82 + _89; */
uadd x31170 v82 v89;
/* _90 = x14_151 w* x16_150; */
umulj v90 x14151 x16150;
/* _91 = x12_152 w* x18_149; */
umulj v91 x12152 x18149;
/* _92 = _90 + _91; */
uadd v92 v90 v91;
/* _93 = x10_153 w* x17_148; */
umulj v93 x10153 x17148;
/* _94 = _92 + _93; */
uadd v94 v92 v93;
/* x32_171 = _94 * 2; */
umul x32171 v94 0x2@uint64;
/* _95 = x16_150 w* x16_150; */
umulj v95 x16150 x16150;
/* _96 = x14_151 w* x18_149; */
umulj v96 x14151 x18149;
/* _97 = _95 + _96; */
uadd v97 v95 v96;
/* _98 = x12_152 * 2; */
umul v98 x12152 0x2@uint32;
/* _100 = x17_148 w* _98; */
umulj v100 x17148 v98;
/* _101 = _97 + _100; */
uadd v101 v97 v100;
/* x33_172 = _101 * 2; */
umul x33172 v101 0x2@uint64;
/* _102 = x16_150 w* x18_149; */
umulj v102 x16150 x18149;
/* _103 = x14_151 w* x17_148; */
umulj v103 x14151 x17148;
/* _104 = _102 + _103; */
uadd v104 v102 v103;
/* x34_173 = _104 * 2; */
umul x34173 v104 0x2@uint64;
/* _105 = x18_149 w* x18_149; */
umulj v105 x18149 x18149;
/* _106 = x16_150 * 4; */
umul v106 x16150 0x4@uint32;
/* _108 = x17_148 w* _106; */
umulj v108 x17148 v106;
/* x35_174 = _105 + _108; */
uadd x35174 v105 v108;
/* _109 = x18_149 * 2; */
umul v109 x18149 0x2@uint32;
/* x36_175 = x17_148 w* _109; */
umulj x36175 x17148 v109;
/* _111 = x17_148 * 2; */
umul v111 x17148 0x2@uint32;
/* x37_176 = x17_148 w* _111; */
umulj x37176 x17148 v111;
/* _251 = _44 + x37_176; */
uadd v251 v44 x37176;
/* _113 = x37_176 << 4; */
usplit tmp1 tmp2 x37176 60;
shl v113 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _250 = _113 + _251; */
uadd v250 v113 v251;
/* _114 = x37_176 << 1; */
usplit tmp1 tmp2 x37176 63;
shl v114 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _252 = _114 + _250; */
uadd v252 v114 v250;
/* x40_179 = _54 + _252; */
uadd x40179 v54 v252;
/* _115 = x36_175 << 4; */
usplit tmp1 tmp2 x36175 60;
shl v115 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _116 = x36_175 << 1; */
usplit tmp1 tmp2 x36175 63;
shl v116 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _253 = _115 + _116; */
uadd v253 v115 v116;
/* _254 = x36_175 + _253; */
uadd v254 x36175 v253;
/* x43_182 = x26_165 + _254; */
uadd x43182 x26165 v254;
/* _117 = x35_174 << 4; */
usplit tmp1 tmp2 x35174 60;
shl v117 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _118 = x35_174 << 1; */
usplit tmp1 tmp2 x35174 63;
shl v118 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _255 = _117 + _118; */
uadd v255 v117 v118;
/* _256 = x35_174 + _255; */
uadd v256 x35174 v255;
/* x46_185 = x25_164 + _256; */
uadd x46185 x25164 v256;
/* _119 = x34_173 << 4; */
usplit tmp1 tmp2 x34173 60;
shl v119 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _257 = _119 + x24_163; */
uadd v257 v119 x24163;
/* _120 = x34_173 << 1; */
usplit tmp1 tmp2 x34173 63;
shl v120 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _258 = x34_173 + _257; */
uadd v258 x34173 v257;
/* x49_188 = _120 + _258; */
uadd x49188 v120 v258;
/* _121 = x33_172 << 4; */
usplit tmp1 tmp2 x33172 60;
shl v121 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _261 = x33_172 + _260; */
uadd v261 x33172 v260;
/* _122 = x33_172 << 1; */
usplit tmp1 tmp2 x33172 63;
shl v122 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _262 = _121 + _261; */
uadd v262 v121 v261;
/* x52_191 = _122 + _262; */
uadd x52191 v122 v262;
/* _123 = x32_171 << 4; */
usplit tmp1 tmp2 x32171 60;
shl v123 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _263 = x22_161 + x32_171; */
uadd v263 x22161 x32171;
/* _124 = x32_171 << 1; */
usplit tmp1 tmp2 x32171 63;
shl v124 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _264 = _123 + _263; */
uadd v264 v123 v263;
/* x55_194 = _124 + _264; */
uadd x55194 v124 v264;
/* _125 = x31_170 << 4; */
usplit tmp1 tmp2 x31170 60;
shl v125 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _265 = x21_160 + x31_170; */
uadd v265 x21160 x31170;
/* _126 = x31_170 << 1; */
usplit tmp1 tmp2 x31170 63;
shl v126 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _266 = _125 + _265; */
uadd v266 v125 v265;
/* x58_197 = _126 + _266; */
uadd x58197 v126 v266;
/* _127 = x30_169 << 4; */
usplit tmp1 tmp2 x30169 60;
shl v127 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _267 = x20_159 + x30_169; */
uadd v267 x20159 x30169;
/* _128 = x30_169 << 1; */
usplit tmp1 tmp2 x30169 63;
shl v128 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _268 = _127 + _267; */
uadd v268 v127 v267;
/* x61_200 = _128 + _268; */
uadd x61200 v128 v268;
/* _129 = x29_168 << 4; */
usplit tmp1 tmp2 x29168 60;
shl v129 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _269 = x19_158 + x29_168; */
uadd v269 x19158 x29168;
/* _130 = x29_168 << 1; */
usplit tmp1 tmp2 x29168 63;
shl v130 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _270 = _129 + _269; */
uadd v270 v129 v269;
/* x64_203 = _130 + _270; */
uadd x64203 v130 v270;
/* x65_204 = x64_203 >> 26; */
usplit x65204 tmp_to_use x64203 26;
/* _131 = (unsigned int) x64_203; */
cast v131@uint32 x64203@uint64;
/* x66_205 = _131 & 67108863; */
and uint32 x66205 v131 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x66205 = tmp_to_use_p;
assume x66205 = tmp_to_use_p && true;

/* x67_206 = x61_200 + x65_204; */
uadd x67206 x61200 x65204;
/* x68_207 = x67_206 >> 25; */
usplit x68207 tmp_to_use x67206 25;
/* _132 = (unsigned int) x67_206; */
cast v132@uint32 x67206@uint64;
/* x69_208 = _132 & 33554431; */
and uint32 x69208 v132 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x69208 = tmp_to_use_p;
assume x69208 = tmp_to_use_p && true;

/* x70_209 = x58_197 + x68_207; */
uadd x70209 x58197 x68207;
/* x71_210 = x70_209 >> 26; */
usplit x71210 tmp_to_use x70209 26;
/* _133 = (unsigned int) x70_209; */
cast v133@uint32 x70209@uint64;
/* x72_211 = _133 & 67108863; */
and uint32 x72211 v133 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x72211 = tmp_to_use_p;
assume x72211 = tmp_to_use_p && true;

/* x73_212 = x55_194 + x71_210; */
uadd x73212 x55194 x71210;
/* x74_213 = x73_212 >> 25; */
usplit x74213 tmp_to_use x73212 25;
/* _134 = (unsigned int) x73_212; */
cast v134@uint32 x73212@uint64;
/* x75_214 = _134 & 33554431; */
and uint32 x75214 v134 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x75214 = tmp_to_use_p;
assume x75214 = tmp_to_use_p && true;

/* x76_215 = x52_191 + x74_213; */
uadd x76215 x52191 x74213;
/* x77_216 = x76_215 >> 26; */
usplit x77216 tmp_to_use x76215 26;
/* _135 = (unsigned int) x76_215; */
cast v135@uint32 x76215@uint64;
/* x78_217 = _135 & 67108863; */
and uint32 x78217 v135 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x78217 = tmp_to_use_p;
assume x78217 = tmp_to_use_p && true;

/* x79_218 = x49_188 + x77_216; */
uadd x79218 x49188 x77216;
/* x80_219 = x79_218 >> 25; */
usplit x80219 tmp_to_use x79218 25;
/* _136 = (unsigned int) x79_218; */
cast v136@uint32 x79218@uint64;
/* x81_220 = _136 & 33554431; */
and uint32 x81220 v136 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x81220 = tmp_to_use_p;
assume x81220 = tmp_to_use_p && true;

/* x82_221 = x46_185 + x80_219; */
uadd x82221 x46185 x80219;
/* x83_222 = x82_221 >> 26; */
usplit x83222 tmp_to_use x82221 26;
/* _137 = (unsigned int) x82_221; */
cast v137@uint32 x82221@uint64;
/* x84_223 = _137 & 67108863; */
and uint32 x84223 v137 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x84223 = tmp_to_use_p;
assume x84223 = tmp_to_use_p && true;

/* x85_224 = x43_182 + x83_222; */
uadd x85224 x43182 x83222;
/* x86_225 = x85_224 >> 25; */
usplit x86225 tmp_to_use x85224 25;
/* _138 = (unsigned int) x85_224; */
cast v138@uint32 x85224@uint64;
/* x87_226 = _138 & 33554431; */
and uint32 x87226 v138 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x87226 = tmp_to_use_p;
assume x87226 = tmp_to_use_p && true;

/* x88_227 = x40_179 + x86_225; */
uadd x88227 x40179 x86225;
/* x89_228 = x88_227 >> 26; */
usplit x89228 tmp_to_use x88227 26;
/* _139 = (unsigned int) x88_227; */
cast v139@uint32 x88227@uint64;
/* x90_229 = _139 & 67108863; */
and uint32 x90229 v139 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x90229 = tmp_to_use_p;
assume x90229 = tmp_to_use_p && true;

/* x91_230 = x28_167 + x89_228; */
uadd x91230 x28167 x89228;
/* x92_231 = x91_230 >> 25; */
usplit x92231 tmp_to_use x91230 25;
/* _140 = (unsigned int) x91_230; */
cast v140@uint32 x91230@uint64;
/* x93_232 = _140 & 33554431; */
and uint32 x93232 v140 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x93232 = tmp_to_use_p;
assume x93232 = tmp_to_use_p && true;

/* _141 = (long long unsigned int) x66_205; */
vpc v141@uint64 x66205@uint32;
/* _142 = x92_231 * 19; */
umul v142 x92231 0x13@uint64;
/* x94_233 = _141 + _142; */
uadd x94233 v141 v142;
/* _143 = x94_233 >> 26; */
usplit v143 tmp_to_use x94233 26;
/* x95_234 = (uint32_t) _143; */
vpc x95234@uint32 v143@uint64;
/* _144 = (unsigned int) x94_233; */
cast v144@uint32 x94233@uint64;
/* x96_235 = _144 & 67108863; */
and uint32 x96235 v144 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x96235 = tmp_to_use_p;
assume x96235 = tmp_to_use_p && true;

/* x97_236 = x69_208 + x95_234; */
uadd x97236 x69208 x95234;
/* x98_237 = x97_236 >> 25; */
usplit x98237 tmp_to_use x97236 25;
/* x99_238 = x97_236 & 33554431; */
and uint32 x99238 x97236 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x99238 = tmp_to_use_p;
assume x99238 = tmp_to_use_p && true;

/* *out_239(D) = x96_235; */
mov out239_0 x96235;
/* MEM[(uint32_t *)out_239(D) + 4B] = x99_238; */
mov out239_4 x99238;
/* _145 = x72_211 + x98_237; */
uadd v145 x72211 x98237;
/* MEM[(uint32_t *)out_239(D) + 8B] = _145; */
mov out239_8 v145;
/* MEM[(uint32_t *)out_239(D) + 12B] = x75_214; */
mov out239_12 x75214;
/* MEM[(uint32_t *)out_239(D) + 16B] = x78_217; */
mov out239_16 x78217;
/* MEM[(uint32_t *)out_239(D) + 20B] = x81_220; */
mov out239_20 x81220;
/* MEM[(uint32_t *)out_239(D) + 24B] = x84_223; */
mov out239_24 x84223;
/* MEM[(uint32_t *)out_239(D) + 28B] = x87_226; */
mov out239_28 x87226;
/* MEM[(uint32_t *)out_239(D) + 32B] = x90_229; */
mov out239_32 x90229;
/* MEM[(uint32_t *)out_239(D) + 36B] = x93_232; */
mov out239_36 x93232;
/* return; */


/* Start with unused lhs */
mov c0 out239_0@uint32;
mov c1 out239_4@uint32;
mov c2 out239_8@uint32;
mov c3 out239_12@uint32;
mov c4 out239_16@uint32;
mov c5 out239_20@uint32;
mov c6 out239_24@uint32;
mov c7 out239_28@uint32;
mov c8 out239_32@uint32;
mov c9 out239_36@uint32;
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
    sq (
      a0 +
      a1 * (2**26) + a2 * (2**51) +
      a3 * (2**77) + a4 * (2**102) +
      a5 * (2**128) + a6 * (2**153) +
      a7 * (2**179) + a8 * (2**204) +
      a9 * (2**230)
    )
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

proc fe_mul (
           uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4,
           uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9,
           uint32 b0, uint32 b1, uint32 b2, uint32 b3, uint32 b4,
           uint32 b5, uint32 b6, uint32 b7, uint32 b8, uint32 b9
           ;
           uint32 c0, uint32 c1, uint32 c2, uint32 c3, uint32 c4,
           uint32 c5, uint32 c6, uint32 c7, uint32 c8, uint32 c9
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
    a9 <=u (0x6999999)@32,
    b0 <=u (0xd333332)@32,
    b1 <=u (0x6999999)@32,
    b2 <=u (0xd333332)@32,
    b3 <=u (0x6999999)@32,
    b4 <=u (0xd333332)@32,
    b5 <=u (0x6999999)@32,
    b6 <=u (0xd333332)@32,
    b7 <=u (0x6999999)@32,
    b8 <=u (0xd333332)@32,
    b9 <=u (0x6999999)@32
  ]
}

/* Start with undefined rhs */
mov in1228_0@uint32 a0;
mov in1228_4@uint32 a1;
mov in1228_8@uint32 a2;
mov in1228_12@uint32 a3;
mov in1228_16@uint32 a4;
mov in1228_20@uint32 a5;
mov in1228_24@uint32 a6;
mov in1228_28@uint32 a7;
mov in1228_32@uint32 a8;
mov in1228_36@uint32 a9;
mov in2239_0@uint32 b0;
mov in2239_4@uint32 b1;
mov in2239_8@uint32 b2;
mov in2239_12@uint32 b3;
mov in2239_16@uint32 b4;
mov in2239_20@uint32 b5;
mov in2239_24@uint32 b6;
mov in2239_28@uint32 b7;
mov in2239_32@uint32 b8;
mov in2239_36@uint32 b9;
/* End with undefined rhs */



/* BB's index is 2 */

/* x20_229 = MEM[(const uint32_t *)in1_228(D) + 36B]; */
mov x20229 in1228_36;
/* x21_230 = MEM[(const uint32_t *)in1_228(D) + 32B]; */
mov x21230 in1228_32;
/* x19_231 = MEM[(const uint32_t *)in1_228(D) + 28B]; */
mov x19231 in1228_28;
/* x17_232 = MEM[(const uint32_t *)in1_228(D) + 24B]; */
mov x17232 in1228_24;
/* x15_233 = MEM[(const uint32_t *)in1_228(D) + 20B]; */
mov x15233 in1228_20;
/* x13_234 = MEM[(const uint32_t *)in1_228(D) + 16B]; */
mov x13234 in1228_16;
/* x11_235 = MEM[(const uint32_t *)in1_228(D) + 12B]; */
mov x11235 in1228_12;
/* x9_236 = MEM[(const uint32_t *)in1_228(D) + 8B]; */
mov x9236 in1228_8;
/* x7_237 = MEM[(const uint32_t *)in1_228(D) + 4B]; */
mov x7237 in1228_4;
/* x5_238 = *in1_228(D); */
mov x5238 in1228_0;
/* x38_240 = MEM[(const uint32_t *)in2_239(D) + 36B]; */
mov x38240 in2239_36;
/* x39_241 = MEM[(const uint32_t *)in2_239(D) + 32B]; */
mov x39241 in2239_32;
/* x37_242 = MEM[(const uint32_t *)in2_239(D) + 28B]; */
mov x37242 in2239_28;
/* x35_243 = MEM[(const uint32_t *)in2_239(D) + 24B]; */
mov x35243 in2239_24;
/* x33_244 = MEM[(const uint32_t *)in2_239(D) + 20B]; */
mov x33244 in2239_20;
/* x31_245 = MEM[(const uint32_t *)in2_239(D) + 16B]; */
mov x31245 in2239_16;
/* x29_246 = MEM[(const uint32_t *)in2_239(D) + 12B]; */
mov x29246 in2239_12;
/* x27_247 = MEM[(const uint32_t *)in2_239(D) + 8B]; */
mov x27247 in2239_8;
/* x25_248 = MEM[(const uint32_t *)in2_239(D) + 4B]; */
mov x25248 in2239_4;
/* x23_249 = *in2_239(D); */
mov x23249 in2239_0;
/* x40_250 = x23_249 w* x5_238; */
umulj x40250 x23249 x5238;
/* _4 = x23_249 w* x7_237; */
umulj v4 x23249 x7237;
/* _6 = x5_238 w* x25_248; */
umulj v6 x5238 x25248;
/* _407 = _4 + _6; */
uadd v407 v4 v6;
/* _7 = x25_248 * 2; */
umul v7 x25248 0x2@uint32;
/* _9 = x7_237 w* _7; */
umulj v9 x7237 v7;
/* _11 = x23_249 w* x9_236; */
umulj v11 x23249 x9236;
/* _403 = _9 + _11; */
uadd v403 v9 v11;
/* _14 = x5_238 w* x27_247; */
umulj v14 x5238 x27247;
/* _404 = _14 + _403; */
uadd v404 v14 v403;
/* _15 = x25_248 w* x9_236; */
umulj v15 x25248 x9236;
/* _16 = x7_237 w* x27_247; */
umulj v16 x7237 x27247;
/* _398 = _15 + _16; */
uadd v398 v15 v16;
/* _19 = x5_238 w* x29_246; */
umulj v19 x5238 x29246;
/* _21 = x23_249 w* x11_235; */
umulj v21 x23249 x11235;
/* _399 = _19 + _398; */
uadd v399 v19 v398;
/* _400 = _21 + _399; */
uadd v400 v21 v399;
/* _23 = x9_236 w* x27_247; */
umulj v23 x9236 x27247;
/* _24 = x25_248 w* x11_235; */
umulj v24 x25248 x11235;
/* _25 = x7_237 w* x29_246; */
umulj v25 x7237 x29246;
/* _26 = _24 + _25; */
uadd v26 v24 v25;
/* _27 = _26 * 2; */
umul v27 v26 0x2@uint64;
/* _30 = x5_238 w* x31_245; */
umulj v30 x5238 x31245;
/* _392 = _23 + _30; */
uadd v392 v23 v30;
/* _32 = x23_249 w* x13_234; */
umulj v32 x23249 x13234;
/* _393 = _32 + _392; */
uadd v393 v32 v392;
/* _394 = _27 + _393; */
uadd v394 v27 v393;
/* _34 = x27_247 w* x11_235; */
umulj v34 x27247 x11235;
/* _35 = x9_236 w* x29_246; */
umulj v35 x9236 x29246;
/* _384 = _34 + _35; */
uadd v384 v34 v35;
/* _37 = x7_237 w* x31_245; */
umulj v37 x7237 x31245;
/* _38 = x25_248 w* x13_234; */
umulj v38 x25248 x13234;
/* _385 = _37 + _384; */
uadd v385 v37 v384;
/* _386 = _38 + _385; */
uadd v386 v38 v385;
/* _42 = x5_238 w* x33_244; */
umulj v42 x5238 x33244;
/* _44 = x23_249 w* x15_233; */
umulj v44 x23249 x15233;
/* _387 = _42 + _386; */
uadd v387 v42 v386;
/* _388 = _44 + _387; */
uadd v388 v44 v387;
/* _46 = x29_246 w* x11_235; */
umulj v46 x29246 x11235;
/* _47 = x25_248 w* x15_233; */
umulj v47 x25248 x15233;
/* _48 = _46 + _47; */
uadd v48 v46 v47;
/* _49 = x7_237 w* x33_244; */
umulj v49 x7237 x33244;
/* _50 = _48 + _49; */
uadd v50 v48 v49;
/* _51 = _50 * 2; */
umul v51 v50 0x2@uint64;
/* _52 = x27_247 w* x13_234; */
umulj v52 x27247 x13234;
/* _55 = x23_249 w* x17_232; */
umulj v55 x23249 x17232;
/* _376 = _52 + _55; */
uadd v376 v52 v55;
/* _56 = x9_236 w* x31_245; */
umulj v56 x9236 x31245;
/* _377 = _56 + _376; */
uadd v377 v56 v376;
/* _60 = x5_238 w* x35_243; */
umulj v60 x5238 x35243;
/* _378 = _60 + _377; */
uadd v378 v60 v377;
/* _379 = _51 + _378; */
uadd v379 v51 v378;
/* _61 = x29_246 w* x13_234; */
umulj v61 x29246 x13234;
/* _62 = x11_235 w* x31_245; */
umulj v62 x11235 x31245;
/* _366 = _61 + _62; */
uadd v366 v61 v62;
/* _64 = x9_236 w* x33_244; */
umulj v64 x9236 x33244;
/* _65 = x27_247 w* x15_233; */
umulj v65 x27247 x15233;
/* _367 = _64 + _366; */
uadd v367 v64 v366;
/* _368 = _65 + _367; */
uadd v368 v65 v367;
/* _68 = x7_237 w* x35_243; */
umulj v68 x7237 x35243;
/* _69 = x25_248 w* x17_232; */
umulj v69 x25248 x17232;
/* _369 = _68 + _368; */
uadd v369 v68 v368;
/* _370 = _69 + _369; */
uadd v370 v69 v369;
/* _73 = x5_238 w* x37_242; */
umulj v73 x5238 x37242;
/* _75 = x23_249 w* x19_231; */
umulj v75 x23249 x19231;
/* _371 = _73 + _370; */
uadd v371 v73 v370;
/* _372 = _75 + _371; */
uadd v372 v75 v371;
/* _77 = x31_245 w* x13_234; */
umulj v77 x31245 x13234;
/* _78 = x29_246 w* x15_233; */
umulj v78 x29246 x15233;
/* _79 = x11_235 w* x33_244; */
umulj v79 x11235 x33244;
/* _445 = _78 + _79; */
uadd v445 v78 v79;
/* _81 = x7_237 w* x37_242; */
umulj v81 x7237 x37242;
/* _82 = x25_248 w* x19_231; */
umulj v82 x25248 x19231;
/* _446 = _81 + _445; */
uadd v446 v81 v445;
/* _84 = _82 + _446; */
uadd v84 v82 v446;
/* _85 = _84 * 2; */
umul v85 v84 0x2@uint64;
/* _87 = x9_236 w* x35_243; */
umulj v87 x9236 x35243;
/* _356 = _77 + _87; */
uadd v356 v77 v87;
/* _88 = x27_247 w* x17_232; */
umulj v88 x27247 x17232;
/* _357 = _88 + _356; */
uadd v357 v88 v356;
/* _92 = x5_238 w* x39_241; */
umulj v92 x5238 x39241;
/* _358 = _92 + _357; */
uadd v358 v92 v357;
/* _94 = x23_249 w* x21_230; */
umulj v94 x23249 x21230;
/* _359 = _94 + _358; */
uadd v359 v94 v358;
/* _96 = x31_245 w* x15_233; */
umulj v96 x31245 x15233;
/* _97 = x13_234 w* x33_244; */
umulj v97 x13234 x33244;
/* _346 = _96 + _97; */
uadd v346 v96 v97;
/* _99 = x11_235 w* x35_243; */
umulj v99 x11235 x35243;
/* _100 = x29_246 w* x17_232; */
umulj v100 x29246 x17232;
/* _347 = _99 + _346; */
uadd v347 v99 v346;
/* _348 = _100 + _347; */
uadd v348 v100 v347;
/* _103 = x9_236 w* x37_242; */
umulj v103 x9236 x37242;
/* _104 = x27_247 w* x19_231; */
umulj v104 x27247 x19231;
/* _349 = _103 + _348; */
uadd v349 v103 v348;
/* _350 = _104 + _349; */
uadd v350 v104 v349;
/* _107 = x7_237 w* x39_241; */
umulj v107 x7237 x39241;
/* _108 = x25_248 w* x21_230; */
umulj v108 x25248 x21230;
/* _351 = _107 + _350; */
uadd v351 v107 v350;
/* _352 = _108 + _351; */
uadd v352 v108 v351;
/* _112 = x5_238 w* x38_240; */
umulj v112 x5238 x38240;
/* _114 = x23_249 w* x20_229; */
umulj v114 x23249 x20229;
/* _353 = _112 + _352; */
uadd v353 v112 v352;
/* x49_259 = _114 + _353; */
uadd x49259 v114 v353;
/* _116 = x33_244 w* x15_233; */
umulj v116 x33244 x15233;
/* _117 = x29_246 w* x19_231; */
umulj v117 x29246 x19231;
/* _442 = _116 + _117; */
uadd v442 v116 v117;
/* _119 = x25_248 w* x20_229; */
umulj v119 x25248 x20229;
/* _120 = x11_235 w* x37_242; */
umulj v120 x11235 x37242;
/* _443 = _119 + _442; */
uadd v443 v119 v442;
/* _122 = _120 + _443; */
uadd v122 v120 v443;
/* _123 = x7_237 w* x38_240; */
umulj v123 x7237 x38240;
/* _124 = _122 + _123; */
uadd v124 v122 v123;
/* _125 = _124 * 2; */
umul v125 v124 0x2@uint64;
/* _126 = x31_245 w* x17_232; */
umulj v126 x31245 x17232;
/* _128 = x27_247 w* x21_230; */
umulj v128 x27247 x21230;
/* _438 = _126 + _128; */
uadd v438 v126 v128;
/* _129 = x13_234 w* x35_243; */
umulj v129 x13234 x35243;
/* _439 = _129 + _438; */
uadd v439 v129 v438;
/* _132 = x9_236 w* x39_241; */
umulj v132 x9236 x39241;
/* _440 = _132 + _439; */
uadd v440 v132 v439;
/* x50_260 = _125 + _440; */
uadd x50260 v125 v440;
/* _133 = x33_244 w* x17_232; */
umulj v133 x33244 x17232;
/* _134 = x15_233 w* x35_243; */
umulj v134 x15233 x35243;
/* _431 = _133 + _134; */
uadd v431 v133 v134;
/* _136 = x13_234 w* x37_242; */
umulj v136 x13234 x37242;
/* _137 = x31_245 w* x19_231; */
umulj v137 x31245 x19231;
/* _432 = _136 + _431; */
uadd v432 v136 v431;
/* _433 = _137 + _432; */
uadd v433 v137 v432;
/* _140 = x11_235 w* x39_241; */
umulj v140 x11235 x39241;
/* _141 = x29_246 w* x21_230; */
umulj v141 x29246 x21230;
/* _434 = _140 + _433; */
uadd v434 v140 v433;
/* _435 = _141 + _434; */
uadd v435 v141 v434;
/* _144 = x9_236 w* x38_240; */
umulj v144 x9236 x38240;
/* _145 = x27_247 w* x20_229; */
umulj v145 x27247 x20229;
/* _436 = _144 + _435; */
uadd v436 v144 v435;
/* x51_261 = _145 + _436; */
uadd x51261 v145 v436;
/* _147 = x17_232 w* x35_243; */
umulj v147 x17232 x35243;
/* _148 = x33_244 w* x19_231; */
umulj v148 x33244 x19231;
/* _149 = x15_233 w* x37_242; */
umulj v149 x15233 x37242;
/* _426 = _148 + _149; */
uadd v426 v148 v149;
/* _151 = x11_235 w* x38_240; */
umulj v151 x11235 x38240;
/* _152 = x29_246 w* x20_229; */
umulj v152 x29246 x20229;
/* _427 = _151 + _426; */
uadd v427 v151 v426;
/* _154 = _152 + _427; */
uadd v154 v152 v427;
/* _155 = _154 * 2; */
umul v155 v154 0x2@uint64;
/* _157 = x13_234 w* x39_241; */
umulj v157 x13234 x39241;
/* _423 = _147 + _157; */
uadd v423 v147 v157;
/* _158 = x31_245 w* x21_230; */
umulj v158 x31245 x21230;
/* _424 = _158 + _423; */
uadd v424 v158 v423;
/* x52_262 = _155 + _424; */
uadd x52262 v155 v424;
/* _160 = x35_243 w* x19_231; */
umulj v160 x35243 x19231;
/* _161 = x17_232 w* x37_242; */
umulj v161 x17232 x37242;
/* _418 = _160 + _161; */
uadd v418 v160 v161;
/* _163 = x15_233 w* x39_241; */
umulj v163 x15233 x39241;
/* _164 = x33_244 w* x21_230; */
umulj v164 x33244 x21230;
/* _419 = _163 + _418; */
uadd v419 v163 v418;
/* _420 = _164 + _419; */
uadd v420 v164 v419;
/* _167 = x13_234 w* x38_240; */
umulj v167 x13234 x38240;
/* _168 = x31_245 w* x20_229; */
umulj v168 x31245 x20229;
/* _421 = _167 + _420; */
uadd v421 v167 v420;
/* x53_263 = _168 + _421; */
uadd x53263 v168 v421;
/* _170 = x37_242 w* x19_231; */
umulj v170 x37242 x19231;
/* _171 = x33_244 w* x20_229; */
umulj v171 x33244 x20229;
/* _172 = _170 + _171; */
uadd v172 v170 v171;
/* _173 = x15_233 w* x38_240; */
umulj v173 x15233 x38240;
/* _174 = _172 + _173; */
uadd v174 v172 v173;
/* _175 = _174 * 2; */
umul v175 v174 0x2@uint64;
/* _176 = x35_243 w* x21_230; */
umulj v176 x35243 x21230;
/* _178 = x17_232 w* x39_241; */
umulj v178 x17232 x39241;
/* _415 = _176 + _178; */
uadd v415 v176 v178;
/* x54_264 = _175 + _415; */
uadd x54264 v175 v415;
/* _179 = x37_242 w* x21_230; */
umulj v179 x37242 x21230;
/* _180 = x19_231 w* x39_241; */
umulj v180 x19231 x39241;
/* _413 = _179 + _180; */
uadd v413 v179 v180;
/* _182 = x17_232 w* x38_240; */
umulj v182 x17232 x38240;
/* _183 = x35_243 w* x20_229; */
umulj v183 x35243 x20229;
/* _414 = _182 + _413; */
uadd v414 v182 v413;
/* x55_265 = _183 + _414; */
uadd x55265 v183 v414;
/* _185 = x39_241 w* x21_230; */
umulj v185 x39241 x21230;
/* _186 = x37_242 w* x20_229; */
umulj v186 x37242 x20229;
/* _187 = x19_231 w* x38_240; */
umulj v187 x19231 x38240;
/* _188 = _186 + _187; */
uadd v188 v186 v187;
/* _189 = _188 * 2; */
umul v189 v188 0x2@uint64;
/* x56_266 = _185 + _189; */
uadd x56266 v185 v189;
/* _190 = x39_241 w* x20_229; */
umulj v190 x39241 x20229;
/* _191 = x21_230 w* x38_240; */
umulj v191 x21230 x38240;
/* x57_267 = _190 + _191; */
uadd x57267 v190 v191;
/* _192 = x38_240 * 2; */
umul v192 x38240 0x2@uint32;
/* x58_268 = x20_229 w* _192; */
umulj x58268 x20229 v192;
/* _360 = x58_268 + _359; */
uadd v360 x58268 v359;
/* _194 = x58_268 << 4; */
usplit tmp1 tmp2 x58268 60;
shl v194 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _361 = _194 + _360; */
uadd v361 v194 v360;
/* _195 = x58_268 << 1; */
usplit tmp1 tmp2 x58268 63;
shl v195 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _362 = _195 + _361; */
uadd v362 v195 v361;
/* x61_271 = _85 + _362; */
uadd x61271 v85 v362;
/* _196 = x57_267 << 4; */
usplit tmp1 tmp2 x57267 60;
shl v196 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _373 = x57_267 + _372; */
uadd v373 x57267 v372;
/* _197 = x57_267 << 1; */
usplit tmp1 tmp2 x57267 63;
shl v197 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _374 = _196 + _373; */
uadd v374 v196 v373;
/* x64_274 = _197 + _374; */
uadd x64274 v197 v374;
/* _198 = x56_266 << 4; */
usplit tmp1 tmp2 x56266 60;
shl v198 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _380 = x56_266 + _379; */
uadd v380 x56266 v379;
/* _199 = x56_266 << 1; */
usplit tmp1 tmp2 x56266 63;
shl v199 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _381 = _198 + _380; */
uadd v381 v198 v380;
/* x67_277 = _199 + _381; */
uadd x67277 v199 v381;
/* _200 = x55_265 << 4; */
usplit tmp1 tmp2 x55265 60;
shl v200 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _389 = x55_265 + _388; */
uadd v389 x55265 v388;
/* _201 = x55_265 << 1; */
usplit tmp1 tmp2 x55265 63;
shl v201 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _390 = _200 + _389; */
uadd v390 v200 v389;
/* x70_280 = _201 + _390; */
uadd x70280 v201 v390;
/* _202 = x54_264 << 4; */
usplit tmp1 tmp2 x54264 60;
shl v202 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _395 = x54_264 + _394; */
uadd v395 x54264 v394;
/* _203 = x54_264 << 1; */
usplit tmp1 tmp2 x54264 63;
shl v203 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _396 = _202 + _395; */
uadd v396 v202 v395;
/* x73_283 = _203 + _396; */
uadd x73283 v203 v396;
/* _204 = x53_263 << 4; */
usplit tmp1 tmp2 x53263 60;
shl v204 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _401 = x53_263 + _400; */
uadd v401 x53263 v400;
/* _205 = x53_263 << 1; */
usplit tmp1 tmp2 x53263 63;
shl v205 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _402 = _204 + _401; */
uadd v402 v204 v401;
/* x76_286 = _205 + _402; */
uadd x76286 v205 v402;
/* _206 = x52_262 << 4; */
usplit tmp1 tmp2 x52262 60;
shl v206 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _405 = x52_262 + _404; */
uadd v405 x52262 v404;
/* _207 = x52_262 << 1; */
usplit tmp1 tmp2 x52262 63;
shl v207 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _406 = _206 + _405; */
uadd v406 v206 v405;
/* x79_289 = _207 + _406; */
uadd x79289 v207 v406;
/* _208 = x51_261 << 4; */
usplit tmp1 tmp2 x51261 60;
shl v208 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _408 = x51_261 + _407; */
uadd v408 x51261 v407;
/* _209 = x51_261 << 1; */
usplit tmp1 tmp2 x51261 63;
shl v209 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _409 = _208 + _408; */
uadd v409 v208 v408;
/* x82_292 = _209 + _409; */
uadd x82292 v209 v409;
/* _210 = x50_260 << 4; */
usplit tmp1 tmp2 x50260 60;
shl v210 tmp2 4;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _410 = x40_250 + x50_260; */
uadd v410 x40250 x50260;
/* _211 = x50_260 << 1; */
usplit tmp1 tmp2 x50260 63;
shl v211 tmp2 1;
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
/* _411 = _210 + _410; */
uadd v411 v210 v410;
/* x85_295 = _211 + _411; */
uadd x85295 v211 v411;
/* x86_296 = x85_295 >> 26; */
usplit x86296 tmp_to_use x85295 26;
/* _212 = (unsigned int) x85_295; */
cast v212@uint32 x85295@uint64;
/* x87_297 = _212 & 67108863; */
and uint32 x87297 v212 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x87297 = tmp_to_use_p;
assume x87297 = tmp_to_use_p && true;

/* x88_298 = x82_292 + x86_296; */
uadd x88298 x82292 x86296;
/* x89_299 = x88_298 >> 25; */
usplit x89299 tmp_to_use x88298 25;
/* _213 = (unsigned int) x88_298; */
cast v213@uint32 x88298@uint64;
/* x90_300 = _213 & 33554431; */
and uint32 x90300 v213 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x90300 = tmp_to_use_p;
assume x90300 = tmp_to_use_p && true;


/* x91_301 = x79_289 + x89_299; */
uadd x91301 x79289 x89299;
/* x92_302 = x91_301 >> 26; */
usplit x92302 tmp_to_use x91301 26;
/* _214 = (unsigned int) x91_301; */
cast v214@uint32 x91301@uint64;
/* x93_303 = _214 & 67108863; */
and uint32 x93303 v214 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x93303 = tmp_to_use_p;
assume x93303 = tmp_to_use_p && true;

/* x94_304 = x76_286 + x92_302; */
uadd x94304 x76286 x92302;
/* x95_305 = x94_304 >> 25; */
usplit x95305 tmp_to_use x94304 25;
/* _215 = (unsigned int) x94_304; */
cast v215@uint32 x94304@uint64;
/* x96_306 = _215 & 33554431; */
and uint32 x96306 v215 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x96306 = tmp_to_use_p;
assume x96306 = tmp_to_use_p && true;

/* x97_307 = x73_283 + x95_305; */
uadd x97307 x73283 x95305;
/* x98_308 = x97_307 >> 26; */
usplit x98308 tmp_to_use x97307 26;
/* _216 = (unsigned int) x97_307; */
cast v216@uint32 x97307@uint64;
/* x99_309 = _216 & 67108863; */
and uint32 x99309 v216 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x99309 = tmp_to_use_p;
assume x99309 = tmp_to_use_p && true;


/* x100_310 = x70_280 + x98_308; */
uadd x100310 x70280 x98308;
/* x101_311 = x100_310 >> 25; */
usplit x101311 tmp_to_use x100310 25;
/* _217 = (unsigned int) x100_310; */
cast v217@uint32 x100310@uint64;
/* x102_312 = _217 & 33554431; */
and uint32 x102312 v217 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x102312 = tmp_to_use_p;
assume x102312 = tmp_to_use_p && true;

/* x103_313 = x67_277 + x101_311; */
uadd x103313 x67277 x101311;
/* x104_314 = x103_313 >> 26; */
usplit x104314 tmp_to_use x103313 26;
/* _218 = (unsigned int) x103_313; */
cast v218@uint32 x103313@uint64;
/* x105_315 = _218 & 67108863; */
and uint32 x105315 v218 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x105315 = tmp_to_use_p;
assume x105315 = tmp_to_use_p && true;

/* x106_316 = x64_274 + x104_314; */
uadd x106316 x64274 x104314;
/* x107_317 = x106_316 >> 25; */
usplit x107317 tmp_to_use x106316 25;
/* _219 = (unsigned int) x106_316; */
cast v219@uint32 x106316@uint64;
/* x108_318 = _219 & 33554431; */
and uint32 x108318 v219 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x108318 = tmp_to_use_p;
assume x108318 = tmp_to_use_p && true;

/* x109_319 = x61_271 + x107_317; */
uadd x109319 x61271 x107317;
/* x110_320 = x109_319 >> 26; */
usplit x110320 tmp_to_use x109319 26;
/* _220 = (unsigned int) x109_319; */
cast v220@uint32 x109319@uint64;
/* x111_321 = _220 & 67108863; */
and uint32 x111321 v220 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x111321 = tmp_to_use_p;
assume x111321 = tmp_to_use_p && true;

/* x112_322 = x49_259 + x110_320; */
uadd x112322 x49259 x110320;
/* x113_323 = x112_322 >> 25; */
usplit x113323 tmp_to_use x112322 25;
/* _221 = (unsigned int) x112_322; */
cast v221@uint32 x112322@uint64;
/* x114_324 = _221 & 33554431; */
and uint32 x114324 v221 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x114324 = tmp_to_use_p;
assume x114324 = tmp_to_use_p && true;

/* _222 = (long long unsigned int) x87_297; */
vpc v222@uint64 x87297@uint32;
/* _223 = x113_323 * 19; */
umul v223 x113323 0x13@uint64;
/* x115_325 = _222 + _223; */
uadd x115325 v222 v223;
/* _224 = x115_325 >> 26; */
usplit v224 tmp_to_use x115325 26;
/* x116_326 = (uint32_t) _224; */
vpc x116326@uint32 v224@uint64;
/* _225 = (unsigned int) x115_325; */
cast v225@uint32 x115325@uint64;
/* x117_327 = _225 & 67108863; */
and uint32 x117327 v225 0x3ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x117327 = tmp_to_use_p;
assume x117327 = tmp_to_use_p && true;

/* x118_328 = x90_300 + x116_326; */
uadd x118328 x90300 x116326;
/* x119_329 = x118_328 >> 25; */
usplit x119329 tmp_to_use x118328 25;
/* x120_330 = x118_328 & 33554431; */
and uint32 x120330 x118328 0x1ffffff@uint32;

vpc tmp_to_use_p@uint32 tmp_to_use;
assert true && x120330 = tmp_to_use_p;
assume x120330 = tmp_to_use_p && true;

/* *out_331(D) = x117_327; */
mov out331_0 x117327;
/* MEM[(uint32_t *)out_331(D) + 4B] = x120_330; */
mov out331_4 x120330;
/* _226 = x93_303 + x119_329; */
uadd v226 x93303 x119329;
/* MEM[(uint32_t *)out_331(D) + 8B] = _226; */
mov out331_8 v226;
/* MEM[(uint32_t *)out_331(D) + 12B] = x96_306; */
mov out331_12 x96306;
/* MEM[(uint32_t *)out_331(D) + 16B] = x99_309; */
mov out331_16 x99309;
/* MEM[(uint32_t *)out_331(D) + 20B] = x102_312; */
mov out331_20 x102312;
/* MEM[(uint32_t *)out_331(D) + 24B] = x105_315; */
mov out331_24 x105315;
/* MEM[(uint32_t *)out_331(D) + 28B] = x108_318; */
mov out331_28 x108318;
/* MEM[(uint32_t *)out_331(D) + 32B] = x111_321; */
mov out331_32 x111321;
/* MEM[(uint32_t *)out_331(D) + 36B] = x114_324; */
mov out331_36 x114324;
/* return; */


/* Start with unused lhs */
mov c0 out331_0@uint32;
mov c1 out331_4@uint32;
mov c2 out331_8@uint32;
mov c3 out331_12@uint32;
mov c4 out331_16@uint32;
mov c5 out331_20@uint32;
mov c6 out331_24@uint32;
mov c7 out331_28@uint32;
mov c8 out331_32@uint32;
mov c9 out331_36@uint32;
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
    (
      b0 +
      b1 * (2**26) + b2 * (2**51) +
      b3 * (2**77) + b4 * (2**102) +
      b5 * (2**128) + b6 * (2**153) +
      b7 * (2**179) + b8 * (2**204) +
      b9 * (2**230)
    )
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

proc fe_mul121666 (
           uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4,
           uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9
           ;
           uint32 c0, uint32 c1, uint32 c2, uint32 c3, uint32 c4,
           uint32 c5, uint32 c6, uint32 c7, uint32 c8, uint32 c9
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

proc main (
            uint32 X1_0, uint32 X1_1, uint32 X1_2, uint32 X1_3, uint32 X1_4, uint32 X1_5,
            uint32 X1_6, uint32 X1_7, uint32 X1_8, uint32 X1_9, uint32 X2_0, uint32 X2_1,
            uint32 X2_2, uint32 X2_3, uint32 X2_4, uint32 X2_5, uint32 X2_6, uint32 X2_7,
            uint32 X2_8, uint32 X2_9, uint32 X3_0, uint32 X3_1, uint32 X3_2, uint32 X3_3,
            uint32 X3_4, uint32 X3_5, uint32 X3_6, uint32 X3_7, uint32 X3_8, uint32 X3_9,
            uint32 Z2_0, uint32 Z2_1, uint32 Z2_2, uint32 Z2_3, uint32 Z2_4, uint32 Z2_5,
            uint32 Z2_6, uint32 Z2_7, uint32 Z2_8, uint32 Z2_9, uint32 Z3_0, uint32 Z3_1,
            uint32 Z3_2, uint32 Z3_3, uint32 Z3_4, uint32 Z3_5, uint32 Z3_6, uint32 Z3_7,
            uint32 Z3_8, uint32 Z3_9
            /* uint32 tmp0_0, uint32 tmp0_4, uint32 tmp0_8, */
            /* uint32 tmp0_12, uint32 tmp0_16, uint32 tmp0_20, uint32 tmp0_24, */
            /* uint32 tmp0_28, uint32 tmp0_32, uint32 tmp0_36, uint32 tmp1_0, uint32 tmp1_4, */
            /* uint32 tmp1_8, uint32 tmp1_12, uint32 tmp1_16, uint32 tmp1_20, uint32 tmp1_24, */
            /* uint32 tmp1_28, uint32 tmp1_32, uint32 tmp1_36 */
            ) =
{
  true
  &&
  and [
   X1_0 <=u (0x4666666)@32,
   X1_1 <=u (0x2333333)@32,
   X1_2 <=u (0x4666666)@32,
   X1_3 <=u (0x2333333)@32,
   X1_4 <=u (0x4666666)@32,
   X1_5 <=u (0x2333333)@32,
   X1_6 <=u (0x4666666)@32,
   X1_7 <=u (0x2333333)@32,
   X1_8 <=u (0x4666666)@32,
   X1_9 <=u (0x2333333)@32,
   X2_0 <=u (0x4666666)@32,
   X2_1 <=u (0x2333333)@32,
   X2_2 <=u (0x4666666)@32,
   X2_3 <=u (0x2333333)@32,
   X2_4 <=u (0x4666666)@32,
   X2_5 <=u (0x2333333)@32,
   X2_6 <=u (0x4666666)@32,
   X2_7 <=u (0x2333333)@32,
   X2_8 <=u (0x4666666)@32,
   X2_9 <=u (0x2333333)@32,
   X3_0 <=u (0x4666666)@32,
   X3_1 <=u (0x2333333)@32,
   X3_2 <=u (0x4666666)@32,
   X3_3 <=u (0x2333333)@32,
   X3_4 <=u (0x4666666)@32,
   X3_5 <=u (0x2333333)@32,
   X3_6 <=u (0x4666666)@32,
   X3_7 <=u (0x2333333)@32,
   X3_8 <=u (0x4666666)@32,
   X3_9 <=u (0x2333333)@32,
   Z2_0 <=u (0x4666666)@32,
   Z2_1 <=u (0x2333333)@32,
   Z2_2 <=u (0x4666666)@32,
   Z2_3 <=u (0x2333333)@32,
   Z2_4 <=u (0x4666666)@32,
   Z2_5 <=u (0x2333333)@32,
   Z2_6 <=u (0x4666666)@32,
   Z2_7 <=u (0x2333333)@32,
   Z2_8 <=u (0x4666666)@32,
   Z2_9 <=u (0x2333333)@32,
   Z3_0 <=u (0x4666666)@32,
   Z3_1 <=u (0x2333333)@32,
   Z3_2 <=u (0x4666666)@32,
   Z3_3 <=u (0x2333333)@32,
   Z3_4 <=u (0x4666666)@32,
   Z3_5 <=u (0x2333333)@32,
   Z3_6 <=u (0x4666666)@32,
   Z3_7 <=u (0x2333333)@32,
   Z3_8 <=u (0x4666666)@32,
   Z3_9 <=u (0x2333333)@32
  ]
}


/* Start with undefined rhs */
/* mov tmp0_0@uint32 _; */
/* mov tmp0_4@uint32 _; */
/* mov tmp0_8@uint32 _; */
/* mov tmp0_12@uint32 _; */
/* mov tmp0_16@uint32 _; */
/* mov tmp0_20@uint32 _; */
/* mov tmp0_24@uint32 _; */
/* mov tmp0_28@uint32 _; */
/* mov tmp0_32@uint32 _; */
/* mov tmp0_36@uint32 _; */
mov x1_0@uint32 X1_0;
mov x1_4@uint32 X1_1;
mov x1_8@uint32 X1_2;
mov x1_12@uint32 X1_3;
mov x1_16@uint32 X1_4;
mov x1_20@uint32 X1_5;
mov x1_24@uint32 X1_6;
mov x1_28@uint32 X1_7;
mov x1_32@uint32 X1_8;
mov x1_36@uint32 X1_9;

mov x2_0@uint32 X2_0;
mov x2_4@uint32 X2_1;
mov x2_8@uint32 X2_2;
mov x2_12@uint32 X2_3;
mov x2_16@uint32 X2_4;
mov x2_20@uint32 X2_5;
mov x2_24@uint32 X2_6;
mov x2_28@uint32 X2_7;
mov x2_32@uint32 X2_8;
mov x2_36@uint32 X2_9;

mov x3_0@uint32 X3_0;
mov x3_4@uint32 X3_1;
mov x3_8@uint32 X3_2;
mov x3_12@uint32 X3_3;
mov x3_16@uint32 X3_4;
mov x3_20@uint32 X3_5;
mov x3_24@uint32 X3_6;
mov x3_28@uint32 X3_7;
mov x3_32@uint32 X3_8;
mov x3_36@uint32 X3_9;

mov z2_0@uint32 Z2_0;
mov z2_4@uint32 Z2_1;
mov z2_8@uint32 Z2_2;
mov z2_12@uint32 Z2_3;
mov z2_16@uint32 Z2_4;
mov z2_20@uint32 Z2_5;
mov z2_24@uint32 Z2_6;
mov z2_28@uint32 Z2_7;
mov z2_32@uint32 Z2_8;
mov z2_36@uint32 Z2_9;

mov z3_0@uint32 Z3_0;
mov z3_4@uint32 Z3_1;
mov z3_8@uint32 Z3_2;
mov z3_12@uint32 Z3_3;
mov z3_16@uint32 Z3_4;
mov z3_20@uint32 Z3_5;
mov z3_24@uint32 Z3_6;
mov z3_28@uint32 Z3_7;
mov z3_32@uint32 Z3_8;
mov z3_36@uint32 Z3_9;
/* End with undefined rhs */



/* BB's index is 2 */

/* fe_sub_impl (&tmp0lv, &x3v, &z3v); */
call fe_sub(x3_0, x3_4 ,x3_8, x3_12, x3_16, x3_20, x3_24, x3_28, x3_32, x3_36, z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36, tmp0l_0, tmp0l_4 ,tmp0l_8, tmp0l_12, tmp0l_16, tmp0l_20, tmp0l_24, tmp0l_28, tmp0l_32, tmp0l_36);
/* fe_sub_impl (&tmp1lv, &x2v, &z2v); */
call fe_sub(x2_0, x2_4 ,x2_8, x2_12, x2_16, x2_20, x2_24, x2_28, x2_32, x2_36,z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36,tmp1l_0, tmp1l_4 ,tmp1l_8, tmp1l_12, tmp1l_16, tmp1l_20, tmp1l_24, tmp1l_28, tmp1l_32, tmp1l_36);
/* x20_124 = MEM[(const uint32_t *)&x2 + 36B]; */
mov x20124 x2_36;
/* x21_125 = MEM[(const uint32_t *)&x2 + 32B]; */
mov x21125 x2_32;
/* vect_x5_1331012_18 = MEM[(const uint32_t *)&x2]; */
mov vect_x5_133101218_0 x2_0;
mov vect_x5_133101218_4 x2_4;
mov vect_x5_133101218_8 x2_8;
mov vect_x5_133101218_12 x2_12;
/* vect_x5_1331013_24 = MEM[(const uint32_t *)&x2 + 16B]; */
mov vect_x5_133101324_0 x2_16;
mov vect_x5_133101324_4 x2_20;
mov vect_x5_133101324_8 x2_24;
mov vect_x5_133101324_12 x2_28;
/* x38_134 = MEM[(const uint32_t *)&z2 + 36B]; */
mov x38134 z2_36;
/* x39_135 = MEM[(const uint32_t *)&z2 + 32B]; */
mov x39135 z2_32;
/* vect_x23_1431016_194 = MEM[(const uint32_t *)&z2]; */
mov vect_x23_1431016194_0 z2_0;
mov vect_x23_1431016194_4 z2_4;
mov vect_x23_1431016194_8 z2_8;
mov vect_x23_1431016194_12 z2_12;
/* vect_x23_1431017_196 = MEM[(const uint32_t *)&z2 + 16B]; */
mov vect_x23_1431017196_0 z2_16;
mov vect_x23_1431017196_4 z2_20;
mov vect_x23_1431017196_8 z2_24;
mov vect_x23_1431017196_12 z2_28;
/* vect__1441018_198 = vect_x5_1331012_18 + vect_x23_1431016_194; */
uadd vect__1441018198_0 vect_x5_133101218_0 vect_x23_1431016194_0;
uadd vect__1441018198_4 vect_x5_133101218_4 vect_x23_1431016194_4;
uadd vect__1441018198_8 vect_x5_133101218_8 vect_x23_1431016194_8;
uadd vect__1441018198_12 vect_x5_133101218_12 vect_x23_1431016194_12;
/* vect__1441018_199 = vect_x5_1331013_24 + vect_x23_1431017_196; */
uadd vect__1441018199_0 vect_x5_133101324_0 vect_x23_1431017196_0;
uadd vect__1441018199_4 vect_x5_133101324_4 vect_x23_1431017196_4;
uadd vect__1441018199_8 vect_x5_133101324_8 vect_x23_1431017196_8;
uadd vect__1441018199_12 vect_x5_133101324_12 vect_x23_1431017196_12;
/* MEM[(uint32_t *)&x2l] = vect__1441018_198; */
mov x2l_0 vect__1441018198_0;
mov x2l_4 vect__1441018198_4;
mov x2l_8 vect__1441018198_8;
mov x2l_12 vect__1441018198_12;
/* MEM[(uint32_t *)&x2l + 16B] = vect__1441018_199; */
mov x2l_16 vect__1441018199_0;
mov x2l_20 vect__1441018199_4;
mov x2l_24 vect__1441018199_8;
mov x2l_28 vect__1441018199_12;
/* _152 = x21_125 + x39_135; */
uadd v152 x21125 x39135;
/* MEM[(uint32_t *)&x2l + 32B] = _152; */
mov x2l_32 v152;
/* _153 = x20_124 + x38_134; */
uadd v153 x20124 x38134;
/* MEM[(uint32_t *)&x2l + 36B] = _153; */
mov x2l_36 v153;
/* x20_94 = MEM[(const uint32_t *)&x3 + 36B]; */
mov x2094 x3_36;
/* x21_95 = MEM[(const uint32_t *)&x3 + 32B]; */
mov x2195 x3_32;
/* vect_x5_1031023_203 = MEM[(const uint32_t *)&x3]; */
mov vect_x5_1031023203_0 x3_0;
mov vect_x5_1031023203_4 x3_4;
mov vect_x5_1031023203_8 x3_8;
mov vect_x5_1031023203_12 x3_12;
/* vect_x5_1031024_205 = MEM[(const uint32_t *)&x3 + 16B]; */
mov vect_x5_1031024205_0 x3_16;
mov vect_x5_1031024205_4 x3_20;
mov vect_x5_1031024205_8 x3_24;
mov vect_x5_1031024205_12 x3_28;
/* x38_104 = MEM[(const uint32_t *)&z3 + 36B]; */
mov x38104 z3_36;
/* x39_105 = MEM[(const uint32_t *)&z3 + 32B]; */
mov x39105 z3_32;
/* vect_x23_1131027_207 = MEM[(const uint32_t *)&z3]; */
mov vect_x23_1131027207_0 z3_0;
mov vect_x23_1131027207_4 z3_4;
mov vect_x23_1131027207_8 z3_8;
mov vect_x23_1131027207_12 z3_12;
/* vect_x23_1131028_209 = MEM[(const uint32_t *)&z3 + 16B]; */
mov vect_x23_1131028209_0 z3_16;
mov vect_x23_1131028209_4 z3_20;
mov vect_x23_1131028209_8 z3_24;
mov vect_x23_1131028209_12 z3_28;
/* vect__1141029_211 = vect_x5_1031023_203 + vect_x23_1131027_207; */
uadd vect__1141029211_0 vect_x5_1031023203_0 vect_x23_1131027207_0;
uadd vect__1141029211_4 vect_x5_1031023203_4 vect_x23_1131027207_4;
uadd vect__1141029211_8 vect_x5_1031023203_8 vect_x23_1131027207_8;
uadd vect__1141029211_12 vect_x5_1031023203_12 vect_x23_1131027207_12;
/* vect__1141029_212 = vect_x5_1031024_205 + vect_x23_1131028_209; */
uadd vect__1141029212_0 vect_x5_1031024205_0 vect_x23_1131028209_0;
uadd vect__1141029212_4 vect_x5_1031024205_4 vect_x23_1131028209_4;
uadd vect__1141029212_8 vect_x5_1031024205_8 vect_x23_1131028209_8;
uadd vect__1141029212_12 vect_x5_1031024205_12 vect_x23_1131028209_12;
/* MEM[(uint32_t *)&z2l] = vect__1141029_211; */
mov z2l_0 vect__1141029211_0;
mov z2l_4 vect__1141029211_4;
mov z2l_8 vect__1141029211_8;
mov z2l_12 vect__1141029211_12;
/* MEM[(uint32_t *)&z2l + 16B] = vect__1141029_212; */
mov z2l_16 vect__1141029212_0;
mov z2l_20 vect__1141029212_4;
mov z2l_24 vect__1141029212_8;
mov z2l_28 vect__1141029212_12;
/* _122 = x21_95 + x39_105; */
uadd v122 x2195 x39105;
/* MEM[(uint32_t *)&z2l + 32B] = _122; */
mov z2l_32 v122;
/* _123 = x20_94 + x38_104; */
uadd v123 x2094 x38104;
/* MEM[(uint32_t *)&z2l + 36B] = _123; */
mov z2l_36 v123;
/* fe_mul_impl (&z3v, &tmp0lv, &x2lv); */
call fe_mul(tmp0l_0, tmp0l_4 ,tmp0l_8, tmp0l_12, tmp0l_16, tmp0l_20, tmp0l_24, tmp0l_28, tmp0l_32, tmp0l_36, x2l_0, x2l_4 ,x2l_8, x2l_12, x2l_16, x2l_20, x2l_24, x2l_28, x2l_32, x2l_36, z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36);
/* fe_mul_impl (&z2v, &z2lv, &tmp1lv); */
call fe_mul(z2l_0, z2l_4 ,z2l_8, z2l_12, z2l_16, z2l_20, z2l_24, z2l_28, z2l_32, z2l_36, tmp1l_0, tmp1l_4 ,tmp1l_8, tmp1l_12, tmp1l_16, tmp1l_20, tmp1l_24, tmp1l_28, tmp1l_32, tmp1l_36,z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36);
/* fe_sqr_impl (&tmp0v, &tmp1lv); */
call fe_sq(tmp1l_0, tmp1l_4 ,tmp1l_8, tmp1l_12, tmp1l_16, tmp1l_20, tmp1l_24, tmp1l_28, tmp1l_32, tmp1l_36, tmp0_0, tmp0_4 ,tmp0_8, tmp0_12, tmp0_16, tmp0_20, tmp0_24, tmp0_28, tmp0_32, tmp0_36);
/* fe_sqr_impl (&tmp1v, &x2lv); */
call fe_sq(x2l_0, x2l_4 ,x2l_8, x2l_12, x2l_16, x2l_20, x2l_24, x2l_28, x2l_32, x2l_36,tmp1_0, tmp1_4 ,tmp1_8, tmp1_12, tmp1_16, tmp1_20, tmp1_24, tmp1_28, tmp1_32, tmp1_36);
/* x20_64 = MEM[(const uint32_t *)&z3 + 36B]; */
mov x2064 z3_36;
/* x21_65 = MEM[(const uint32_t *)&z3 + 32B]; */
mov x2165 z3_32;
/* vect_x5_731034_216 = MEM[(const uint32_t *)&z3]; */
mov vect_x5_731034216_0 z3_0;
mov vect_x5_731034216_4 z3_4;
mov vect_x5_731034216_8 z3_8;
mov vect_x5_731034216_12 z3_12;
/* vect_x5_731035_218 = MEM[(const uint32_t *)&z3 + 16B]; */
mov vect_x5_731035218_0 z3_16;
mov vect_x5_731035218_4 z3_20;
mov vect_x5_731035218_8 z3_24;
mov vect_x5_731035218_12 z3_28;
/* x38_74 = MEM[(const uint32_t *)&z2 + 36B]; */
mov x3874 z2_36;
/* x39_75 = MEM[(const uint32_t *)&z2 + 32B]; */
mov x3975 z2_32;
/* vect_x23_831038_220 = MEM[(const uint32_t *)&z2]; */
mov vect_x23_831038220_0 z2_0;
mov vect_x23_831038220_4 z2_4;
mov vect_x23_831038220_8 z2_8;
mov vect_x23_831038220_12 z2_12;
/* vect_x23_831039_222 = MEM[(const uint32_t *)&z2 + 16B]; */
mov vect_x23_831039222_0 z2_16;
mov vect_x23_831039222_4 z2_20;
mov vect_x23_831039222_8 z2_24;
mov vect_x23_831039222_12 z2_28;
/* vect__841040_224 = vect_x5_731034_216 + vect_x23_831038_220; */
uadd vect__841040224_0 vect_x5_731034216_0 vect_x23_831038220_0;
uadd vect__841040224_4 vect_x5_731034216_4 vect_x23_831038220_4;
uadd vect__841040224_8 vect_x5_731034216_8 vect_x23_831038220_8;
uadd vect__841040224_12 vect_x5_731034216_12 vect_x23_831038220_12;
/* vect__841040_225 = vect_x5_731035_218 + vect_x23_831039_222; */
uadd vect__841040225_0 vect_x5_731035218_0 vect_x23_831039222_0;
uadd vect__841040225_4 vect_x5_731035218_4 vect_x23_831039222_4;
uadd vect__841040225_8 vect_x5_731035218_8 vect_x23_831039222_8;
uadd vect__841040225_12 vect_x5_731035218_12 vect_x23_831039222_12;
/* MEM[(uint32_t *)&x3l] = vect__841040_224; */
mov x3l_0 vect__841040224_0;
mov x3l_4 vect__841040224_4;
mov x3l_8 vect__841040224_8;
mov x3l_12 vect__841040224_12;
/* MEM[(uint32_t *)&x3l + 16B] = vect__841040_225; */
mov x3l_16 vect__841040225_0;
mov x3l_20 vect__841040225_4;
mov x3l_24 vect__841040225_8;
mov x3l_28 vect__841040225_12;
/* _92 = x21_65 + x39_75; */
uadd v92 x2165 x3975;
/* MEM[(uint32_t *)&x3l + 32B] = _92; */
mov x3l_32 v92;
/* _93 = x20_64 + x38_74; */
uadd v93 x2064 x3874;
/* MEM[(uint32_t *)&x3l + 36B] = _93; */
mov x3l_36 v93;
/* fe_sub_impl (&z2lv, &z3v, &z2v); */
call fe_sub(z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36, z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36, z2l_0, z2l_4 ,z2l_8, z2l_12, z2l_16, z2l_20, z2l_24, z2l_28, z2l_32, z2l_36);
/* fe_mul_impl (&x2v, &tmp1v, &tmp0v); */
call fe_mul(tmp1_0, tmp1_4 ,tmp1_8, tmp1_12, tmp1_16, tmp1_20, tmp1_24, tmp1_28, tmp1_32, tmp1_36, tmp0_0, tmp0_4 ,tmp0_8, tmp0_12, tmp0_16, tmp0_20, tmp0_24, tmp0_28, tmp0_32, tmp0_36, x2_0, x2_4 ,x2_8, x2_12, x2_16, x2_20, x2_24, x2_28, x2_32, x2_36);

(* added for algebra check *)

mov X2p_0 x2_0;
mov X2p_1 x2_4;
mov X2p_2 x2_8;
mov X2p_3 x2_12;
mov X2p_4 x2_16;
mov X2p_5 x2_20;
mov X2p_6 x2_24;
mov X2p_7 x2_28;
mov X2p_8 x2_32;
mov X2p_9 x2_36;

/* fe_sub_impl (&tmp1lv, &tmp1v, &tmp0v); */
call fe_sub(tmp1_0, tmp1_4 ,tmp1_8, tmp1_12, tmp1_16, tmp1_20, tmp1_24, tmp1_28, tmp1_32, tmp1_36, tmp0_0, tmp0_4 ,tmp0_8, tmp0_12, tmp0_16, tmp0_20, tmp0_24, tmp0_28, tmp0_32, tmp0_36,tmp1l_0, tmp1l_4 ,tmp1l_8, tmp1l_12, tmp1l_16, tmp1l_20, tmp1l_24, tmp1l_28, tmp1l_32, tmp1l_36);
/* fe_sqr_impl (&z2v, &z2lv); */
call fe_sq(z2l_0, z2l_4 ,z2l_8, z2l_12, z2l_16, z2l_20, z2l_24, z2l_28, z2l_32, z2l_36, z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36);
/* fe_mul_121666_impl (&z3v, &tmp1lv); */
call fe_mul121666(tmp1l_0, tmp1l_4 ,tmp1l_8, tmp1l_12, tmp1l_16, tmp1l_20, tmp1l_24, tmp1l_28, tmp1l_32, tmp1l_36, z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36);
/* fe_sqr_impl (&x3v, &x3lv); */
call fe_sq(x3l_0, x3l_4 ,x3l_8, x3l_12, x3l_16, x3l_20, x3l_24, x3l_28, x3l_32, x3l_36, x3_0, x3_4 ,x3_8, x3_12, x3_16, x3_20, x3_24, x3_28, x3_32, x3_36);
/* x20_34 = MEM[(const uint32_t *)&tmp0 + 36B]; */
mov x2034 tmp0_36;
/* x21_35 = MEM[(const uint32_t *)&tmp0 + 32B]; */
mov x2135 tmp0_32;
/* vect_x5_431045_229 = MEM[(const uint32_t *)&tmp0]; */
mov vect_x5_431045229_0 tmp0_0;
mov vect_x5_431045229_4 tmp0_4;
mov vect_x5_431045229_8 tmp0_8;
mov vect_x5_431045229_12 tmp0_12;
/* vect_x5_431046_231 = MEM[(const uint32_t *)&tmp0 + 16B]; */
mov vect_x5_431046231_0 tmp0_16;
mov vect_x5_431046231_4 tmp0_20;
mov vect_x5_431046231_8 tmp0_24;
mov vect_x5_431046231_12 tmp0_28;
/* x38_44 = MEM[(const uint32_t *)&z3 + 36B]; */
mov x3844 z3_36;
/* x39_45 = MEM[(const uint32_t *)&z3 + 32B]; */
mov x3945 z3_32;
/* vect_x23_531049_233 = MEM[(const uint32_t *)&z3]; */
mov vect_x23_531049233_0 z3_0;
mov vect_x23_531049233_4 z3_4;
mov vect_x23_531049233_8 z3_8;
mov vect_x23_531049233_12 z3_12;
/* vect_x23_531050_235 = MEM[(const uint32_t *)&z3 + 16B]; */
mov vect_x23_531050235_0 z3_16;
mov vect_x23_531050235_4 z3_20;
mov vect_x23_531050235_8 z3_24;
mov vect_x23_531050235_12 z3_28;
/* vect__541051_237 = vect_x5_431045_229 + vect_x23_531049_233; */
uadd vect__541051237_0 vect_x5_431045229_0 vect_x23_531049233_0;
uadd vect__541051237_4 vect_x5_431045229_4 vect_x23_531049233_4;
uadd vect__541051237_8 vect_x5_431045229_8 vect_x23_531049233_8;
uadd vect__541051237_12 vect_x5_431045229_12 vect_x23_531049233_12;
/* vect__541051_238 = vect_x5_431046_231 + vect_x23_531050_235; */
uadd vect__541051238_0 vect_x5_431046231_0 vect_x23_531050235_0;
uadd vect__541051238_4 vect_x5_431046231_4 vect_x23_531050235_4;
uadd vect__541051238_8 vect_x5_431046231_8 vect_x23_531050235_8;
uadd vect__541051238_12 vect_x5_431046231_12 vect_x23_531050235_12;
/* MEM[(uint32_t *)&tmp0l] = vect__541051_237; */
mov tmp0l_0 vect__541051237_0;
mov tmp0l_4 vect__541051237_4;
mov tmp0l_8 vect__541051237_8;
mov tmp0l_12 vect__541051237_12;
/* MEM[(uint32_t *)&tmp0l + 16B] = vect__541051_238; */
mov tmp0l_16 vect__541051238_0;
mov tmp0l_20 vect__541051238_4;
mov tmp0l_24 vect__541051238_8;
mov tmp0l_28 vect__541051238_12;
/* _62 = x21_35 + x39_45; */
uadd v62 x2135 x3945;
/* MEM[(uint32_t *)&tmp0l + 32B] = _62; */
mov tmp0l_32 v62;
/* _63 = x20_34 + x38_44; */
uadd v63 x2034 x3844;
/* MEM[(uint32_t *)&tmp0l + 36B] = _63; */
mov tmp0l_36 v63;
/* fe_mul_impl (&z3v, &x1v, &z2v); */
call fe_mul(x1_0, x1_4 ,x1_8, x1_12, x1_16, x1_20, x1_24, x1_28, x1_32, x1_36, z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36, z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36);
/* fe_mul_impl (&z2v, &tmp1lv, &tmp0lv); */
call fe_mul(tmp1l_0, tmp1l_4 ,tmp1l_8, tmp1l_12, tmp1l_16, tmp1l_20, tmp1l_24, tmp1l_28, tmp1l_32, tmp1l_36, tmp0l_0, tmp0l_4 ,tmp0l_8, tmp0l_12, tmp0l_16, tmp0l_20, tmp0l_24, tmp0l_28, tmp0l_32, tmp0l_36, z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36);
/* return; */


/* Start with unused lhs */
mov X2Final_0 x2_0;
mov X2Final_1 x2_4;
mov X2Final_2 x2_8;
mov X2Final_3 x2_12;
mov X2Final_4 x2_16;
mov X2Final_5 x2_20;
mov X2Final_6 x2_24;
mov X2Final_7 x2_28;
mov X2Final_8 x2_32;
mov X2Final_9 x2_36;

mov X3Final_0 x3_0;
mov X3Final_1 x3_4;
mov X3Final_2 x3_8;
mov X3Final_3 x3_12;
mov X3Final_4 x3_16;
mov X3Final_5 x3_20;
mov X3Final_6 x3_24;
mov X3Final_7 x3_28;
mov X3Final_8 x3_32;
mov X3Final_9 x3_36;

mov Z2Final_0 z2_0;
mov Z2Final_1 z2_4;
mov Z2Final_2 z2_8;
mov Z2Final_3 z2_12;
mov Z2Final_4 z2_16;
mov Z2Final_5 z2_20;
mov Z2Final_6 z2_24;
mov Z2Final_7 z2_28;
mov Z2Final_8 z2_32;
mov Z2Final_9 z2_36;

mov Z3Final_0 z3_0;
mov Z3Final_1 z3_4;
mov Z3Final_2 z3_8;
mov Z3Final_3 z3_12;
mov Z3Final_4 z3_16;
mov Z3Final_5 z3_20;
mov Z3Final_6 z3_24;
mov Z3Final_7 z3_28;
mov Z3Final_8 z3_32;
mov Z3Final_9 z3_36;
/* End with unsed lhs */

{
  and [
      (* condition 1 *)
    (
        X2p_0 +
        X2p_1 * (2**26) +
        X2p_2 * (2**51) +
        X2p_3 * (2**77) +
        X2p_4 * (2**102) +
        X2p_5 * (2**128) +
        X2p_6 * (2**153) +
        X2p_7 * (2**179) +
        X2p_8 * (2**204) +
        X2p_9 * (2**230)
    )
    =
      (sq (sub
                (sq  (
                    X2_0 +
                    X2_1 * (2**26) +
                    X2_2 * (2**51) +
                    X2_3 * (2**77) +
                    X2_4 * (2**102) +
                    X2_5 * (2**128) +
                    X2_6 * (2**153) +
                    X2_7 * (2**179) +
                    X2_8 * (2**204) +
                    X2_9 * (2**230)
                ))
                (sq (
                    Z2_0 +
                    Z2_1 * (2**26) +
                    Z2_2 * (2**51) +
                    Z2_3 * (2**77) +
                    Z2_4 * (2**102) +
                    Z2_5 * (2**128) +
                    Z2_6 * (2**153) +
                    Z2_7 * (2**179) +
                    Z2_8 * (2**204) +
                    Z2_9 * (2**230)
                ))))
      ( mod 2**255 - 19) ,
      (* condition 2 *)

     (
        Z2Final_0 +
        Z2Final_1 * (2**26) +
        Z2Final_2 * (2**51) +
        Z2Final_3 * (2**77) +
        Z2Final_4 * (2**102) +
        Z2Final_5 * (2**128) +
        Z2Final_6 * (2**153) +
        Z2Final_7 * (2**179) +
        Z2Final_8 * (2**204) +
        Z2Final_9 * (2**230)
     )
     =
     (
      mul
       [
         4,
        (
            X2_0 +
            X2_1 * (2**26) +
            X2_2 * (2**51) +
            X2_3 * (2**77) +
            X2_4 * (2**102) +
            X2_5 * (2**128) +
            X2_6 * (2**153) +
            X2_7 * (2**179) +
            X2_8 * (2**204) +
            X2_9 * (2**230)
        ),
        (
            Z2_0 +
            Z2_1 * (2**26) +
            Z2_2 * (2**51) +
            Z2_3 * (2**77) +
            Z2_4 * (2**102) +
            Z2_5 * (2**128) +
            Z2_6 * (2**153) +
            Z2_7 * (2**179) +
            Z2_8 * (2**204) +
            Z2_9 * (2**230)
        ),
        add [
                sq
                (
                X2_0 +
                X2_1 * (2**26) +
                X2_2 * (2**51) +
                X2_3 * (2**77) +
                X2_4 * (2**102) +
                X2_5 * (2**128) +
                X2_6 * (2**153) +
                X2_7 * (2**179) +
                X2_8 * (2**204) +
                X2_9 * (2**230)
                ),
                mul [
                    486662,
                    (
                    X2_0 +
                    X2_1 * (2**26) +
                    X2_2 * (2**51) +
                    X2_3 * (2**77) +
                    X2_4 * (2**102) +
                    X2_5 * (2**128) +
                    X2_6 * (2**153) +
                    X2_7 * (2**179) +
                    X2_8 * (2**204) +
                    X2_9 * (2**230)
                    ),
                    (
                    Z2_0 +
                    Z2_1 * (2**26) +
                    Z2_2 * (2**51) +
                    Z2_3 * (2**77) +
                    Z2_4 * (2**102) +
                    Z2_5 * (2**128) +
                    Z2_6 * (2**153) +
                    Z2_7 * (2**179) +
                    Z2_8 * (2**204) +
                    Z2_9 * (2**230)
                    )]
                ,
                sq
                (
                    Z2_0 +
                    Z2_1 * (2**26) +
                    Z2_2 * (2**51) +
                    Z2_3 * (2**77) +
                    Z2_4 * (2**102) +
                    Z2_5 * (2**128) +
                    Z2_6 * (2**153) +
                    Z2_7 * (2**179) +
                    Z2_8 * (2**204) +
                    Z2_9 * (2**230)
                )
            ]
    ])
    ( mod 2**255 - 19),
    (* condition 3-1 *)
    (
        X3Final_0 +
        X3Final_1 * (2**26) +
        X3Final_2 * (2**51) +
        X3Final_3 * (2**77) +
        X3Final_4 * (2**102) +
        X3Final_5 * (2**128) +
        X3Final_6 * (2**153) +
        X3Final_7 * (2**179) +
        X3Final_8 * (2**204) +
        X3Final_9 * (2**230)
    )
    =
    (
      mul
      (4)
      (
          sq
          (
              sub
              (
                mul
                (
                    X2_0 +
                    X2_1 * (2**26) +
                    X2_2 * (2**51) +
                    X2_3 * (2**77) +
                    X2_4 * (2**102) +
                    X2_5 * (2**128) +
                    X2_6 * (2**153) +
                    X2_7 * (2**179) +
                    X2_8 * (2**204) +
                    X2_9 * (2**230)
                )
                (
                    X3_0 +
                    X3_1 * (2**26) +
                    X3_2 * (2**51) +
                    X3_3 * (2**77) +
                    X3_4 * (2**102) +
                    X3_5 * (2**128) +
                    X3_6 * (2**153) +
                    X3_7 * (2**179) +
                    X3_8 * (2**204) +
                    X3_9 * (2**230)
                )
              )
              (
                  mul
                  (
                    Z2_0 +
                    Z2_1 * (2**26) +
                    Z2_2 * (2**51) +
                    Z2_3 * (2**77) +
                    Z2_4 * (2**102) +
                    Z2_5 * (2**128) +
                    Z2_6 * (2**153) +
                    Z2_7 * (2**179) +
                    Z2_8 * (2**204) +
                    Z2_9 * (2**230)
                  )
                  (
                    Z3_0 +
                    Z3_1 * (2**26) +
                    Z3_2 * (2**51) +
                    Z3_3 * (2**77) +
                    Z3_4 * (2**102) +
                    Z3_5 * (2**128) +
                    Z3_6 * (2**153) +
                    Z3_7 * (2**179) +
                    Z3_8 * (2**204) +
                    Z3_9 * (2**230)
                  )
              )
          )
      )
    )
    ( mod 2**255 - 19 ),
    (* condition 3-2 *)
    (
        Z3Final_0 +
        Z3Final_1 * (2**26) +
        Z3Final_2 * (2**51) +
        Z3Final_3 * (2**77) +
        Z3Final_4 * (2**102) +
        Z3Final_5 * (2**128) +
        Z3Final_6 * (2**153) +
        Z3Final_7 * (2**179) +
        Z3Final_8 * (2**204) +
        Z3Final_9 * (2**230)
    )
    =
    (
        mul
        (4)
        (
            mul
            (
                X1_0 +
                X1_1 * (2**26) +
                X1_2 * (2**51) +
                X1_3 * (2**77) +
                X1_4 * (2**102) +
                X1_5 * (2**128) +
                X1_6 * (2**153) +
                X1_7 * (2**179) +
                X1_8 * (2**204) +
                X1_9 * (2**230)
            )
            (
                sq
                (
                    sub
                    (
                        mul
                        (
                            X3_0 +
                            X3_1 * (2**26) +
                            X3_2 * (2**51) +
                            X3_3 * (2**77) +
                            X3_4 * (2**102) +
                            X3_5 * (2**128) +
                            X3_6 * (2**153) +
                            X3_7 * (2**179) +
                            X3_8 * (2**204) +
                            X3_9 * (2**230)
                        )
                        (
                            Z2_0 +
                            Z2_1 * (2**26) +
                            Z2_2 * (2**51) +
                            Z2_3 * (2**77) +
                            Z2_4 * (2**102) +
                            Z2_5 * (2**128) +
                            Z2_6 * (2**153) +
                            Z2_7 * (2**179) +
                            Z2_8 * (2**204) +
                            Z2_9 * (2**230)
                        )
                    )
                    (
                        mul
                        (
                            X2_0 +
                            X2_1 * (2**26) +
                            X2_2 * (2**51) +
                            X2_3 * (2**77) +
                            X2_4 * (2**102) +
                            X2_5 * (2**128) +
                            X2_6 * (2**153) +
                            X2_7 * (2**179) +
                            X2_8 * (2**204) +
                            X2_9 * (2**230)
                        )
                        (
                            Z3_0 +
                            Z3_1 * (2**26) +
                            Z3_2 * (2**51) +
                            Z3_3 * (2**77) +
                            Z3_4 * (2**102) +
                            Z3_5 * (2**128) +
                            Z3_6 * (2**153) +
                            Z3_7 * (2**179) +
                            Z3_8 * (2**204) +
                            Z3_9 * (2**230)
                        )
                    )
                )
            )
        )
    )
    ( mod 2**255 - 19 )
     (* condition 3 *)
     /*
     (
        mul
        (
            X3Final_0 +
            X3Final_1 * (2**26) +
            X3Final_2 * (2**51) +
            X3Final_3 * (2**77) +
            X3Final_4 * (2**102) +
            X3Final_5 * (2**128) +
            X3Final_6 * (2**153) +
            X3Final_7 * (2**179) +
            X3Final_8 * (2**204) +
            X3Final_9 * (2**230)
        )
        (
            mul
            (
                X1_0 +
                X1_1 * (2**26) +
                X1_2 * (2**51) +
                X1_3 * (2**77) +
                X1_4 * (2**102) +
                X1_5 * (2**128) +
                X1_6 * (2**153) +
                X1_7 * (2**179) +
                X1_8 * (2**204) +
                X1_9 * (2**230)
            )
            (
                sq
                (
                    sub
                    (
                        mul
                        (
                            X3_0 +
                            X3_1 * (2**26) +
                            X3_2 * (2**51) +
                            X3_3 * (2**77) +
                            X3_4 * (2**102) +
                            X3_5 * (2**128) +
                            X3_6 * (2**153) +
                            X3_7 * (2**179) +
                            X3_8 * (2**204) +
                            X3_9 * (2**230)
                        )
                        (
                            Z2_0 +
                            Z2_1 * (2**26) +
                            Z2_2 * (2**51) +
                            Z2_3 * (2**77) +
                            Z2_4 * (2**102) +
                            Z2_5 * (2**128) +
                            Z2_6 * (2**153) +
                            Z2_7 * (2**179) +
                            Z2_8 * (2**204) +
                            Z2_9 * (2**230)
                        )
                    )
                    (
                        mul
                        (
                            X2_0 +
                            X2_1 * (2**26) +
                            X2_2 * (2**51) +
                            X2_3 * (2**77) +
                            X2_4 * (2**102) +
                            X2_5 * (2**128) +
                            X2_6 * (2**153) +
                            X2_7 * (2**179) +
                            X2_8 * (2**204) +
                            X2_9 * (2**230)
                        )
                        (
                            Z3_0 +
                            Z3_1 * (2**26) +
                            Z3_2 * (2**51) +
                            Z3_3 * (2**77) +
                            Z3_4 * (2**102) +
                            Z3_5 * (2**128) +
                            Z3_6 * (2**153) +
                            Z3_7 * (2**179) +
                            Z3_8 * (2**204) +
                            Z3_9 * (2**230)
                        )
                    )
                )
            )
        )
     )
     =
     (
        mul
        (
            Z3Final_0 +
            Z3Final_1 * (2**26) +
            Z3Final_2 * (2**51) +
            Z3Final_3 * (2**77) +
            Z3Final_4 * (2**102) +
            Z3Final_5 * (2**128) +
            Z3Final_6 * (2**153) +
            Z3Final_7 * (2**179) +
            Z3Final_8 * (2**204) +
            Z3Final_9 * (2**230)
        )
        (
            sq
            (
                sub
                (
                    mul
                    (
                        X2_0 +
                        X2_1 * (2**26) +
                        X2_2 * (2**51) +
                        X2_3 * (2**77) +
                        X2_4 * (2**102) +
                        X2_5 * (2**128) +
                        X2_6 * (2**153) +
                        X2_7 * (2**179) +
                        X2_8 * (2**204) +
                        X2_9 * (2**230)
                    )
                    (
                        X3_0 +
                        X3_1 * (2**26) +
                        X3_2 * (2**51) +
                        X3_3 * (2**77) +
                        X3_4 * (2**102) +
                        X3_5 * (2**128) +
                        X3_6 * (2**153) +
                        X3_7 * (2**179) +
                        X3_8 * (2**204) +
                        X3_9 * (2**230)
                    )
                )
                (
                    mul
                    (
                        Z2_0 +
                        Z2_1 * (2**26) +
                        Z2_2 * (2**51) +
                        Z2_3 * (2**77) +
                        Z2_4 * (2**102) +
                        Z2_5 * (2**128) +
                        Z2_6 * (2**153) +
                        Z2_7 * (2**179) +
                        Z2_8 * (2**204) +
                        Z2_9 * (2**230)
                    )
                    (
                        Z3_0 +
                        Z3_1 * (2**26) +
                        Z3_2 * (2**51) +
                        Z3_3 * (2**77) +
                        Z3_4 * (2**102) +
                        Z3_5 * (2**128) +
                        Z3_6 * (2**153) +
                        Z3_7 * (2**179) +
                        Z3_8 * (2**204) +
                        Z3_9 * (2**230)
                    )
                )
            )
        )
     )
     ( mod 2**255 -19 )
     */
  ]
  &&
  true
}

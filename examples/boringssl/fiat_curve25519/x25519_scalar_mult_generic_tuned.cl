(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing x25519_scalar_mult_generic_tuned.cl
Verification result:                    [OK]            264.669539 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing x25519_scalar_mult_generic_tuned.cl"
        User time (seconds): 902.24
        System time (seconds): 106.72
        Percent of CPU this job got: 380%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 4:24.90
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 5512944
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 41714248
        Voluntary context switches: 916114
        Involuntary context switches: 82190
        Swaps: 0
        File system inputs: 0
        File system outputs: 7164360
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing x25519_scalar_mult_generic_tuned.cl
Verification result:			[OK]		739.067875 seconds
      739.90 real      1578.73 user       158.23 sys
5640577024  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
  38589922  page reclaims
       628  page faults
         0  swaps
       227  block input operations
       922  block output operations
         0  messages sent
         0  messages received
      6212  signals received
    455015  voluntary context switches
   2299987  involuntary context switches
*)
proc fe_mul_impl (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) =
{
  true
  &&
  and [
    a0 <u (2**53)@64,
    a1 <u (2**53)@64,
    a2 <u (2**53)@64,
    a3 <u (2**53)@64,
    a4 <u (2**53)@64,
    b0 <u (2**53)@64,
    b1 <u (2**53)@64,
    b2 <u (2**53)@64,
    b3 <u (2**53)@64,
    b4 <u (2**53)@64
  ]
}

(* Start with undefined rhs *)
mov in166_0@uint64 a0;
mov in166_8@uint64 a1;
mov in166_16@uint64 a2;
mov in166_24@uint64 a3;
mov in166_32@uint64 a4;
mov in272_0@uint64 b0;
mov in272_8@uint64 b1;
mov in272_16@uint64 b2;
mov in272_24@uint64 b3;
mov in272_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* x10_67 = MEM[(const uint64_t * )in1_66(D) + 32B]; *)
mov x1067 in166_32;
(* x11_68 = MEM[(const uint64_t * )in1_66(D) + 24B]; *)
mov x1168 in166_24;
(* x9_69 = MEM[(const uint64_t * )in1_66(D) + 16B]; *)
mov x969 in166_16;
(* x7_70 = MEM[(const uint64_t * )in1_66(D) + 8B]; *)
mov x770 in166_8;
(* x5_71 = *in1_66(D); *)
mov x571 in166_0;
(* x18_73 = MEM[(const uint64_t * )in2_72(D) + 32B]; *)
mov x1873 in272_32;
(* x19_74 = MEM[(const uint64_t * )in2_72(D) + 24B]; *)
mov x1974 in272_24;
(* x17_75 = MEM[(const uint64_t * )in2_72(D) + 16B]; *)
mov x1775 in272_16;
(* x15_76 = MEM[(const uint64_t * )in2_72(D) + 8B]; *)
mov x1576 in272_8;
(* x13_77 = *in2_72(D); *)
mov x1377 in272_0;
(* x20_78 = x5_71 w* x13_77; *)
umulj x2078 x571 x1377;
(* _4 = x5_71 w* x15_76; *)
umulj v4 x571 x1576;
(* _6 = x13_77 w* x7_70; *)
umulj v6 x1377 x770;
(* _8 = x5_71 w* x17_75; *)
umulj v8 x571 x1775;
(* _10 = x13_77 w* x9_69; *)
umulj v10 x1377 x969;
(* _12 = x15_76 w* x7_70; *)
umulj v12 x1576 x770;
(* _14 = x5_71 w* x19_74; *)
umulj v14 x571 x1974;
(* _16 = x13_77 w* x11_68; *)
umulj v16 x1377 x1168;
(* _119 = _14 + _16; *)
uadd v119 v14 v16;
(* _18 = x15_76 w* x9_69; *)
umulj v18 x1576 x969;
(* _19 = x7_70 w* x17_75; *)
umulj v19 x770 x1775;
(* _120 = _18 + _119; *)
uadd v120 v18 v119;
(* x23_81 = _19 + _120; *)
uadd x2381 v19 v120;
(* _22 = x5_71 w* x18_73; *)
umulj v22 x571 x1873;
(* _24 = x13_77 w* x10_67; *)
umulj v24 x1377 x1067;
(* _116 = _22 + _24; *)
uadd v116 v22 v24;
(* _26 = x7_70 w* x19_74; *)
umulj v26 x770 x1974;
(* _27 = x15_76 w* x11_68; *)
umulj v27 x1576 x1168;
(* _115 = _26 + _116; *)
uadd v115 v26 v116;
(* _29 = _27 + _115; *)
uadd v29 v27 v115;
(* _30 = x17_75 w* x9_69; *)
umulj v30 x1775 x969;
(* x24_82 = _29 + _30; *)
uadd x2482 v29 v30;
(* x25_83 = x10_67 * 19; *)
umul x2583 x1067 0x13@uint64;
(* x26_84 = x7_70 * 19; *)
umul x2684 x770 0x13@uint64;
(* x27_85 = x9_69 * 19; *)
umul x2785 x969 0x13@uint64;
(* x28_86 = x11_68 * 19; *)
umul x2886 x1168 0x13@uint64;
(* _32 = x15_76 w* x25_83; *)
umulj v32 x1576 x2583;
(* _34 = x18_73 w* x26_84; *)
umulj v34 x1873 x2684;
(* _35 = _32 + _34; *)
uadd v35 v32 v34;
(* _36 = _35 + x20_78; *)
uadd v36 v35 x2078;
(* _38 = x17_75 w* x28_86; *)
umulj v38 x1775 x2886;
(* _40 = x19_74 w* x27_85; *)
umulj v40 x1974 x2785;
(* _130 = _36 + _38; *)
uadd v130 v36 v38;
(* x29_87 = _40 + _130; *)
uadd x2987 v40 v130;
(* _42 = x17_75 w* x25_83; *)
umulj v42 x1775 x2583;
(* _43 = x18_73 w* x27_85; *)
umulj v43 x1873 x2785;
(* _127 = _4 + _6; *)
uadd v127 v4 v6;
(* _128 = _42 + _127; *)
uadd v128 v42 v127;
(* _45 = _43 + _128; *)
uadd v45 v43 v128;
(* _46 = x19_74 w* x28_86; *)
umulj v46 x1974 x2886;
(* x30_88 = _45 + _46; *)
uadd x3088 v45 v46;
(* _47 = x19_74 w* x25_83; *)
umulj v47 x1974 x2583;
(* _48 = x18_73 w* x28_86; *)
umulj v48 x1873 x2886;
(* _123 = _8 + _10; *)
uadd v123 v8 v10;
(* _124 = _12 + _123; *)
uadd v124 v12 v123;
(* _125 = _47 + _124; *)
uadd v125 v47 v124;
(* x31_89 = _48 + _125; *)
uadd x3189 v48 v125;
(* _50 = x18_73 w* x25_83; *)
umulj v50 x1873 x2583;
(* x32_90 = _50 + x23_81; *)
uadd x3290 v50 x2381;
(* _51 = x29_87 >> 51; *)
usplit v51 tmp_to_use x2987 51;
(* _52 = (long unsigned int) x29_87; *)
cast v52@uint64 x2987@uint128;
(* x34_91 = _52 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3491 v52 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3491 = tmp_to_use_p;
assume x3491 = tmp_to_use && true;

(* _63 = _51 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v63 v51 value;

assert true && v63 = v51;
assume v63 = v51 && true;

(* x35_92 = _63 + x30_88; *)
uadd x3592 v63 x3088;
(* _53 = x35_92 >> 51; *)
usplit v53 tmp_to_use x3592 51;
(* _54 = (long unsigned int) x35_92; *)
cast v54@uint64 x3592@uint128;
(* x37_93 = _54 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3793 v54 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3793 = tmp_to_use_p;
assume x3793 = tmp_to_use && true;

(* _64 = _53 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v64 v53 value;

assert true && v64 = v53;
assume v64 = v53 && true;


(* x38_94 = _64 + x31_89; *)
uadd x3894 v64 x3189;
(* _55 = x38_94 >> 51; *)
usplit v55 tmp_to_use x3894 51;
(* _56 = (long unsigned int) x38_94; *)
cast v56@uint64 x3894@uint128;
(* x40_95 = _56 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4095 v56 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x4095 = tmp_to_use_p;
assume x4095 = tmp_to_use && true;

(* _113 = _55 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v113 v55 value;

assert true && v113 = v55;
assume v113 = v55 && true;

(* x41_96 = x32_90 + _113; *)
uadd x4196 x3290 v113;
(* _57 = x41_96 >> 51; *)
usplit v57 tmp_to_use x4196 51;
(* _58 = (long unsigned int) x41_96; *)
cast v58@uint64 x4196@uint128;
(* x43_97 = _58 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4397 v58 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x4397 = tmp_to_use_p;
assume x4397 = tmp_to_use && true;

(* _114 = _57 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v114 v57 value;

assert true && v114 = v57;
assume v114 = v57 && true;

(* x44_98 = x24_82 + _114; *)
uadd x4498 x2482 v114;
(* _59 = x44_98 >> 51; *)
usplit v59 tmp_to_use x4498 51;
(* x45_99 = (uint64_t) _59; *)
vpc x4599@uint64 v59@uint128;
(* _60 = (long unsigned int) x44_98; *)
cast v60@uint64 x4498@uint128;
(* x46_100 = _60 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x46100 v60 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x46100 = tmp_to_use_p;
assume x46100 = tmp_to_use && true;

(* _61 = x45_99 * 19; *)
umul v61 x4599 0x13@uint64;
(* x47_101 = _61 + x34_91; *)
uadd x47101 v61 x3491;
(* x48_102 = x47_101 >> 51; *)
usplit x48102 tmp_to_use x47101 51;
(* x49_103 = x47_101 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x49103 x47101 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x49103 = tmp_to_use_p;
assume x49103 = tmp_to_use && true;

(* x50_104 = x37_93 + x48_102; *)
uadd x50104 x3793 x48102;
(* x51_105 = x50_104 >> 51; *)
usplit x51105 tmp_to_use x50104 51;
(* x52_106 = x50_104 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x52106 x50104 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x52106 = tmp_to_use_p;
assume x52106 = tmp_to_use && true;

(* *out_107(D) = x49_103; *)
mov out107_0 x49103;
(* MEM[(uint64_t * )out_107(D) + 8B] = x52_106; *)
mov out107_8 x52106;
(* _62 = x40_95 + x51_105; *)
uadd v62 x4095 x51105;
(* MEM[(uint64_t * )out_107(D) + 16B] = _62; *)
mov out107_16 v62;
(* MEM[(uint64_t * )out_107(D) + 24B] = x43_97; *)
mov out107_24 x4397;
(* MEM[(uint64_t * )out_107(D) + 32B] = x46_100; *)
mov out107_32 x46100;
(* return; *)


(* Start with unused lhs *)
mov c0 out107_0@uint64;
mov c1 out107_8@uint64;
mov c2 out107_16@uint64;
mov c3 out107_24@uint64;
mov c4 out107_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [a0, a1, a2, a3, a4])
      *
      (limbs 51 [b0, b1 ,b2 ,b3 ,b4])
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**51+2**15)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}

proc fe_sqr_impl (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) =
{
  true
  &&
  and [
    a0 <u (2**53)@64,
    a1 <u (2**53)@64,
    a2 <u (2**53)@64,
    a3 <u (2**53)@64,
    a4 <u (2**53)@64
  ]
}


(* Start with undefined rhs *)
mov in147_0@uint64 a0;
mov in147_8@uint64 a1;
mov in147_16@uint64 a2;
mov in147_24@uint64 a3;
mov in147_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* x7_48 = MEM[(const uint64_t * )in1_47(D) + 32B]; *)
mov x748 in147_32;
(* x8_49 = MEM[(const uint64_t * )in1_47(D) + 24B]; *)
mov x849 in147_24;
(* x6_50 = MEM[(const uint64_t * )in1_47(D) + 16B]; *)
mov x650 in147_16;
(* x4_51 = MEM[(const uint64_t * )in1_47(D) + 8B]; *)
mov x451 in147_8;
(* x2_52 = *in1_47(D); *)
mov x252 in147_0;
(* x9_53 = x2_52 * 2; *)
umul x953 x252 0x2@uint64;
(* x10_54 = x4_51 * 2; *)
umul x1054 x451 0x2@uint64;
(* x11_55 = x6_50 * 38; *)
umul x1155 x650 0x26@uint64;
(* x12_56 = x7_48 * 19; *)
umul x1256 x748 0x13@uint64;
(* x13_57 = x7_48 * 38; *)
umul x1357 x748 0x26@uint64;
(* _2 = x2_52 w* x2_52; *)
umulj v2 x252 x252;
(* _5 = x13_57 w* x4_51; *)
umulj v5 x1357 x451;
(* _9 = x11_55 w* x8_49; *)
umulj v9 x1155 x849;
(* _88 = _5 + _9; *)
uadd v88 v5 v9;
(* x14_58 = _2 + _88; *)
uadd x1458 v2 v88;
(* _11 = x4_51 w* x9_53; *)
umulj v11 x451 x953;
(* _13 = x13_57 w* x6_50; *)
umulj v13 x1357 x650;
(* _14 = _11 + _13; *)
uadd v14 v11 v13;
(* _15 = x8_49 * 19; *)
umul v15 x849 0x13@uint64;
(* _17 = x8_49 w* _15; *)
umulj v17 x849 v15;
(* x15_59 = _14 + _17; *)
uadd x1559 v14 v17;
(* _18 = x9_53 w* x6_50; *)
umulj v18 x953 x650;
(* _19 = x4_51 w* x4_51; *)
umulj v19 x451 x451;
(* _21 = x13_57 w* x8_49; *)
umulj v21 x1357 x849;
(* _89 = _18 + _21; *)
uadd v89 v18 v21;
(* x16_60 = _19 + _89; *)
uadd x1660 v19 v89;
(* _22 = x8_49 w* x9_53; *)
umulj v22 x849 x953;
(* _24 = x6_50 w* x10_54; *)
umulj v24 x650 x1054;
(* _25 = _22 + _24; *)
uadd v25 v22 v24;
(* _28 = x7_48 w* x12_56; *)
umulj v28 x748 x1256;
(* x17_61 = _25 + _28; *)
uadd x1761 v25 v28;
(* _29 = x9_53 w* x7_48; *)
umulj v29 x953 x748;
(* _30 = x8_49 w* x10_54; *)
umulj v30 x849 x1054;
(* _31 = _29 + _30; *)
uadd v31 v29 v30;
(* _32 = x6_50 w* x6_50; *)
umulj v32 x650 x650;
(* x18_62 = _31 + _32; *)
uadd x1862 v31 v32;
(* _33 = x14_58 >> 51; *)
usplit v33 tmp_to_use x1458 51;
(* _34 = (long unsigned int) x14_58; *)
cast v34@uint64 x1458@uint128;
(* x20_63 = _34 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2063 v34 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x2063 = tmp_to_use_p;
assume x2063 = tmp_to_use && true;

(* _45 = _33 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v45 v33 value;

assert true && v45 = v33;
assume v45 = v33 && true;

(* x21_64 = _45 + x15_59; *)
uadd x2164 v45 x1559;
(* _35 = x21_64 >> 51; *)
usplit v35 tmp_to_use x2164 51;
(* _36 = (long unsigned int) x21_64; *)
cast v36@uint64 x2164@uint128;
(* x23_65 = _36 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2365 v36 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x2365 = tmp_to_use_p;
assume x2365 = tmp_to_use && true;

(* _85 = _35 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v85 v35 value;

assert true && v85 = v35;
assume v85 = v35 && true;

(* x24_66 = x16_60 + _85; *)
uadd x2466 x1660 v85;
(* _37 = x24_66 >> 51; *)
usplit v37 tmp_to_use x2466 51;
(* _38 = (long unsigned int) x24_66; *)
cast v38@uint64 x2466@uint128;
(* x26_67 = _38 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2667 v38 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x2667 = tmp_to_use_p;
assume x2667 = tmp_to_use && true;

(* _86 = _37 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v86 v37 value;

assert true && v86 = v37;
assume v86 = v37 && true;

(* x27_68 = x17_61 + _86; *)
uadd x2768 x1761 v86;
(* _39 = x27_68 >> 51; *)
usplit v39 tmp_to_use x2768 51;
(* _40 = (long unsigned int) x27_68; *)
cast v40@uint64 x2768@uint128;
(* x29_69 = _40 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x2969 v40 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x2969 = tmp_to_use_p;
assume x2969 = tmp_to_use && true;

(* _87 = _39 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 v39 value;

assert true && v87 = v39;
assume v87 = v39 && true;

(* x30_70 = x18_62 + _87; *)
uadd x3070 x1862 v87;
(* _41 = x30_70 >> 51; *)
usplit v41 tmp_to_use x3070 51;
(* x31_71 = (uint64_t) _41; *)
vpc x3171@uint64 v41@uint128;
(* _42 = (long unsigned int) x30_70; *)
cast v42@uint64 x3070@uint128;
(* x32_72 = _42 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3272 v42 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3272 = tmp_to_use_p;
assume x3272 = tmp_to_use && true;

(* _43 = x31_71 * 19; *)
umul v43 x3171 0x13@uint64;
(* x33_73 = _43 + x20_63; *)
uadd x3373 v43 x2063;
(* x34_74 = x33_73 >> 51; *)
usplit x3474 tmp_to_use x3373 51;
(* x35_75 = x33_73 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3575 x3373 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3575 = tmp_to_use_p;
assume x3575 = tmp_to_use && true;

(* x36_76 = x23_65 + x34_74; *)
uadd x3676 x2365 x3474;
(* x37_77 = x36_76 >> 51; *)
usplit x3777 tmp_to_use x3676 51;
(* x38_78 = x36_76 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3878 x3676 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3878 = tmp_to_use_p;
assume x3878 = tmp_to_use && true;

(* *out_79(D) = x35_75; *)
mov out79_0 x3575;
(* MEM[(uint64_t * )out_79(D) + 8B] = x38_78; *)
mov out79_8 x3878;
(* _44 = x26_67 + x37_77; *)
uadd v44 x2667 x3777;
(* MEM[(uint64_t * )out_79(D) + 16B] = _44; *)
mov out79_16 v44;
(* MEM[(uint64_t * )out_79(D) + 24B] = x29_69; *)
mov out79_24 x2969;
(* MEM[(uint64_t * )out_79(D) + 32B] = x32_72; *)
mov out79_32 x3272;
(* return; *)


(* Start with unused lhs *)
mov c0 out79_0@uint64;
mov c1 out79_8@uint64;
mov c2 out79_16@uint64;
mov c3 out79_24@uint64;
mov c4 out79_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      sq
      (limbs 51 [a0, a1, a2, a3, a4])
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**51+2**15)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}

proc main (uint64 X1|0..4,uint64 X2|0..4, uint64 X3|0..4, uint64 Z2|0..4, uint64 Z3|0..4) =
{
  true
  &&
  and
  [
    X1_0 <u (2**51+2**15)@64,
    X1_1 <u (2**51+2**15)@64,
    X1_2 <u (2**51+2**15)@64,
    X1_3 <u (2**51+2**15)@64,
    X1_4 <u (2**51+2**15)@64,
    X2_0 <u (2**51+2**15)@64,
    X2_1 <u (2**51+2**15)@64,
    X2_2 <u (2**51+2**15)@64,
    X2_3 <u (2**51+2**15)@64,
    X2_4 <u (2**51+2**15)@64,
    X3_0 <u (2**51+2**15)@64,
    X3_1 <u (2**51+2**15)@64,
    X3_2 <u (2**51+2**15)@64,
    X3_3 <u (2**51+2**15)@64,
    X3_4 <u (2**51+2**15)@64,
    Z2_0 <u (2**51+2**15)@64,
    Z2_1 <u (2**51+2**15)@64,
    Z2_2 <u (2**51+2**15)@64,
    Z2_3 <u (2**51+2**15)@64,
    Z2_4 <u (2**51+2**15)@64,
    Z3_0 <u (2**51+2**15)@64,
    Z3_1 <u (2**51+2**15)@64,
    Z3_2 <u (2**51+2**15)@64,
    Z3_3 <u (2**51+2**15)@64,
    Z3_4 <u (2**51+2**15)@64
  ]
}

(* Start with undefined rhs *)
(*
mov tmp0_0@uint64 _;
mov tmp0_8@uint64 _;
mov tmp0_16@uint64 _;
mov tmp0_24@uint64 _;
mov tmp0_32@uint64 _;
mov tmp1_0@uint64 _;
mov tmp1_8@uint64 _;
mov tmp1_16@uint64 _;
mov tmp1_24@uint64 _;
mov tmp1_32@uint64 _;
*)
mov x2_0@uint64 X2_0;
mov x2_8@uint64 X2_1;
mov x2_16@uint64 X2_2;
mov x2_24@uint64 X2_3;
mov x2_32@uint64 X2_4;
mov x3_0@uint64 X3_0;
mov x3_8@uint64 X3_1;
mov x3_16@uint64 X3_2;
mov x3_24@uint64 X3_3;
mov x3_32@uint64 X3_4;
mov z2_0@uint64 Z2_0;
mov z2_8@uint64 Z2_1;
mov z2_16@uint64 Z2_2;
mov z2_24@uint64 Z2_3;
mov z2_32@uint64 Z2_4;
mov z3_0@uint64 Z3_0;
mov z3_8@uint64 Z3_1;
mov z3_16@uint64 Z3_2;
mov z3_24@uint64 Z3_3;
mov z3_32@uint64 Z3_4;
(* End with undefined rhs *)

mov x1_0@uint64 X1_0;
mov x1_8@uint64 X1_1;
mov x1_16@uint64 X1_2;
mov x1_24@uint64 X1_3;
mov x1_32@uint64 X1_4;

(* pass type check *)
assign tmp0_0 0@uint64;
assign tmp0_8 0@uint64;
assign tmp0_16 0@uint64;
assign tmp0_24 0@uint64;
assign tmp0_32 0@uint64;

assign tmp1_0 0@uint64;
assign tmp1_8 0@uint64;
assign tmp1_16 0@uint64;
assign tmp1_24 0@uint64;
assign tmp1_32 0@uint64;

(* BB's index is 2 *)

(* x10_106 = MEM[(const uint64_t * )&x3 + 32B]; *)
mov x10106 x3_32;
(* vect_x5_110.986_236 = MEM[(const uint64_t * )&x3]; *)
mov vect_x5_110986236_0 x3_0;
mov vect_x5_110986236_1 x3_8;
(* vect_x5_110.987_238 = MEM[(const uint64_t * )&x3 + 16B]; *)
mov vect_x5_110987238_0 x3_16;
mov vect_x5_110987238_1 x3_24;
(* x18_111 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov x18111 z3_32;
(* vect_x13_115.990_240 = MEM[(const uint64_t * )&z3]; *)
mov vect_x13_115990240_0 z3_0;
mov vect_x13_115990240_1 z3_8;
(* vect_x13_115.991_242 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect_x13_115991242_0 z3_16;
mov vect_x13_115991242_1 z3_24;
(* vect__262.995_102 = vect_x5_110.986_236 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__262995102_0 vect_x5_110986236_0 0xfffffffffffda@uint64;
uadd vect__262995102_1 vect_x5_110986236_1 0xffffffffffffe@uint64;
(* vect__262.995_104 = vect_x5_110.987_238 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__262995104_0 vect_x5_110987238_0 0xffffffffffffe@uint64;
uadd vect__262995104_1 vect_x5_110987238_1 0xffffffffffffe@uint64;
(* vect__117.996_51 = vect__262.995_102 - vect_x13_115.990_240; *)
usub vect__11799651_0 vect__262995102_0 vect_x13_115990240_0;
usub vect__11799651_1 vect__262995102_1 vect_x13_115990240_1;
(* vect__117.996_53 = vect__262.995_104 - vect_x13_115.991_242; *)
usub vect__11799653_0 vect__262995104_0 vect_x13_115991242_0;
usub vect__11799653_1 vect__262995104_1 vect_x13_115991242_1;
(* MEM[(uint64_t * )&tmp0l] = vect__117.996_51; *)
mov tmp0l_0 vect__11799651_0;
mov tmp0l_8 vect__11799651_1;
(* MEM[(uint64_t * )&tmp0l + 16B] = vect__117.996_53; *)
mov tmp0l_16 vect__11799653_0;
mov tmp0l_24 vect__11799653_1;
(* _258 = x10_106 + 4503599627370494; *)
uadd v258 x10106 0xffffffffffffe@uint64;
(* _125 = _258 - x18_111; *)
usub v125 v258 x18111;
(* MEM[(uint64_t * )&tmp0l + 32B] = _125; *)
mov tmp0l_32 v125;
(* x10_86 = MEM[(const uint64_t * )&x2 + 32B]; *)
mov x1086 x2_32;
(* vect_x5_90.975_194 = MEM[(const uint64_t * )&x2]; *)
mov vect_x5_90975194_0 x2_0;
mov vect_x5_90975194_1 x2_8;
(* vect_x5_90.976_204 = MEM[(const uint64_t * )&x2 + 16B]; *)
mov vect_x5_90976204_0 x2_16;
mov vect_x5_90976204_1 x2_24;
(* x18_91 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov x1891 z2_32;
(* vect_x13_95.979_167 = MEM[(const uint64_t * )&z2]; *)
mov vect_x13_95979167_0 z2_0;
mov vect_x13_95979167_1 z2_8;
(* vect_x13_95.980_229 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect_x13_95980229_0 z2_16;
mov vect_x13_95980229_1 z2_24;
(* vect__257.999_45 = vect_x5_90.975_194 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__25799945_0 vect_x5_90975194_0 0xfffffffffffda@uint64;
uadd vect__25799945_1 vect_x5_90975194_1 0xffffffffffffe@uint64;
(* vect__257.999_47 = vect_x5_90.976_204 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__25799947_0 vect_x5_90976204_0 0xffffffffffffe@uint64;
uadd vect__25799947_1 vect_x5_90976204_1 0xffffffffffffe@uint64;
(* vect__97.1000_49 = vect__257.999_45 - vect_x13_95.979_167; *)
usub vect__97100049_0 vect__25799945_0 vect_x13_95979167_0;
usub vect__97100049_1 vect__25799945_1 vect_x13_95979167_1;
(* vect__97.1000_263 = vect__257.999_47 - vect_x13_95.980_229; *)
usub vect__971000263_0 vect__25799947_0 vect_x13_95980229_0;
usub vect__971000263_1 vect__25799947_1 vect_x13_95980229_1;
(* MEM[(uint64_t * )&tmp1l] = vect__97.1000_49; *)
mov tmp1l_0 vect__97100049_0;
mov tmp1l_8 vect__97100049_1;
(* MEM[(uint64_t * )&tmp1l + 16B] = vect__97.1000_263; *)
mov tmp1l_16 vect__971000263_0;
mov tmp1l_24 vect__971000263_1;
(* _253 = x10_86 + 4503599627370494; *)
uadd v253 x1086 0xffffffffffffe@uint64;
(* _105 = _253 - x18_91; *)
usub v105 v253 x1891;
(* MEM[(uint64_t * )&tmp1l + 32B] = _105; *)
mov tmp1l_32 v105;
(* vect__81.981_231 = vect_x13_95.979_167 + vect_x5_90.975_194; *)
uadd vect__81981231_0 vect_x13_95979167_0 vect_x5_90975194_0;
uadd vect__81981231_1 vect_x13_95979167_1 vect_x5_90975194_1;
(* vect__81.981_232 = vect_x5_90.976_204 + vect_x13_95.980_229; *)
uadd vect__81981232_0 vect_x5_90976204_0 vect_x13_95980229_0;
uadd vect__81981232_1 vect_x5_90976204_1 vect_x13_95980229_1;
(* MEM[(uint64_t * )&x2l] = vect__81.981_231; *)
mov x2l_0 vect__81981231_0;
mov x2l_8 vect__81981231_1;
(* MEM[(uint64_t * )&x2l + 16B] = vect__81.981_232; *)
mov x2l_16 vect__81981232_0;
mov x2l_24 vect__81981232_1;
(* _85 = x10_86 + x18_91; *)
uadd v85 x1086 x1891;
(* MEM[(uint64_t * )&x2l + 32B] = _85; *)
mov x2l_32 v85;
(* vect__76.992_118 = vect_x5_110.986_236 + vect_x13_115.990_240; *)
uadd vect__76992118_0 vect_x5_110986236_0 vect_x13_115990240_0;
uadd vect__76992118_1 vect_x5_110986236_1 vect_x13_115990240_1;
(* vect__76.992_120 = vect_x5_110.987_238 + vect_x13_115.991_242; *)
uadd vect__76992120_0 vect_x5_110987238_0 vect_x13_115991242_0;
uadd vect__76992120_1 vect_x5_110987238_1 vect_x13_115991242_1;
(* MEM[(uint64_t * )&z2l] = vect__76.992_118; *)
mov z2l_0 vect__76992118_0;
mov z2l_8 vect__76992118_1;
(* MEM[(uint64_t * )&z2l + 16B] = vect__76.992_120; *)
mov z2l_16 vect__76992120_0;
mov z2l_24 vect__76992120_1;
(* _80 = x10_106 + x18_111; *)
uadd v80 x10106 x18111;
(* MEM[(uint64_t * )&z2l + 32B] = _80; *)
mov z2l_32 v80;
(* fe_mul_impl (&z3.v, &tmp0l.v, &x2l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul_impl(tmp0l_0, tmp0l_8, tmp0l_16, tmp0l_24, tmp0l_32, x2l_0, x2l_8, x2l_16, x2l_24, x2l_32, z3_0, z3_8 ,z3_16, z3_24, z3_32);
(* fe_mul_impl (&z2.v, &z2l.v, &tmp1l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul_impl(z2l_0, z2l_8, z2l_16, z2l_24, z2l_32, tmp1l_0, tmp1l_8, tmp1l_16, tmp1l_24, tmp1l_32, z2_0, z2_8 ,z2_16, z2_24, z2_32);
(* fe_sqr_impl (&tmp0.v, &tmp1l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sqr_impl(tmp1l_0, tmp1l_8, tmp1l_16, tmp1l_24, tmp1l_32, tmp0_0, tmp0_8, tmp0_16, tmp0_24, tmp0_32);
(* fe_sqr_impl (&tmp1.v, &x2l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sqr_impl(x2l_0, x2l_8 ,x2l_16, x2l_24, x2l_32, tmp1_0, tmp1_8 ,tmp1_16, tmp1_24, tmp1_32);
(* x10_61 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov x1061 z3_32;
(* vect_x5_65.1005_267 = MEM[(const uint64_t * )&z3]; *)
mov vect_x5_651005267_0 z3_0;
mov vect_x5_651005267_1 z3_8;
(* vect_x5_65.1006_269 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect_x5_651006269_0 z3_16;
mov vect_x5_651006269_1 z3_24;
(* x18_66 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov x1866 z2_32;
(* vect_x13_70.1010_275 = MEM[(const uint64_t * )&z2]; *)
mov vect_x13_701010275_0 z2_0;
mov vect_x13_701010275_1 z2_8;
(* vect_x13_70.1011_277 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect_x13_701011277_0 z2_16;
mov vect_x13_701011277_1 z2_24;
(* vect__71.1015_284 = vect_x5_65.1005_267 + vect_x13_70.1010_275; *)
uadd vect__711015284_0 vect_x5_651005267_0 vect_x13_701010275_0;
uadd vect__711015284_1 vect_x5_651005267_1 vect_x13_701010275_1;
(* vect__71.1015_285 = vect_x5_65.1006_269 + vect_x13_70.1011_277; *)
uadd vect__711015285_0 vect_x5_651006269_0 vect_x13_701011277_0;
uadd vect__711015285_1 vect_x5_651006269_1 vect_x13_701011277_1;
(* MEM[(uint64_t * )&x3l] = vect__71.1015_284; *)
mov x3l_0 vect__711015284_0;
mov x3l_8 vect__711015284_1;
(* MEM[(uint64_t * )&x3l + 16B] = vect__71.1015_285; *)
mov x3l_16 vect__711015285_0;
mov x3l_24 vect__711015285_1;
(* _75 = x10_61 + x18_66; *)
uadd v75 x1061 x1866;
(* MEM[(uint64_t * )&x3l + 32B] = _75; *)
mov x3l_32 v75;
(* vect__252.1007_273 = vect_x5_65.1005_267 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__2521007273_0 vect_x5_651005267_0 0xfffffffffffda@uint64;
uadd vect__2521007273_1 vect_x5_651005267_1 0xffffffffffffe@uint64;
(* vect__252.1007_274 = vect_x5_65.1006_269 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__2521007274_0 vect_x5_651006269_0 0xffffffffffffe@uint64;
uadd vect__2521007274_1 vect_x5_651006269_1 0xffffffffffffe@uint64;
(* vect__52.1012_279 = vect__252.1007_273 - vect_x13_70.1010_275; *)
usub vect__521012279_0 vect__2521007273_0 vect_x13_701010275_0;
usub vect__521012279_1 vect__2521007273_1 vect_x13_701010275_1;
(* vect__52.1012_280 = vect__252.1007_274 - vect_x13_70.1011_277; *)
usub vect__521012280_0 vect__2521007274_0 vect_x13_701011277_0;
usub vect__521012280_1 vect__2521007274_1 vect_x13_701011277_1;
(* MEM[(uint64_t * )&z2l] = vect__52.1012_279; *)
mov z2l_0 vect__521012279_0;
mov z2l_8 vect__521012279_1;
(* MEM[(uint64_t * )&z2l + 16B] = vect__52.1012_280; *)
mov z2l_16 vect__521012280_0;
mov z2l_24 vect__521012280_1;
(* _248 = x10_61 + 4503599627370494; *)
uadd v248 x1061 0xffffffffffffe@uint64;
(* _60 = _248 - x18_66; *)
usub v60 v248 x1866;
(* MEM[(uint64_t * )&z2l + 32B] = _60; *)
mov z2l_32 v60;
(* fe_mul_impl (&x2.v, &tmp1.v, &tmp0.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul_impl(tmp1_0, tmp1_8, tmp1_16, tmp1_24, tmp1_32, tmp0_0, tmp0_8, tmp0_16, tmp0_24, tmp0_32, x2_0, x2_8, x2_16, x2_24, x2_32);

(* x10_31 = MEM[(const uint64_t * )&tmp1 + 32B]; *)
mov x1031 tmp1_32;
(* vect_x5_35.1020_289 = MEM[(const uint64_t * )&tmp1]; *)
mov vect_x5_351020289_0 tmp1_0;
mov vect_x5_351020289_1 tmp1_8;
(* vect_x5_35.1021_291 = MEM[(const uint64_t * )&tmp1 + 16B]; *)
mov vect_x5_351021291_0 tmp1_16;
mov vect_x5_351021291_1 tmp1_24;
(* x18_36 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov x1836 tmp0_32;
(* vect_x13_40.1025_297 = MEM[(const uint64_t * )&tmp0]; *)
mov vect_x13_401025297_0 tmp0_0;
mov vect_x13_401025297_1 tmp0_8;
(* vect_x13_40.1026_299 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect_x13_401026299_0 tmp0_16;
mov vect_x13_401026299_1 tmp0_24;
(* vect__247.1022_295 = vect_x5_35.1020_289 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__2471022295_0 vect_x5_351020289_0 0xfffffffffffda@uint64;
uadd vect__2471022295_1 vect_x5_351020289_1 0xffffffffffffe@uint64;
(* vect__247.1022_296 = vect_x5_35.1021_291 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__2471022296_0 vect_x5_351021291_0 0xffffffffffffe@uint64;
uadd vect__2471022296_1 vect_x5_351021291_1 0xffffffffffffe@uint64;
(* vect__42.1027_301 = vect__247.1022_295 - vect_x13_40.1025_297; *)
usub vect__421027301_0 vect__2471022295_0 vect_x13_401025297_0;
usub vect__421027301_1 vect__2471022295_1 vect_x13_401025297_1;
(* vect__42.1027_302 = vect__247.1022_296 - vect_x13_40.1026_299; *)
usub vect__421027302_0 vect__2471022296_0 vect_x13_401026299_0;
usub vect__421027302_1 vect__2471022296_1 vect_x13_401026299_1;
(* MEM[(uint64_t * )&tmp1l] = vect__42.1027_301; *)
mov tmp1l_0 vect__421027301_0;
mov tmp1l_8 vect__421027301_1;
(* MEM[(uint64_t * )&tmp1l + 16B] = vect__42.1027_302; *)
mov tmp1l_16 vect__421027302_0;
mov tmp1l_24 vect__421027302_1;
(* _243 = x10_31 + 4503599627370494; *)
uadd v243 x1031 0xffffffffffffe@uint64;
(* _50 = _243 - x18_36; *)
usub v50 v243 x1836;
(* MEM[(uint64_t * )&tmp1l + 32B] = _50; *)
mov tmp1l_32 v50;
(* fe_sqr_impl (&z2.v, &z2l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sqr_impl(z2l_0, z2l_8, z2l_16, z2l_24, z2l_32, z2_0, z2_8, z2_16, z2_24, z2_32);
(* x10_176 = MEM[(const uint64_t * )&tmp1l + 32B]; *)
mov x10176 tmp1l_32;
(* x11_177 = MEM[(const uint64_t * )&tmp1l + 24B]; *)
mov x11177 tmp1l_24;
(* x9_178 = MEM[(const uint64_t * )&tmp1l + 16B]; *)
mov x9178 tmp1l_16;
(* x7_179 = MEM[(const uint64_t * )&tmp1l + 8B]; *)
mov x7179 tmp1l_8;
(* x5_180 = MEM[(const uint64_t * )&tmp1l]; *)
mov x5180 tmp1l_0;
(* x20_182 = x5_180 w* 121666; *)
umulj x20182 x5180 0x1db42@uint64;
(* x21_184 = x7_179 w* 121666; *)
umulj x21184 x7179 0x1db42@uint64;
(* x22_186 = x9_178 w* 121666; *)
umulj x22186 x9178 0x1db42@uint64;
(* x23_188 = x11_177 w* 121666; *)
umulj x23188 x11177 0x1db42@uint64;
(* x24_190 = x10_176 w* 121666; *)
umulj x24190 x10176 0x1db42@uint64;
(* _191 = x20_182 >> 51; *)
usplit v191 tmp_to_use x20182 51;
(* _192 = (long unsigned int) x20_182; *)
cast v192@uint64 x20182@uint128;
(* x34_193 = _192 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x34193 v192 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x34193 = tmp_to_use_p;
assume x34193 = tmp_to_use && true;

(* x35_195 = x21_184 + _191; *)
uadd x35195 x21184 v191;
(* _196 = x35_195 >> 51; *)
usplit v196 tmp_to_use x35195 51;
(* _197 = (long unsigned int) x35_195; *)
cast v197@uint64 x35195@uint128;
(* x37_198 = _197 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x37198 v197 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x37198 = tmp_to_use_p;
assume x37198 = tmp_to_use && true;

(* x38_200 = x22_186 + _196; *)
uadd x38200 x22186 v196;
(* _201 = x38_200 >> 51; *)
usplit v201 tmp_to_use x38200 51;
(* _202 = (long unsigned int) x38_200; *)
cast v202@uint64 x38200@uint128;
(* x40_203 = _202 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x40203 v202 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x40203 = tmp_to_use_p;
assume x40203 = tmp_to_use && true;

(* x41_205 = x23_188 + _201; *)
uadd x41205 x23188 v201;
(* _206 = x41_205 >> 51; *)
usplit v206 tmp_to_use x41205 51;
(* _207 = (long unsigned int) x41_205; *)
cast v207@uint64 x41205@uint128;
(* x43_208 = _207 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x43208 v207 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x43208 = tmp_to_use_p;
assume x43208 = tmp_to_use && true;

(* x44_210 = x24_190 + _206; *)
uadd x44210 x24190 v206;
(* _211 = x44_210 >> 51; *)
usplit v211 tmp_to_use x44210 51;
(* x45_212 = (uint64_t) _211; *)
(* ======== modified: cast -> vpc ======== *)
vpc x45212@uint64 v211@uint128;
(* _213 = (long unsigned int) x44_210; *)
cast v213@uint64 x44210@uint128;
(* x46_214 = _213 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x46214 v213 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x46214 = tmp_to_use_p;
assume x46214 = tmp_to_use && true;

(* _215 = x45_212 * 19; *)
umul v215 x45212 0x13@uint64;
(* x47_216 = x34_193 + _215; *)
uadd x47216 x34193 v215;
(* x48_217 = x47_216 >> 51; *)
usplit x48217 tmp_to_use x47216 51;
(* x49_218 = x47_216 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x49218 x47216 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x49218 = tmp_to_use_p;
assume x49218 = tmp_to_use && true;

(* x50_219 = x37_198 + x48_217; *)
uadd x50219 x37198 x48217;
(* x51_220 = x50_219 >> 51; *)
usplit x51220 tmp_to_use x50219 51;
(* x52_221 = x50_219 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x52221 x50219 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x52221 = tmp_to_use_p;
assume x52221 = tmp_to_use && true;

(* MEM[(uint64_t * )&z3] = x49_218; *)
mov z3_0 x49218;
(* MEM[(uint64_t * )&z3 + 8B] = x52_221; *)
mov z3_8 x52221;
(* _222 = x40_203 + x51_220; *)
uadd v222 x40203 x51220;
(* MEM[(uint64_t * )&z3 + 16B] = _222; *)
mov z3_16 v222;
(* MEM[(uint64_t * )&z3 + 24B] = x43_208; *)
mov z3_24 x43208;
(* MEM[(uint64_t * )&z3 + 32B] = x46_214; *)
mov z3_32 x46214;
(* fe_sqr_impl (&x3.v, &x3l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sqr_impl(x3l_0, x3l_8, x3l_16, x3l_24, x3l_32, x3_0, x3_8, x3_16, x3_24, x3_32);
(* x10_16 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov x1016 tmp0_32;
(* vect_x5_20.1032_306 = MEM[(const uint64_t * )&tmp0]; *)
mov vect_x5_201032306_0 tmp0_0;
mov vect_x5_201032306_1 tmp0_8;
(* vect_x5_20.1033_308 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect_x5_201033308_0 tmp0_16;
mov vect_x5_201033308_1 tmp0_24;
(* x18_21 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov x1821 z3_32;
(* vect_x13_25.1036_310 = MEM[(const uint64_t * )&z3]; *)
mov vect_x13_251036310_0 z3_0;
mov vect_x13_251036310_1 z3_8;
(* vect_x13_25.1037_312 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect_x13_251037312_0 z3_16;
mov vect_x13_251037312_1 z3_24;
(* vect__26.1038_314 = vect_x5_20.1032_306 + vect_x13_25.1036_310; *)
uadd vect__261038314_0 vect_x5_201032306_0 vect_x13_251036310_0;
uadd vect__261038314_1 vect_x5_201032306_1 vect_x13_251036310_1;
(* vect__26.1038_315 = vect_x5_20.1033_308 + vect_x13_25.1037_312; *)
uadd vect__261038315_0 vect_x5_201033308_0 vect_x13_251037312_0;
uadd vect__261038315_1 vect_x5_201033308_1 vect_x13_251037312_1;
(* MEM[(uint64_t * )&tmp0l] = vect__26.1038_314; *)
mov tmp0l_0 vect__261038314_0;
mov tmp0l_8 vect__261038314_1;
(* MEM[(uint64_t * )&tmp0l + 16B] = vect__26.1038_315; *)
mov tmp0l_16 vect__261038315_0;
mov tmp0l_24 vect__261038315_1;
(* _30 = x10_16 + x18_21; *)
uadd v30 x1016 x1821;
(* MEM[(uint64_t * )&tmp0l + 32B] = _30; *)
mov tmp0l_32 v30;
(* fe_mul_impl (&z3.v, &x1.v, &z2.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul_impl(x1_0, x1_8, x1_16 ,x1_24, x1_32, z2_0, z2_8, z2_16, z2_24, z2_32, z3_0, z3_8, z3_16, z3_24, z3_32);
(* fe_mul_impl (&z2.v, &tmp1l.v, &tmp0l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul_impl(tmp1l_0, tmp1l_8, tmp1l_16, tmp1l_24, tmp1l_32, tmp0l_0, tmp0l_8, tmp0l_16, tmp0l_24, tmp0l_32, z2_0, z2_8, z2_16, z2_24, z2_32);
(* fe_tobytes (out_2(D), &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x2l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ tmp0l_0@uint64;
mov _ tmp0l_8@uint64;
mov _ tmp0l_16@uint64;
mov _ tmp0l_24@uint64;
mov _ tmp0l_32@uint64;
mov X2Final_0 x2_0@uint64;
mov X2Final_1 x2_8@uint64;
mov X2Final_2 x2_16@uint64;
mov X2Final_3 x2_24@uint64;
mov X2Final_4 x2_32@uint64;
mov X3Final_0 x3_0@uint64;
mov X3Final_1 x3_8@uint64;
mov X3Final_2 x3_16@uint64;
mov X3Final_3 x3_24@uint64;
mov X3Final_4 x3_32@uint64;
mov Z2Final_0 z2_0@uint64;
mov Z2Final_1 z2_8@uint64;
mov Z2Final_2 z2_16@uint64;
mov Z2Final_3 z2_24@uint64;
mov Z2Final_4 z2_32@uint64;
(* End with unsed lhs *)

mov Z3Final_0 z3_0@uint64;
mov Z3Final_1 z3_8@uint64;
mov Z3Final_2 z3_16@uint64;
mov Z3Final_3 z3_24@uint64;
mov Z3Final_4 z3_32@uint64;

{
  and 
  [
     (* condition 1 *)
      eqmod
      (limbs 51 [X2Final_0, X2Final_1, X2Final_2, X2Final_3, X2Final_4])
      (sq (sub
                (sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]))
                (sq (limbs 51 [Z2_0, Z2_1,Z2_2, Z2_3, Z2_4]))))
      (2**255 - 19) ,

    (* condition 2 *)
    eqmod
    (limbs 51 [Z2Final_0, Z2Final_1, Z2Final_2, Z2Final_3, Z2Final_4])
    (mul
    [
        4,
        limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4],
        limbs 51 [Z2_0, Z2_1, Z2_2 ,Z2_3, Z2_4],
        add [
            sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]),
            mul 
                [
                    486662,
                    limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4],
                    limbs 51 [Z2_0, Z2_1, Z2_2 ,Z2_3, Z2_4]
                ],
                sq (limbs 51 [Z2_0, Z2_1, Z2_2 ,Z2_3, Z2_4])
            ]
    ])
    (2**255 - 19),

    (* condition 3-1 *)

     eqmod
     (limbs 51 [X3Final_0, X3Final_1, X3Final_2, X3Final_3, X3Final_4])
     (mul (4)
             (sq (sub (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]) (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                            (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]) (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
     (2**255 - 19),

    (* condition 3-2 *)

     eqmod
     (limbs 51 [Z3Final_0, Z3Final_1, Z3Final_2, Z3Final_3, Z3Final_4])
     (mul (4)
             (mul (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4])
                     (sq (sub (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]) (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
                                    (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]) (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))))
     (2**255 - 19),
    (* condition 3 *)
    eqmod
    (mul (limbs 51 [X3Final_0, X3Final_1, X3Final_2, X3Final_3, X3Final_4])
            (mul (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4])
                    (sq (sub (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4])
                                            (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
                                    (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                                            (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))))
    (mul (limbs 51 [Z3Final_0, Z3Final_1, Z3Final_2, Z3Final_3, Z3Final_4])
            (sq (sub (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                                    (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                            (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4])
                                    (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
    (2**255 - 19)
  ]
  &&
  true
}


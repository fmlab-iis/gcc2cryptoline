(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_mul_impl_tuned.cl
Verification result:                    [OK]            5.045416 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_mul_impl_tuned.cl"
        User time (seconds): 22.81
        System time (seconds): 5.27
        Percent of CPU this job got: 548%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:05.11
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 473996
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 2578542
        Voluntary context switches: 2516
        Involuntary context switches: 2668
        Swaps: 0
        File system inputs: 0
        File system outputs: 1808
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fe_mul_impl_tuned.cl
Verification result:			[OK]		21.620382 seconds
       21.73 real        53.32 user         8.44 sys
 448417792  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   2521507  page reclaims
         4  page faults
         0  swaps
         0  block input operations
        40  block output operations
         0  messages sent
         0  messages received
       697  signals received
      1249  voluntary context switches
     61302  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
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
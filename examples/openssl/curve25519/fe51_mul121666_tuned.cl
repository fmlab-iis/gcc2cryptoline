(*
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing ./fe51_mul121666_tuned.cl
Verification result:                    [OK]            0.548463 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing ./fe51_mul121666_tuned.cl"
        User time (seconds): 0.82
        System time (seconds): 0.41
        Percent of CPU this job got: 197%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.62
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 20272
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 108477
        Voluntary context switches: 1353
        Involuntary context switches: 145
        Swaps: 0
        File system inputs: 0
        File system outputs: 672
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./fe51_mul121666_tuned.cl
Verification result:			[OK]		1.724505 seconds
        1.83 real         0.98 user         1.17 sys
  17620992  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    274724  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       362  signals received
       622  voluntary context switches
      5916  involuntary context switches
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) =
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64
  ]
}


(* Start with undefined rhs *)
mov f27_0@uint64 a0;
mov f27_8@uint64 a1;
mov f27_16@uint64 a2;
mov f27_24@uint64 a3;
mov f27_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *f_27(D); *)
mov v1 f27_0;
(* h0_28 = _1 w* 121666; *)
umulj h028 v1 0x1db42@uint64;
(* _3 = MEM[(uint64_t * )f_27(D) + 8B]; *)
mov v3 f27_8;
(* h1_29 = _3 w* 121666; *)
umulj h129 v3 0x1db42@uint64;
(* _5 = MEM[(uint64_t * )f_27(D) + 16B]; *)
mov v5 f27_16;
(* h2_30 = _5 w* 121666; *)
umulj h230 v5 0x1db42@uint64;
(* _7 = MEM[(uint64_t * )f_27(D) + 24B]; *)
mov v7 f27_24;
(* h3_31 = _7 w* 121666; *)
umulj h331 v7 0x1db42@uint64;
(* _9 = MEM[(uint64_t * )f_27(D) + 32B]; *)
mov v9 f27_32;
(* h4_32 = _9 w* 121666; *)
umulj h432 v9 0x1db42@uint64;
(* _11 = h2_30 >> 51; *)
usplit v11 tmp_to_use h230 51;
(* h3_33 = _11 + h3_31; *)
uadd h333 v11 h331;
(* _12 = (long unsigned int) h2_30; *)
cast v12@uint64 h230@uint128;
(* g2_34 = _12 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g234 v12 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g234 = tmp_to_use2;
assume g234 = tmp_to_use && true;

(* _13 = h0_28 >> 51; *)
usplit v13 tmp_to_use h028 51;
(* h1_35 = _13 + h1_29; *)
uadd h135 v13 h129;
(* _14 = (long unsigned int) h0_28; *)
cast v14@uint64 h028@uint128;
(* g0_36 = _14 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g036 v14 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g036 = tmp_to_use2;
assume g036 = tmp_to_use && true;

(* _15 = h3_33 >> 51; *)
usplit v15 tmp_to_use h333 51;
(* h4_37 = _15 + h4_32; *)
uadd h437 v15 h432;
(* _16 = (long unsigned int) h3_33; *)
cast v16@uint64 h333@uint128;
(* g3_38 = _16 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g338 v16 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g338 = tmp_to_use2;
assume g338 = tmp_to_use && true;

(* _17 = h1_35 >> 51; *)
usplit v17 tmp_to_use h135 51;
(* _18 = (long unsigned int) _17; *)
vpc v18@uint64 v17@uint128;
(* g2_39 = _18 + g2_34; *)
uadd g239 v18 g234;
(* _19 = (long unsigned int) h1_35; *)
cast v19@uint64 h135@uint128;
(* g1_40 = _19 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g140 v19 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g140 = tmp_to_use2;
assume g140 = tmp_to_use && true;

(* _20 = h4_37 >> 51; *)
usplit v20 tmp_to_use h437 51;
(* _21 = (long unsigned int) _20; *)
vpc v21@uint64 v20@uint128;
(* _22 = _21 * 19; *)
umul v22 v21 0x13@uint64;
(* g0_41 = _22 + g0_36; *)
uadd g041 v22 g036;
(* _23 = (long unsigned int) h4_37; *)
cast v23@uint64 h437@uint128;
(* g4_42 = _23 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g442 v23 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g442 = tmp_to_use2;
assume g442 = tmp_to_use && true;

(* _24 = g2_39 >> 51; *)
usplit v24 tmp_to_use g239 51;
(* g3_43 = _24 + g3_38; *)
uadd g343 v24 g338;
(* g2_44 = g2_39 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g244 g239 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g244 = tmp_to_use2;
assume g244 = tmp_to_use && true;

(* _25 = g0_41 >> 51; *)
usplit v25 tmp_to_use g041 51;
(* g1_45 = _25 + g1_40; *)
uadd g145 v25 g140;
(* g0_46 = g0_41 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g046 g041 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g046 = tmp_to_use2;
assume g046 = tmp_to_use && true;

(* *h_47(D) = g0_46; *)
mov h47_0 g046;
(* MEM[(uint64_t * )h_47(D) + 8B] = g1_45; *)
mov h47_8 g145;
(* MEM[(uint64_t * )h_47(D) + 16B] = g2_44; *)
mov h47_16 g244;
(* MEM[(uint64_t * )h_47(D) + 24B] = g3_43; *)
mov h47_24 g343;
(* MEM[(uint64_t * )h_47(D) + 32B] = g4_42; *)
mov h47_32 g442;
(* return; *)


(* Start with unused lhs *)
mov c0 h47_0@uint64;
mov c1 h47_8@uint64;
mov c2 h47_16@uint64;
mov c3 h47_24@uint64;
mov c4 h47_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      *
      (121666)
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
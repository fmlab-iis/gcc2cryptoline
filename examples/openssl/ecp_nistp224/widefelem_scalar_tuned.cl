(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing widefelem_scalar_tuned.cl
Verification result:                    [OK]            0.667271 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing widefelem_scalar_tuned.cl"
        User time (seconds): 2.46
        System time (seconds): 0.78
        Percent of CPU this job got: 436%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.74
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 88396
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 369897
        Voluntary context switches: 740
        Involuntary context switches: 291
        Swaps: 0
        File system inputs: 0
        File system outputs: 336
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing widefelem_scalar_tuned.cl
Verification result:			[OK]		2.801903 seconds
        2.90 real         7.32 user         1.34 sys
  86376448  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    404058  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       185  signals received
       355  voluntary context switches
      8239  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6, uint128 scalar) = 
{
  true
  &&
  and [
    a0 <u (2**116)@128,
    a1 <u (2**116)@128,
    a2 <u (2**116)@128,
    a3 <u (2**116)@128,
    a4 <u (2**116)@128,
    a5 <u (2**116)@128,
    a6 <u (2**116)@128,
    scalar <u (8)@128
  ]
}

(* Start with undefined rhs *)
mov out16_0@uint128 a0;
mov out16_16@uint128 a1;
mov out16_32@uint128 a2;
mov out16_48@uint128 a3;
mov out16_64@uint128 a4;
mov out16_80@uint128 a5;
mov out16_96@uint128 a6;
mov scalar17@uint128 scalar;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_16(D); *)
mov v1 out16_0;
(* _2 = _1 * scalar_17(D); *)
umul v2 v1 scalar17;
(* *out_16(D) = _2; *)
mov out16_0 v2;
(* _3 = MEM[(widelimb * )out_16(D) + 16B]; *)
mov v3 out16_16;
(* _4 = _3 * scalar_17(D); *)
umul v4 v3 scalar17;
(* MEM[(widelimb * )out_16(D) + 16B] = _4; *)
mov out16_16 v4;
(* _5 = MEM[(widelimb * )out_16(D) + 32B]; *)
mov v5 out16_32;
(* _6 = _5 * scalar_17(D); *)
umul v6 v5 scalar17;
(* MEM[(widelimb * )out_16(D) + 32B] = _6; *)
mov out16_32 v6;
(* _7 = MEM[(widelimb * )out_16(D) + 48B]; *)
mov v7 out16_48;
(* _8 = _7 * scalar_17(D); *)
umul v8 v7 scalar17;
(* MEM[(widelimb * )out_16(D) + 48B] = _8; *)
mov out16_48 v8;
(* _9 = MEM[(widelimb * )out_16(D) + 64B]; *)
mov v9 out16_64;
(* _10 = _9 * scalar_17(D); *)
umul v10 v9 scalar17;
(* MEM[(widelimb * )out_16(D) + 64B] = _10; *)
mov out16_64 v10;
(* _11 = MEM[(widelimb * )out_16(D) + 80B]; *)
mov v11 out16_80;
(* _12 = _11 * scalar_17(D); *)
umul v12 v11 scalar17;
(* MEM[(widelimb * )out_16(D) + 80B] = _12; *)
mov out16_80 v12;
(* _13 = MEM[(widelimb * )out_16(D) + 96B]; *)
mov v13 out16_96;
(* _14 = _13 * scalar_17(D); *)
umul v14 v13 scalar17;
(* MEM[(widelimb * )out_16(D) + 96B] = _14; *)
mov out16_96 v14;
(* return; *)


(* Start with unused lhs *)
mov c0 out16_0@uint128;
mov c1 out16_16@uint128;
mov c2 out16_32@uint128;
mov c3 out16_48@uint128;
mov c4 out16_64@uint128;
mov c5 out16_80@uint128;
mov c6 out16_96@uint128;
(* End with unsed lhs *)


{
  (
      limbs 56 [c0, c1, c2, c3, c4, c5, c6]
  )
  =
  (
      (limbs 56 [a0, a1, a2, a3, a4, a5, a6])
      *
      scalar
  )
  (mod (2**224 - 2**96 + 1))
  &&
  and 
  [
      c0 <u (2**119)@128,
      c1 <u (2**119)@128,
      c2 <u (2**119)@128,
      c3 <u (2**119)@128,
      c4 <u (2**119)@128,
      c5 <u (2**119)@128,
      c6 <u (2**119)@128
  ]
}

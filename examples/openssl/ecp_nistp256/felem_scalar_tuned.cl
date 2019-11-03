(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl
Verification result:                    [OK]            0.249750 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl"
        User time (seconds): 0.57
        System time (seconds): 0.18
        Percent of CPU this job got: 230%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.32
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 48884
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 82554
        Voluntary context switches: 362
        Involuntary context switches: 65
        Swaps: 0
        File system inputs: 0
        File system outputs: 168
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl
Verification result:			[OK]		0.720617 seconds
        0.84 real         1.58 user         0.40 sys
  47722496  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    108697  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         7  block output operations
         0  messages sent
         0  messages received
        83  signals received
       172  voluntary context switches
      2941  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint64 scalar) = 
{
  true
  &&
  and [
    a0 <u (2**108)@128,
    a1 <u (2**108)@128,
    a2 <u (2**108)@128,
    a3 <u (2**108)@128,
    scalar <u (8)@64
  ]
}


(* Start with undefined rhs *)
mov out11_0@uint128 a0;
mov out11_16@uint128 a1;
mov out11_32@uint128 a2;
mov out11_48@uint128 a3;
mov scalar12@uint64 scalar;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_11(D); *)
mov v1 out11_0;
(* _2 = (__int128 unsigned) scalar_12(D); *)
vpc v2@uint128 scalar12@uint64;
(* _3 = _1 * _2; *)
umul v3 v1 v2;
(* *out_11(D) = _3; *)
mov out11_0 v3;
(* _4 = MEM[(limb * )out_11(D) + 16B]; *)
mov v4 out11_16;
(* _5 = _2 * _4; *)
umul v5 v2 v4;
(* MEM[(limb * )out_11(D) + 16B] = _5; *)
mov out11_16 v5;
(* _6 = MEM[(limb * )out_11(D) + 32B]; *)
mov v6 out11_32;
(* _7 = _2 * _6; *)
umul v7 v2 v6;
(* MEM[(limb * )out_11(D) + 32B] = _7; *)
mov out11_32 v7;
(* _8 = MEM[(limb * )out_11(D) + 48B]; *)
mov v8 out11_48;
(* _9 = _2 * _8; *)
umul v9 v2 v8;
(* MEM[(limb * )out_11(D) + 48B] = _9; *)
mov out11_48 v9;
(* return; *)


(* Start with unused lhs *)
mov c0 out11_0@uint128;
mov c1 out11_16@uint128;
mov c2 out11_32@uint128;
mov c3 out11_48@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3])
  =
  (
      (limbs 64 [a0, a1, a2, a3])
      *
      scalar
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  true
}

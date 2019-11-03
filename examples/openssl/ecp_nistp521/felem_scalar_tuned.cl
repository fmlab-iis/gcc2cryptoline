(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl
Verification result:                    [OK]            0.290534 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl"
        User time (seconds): 0.70
        System time (seconds): 0.31
        Percent of CPU this job got: 278%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.36
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 29000
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 108848
        Voluntary context switches: 568
        Involuntary context switches: 104
        Swaps: 0
        File system inputs: 0
        File system outputs: 264
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl
Verification result:			[OK]		0.856706 seconds
        0.95 real         1.74 user         0.59 sys
  28237824  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    161977  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       141  signals received
       273  voluntary context switches
      3503  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 scalar) = 
{
  true
  &&
  and [
      a0 < (2**62)@64,
      a1 < (2**62)@64,
      a2 < (2**62)@64,
      a3 < (2**62)@64,
      a4 < (2**62)@64,
      a5 < (2**62)@64,
      a6 < (2**62)@64,
      a7 < (2**62)@64,
      a8 < (2**62)@64,
      scalar <= (4)@64
  ]
}


(* Start with undefined rhs *)
mov in20_0@uint64 a0;
mov in20_8@uint64 a1;
mov in20_16@uint64 a2;
mov in20_24@uint64 a3;
mov in20_32@uint64 a4;
mov in20_40@uint64 a5;
mov in20_48@uint64 a6;
mov in20_56@uint64 a7;
mov in20_64@uint64 a8;
mov scalar21@uint64 scalar;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_20(D); *)
mov v1 in20_0;
(* _2 = _1 * scalar_21(D); *)
umul v2 v1 scalar21;
(* *out_22(D) = _2; *)
mov out22_0 v2;
(* _3 = MEM[(const limb * )in_20(D) + 8B]; *)
mov v3 in20_8;
(* _4 = _3 * scalar_21(D); *)
umul v4 v3 scalar21;
(* MEM[(limb * )out_22(D) + 8B] = _4; *)
mov out22_8 v4;
(* _5 = MEM[(const limb * )in_20(D) + 16B]; *)
mov v5 in20_16;
(* _6 = _5 * scalar_21(D); *)
umul v6 v5 scalar21;
(* MEM[(limb * )out_22(D) + 16B] = _6; *)
mov out22_16 v6;
(* _7 = MEM[(const limb * )in_20(D) + 24B]; *)
mov v7 in20_24;
(* _8 = _7 * scalar_21(D); *)
umul v8 v7 scalar21;
(* MEM[(limb * )out_22(D) + 24B] = _8; *)
mov out22_24 v8;
(* _9 = MEM[(const limb * )in_20(D) + 32B]; *)
mov v9 in20_32;
(* _10 = _9 * scalar_21(D); *)
umul v10 v9 scalar21;
(* MEM[(limb * )out_22(D) + 32B] = _10; *)
mov out22_32 v10;
(* _11 = MEM[(const limb * )in_20(D) + 40B]; *)
mov v11 in20_40;
(* _12 = _11 * scalar_21(D); *)
umul v12 v11 scalar21;
(* MEM[(limb * )out_22(D) + 40B] = _12; *)
mov out22_40 v12;
(* _13 = MEM[(const limb * )in_20(D) + 48B]; *)
mov v13 in20_48;
(* _14 = _13 * scalar_21(D); *)
umul v14 v13 scalar21;
(* MEM[(limb * )out_22(D) + 48B] = _14; *)
mov out22_48 v14;
(* _15 = MEM[(const limb * )in_20(D) + 56B]; *)
mov v15 in20_56;
(* _16 = _15 * scalar_21(D); *)
umul v16 v15 scalar21;
(* MEM[(limb * )out_22(D) + 56B] = _16; *)
mov out22_56 v16;
(* _17 = MEM[(const limb * )in_20(D) + 64B]; *)
mov v17 in20_64;
(* _18 = _17 * scalar_21(D); *)
umul v18 v17 scalar21;
(* MEM[(limb * )out_22(D) + 64B] = _18; *)
mov out22_64 v18;
(* return; *)


(* Start with unused lhs *)
mov c0 out22_0@uint64;
mov c1 out22_8@uint64;
mov c2 out22_16@uint64;
mov c3 out22_24@uint64;
mov c4 out22_32@uint64;
mov c5 out22_40@uint64;
mov c6 out22_48@uint64;
mov c7 out22_56@uint64;
mov c8 out22_64@uint64;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
     *
      scalar
  )
  (mod (2**521 -1))
  &&
  true
}

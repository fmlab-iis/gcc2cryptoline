(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_neg_tuned.cl
Verification result:                    [OK]            0.372308 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_neg_tuned.cl"
        User time (seconds): 0.51
        System time (seconds): 0.23
        Percent of CPU this job got: 166%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.45
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10012
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 64810
        Voluntary context switches: 940
        Involuntary context switches: 99
        Swaps: 0
        File system inputs: 0
        File system outputs: 432
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_neg_tuned.cl
Verification result:			[OK]		1.002531 seconds
        1.10 real         0.49 user         0.71 sys
   6520832  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    178674  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       240  signals received
       445  voluntary context switches
      3386  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8) = 
{
  true
  &&
  and [
      a0 < (2**59 + 2**15)@64,
      a1 < (2**59 + 2**15)@64,
      a2 < (2**59 + 2**15)@64,
      a3 < (2**59 + 2**15)@64,
      a4 < (2**59 + 2**15)@64,
      a5 < (2**59 + 2**15)@64,
      a6 < (2**59 + 2**15)@64,
      a7 < (2**59 + 2**15)@64,
      a8 < (2**59 + 2**15)@64
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
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_20(D); *)
mov v1 in20_0;
(* _2 = 4611686018427387872 - _1; *)
usub v2 0x3fffffffffffffe0@uint64 v1;
(* *out_21(D) = _2; *)
mov out21_0 v2;
(* _3 = MEM[(const limb * )in_20(D) + 8B]; *)
mov v3 in20_8;
(* _4 = 4611686018427387888 - _3; *)
usub v4 0x3ffffffffffffff0@uint64 v3;
(* MEM[(limb * )out_21(D) + 8B] = _4; *)
mov out21_8 v4;
(* _5 = MEM[(const limb * )in_20(D) + 16B]; *)
mov v5 in20_16;
(* _6 = 4611686018427387888 - _5; *)
usub v6 0x3ffffffffffffff0@uint64 v5;
(* MEM[(limb * )out_21(D) + 16B] = _6; *)
mov out21_16 v6;
(* _7 = MEM[(const limb * )in_20(D) + 24B]; *)
mov v7 in20_24;
(* _8 = 4611686018427387888 - _7; *)
usub v8 0x3ffffffffffffff0@uint64 v7;
(* MEM[(limb * )out_21(D) + 24B] = _8; *)
mov out21_24 v8;
(* _9 = MEM[(const limb * )in_20(D) + 32B]; *)
mov v9 in20_32;
(* _10 = 4611686018427387888 - _9; *)
usub v10 0x3ffffffffffffff0@uint64 v9;
(* MEM[(limb * )out_21(D) + 32B] = _10; *)
mov out21_32 v10;
(* _11 = MEM[(const limb * )in_20(D) + 40B]; *)
mov v11 in20_40;
(* _12 = 4611686018427387888 - _11; *)
usub v12 0x3ffffffffffffff0@uint64 v11;
(* MEM[(limb * )out_21(D) + 40B] = _12; *)
mov out21_40 v12;
(* _13 = MEM[(const limb * )in_20(D) + 48B]; *)
mov v13 in20_48;
(* _14 = 4611686018427387888 - _13; *)
usub v14 0x3ffffffffffffff0@uint64 v13;
(* MEM[(limb * )out_21(D) + 48B] = _14; *)
mov out21_48 v14;
(* _15 = MEM[(const limb * )in_20(D) + 56B]; *)
mov v15 in20_56;
(* _16 = 4611686018427387888 - _15; *)
usub v16 0x3ffffffffffffff0@uint64 v15;
(* MEM[(limb * )out_21(D) + 56B] = _16; *)
mov out21_56 v16;
(* _17 = MEM[(const limb * )in_20(D) + 64B]; *)
mov v17 in20_64;
(* _18 = 4611686018427387888 - _17; *)
usub v18 0x3ffffffffffffff0@uint64 v17;
(* MEM[(limb * )out_21(D) + 64B] = _18; *)
mov out21_64 v18;
(* return; *)


(* Start with unused lhs *)
mov c0 out21_0@uint64;
mov c1 out21_8@uint64;
mov c2 out21_16@uint64;
mov c3 out21_24@uint64;
mov c4 out21_32@uint64;
mov c5 out21_40@uint64;
mov c6 out21_48@uint64;
mov c7 out21_56@uint64;
mov c8 out21_64@uint64;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      0
      -
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
  )
  (mod (2**521 -1))
  &&
  and [
      c0 < (2**62)@64,
      c1 < (2**62)@64,
      c2 < (2**62)@64,
      c3 < (2**62)@64,
      c4 < (2**62)@64,
      c5 < (2**62)@64,
      c6 < (2**62)@64,
      c7 < (2**62)@64,
      c8 < (2**62)@64
  ]
}


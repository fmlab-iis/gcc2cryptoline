(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_sum_tuned.cl
Verification result:                    [OK]            0.164384 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_sum_tuned.cl"
        User time (seconds): 0.23
        System time (seconds): 0.11
        Percent of CPU this job got: 147%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.24
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10032
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 31879
        Voluntary context switches: 478
        Involuntary context switches: 35
        Swaps: 0
        File system inputs: 0
        File system outputs: 224
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_sum_tuned.cl
Verification result:			[OK]		0.404374 seconds
        0.52 real         0.23 user         0.33 sys
   5496832  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     85802  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       114  signals received
       222  voluntary context switches
      2073  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) = 
{
  true
  &&
  and [
    a0 <u (2**57)@64,
    a1 <u (2**57)@64,
    a2 <u (2**57)@64,
    a3 <u (2**57)@64,
    b0 <u (2**57)@64,
    b1 <u (2**57)@64,
    b2 <u (2**57)@64,
    b3 <u (2**57)@64
  ]
}


(* Start with undefined rhs *)
mov in15_0@uint64 a0;
mov in15_8@uint64 a1;
mov in15_16@uint64 a2;
mov in15_24@uint64 a3;
mov out14_0@uint64 b0;
mov out14_8@uint64 b1;
mov out14_16@uint64 b2;
mov out14_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_14(D); *)
mov v1 out14_0;
(* _2 = *in_15(D); *)
mov v2 in15_0;
(* _3 = _1 + _2; *)
uadd v3 v1 v2;
(* *out_14(D) = _3; *)
mov out14_0 v3;
(* _4 = MEM[(limb * )out_14(D) + 8B]; *)
mov v4 out14_8;
(* _5 = MEM[(const limb * )in_15(D) + 8B]; *)
mov v5 in15_8;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(limb * )out_14(D) + 8B] = _6; *)
mov out14_8 v6;
(* _7 = MEM[(limb * )out_14(D) + 16B]; *)
mov v7 out14_16;
(* _8 = MEM[(const limb * )in_15(D) + 16B]; *)
mov v8 in15_16;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(limb * )out_14(D) + 16B] = _9; *)
mov out14_16 v9;
(* _10 = MEM[(limb * )out_14(D) + 24B]; *)
mov v10 out14_24;
(* _11 = MEM[(const limb * )in_15(D) + 24B]; *)
mov v11 in15_24;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(limb * )out_14(D) + 24B] = _12; *)
mov out14_24 v12;
(* return; *)


(* Start with unused lhs *)
mov c0 out14_0@uint64;
mov c1 out14_8@uint64;
mov c2 out14_16@uint64;
mov c3 out14_24@uint64;
(* End with unsed lhs *)

{
  (limbs 56 [c0, c1, c2, c3])
  =
  (
      (limbs 56 [a0, a1, a2, a3])
      +
      (limbs 56 [b0, b1, b2, b3])
  )
  (mod (2**224 - 2**96 + 1))
  &&
 and 
  [
      c0 <u (2**58)@64,
      c1 <u (2**58)@64,
      c2 <u (2**58)@64,
      c3 <u (2**58)@64
  ]
}
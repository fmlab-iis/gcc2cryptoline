(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl
Verification result:                    [OK]            0.192679 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar_tuned.cl"
        User time (seconds): 0.34
        System time (seconds): 0.14
        Percent of CPU this job got: 182%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.27
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 28984
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 52754
        Voluntary context switches: 355
        Involuntary context switches: 39
        Swaps: 0
        File system inputs: 0
        File system outputs: 176
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_scalar_tuned.cl
Verification result:			[OK]		0.490511 seconds
        0.60 real         0.82 user         0.31 sys
  26726400  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     85227  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
        83  signals received
       169  voluntary context switches
      2717  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 scalar) = 
{
  true
  &&
  and [
    a0 <u (2**58)@64,
    a1 <u (2**58)@64,
    a2 <u (2**58)@64,
    a3 <u (2**58)@64,
    scalar <u (8)@64
  ]
}


(* Start with undefined rhs *)
mov out10_0@uint64 a0;
mov out10_8@uint64 a1;
mov out10_16@uint64 a2;
mov out10_24@uint64 a3;
mov scalar11@uint64 scalar;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_10(D); *)
mov v1 out10_0;
(* _2 = _1 * scalar_11(D); *)
umul v2 v1 scalar11;
(* *out_10(D) = _2; *)
mov out10_0 v2;
(* _3 = MEM[(limb * )out_10(D) + 8B]; *)
mov v3 out10_8;
(* _4 = _3 * scalar_11(D); *)
umul v4 v3 scalar11;
(* MEM[(limb * )out_10(D) + 8B] = _4; *)
mov out10_8 v4;
(* _5 = MEM[(limb * )out_10(D) + 16B]; *)
mov v5 out10_16;
(* _6 = _5 * scalar_11(D); *)
umul v6 v5 scalar11;
(* MEM[(limb * )out_10(D) + 16B] = _6; *)
mov out10_16 v6;
(* _7 = MEM[(limb * )out_10(D) + 24B]; *)
mov v7 out10_24;
(* _8 = _7 * scalar_11(D); *)
umul v8 v7 scalar11;
(* MEM[(limb * )out_10(D) + 24B] = _8; *)
mov out10_24 v8;
(* return; *)


(* Start with unused lhs *)
mov c0 out10_0@uint64;
mov c1 out10_8@uint64;
mov c2 out10_16@uint64;
mov c3 out10_24@uint64;
(* End with unsed lhs *)


{
  (limbs 56 [c0, c1, c2, c3])
  =
  (
      (limbs 56 [a0, a1, a2, a3])
      *
      scalar
  )
  (mod (2**224 - 2**96 + 1))
  &&
 true
}
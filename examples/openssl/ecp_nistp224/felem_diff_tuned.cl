(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff_tuned.cl
Verification result:                    [OK]            0.274628 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff_tuned.cl"
        User time (seconds): 0.35
        System time (seconds): 0.19
        Percent of CPU this job got: 156%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.35
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10392
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 47061
        Voluntary context switches: 691
        Involuntary context switches: 70
        Swaps: 0
        File system inputs: 0
        File system outputs: 312
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_diff_tuned.cl
Verification result:			[OK]		0.609575 seconds
        0.71 real         0.35 user         0.47 sys
   6176768  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    128252  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       172  signals received
       329  voluntary context switches
      2433  involuntary context switches
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
mov in23_0@uint64 b0;
mov in23_8@uint64 b1;
mov in23_16@uint64 b2;
mov in23_24@uint64 b3;
mov out18_0@uint64 a0;
mov out18_8@uint64 a1;
mov out18_16@uint64 a2;
mov out18_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_18(D); *)
mov v1 out18_0;
(* _2 = _1 + 288230376151711748; *)
uadd v2 v1 0x400000000000004@uint64;
(* *out_18(D) = _2; *)
mov out18_0 v2;
(* _3 = MEM[(limb * )out_18(D) + 8B]; *)
mov v3 out18_8;
(* _4 = _3 + 288225978105200636; *)
uadd v4 v3 0x3fffbfffffffffc@uint64;
(* MEM[(limb * )out_18(D) + 8B] = _4; *)
mov out18_8 v4;
(* _5 = MEM[(limb * )out_18(D) + 16B]; *)
mov v5 out18_16;
(* _6 = _5 + 288230376151711740; *)
uadd v6 v5 0x3fffffffffffffc@uint64;
(* MEM[(limb * )out_18(D) + 16B] = _6; *)
mov out18_16 v6;
(* _7 = MEM[(limb * )out_18(D) + 24B]; *)
mov v7 out18_24;
(* _8 = _7 + 288230376151711740; *)
uadd v8 v7 0x3fffffffffffffc@uint64;
(* MEM[(limb * )out_18(D) + 24B] = _8; *)
mov out18_24 v8;
(* _9 = *in_23(D); *)
mov v9 in23_0;
(* _10 = _2 - _9; *)
usub v10 v2 v9;
(* *out_18(D) = _10; *)
mov out18_0 v10;
(* _11 = MEM[(const limb * )in_23(D) + 8B]; *)
mov v11 in23_8;
(* _12 = _4 - _11; *)
usub v12 v4 v11;
(* MEM[(limb * )out_18(D) + 8B] = _12; *)
mov out18_8 v12;
(* _13 = MEM[(const limb * )in_23(D) + 16B]; *)
mov v13 in23_16;
(* _14 = _6 - _13; *)
usub v14 v6 v13;
(* MEM[(limb * )out_18(D) + 16B] = _14; *)
mov out18_16 v14;
(* _15 = MEM[(const limb * )in_23(D) + 24B]; *)
mov v15 in23_24;
(* _16 = _8 - _15; *)
usub v16 v8 v15;
(* MEM[(limb * )out_18(D) + 24B] = _16; *)
mov out18_24 v16;
(* return; *)


(* Start with unused lhs *)
mov c0 out18_0@uint64;
mov c1 out18_8@uint64;
mov c2 out18_16@uint64;
mov c3 out18_24@uint64;
(* End with unsed lhs *)


{
  (limbs 56 [c0, c1, c2, c3])
  =
  (
      (limbs 56 [a0, a1, a2, a3])
      -
      (limbs 56 [b0, b1, b2, b3])
  )
  (mod (2**224 - 2**96 + 1))
  &&
 and 
  [
      c0 <u (2**59)@64,
      c1 <u (2**59)@64,
      c2 <u (2**59)@64,
      c3 <u (2**59)@64
  ]
}

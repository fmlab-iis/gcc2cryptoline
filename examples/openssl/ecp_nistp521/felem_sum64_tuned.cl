(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_sum64_tuned.cl
Verification result:                    [OK]            0.220904 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_sum64_tuned.cl"
        User time (seconds): 0.30
        System time (seconds): 0.13
        Percent of CPU this job got: 152%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.29
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10028
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 38561
        Voluntary context switches: 569
        Involuntary context switches: 56
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_sum64_tuned.cl
Verification result:			[OK]		0.494122 seconds
        0.61 real         0.28 user         0.41 sys
   6451200  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    105102  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       142  signals received
       270  voluntary context switches
      2497  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 b6, uint64 b7, uint64 b8) = 
{
  true
  &&
  and [
      (* NOTE: precondition is obtained by guessing *)
      a0 < (2**63)@64,
      a1 < (2**63)@64,
      a2 < (2**63)@64,
      a3 < (2**63)@64,
      a4 < (2**63)@64,
      a5 < (2**63)@64,
      a6 < (2**63)@64,
      a7 < (2**63)@64,
      a8 < (2**63)@64,
      b0 < (2**63)@64,
      b1 < (2**63)@64,
      b2 < (2**63)@64,
      b3 < (2**63)@64,
      b4 < (2**63)@64,
      b5 < (2**63)@64,
      b6 < (2**63)@64,
      b7 < (2**63)@64,
      b8 < (2**63)@64
  ]
}


(* Start with undefined rhs *)
mov in30_0@uint64 b0;
mov in30_8@uint64 b1;
mov in30_16@uint64 b2;
mov in30_24@uint64 b3;
mov in30_32@uint64 b4;
mov in30_40@uint64 b5;
mov in30_48@uint64 b6;
mov in30_56@uint64 b7;
mov in30_64@uint64 b8;
mov out29_0@uint64 a0;
mov out29_8@uint64 a1;
mov out29_16@uint64 a2;
mov out29_24@uint64 a3;
mov out29_32@uint64 a4;
mov out29_40@uint64 a5;
mov out29_48@uint64 a6;
mov out29_56@uint64 a7;
mov out29_64@uint64 a8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_29(D); *)
mov v1 out29_0;
(* _2 = *in_30(D); *)
mov v2 in30_0;
(* _3 = _1 + _2; *)
uadd v3 v1 v2;
(* *out_29(D) = _3; *)
mov out29_0 v3;
(* _4 = MEM[(limb * )out_29(D) + 8B]; *)
mov v4 out29_8;
(* _5 = MEM[(const limb * )in_30(D) + 8B]; *)
mov v5 in30_8;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(limb * )out_29(D) + 8B] = _6; *)
mov out29_8 v6;
(* _7 = MEM[(limb * )out_29(D) + 16B]; *)
mov v7 out29_16;
(* _8 = MEM[(const limb * )in_30(D) + 16B]; *)
mov v8 in30_16;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(limb * )out_29(D) + 16B] = _9; *)
mov out29_16 v9;
(* _10 = MEM[(limb * )out_29(D) + 24B]; *)
mov v10 out29_24;
(* _11 = MEM[(const limb * )in_30(D) + 24B]; *)
mov v11 in30_24;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(limb * )out_29(D) + 24B] = _12; *)
mov out29_24 v12;
(* _13 = MEM[(limb * )out_29(D) + 32B]; *)
mov v13 out29_32;
(* _14 = MEM[(const limb * )in_30(D) + 32B]; *)
mov v14 in30_32;
(* _15 = _13 + _14; *)
uadd v15 v13 v14;
(* MEM[(limb * )out_29(D) + 32B] = _15; *)
mov out29_32 v15;
(* _16 = MEM[(limb * )out_29(D) + 40B]; *)
mov v16 out29_40;
(* _17 = MEM[(const limb * )in_30(D) + 40B]; *)
mov v17 in30_40;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* MEM[(limb * )out_29(D) + 40B] = _18; *)
mov out29_40 v18;
(* _19 = MEM[(limb * )out_29(D) + 48B]; *)
mov v19 out29_48;
(* _20 = MEM[(const limb * )in_30(D) + 48B]; *)
mov v20 in30_48;
(* _21 = _19 + _20; *)
uadd v21 v19 v20;
(* MEM[(limb * )out_29(D) + 48B] = _21; *)
mov out29_48 v21;
(* _22 = MEM[(limb * )out_29(D) + 56B]; *)
mov v22 out29_56;
(* _23 = MEM[(const limb * )in_30(D) + 56B]; *)
mov v23 in30_56;
(* _24 = _22 + _23; *)
uadd v24 v22 v23;
(* MEM[(limb * )out_29(D) + 56B] = _24; *)
mov out29_56 v24;
(* _25 = MEM[(limb * )out_29(D) + 64B]; *)
mov v25 out29_64;
(* _26 = MEM[(const limb * )in_30(D) + 64B]; *)
mov v26 in30_64;
(* _27 = _25 + _26; *)
uadd v27 v25 v26;
(* MEM[(limb * )out_29(D) + 64B] = _27; *)
mov out29_64 v27;
(* return; *)


(* Start with unused lhs *)
mov c0 out29_0@uint64;
mov c1 out29_8@uint64;
mov c2 out29_16@uint64;
mov c3 out29_24@uint64;
mov c4 out29_32@uint64;
mov c5 out29_40@uint64;
mov c6 out29_48@uint64;
mov c7 out29_56@uint64;
mov c8 out29_64@uint64;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
      +
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
  )
  (mod (2**521 -1))
  &&
  true
}

(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_square_tuned.cl
Verification result:                    [OK]            0.378548 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_square_tuned.cl"
        User time (seconds): 1.04
        System time (seconds): 0.40
        Percent of CPU this job got: 316%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.45
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 47636
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 161030
        Voluntary context switches: 696
        Involuntary context switches: 119
        Swaps: 0
        File system inputs: 0
        File system outputs: 320
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_square_tuned.cl
Verification result:			[OK]		1.242886 seconds
        1.35 real         2.58 user         0.83 sys
  45162496  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    218828  page reclaims
         4  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       172  signals received
       334  voluntary context switches
      5172  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) = 
{
  true
  &&
  and [
    a0 <u (2**58)@64,
    a1 <u (2**58)@64,
    a2 <u (2**58)@64,
    a3 <u (2**58)@64
  ]
}



(* Start with undefined rhs *)
mov in26_0@uint64 a0;
mov in26_8@uint64 a1;
mov in26_16@uint64 a2;
mov in26_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_26(D); *)
mov v1 in26_0;
(* tmp0_27 = _1 * 2; *)
umul tmp027 v1 0x2@uint64;
(* _2 = MEM[(const limb * )in_26(D) + 8B]; *)
mov v2 in26_8;
(* tmp1_28 = _2 * 2; *)
umul tmp128 v2 0x2@uint64;
(* _3 = MEM[(const limb * )in_26(D) + 16B]; *)
mov v3 in26_16;
(* tmp2_29 = _3 * 2; *)
umul tmp229 v3 0x2@uint64;
(* _5 = _1 w* _1; *)
umulj v5 v1 v1;
(* *out_30(D) = _5; *)
mov out30_0 v5;
(* _7 = _1 w* tmp1_28; *)
umulj v7 v1 tmp128;
(* MEM[(widelimb * )out_30(D) + 16B] = _7; *)
mov out30_16 v7;
(* _9 = _1 w* tmp2_29; *)
umulj v9 v1 tmp229;
(* _11 = _2 w* _2; *)
umulj v11 v2 v2;
(* _12 = _9 + _11; *)
uadd v12 v9 v11;
(* MEM[(widelimb * )out_30(D) + 32B] = _12; *)
mov out30_32 v12;
(* _13 = MEM[(const limb * )in_26(D) + 24B]; *)
mov v13 in26_24;
(* _16 = _13 w* tmp0_27; *)
umulj v16 v13 tmp027;
(* _17 = tmp2_29 w* _2; *)
umulj v17 tmp229 v2;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* MEM[(widelimb * )out_30(D) + 48B] = _18; *)
mov out30_48 v18;
(* _19 = tmp1_28 w* _13; *)
umulj v19 tmp128 v13;
(* _21 = _3 w* _3; *)
umulj v21 v3 v3;
(* _22 = _19 + _21; *)
uadd v22 v19 v21;
(* MEM[(widelimb * )out_30(D) + 64B] = _22; *)
mov out30_64 v22;
(* _23 = tmp2_29 w* _13; *)
umulj v23 tmp229 v13;
(* MEM[(widelimb * )out_30(D) + 80B] = _23; *)
mov out30_80 v23;
(* _24 = _13 w* _13; *)
umulj v24 v13 v13;
(* MEM[(widelimb * )out_30(D) + 96B] = _24; *)
mov out30_96 v24;
(* return; *)


(* Start with unused lhs *)
mov c0 out30_0@uint128;
mov c1 out30_16@uint128;
mov c2 out30_32@uint128;
mov c3 out30_48@uint128;
mov c4 out30_64@uint128;
mov c5 out30_80@uint128;
mov c6 out30_96@uint128;
(* End with unsed lhs *)



{
  (
      limbs 56 [c0, c1, c2, c3, c4, c5, c6]
  )
  =
  (
      sq
      (limbs 56 [a0, a1, a2, a3])
  )
  &&
  and 
  [
      c0 <u (2**118)@128,
      c1 <u (2**118)@128,
      c2 <u (2**118)@128,
      c3 <u (2**118)@128,
      c4 <u (2**118)@128,
      c5 <u (2**118)@128,
      c6 <u (2**118)@128
  ]
}
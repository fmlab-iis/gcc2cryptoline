(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_sum_tuned.cl
Verification result:                    [OK]            0.167653 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_sum_tuned.cl"
        User time (seconds): 0.24
        System time (seconds): 0.10
        Percent of CPU this job got: 146%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.24
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10360
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 32537
        Voluntary context switches: 492
        Involuntary context switches: 42
        Swaps: 0
        File system inputs: 0
        File system outputs: 232
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_sum_tuned.cl
Verification result:			[OK]		0.413201 seconds
        0.51 real         0.24 user         0.33 sys
   5689344  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     86483  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       115  signals received
       222  voluntary context switches
      1719  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3,
           uint128 b0, uint128 b1, uint128 b2, uint128 b3) = 
{
  true
  &&
  and [
    a0 <u (2**108)@128,
    a1 <u (2**108)@128,
    a2 <u (2**108)@128,
    a3 <u (2**108)@128,

    b0 <u (2**108)@128,
    b1 <u (2**108)@128,
    b2 <u (2**108)@128,
    b3 <u (2**108)@128
  ]
}

(* Start with undefined rhs *)
mov in15_0@uint128 b0;
mov in15_16@uint128 b1;
mov in15_32@uint128 b2;
mov in15_48@uint128 b3;
mov out14_0@uint128 a0;
mov out14_16@uint128 a1;
mov out14_32@uint128 a2;
mov out14_48@uint128 a3;
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
(* _4 = MEM[(limb * )out_14(D) + 16B]; *)
mov v4 out14_16;
(* _5 = MEM[(const limb * )in_15(D) + 16B]; *)
mov v5 in15_16;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(limb * )out_14(D) + 16B] = _6; *)
mov out14_16 v6;
(* _7 = MEM[(limb * )out_14(D) + 32B]; *)
mov v7 out14_32;
(* _8 = MEM[(const limb * )in_15(D) + 32B]; *)
mov v8 in15_32;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(limb * )out_14(D) + 32B] = _9; *)
mov out14_32 v9;
(* _10 = MEM[(limb * )out_14(D) + 48B]; *)
mov v10 out14_48;
(* _11 = MEM[(const limb * )in_15(D) + 48B]; *)
mov v11 in15_48;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(limb * )out_14(D) + 48B] = _12; *)
mov out14_48 v12;
(* return; *)


(* Start with unused lhs *)
mov c0 out14_0@uint128;
mov c1 out14_16@uint128;
mov c2 out14_32@uint128;
mov c3 out14_48@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3])
  =
  (
      (limbs 64 [a0, a1, a2, a3])
      +
      (limbs 64 [b0, b1, b2, b3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and 
  [
      c0 <u (2**109)@128,
      c1 <u (2**109)@128,
      c2 <u (2**109)@128,
      c3 <u (2**109)@128
  ]
}

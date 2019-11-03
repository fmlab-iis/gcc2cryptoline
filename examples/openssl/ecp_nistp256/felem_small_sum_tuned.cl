(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_small_sum_tuned.cl
Verification result:                    [OK]            0.178487 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_small_sum_tuned.cl"
        User time (seconds): 0.23
        System time (seconds): 0.14
        Percent of CPU this job got: 145%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.25
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10244
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 32318
        Voluntary context switches: 484
        Involuntary context switches: 49
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_small_sum_tuned.cl
Verification result:			[OK]		0.413422 seconds
        0.51 real         0.25 user         0.33 sys
   5955584  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     86781  page reclaims
         1  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       115  signals received
       230  voluntary context switches
      1818  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) = 
{
  true
  &&
  and [
    a0 <u (2**108)@128,
    a1 <u (2**108)@128,
    a2 <u (2**108)@128,
    a3 <u (2**108)@128,
    limbs 64 [b0, b1, b2, b3] <u 
                limbs 64 [  18446744073709551615@64,
                 4294967295@64,
                 0@64,
                 18446744069414584321@64]
  ]
}

(* Start with undefined rhs *)
mov in19_0@uint64 b0;
mov in19_8@uint64 b1;
mov in19_16@uint64 b2;
mov in19_24@uint64 b3;
mov out18_0@uint128 a0;
mov out18_16@uint128 a1;
mov out18_32@uint128 a2;
mov out18_48@uint128 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_18(D); *)
mov v1 out18_0;
(* _2 = *in_19(D); *)
mov v2 in19_0;
(* _3 = (__int128 unsigned) _2; *)
vpc v3@uint128 v2@uint64;
(* _4 = _1 + _3; *)
uadd v4 v1 v3;
(* *out_18(D) = _4; *)
mov out18_0 v4;
(* _5 = MEM[(limb * )out_18(D) + 16B]; *)
mov v5 out18_16;
(* _6 = MEM[(const u64 * )in_19(D) + 8B]; *)
mov v6 in19_8;
(* _7 = (__int128 unsigned) _6; *)
vpc v7@uint128 v6@uint64;
(* _8 = _5 + _7; *)
uadd v8 v5 v7;
(* MEM[(limb * )out_18(D) + 16B] = _8; *)
mov out18_16 v8;
(* _9 = MEM[(limb * )out_18(D) + 32B]; *)
mov v9 out18_32;
(* _10 = MEM[(const u64 * )in_19(D) + 16B]; *)
mov v10 in19_16;
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* _12 = _9 + _11; *)
uadd v12 v9 v11;
(* MEM[(limb * )out_18(D) + 32B] = _12; *)
mov out18_32 v12;
(* _13 = MEM[(limb * )out_18(D) + 48B]; *)
mov v13 out18_48;
(* _14 = MEM[(const u64 * )in_19(D) + 24B]; *)
mov v14 in19_24;
(* _15 = (__int128 unsigned) _14; *)
vpc v15@uint128 v14@uint64;
(* _16 = _13 + _15; *)
uadd v16 v13 v15;
(* MEM[(limb * )out_18(D) + 48B] = _16; *)
mov out18_48 v16;
(* return; *)


(* Start with unused lhs *)
mov c0 out18_0@uint128;
mov c1 out18_16@uint128;
mov c2 out18_32@uint128;
mov c3 out18_48@uint128;
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

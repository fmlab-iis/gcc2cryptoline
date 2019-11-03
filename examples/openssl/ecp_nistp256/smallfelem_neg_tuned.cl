(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing smallfelem_neg_tuned.cl
Verification result:                    [OK]            0.200431 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing smallfelem_neg_tuned.cl"
        User time (seconds): 0.26
        System time (seconds): 0.12
        Percent of CPU this job got: 140%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.27
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 9784
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 33213
        Voluntary context switches: 527
        Involuntary context switches: 46
        Swaps: 0
        File system inputs: 0
        File system outputs: 248
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0 
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing smallfelem_neg_tuned.cl
Verification result:			[OK]		0.470812 seconds
        0.58 real         0.25 user         0.37 sys
   5763072  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     92158  page reclaims
         1  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       122  signals received
       245  voluntary context switches
      1791  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) = 
{
  true
  &&
  true
}



(* Start with undefined rhs *)
mov small14_0@uint64 a0;
mov small14_8@uint64 a1;
mov small14_16@uint64 a2;
mov small14_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *small_14(D); *)
mov v1 small14_0;
(* _2 = (__int128 unsigned) _1; *)
vpc v2@uint128 v1@uint64;
(* _3 = 0x1fffffffffffffffdfffffffe00 - _2; *)
mov value_lo 0xfffffdfffffffe00@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
usub v3 value v2;
(* *out_15(D) = _3; *)
mov out15_0 v3;
(* _4 = MEM[(const u64 * )small_14(D) + 8B]; *)
mov v4 small14_8;
(* _5 = (__int128 unsigned) _4; *)
vpc v5@uint128 v4@uint64;
(* _6 = 0x200000000000000000000000000 - _5; *)
mov value_lo 0x0@uint64;
mov value_hi 0x20000000000@uint64;
join value value_hi value_lo;
usub v6 value v5;
(* MEM[(limb * )out_15(D) + 16B] = _6; *)
mov out15_16 v6;
(* _7 = MEM[(const u64 * )small_14(D) + 16B]; *)
mov v7 small14_16;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _9 = 0x1fffffffffffffffe0000000200 - _8; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
usub v9 value v8;
(* MEM[(limb * )out_15(D) + 32B] = _9; *)
mov out15_32 v9;
(* _10 = MEM[(const u64 * )small_14(D) + 24B]; *)
mov v10 small14_24;
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* _12 = 0x1fffffffffffffffe0000000200 - _11; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
usub v12 value v11;
(* MEM[(limb * )out_15(D) + 48B] = _12; *)
mov out15_48 v12;
(* return; *)


(* Start with unused lhs *)
mov c0 out15_0@uint128;
mov c1 out15_16@uint128;
mov c2 out15_32@uint128;
mov c3 out15_48@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3])
  =
  (
      0
      -
      (limbs 64 [a0, a1, a2, a3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and 
  [
      c0 <u c0 + (2**105)@128,
      c1 <u c1 + (2**105)@128,
      c2 <u c2 + (2**105)@128,
      c3 <u c3 + (2**105)@128
  ]
}

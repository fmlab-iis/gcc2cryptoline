(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar128_tuned.cl
Verification result:                    [OK]            0.331308 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_scalar128_tuned.cl"
        User time (seconds): 1.28
        System time (seconds): 0.33
        Percent of CPU this job got: 394%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.41
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 48848
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 173333
        Voluntary context switches: 571
        Involuntary context switches: 144
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_scalar128_tuned.cl
Verification result:			[OK]		1.447529 seconds
        1.54 real         3.30 user         0.78 sys
  47652864  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    212052  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       141  signals received
       276  voluntary context switches
      6587  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6, uint128 a7, uint128 a8, uint64 scalar) = 
{
  true
  &&
  and [
      a0 < (2**123)@128,
      a1 < (2**123)@128,
      a2 < (2**123)@128,
      a3 < (2**123)@128,
      a4 < (2**123)@128,
      a5 < (2**123)@128,
      a6 < (2**123)@128,
      a7 < (2**123)@128,
      a8 < (2**123)@128,
      scalar < (32)@64
  ]
}

(* Start with undefined rhs *)
mov out21_0@uint128 a0;
mov out21_16@uint128 a1;
mov out21_32@uint128 a2;
mov out21_48@uint128 a3;
mov out21_64@uint128 a4;
mov out21_80@uint128 a5;
mov out21_96@uint128 a6;
mov out21_112@uint128 a7;
mov out21_128@uint128 a8;
mov scalar22@uint64 scalar;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_21(D); *)
mov v1 out21_0;
(* _2 = (__int128 unsigned) scalar_22(D); *)
vpc v2@uint128 scalar22@uint64;
(* _3 = _1 * _2; *)
umul v3 v1 v2;
(* *out_21(D) = _3; *)
mov out21_0 v3;
(* _4 = MEM[(uint128_t * )out_21(D) + 16B]; *)
mov v4 out21_16;
(* _5 = _2 * _4; *)
umul v5 v2 v4;
(* MEM[(uint128_t * )out_21(D) + 16B] = _5; *)
mov out21_16 v5;
(* _6 = MEM[(uint128_t * )out_21(D) + 32B]; *)
mov v6 out21_32;
(* _7 = _2 * _6; *)
umul v7 v2 v6;
(* MEM[(uint128_t * )out_21(D) + 32B] = _7; *)
mov out21_32 v7;
(* _8 = MEM[(uint128_t * )out_21(D) + 48B]; *)
mov v8 out21_48;
(* _9 = _2 * _8; *)
umul v9 v2 v8;
(* MEM[(uint128_t * )out_21(D) + 48B] = _9; *)
mov out21_48 v9;
(* _10 = MEM[(uint128_t * )out_21(D) + 64B]; *)
mov v10 out21_64;
(* _11 = _2 * _10; *)
umul v11 v2 v10;
(* MEM[(uint128_t * )out_21(D) + 64B] = _11; *)
mov out21_64 v11;
(* _12 = MEM[(uint128_t * )out_21(D) + 80B]; *)
mov v12 out21_80;
(* _13 = _2 * _12; *)
umul v13 v2 v12;
(* MEM[(uint128_t * )out_21(D) + 80B] = _13; *)
mov out21_80 v13;
(* _14 = MEM[(uint128_t * )out_21(D) + 96B]; *)
mov v14 out21_96;
(* _15 = _2 * _14; *)
umul v15 v2 v14;
(* MEM[(uint128_t * )out_21(D) + 96B] = _15; *)
mov out21_96 v15;
(* _16 = MEM[(uint128_t * )out_21(D) + 112B]; *)
mov v16 out21_112;
(* _17 = _2 * _16; *)
umul v17 v2 v16;
(* MEM[(uint128_t * )out_21(D) + 112B] = _17; *)
mov out21_112 v17;
(* _18 = MEM[(uint128_t * )out_21(D) + 128B]; *)
mov v18 out21_128;
(* _19 = _2 * _18; *)
umul v19 v2 v18;
(* MEM[(uint128_t * )out_21(D) + 128B] = _19; *)
mov out21_128 v19;
(* return; *)


(* Start with unused lhs *)
mov c0 out21_0@uint128;
mov c1 out21_16@uint128;
mov c2 out21_32@uint128;
mov c3 out21_48@uint128;
mov c4 out21_64@uint128;
mov c5 out21_80@uint128;
mov c6 out21_96@uint128;
mov c7 out21_112@uint128;
mov c8 out21_128@uint128;
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

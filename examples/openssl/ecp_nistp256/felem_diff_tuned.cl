(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff_tuned.cl
Verification result:                    [OK]            0.289722 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff_tuned.cl"
        User time (seconds): 0.52
        System time (seconds): 0.15
        Percent of CPU this job got: 183%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.36
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 11784
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 49701
        Voluntary context switches: 704
        Involuntary context switches: 81
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_diff_tuned.cl
Verification result:			[OK]		0.675513 seconds
        0.77 real         0.53 user         0.49 sys
   7892992  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    130923  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        10  block output operations
         0  messages sent
         0  messages received
       172  signals received
       331  voluntary context switches
      2268  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3,
           uint128 b0, uint128 b1, uint128 b2, uint128 b3) = 
{
  true
  &&
  and [
    (* out[i] < 2^106, deduced from the context *)
    a0 <u (2**106)@128,
    a1 <u (2**106)@128,
    a2 <u (2**106)@128,
    a3 <u (2**106)@128,

    b0 <u (2**104)@128,
    b1 <u (2**104)@128,
    b2 <u (2**104)@128,
    b3 <u (2**104)@128
  ]
}

(* Start with undefined rhs *)
mov in23_0@uint128 b0;
mov in23_16@uint128 b1;
mov in23_32@uint128 b2;
mov in23_48@uint128 b3;

mov out18_0@uint128 a0;
mov out18_16@uint128 a1;
mov out18_32@uint128 a2;
mov out18_48@uint128 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_18(D); *)
mov v1 out18_0;
(* _2 = _1 + 0x1fffffffffffffffdfffffffe00; *)
mov value_lo 0xfffffdfffffffe00@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* *out_18(D) = _2; *)
mov out18_0 v2;
(* _3 = MEM[(limb * )out_18(D) + 16B]; *)
mov v3 out18_16;
(* _4 = _3 + 0x200000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x20000000000@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* MEM[(limb * )out_18(D) + 16B] = _4; *)
mov out18_16 v4;
(* _5 = MEM[(limb * )out_18(D) + 32B]; *)
mov v5 out18_32;
(* _6 = _5 + 0x1fffffffffffffffe0000000200; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* MEM[(limb * )out_18(D) + 32B] = _6; *)
mov out18_32 v6;
(* _7 = MEM[(limb * )out_18(D) + 48B]; *)
mov v7 out18_48;
(* _8 = _7 + 0x1fffffffffffffffe0000000200; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* MEM[(limb * )out_18(D) + 48B] = _8; *)
mov out18_48 v8;
(* _9 = *in_23(D); *)
mov v9 in23_0;
(* _10 = _2 - _9; *)
usub v10 v2 v9;
(* *out_18(D) = _10; *)
mov out18_0 v10;
(* _11 = MEM[(const limb * )in_23(D) + 16B]; *)
mov v11 in23_16;
(* _12 = _4 - _11; *)
usub v12 v4 v11;
(* MEM[(limb * )out_18(D) + 16B] = _12; *)
mov out18_16 v12;
(* _13 = MEM[(const limb * )in_23(D) + 32B]; *)
mov v13 in23_32;
(* _14 = _6 - _13; *)
usub v14 v6 v13;
(* MEM[(limb * )out_18(D) + 32B] = _14; *)
mov out18_32 v14;
(* _15 = MEM[(const limb * )in_23(D) + 48B]; *)
mov v15 in23_48;
(* _16 = _8 - _15; *)
usub v16 v8 v15;
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
      -
      (limbs 64 [b0, b1, b2, b3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and 
  [
      c0 <u a0 + (2**105)@128,
      (* === modified range post-condition === *)
      c1 <=u a1 + (2**105)@128,
      c2 <u a2 + (2**105)@128,
      c3 <u a3 + (2**105)@128
  ]
}

(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff_128_64_tuned.cl
Verification result:                    [OK]            0.262235 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff_128_64_tuned.cl"
        User time (seconds): 0.38
        System time (seconds): 0.15
        Percent of CPU this job got: 158%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.34
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10724
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 48368
        Voluntary context switches: 693
        Involuntary context switches: 66
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_diff_128_64_tuned.cl
Verification result:			[OK]		0.943470 seconds
        1.09 real         0.44 user         0.61 sys
   6467584  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    129349  page reclaims
         4  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       171  signals received
       329  voluntary context switches
      2540  involuntary context switches
*)

proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint64 b0, uint64 b1,uint64 b2, uint64 b3) = 
{
  true
  &&
  and [
    a0 <u (2**116)@128,
    a1 <u (2**116)@128,
    a2 <u (2**116)@128,
    a3 <u (2**116)@128,
    b0 <u (2**63)@64,
    b1 <u (2**63)@64,
    b2 <u (2**63)@64,
    b3 <u (2**63)@64
  ]
}


(* Start with undefined rhs *)
mov in23_0@uint64 b0;
mov in23_8@uint64 b1;
mov in23_16@uint64 b2;
mov in23_24@uint64 b3;
mov out22_0@uint128 a0;
mov out22_16@uint128 a1;
mov out22_32@uint128 a2;
mov out22_48@uint128 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_22(D); *)
mov v1 out22_0;
(* _2 = _1 + 0x10000000000000100; *)
mov value_lo 0x100@uint64;
mov value_hi 0x1@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* _3 = MEM[(widelimb * )out_22(D) + 16B]; *)
mov v3 out22_16;
(* _4 = _3 + 18446462598732840704; *)
mov value_lo 0xfffeffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* _5 = MEM[(widelimb * )out_22(D) + 32B]; *)
mov v5 out22_32;
(* _6 = _5 + 18446744073709551360; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* _7 = MEM[(widelimb * )out_22(D) + 48B]; *)
mov v7 out22_48;
(* _8 = _7 + 18446744073709551360; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* _9 = *in_23(D); *)
mov v9 in23_0;
(* _10 = (__int128 unsigned) _9; *)
vpc v10@uint128 v9@uint64;
(* _11 = _2 - _10; *)
usub v11 v2 v10;
(* *out_22(D) = _11; *)
mov out22_0 v11;
(* _12 = MEM[(const limb * )in_23(D) + 8B]; *)
mov v12 in23_8;
(* _13 = (__int128 unsigned) _12; *)
vpc v13@uint128 v12@uint64;
(* _14 = _4 - _13; *)
usub v14 v4 v13;
(* MEM[(widelimb * )out_22(D) + 16B] = _14; *)
mov out22_16 v14;
(* _15 = MEM[(const limb * )in_23(D) + 16B]; *)
mov v15 in23_16;
(* _16 = (__int128 unsigned) _15; *)
vpc v16@uint128 v15@uint64;
(* _17 = _6 - _16; *)
usub v17 v6 v16;
(* MEM[(widelimb * )out_22(D) + 32B] = _17; *)
mov out22_32 v17;
(* _18 = MEM[(const limb * )in_23(D) + 24B]; *)
mov v18 in23_24;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* _20 = _8 - _19; *)
usub v20 v8 v19;
(* MEM[(widelimb * )out_22(D) + 48B] = _20; *)
mov out22_48 v20;
(* return; *)


(* Start with unused lhs *)
mov c0 out22_0@uint128;
mov c1 out22_16@uint128;
mov c2 out22_32@uint128;
mov c3 out22_48@uint128;
(* End with unsed lhs *)


{
  (
      limbs 56 [c0, c1, c2, c3]
  )
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
      c0 <u (2**117)@128,
      c1 <u (2**117)@128,
      c2 <u (2**117)@128,
      c3 <u (2**117)@128
  ]
}

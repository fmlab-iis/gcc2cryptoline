(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing widefelem_diff_tuned.cl
Verification result:                    [OK]            0.483991 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing widefelem_diff_tuned.cl"
        User time (seconds): 0.66
        System time (seconds): 0.30
        Percent of CPU this job got: 169%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.57
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10684
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 77770
        Voluntary context switches: 1085
        Involuntary context switches: 87
        Swaps: 0
        File system inputs: 0
        File system outputs: 488
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing widefelem_diff_tuned.cl
Verification result:			[OK]		1.153927 seconds
        1.29 real         0.63 user         0.87 sys
   6574080  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    208069  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        22  block output operations
         0  messages sent
         0  messages received
       277  signals received
       510  voluntary context switches
      3442  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6, uint128 b0, uint128 b1, uint128 b2, uint128 b3, uint128 b4, uint128 b5, uint128 b6) = 
{
  true
  &&
  and [
    a0 <u (2**119)@128,
    a1 <u (2**119)@128,
    a2 <u (2**119)@128,
    a3 <u (2**119)@128,
    a4 <u (2**119)@128,
    a5 <u (2**119)@128,
    a6 <u (2**119)@128,
    b0 <u (2**119)@128,
    b1 <u (2**119)@128,
    b2 <u (2**119)@128,
    b3 <u (2**119)@128,
    b4 <u (2**119)@128,
    b5 <u (2**119)@128,
    b6 <u (2**119)@128
  ]
}



(* Start with undefined rhs *)
mov in38_0@uint128 b0;
mov in38_16@uint128 b1;
mov in38_32@uint128 b2;
mov in38_48@uint128 b3;
mov in38_64@uint128 b4;
mov in38_80@uint128 b5;
mov in38_96@uint128 b6;
mov out30_0@uint128 a0;
mov out30_16@uint128 a1;
mov out30_32@uint128 a2;
mov out30_48@uint128 a3;
mov out30_64@uint128 a4;
mov out30_80@uint128 a5;
mov out30_96@uint128 a6;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_30(D); *)
mov v1 out30_0;
(* _2 = _1 + 0x1000000000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x100000000000000@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* *out_30(D) = _2; *)
mov out30_0 v2;
(* _3 = MEM[(widelimb * )out_30(D) + 16B]; *)
mov v3 out30_16;
(* _4 = _3 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* MEM[(widelimb * )out_30(D) + 16B] = _4; *)
mov out30_16 v4;
(* _5 = MEM[(widelimb * )out_30(D) + 32B]; *)
mov v5 out30_32;
(* _6 = _5 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* MEM[(widelimb * )out_30(D) + 32B] = _6; *)
mov out30_32 v6;
(* _7 = MEM[(widelimb * )out_30(D) + 48B]; *)
mov v7 out30_48;
(* _8 = _7 + 0x1000000000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x100000000000000@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* MEM[(widelimb * )out_30(D) + 48B] = _8; *)
mov out30_48 v8;
(* _9 = MEM[(widelimb * )out_30(D) + 64B]; *)
mov v9 out30_64;
(* _10 = _9 + 0xfffeffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xfffeffffffffff@uint64;
join value value_hi value_lo;
uadd v10 v9 value;
(* MEM[(widelimb * )out_30(D) + 64B] = _10; *)
mov out30_64 v10;
(* _11 = MEM[(widelimb * )out_30(D) + 80B]; *)
mov v11 out30_80;
(* _12 = _11 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v12 v11 value;
(* MEM[(widelimb * )out_30(D) + 80B] = _12; *)
mov out30_80 v12;
(* _13 = MEM[(widelimb * )out_30(D) + 96B]; *)
mov v13 out30_96;
(* _14 = _13 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v14 v13 value;
(* MEM[(widelimb * )out_30(D) + 96B] = _14; *)
mov out30_96 v14;
(* _15 = *in_38(D); *)
mov v15 in38_0;
(* _16 = _2 - _15; *)
usub v16 v2 v15;
(* *out_30(D) = _16; *)
mov out30_0 v16;
(* _17 = MEM[(const widelimb * )in_38(D) + 16B]; *)
mov v17 in38_16;
(* _18 = _4 - _17; *)
usub v18 v4 v17;
(* MEM[(widelimb * )out_30(D) + 16B] = _18; *)
mov out30_16 v18;
(* _19 = MEM[(const widelimb * )in_38(D) + 32B]; *)
mov v19 in38_32;
(* _20 = _6 - _19; *)
usub v20 v6 v19;
(* MEM[(widelimb * )out_30(D) + 32B] = _20; *)
mov out30_32 v20;
(* _21 = MEM[(const widelimb * )in_38(D) + 48B]; *)
mov v21 in38_48;
(* _22 = _8 - _21; *)
usub v22 v8 v21;
(* MEM[(widelimb * )out_30(D) + 48B] = _22; *)
mov out30_48 v22;
(* _23 = MEM[(const widelimb * )in_38(D) + 64B]; *)
mov v23 in38_64;
(* _24 = _10 - _23; *)
usub v24 v10 v23;
(* MEM[(widelimb * )out_30(D) + 64B] = _24; *)
mov out30_64 v24;
(* _25 = MEM[(const widelimb * )in_38(D) + 80B]; *)
mov v25 in38_80;
(* _26 = _12 - _25; *)
usub v26 v12 v25;
(* MEM[(widelimb * )out_30(D) + 80B] = _26; *)
mov out30_80 v26;
(* _27 = MEM[(const widelimb * )in_38(D) + 96B]; *)
mov v27 in38_96;
(* _28 = _14 - _27; *)
usub v28 v14 v27;
(* MEM[(widelimb * )out_30(D) + 96B] = _28; *)
mov out30_96 v28;
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
      (limbs 56 [a0, a1, a2, a3, a4, a5, a6])
      -
      (limbs 56 [b0, b1, b2, b3, b4, b5, b6])
  )
  (mod (2**224 - 2**96 + 1))
  &&
  and 
  [
      c0 <u (2**121)@128,
      c1 <u (2**121)@128,
      c2 <u (2**121)@128,
      c3 <u (2**121)@128,
      c4 <u (2**121)@128,
      c5 <u (2**121)@128,
      c6 <u (2**121)@128
  ]
}

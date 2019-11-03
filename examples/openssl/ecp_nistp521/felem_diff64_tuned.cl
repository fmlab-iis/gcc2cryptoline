(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff64_tuned.cl
Verification result:                    [OK]            0.403969 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_diff64_tuned.cl"
        User time (seconds): 0.66
        System time (seconds): 0.29
        Percent of CPU this job got: 199%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.48
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 11400
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 1
        Minor (reclaiming a frame) page faults: 72303
        Voluntary context switches: 973
        Involuntary context switches: 100
        Swaps: 0
        File system inputs: 256
        File system outputs: 456
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_diff64_tuned.cl
Verification result:			[OK]		0.978785 seconds
        1.09 real         0.74 user         0.76 sys
   6955008  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    191300  page reclaims
         5  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       253  signals received
       439  voluntary context switches
      3742  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 b6, uint64 b7, uint64 b8) = 
{
  true
  &&
  and [
      a0 < (2**62)@64,
      a1 < (2**62)@64,
      a2 < (2**62)@64,
      a3 < (2**62)@64,
      a4 < (2**62)@64,
      a5 < (2**62)@64,
      a6 < (2**62)@64,
      a7 < (2**62)@64,
      a8 < (2**62)@64,
      b0 < (2**59 + 2**14)@64,
      b1 < (2**59 + 2**14)@64,
      b2 < (2**59 + 2**14)@64,
      b3 < (2**59 + 2**14)@64,
      b4 < (2**59 + 2**14)@64,
      b5 < (2**59 + 2**14)@64,
      b6 < (2**59 + 2**14)@64,
      b7 < (2**59 + 2**14)@64,
      b8 < (2**59 + 2**14)@64
  ]
}

(* Start with undefined rhs *)
mov in39_0@uint64 b0;
mov in39_8@uint64 b1;
mov in39_16@uint64 b2;
mov in39_24@uint64 b3;
mov in39_32@uint64 b4;
mov in39_40@uint64 b5;
mov in39_48@uint64 b6;
mov in39_56@uint64 b7;
mov in39_64@uint64 b8;
mov out38_0@uint64 a0;
mov out38_8@uint64 a1;
mov out38_16@uint64 a2;
mov out38_24@uint64 a3;
mov out38_32@uint64 a4;
mov out38_40@uint64 a5;
mov out38_48@uint64 a6;
mov out38_56@uint64 a7;
mov out38_64@uint64 a8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_38(D); *)
mov v1 out38_0;
(* _2 = *in_39(D); *)
mov v2 in39_0;
(* _3 = _1 - _2; *)
usubb carry v3 v1 v2;
(* _4 = _3 + 4611686018427387872; *)
uadds carry1 v4 v3 0x3fffffffffffffe0@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* *out_38(D) = _4; *)
mov out38_0 v4;
(* _5 = MEM[(limb * )out_38(D) + 8B]; *)
mov v5 out38_8;
(* _6 = MEM[(const limb * )in_39(D) + 8B]; *)
mov v6 in39_8;
(* _7 = _5 - _6; *)
usubb carry v7 v5 v6;
(* _8 = _7 + 4611686018427387888; *)
uadds carry1 v8 v7 0x3ffffffffffffff0@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(limb * )out_38(D) + 8B] = _8; *)
mov out38_8 v8;
(* _9 = MEM[(limb * )out_38(D) + 16B]; *)
mov v9 out38_16;
(* _10 = MEM[(const limb * )in_39(D) + 16B]; *)
mov v10 in39_16;
(* _11 = _9 - _10; *)
usubb carry v11 v9 v10;
(* _12 = _11 + 4611686018427387888; *)
uadds carry1 v12 v11 0x3ffffffffffffff0@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(limb * )out_38(D) + 16B] = _12; *)
mov out38_16 v12;
(* _13 = MEM[(limb * )out_38(D) + 24B]; *)
mov v13 out38_24;
(* _14 = MEM[(const limb * )in_39(D) + 24B]; *)
mov v14 in39_24;
(* _15 = _13 - _14; *)
usubb carry v15 v13 v14;
(* _16 = _15 + 4611686018427387888; *)
uadds carry1 v16 v15 0x3ffffffffffffff0@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(limb * )out_38(D) + 24B] = _16; *)
mov out38_24 v16;
(* _17 = MEM[(limb * )out_38(D) + 32B]; *)
mov v17 out38_32;
(* _18 = MEM[(const limb * )in_39(D) + 32B]; *)
mov v18 in39_32;
(* _19 = _17 - _18; *)
usubb carry v19 v17 v18;
(* _20 = _19 + 4611686018427387888; *)
uadds carry1 v20 v19 0x3ffffffffffffff0@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(limb * )out_38(D) + 32B] = _20; *)
mov out38_32 v20;
(* _21 = MEM[(limb * )out_38(D) + 40B]; *)
mov v21 out38_40;
(* _22 = MEM[(const limb * )in_39(D) + 40B]; *)
mov v22 in39_40;
(* _23 = _21 - _22; *)
usubb carry v23 v21 v22;
(* _24 = _23 + 4611686018427387888; *)
uadds carry1 v24 v23 0x3ffffffffffffff0@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(limb * )out_38(D) + 40B] = _24; *)
mov out38_40 v24;
(* _25 = MEM[(limb * )out_38(D) + 48B]; *)
mov v25 out38_48;
(* _26 = MEM[(const limb * )in_39(D) + 48B]; *)
mov v26 in39_48;
(* _27 = _25 - _26; *)
usubb carry v27 v25 v26;
(* _28 = _27 + 4611686018427387888; *)
uadds carry1 v28 v27 0x3ffffffffffffff0@uint64;
assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(limb * )out_38(D) + 48B] = _28; *)
mov out38_48 v28;
(* _29 = MEM[(limb * )out_38(D) + 56B]; *)
mov v29 out38_56;
(* _30 = MEM[(const limb * )in_39(D) + 56B]; *)
mov v30 in39_56;
(* _31 = _29 - _30; *)
usubb carry v31 v29 v30;
(* _32 = _31 + 4611686018427387888; *)
uadds carry1 v32 v31 0x3ffffffffffffff0@uint64;
assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(limb * )out_38(D) + 56B] = _32; *)
mov out38_56 v32;
(* _33 = MEM[(limb * )out_38(D) + 64B]; *)
mov v33 out38_64;
(* _34 = MEM[(const limb * )in_39(D) + 64B]; *)
mov v34 in39_64;
(* _35 = _33 - _34; *)
usubb carry v35 v33 v34;
(* _36 = _35 + 4611686018427387888; *)
uadds carry1 v36 v35 0x3ffffffffffffff0@uint64;
assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(limb * )out_38(D) + 64B] = _36; *)
mov out38_64 v36;
(* return; *)


(* Start with unused lhs *)
mov c0 out38_0@uint64;
mov c1 out38_8@uint64;
mov c2 out38_16@uint64;
mov c3 out38_24@uint64;
mov c4 out38_32@uint64;
mov c5 out38_40@uint64;
mov c6 out38_48@uint64;
mov c7 out38_56@uint64;
mov c8 out38_64@uint64;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
      -
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
  )
  (mod (2**521 -1))
  &&
  and [
      c0 < a0 + (2**62)@64,
      c1 < a1 + (2**62)@64,
      c2 < a2 + (2**62)@64,
      c3 < a3 + (2**62)@64,
      c4 < a4 + (2**62)@64,
      c5 < a5 + (2**62)@64,
      c6 < a6 + (2**62)@64,
      c7 < a7 + (2**62)@64,
      c8 < a8 + (2**62)@64
  ]
}

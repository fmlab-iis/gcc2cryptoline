(* NOTE: safety and range checks fail *)
(*
===== Verification =====
Arguments: -v -qfbv_solver boolector -isafety -disable_safety ./felem_diff_128_64_auto.cl
Parsing Cryptoline file:		[OK]		0.001128 seconds
Checking well-formedness:		[OK]		0.000241 seconds
Transforming to SSA form:		[OK]		0.000092 seconds
Rewriting assignments:			[OK]		0.000245 seconds
Verifying range specification:		[FAILED]	0.424315 seconds
Verification result:			[FAILED]	0.426418 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint128 b0, uint128 b1, uint128 b2, uint128 b3, uint128 b4, uint128 b5, uint128 b6, uint128 b7, uint128 b8) = 
{
  true
  &&
  and [
      a0 < (2**62 + 2**17)@64,
      a1 < (2**62 + 2**17)@64,
      a2 < (2**62 + 2**17)@64,
      a3 < (2**62 + 2**17)@64,
      a4 < (2**62 + 2**17)@64,
      a5 < (2**62 + 2**17)@64,
      a6 < (2**62 + 2**17)@64,
      a7 < (2**62 + 2**17)@64,
      a8 < (2**62 + 2**17)@64,
      b0 < (2**126)@128,
      b1 < (2**126)@128,
      b2 < (2**126)@128,
      b3 < (2**126)@128,
      b4 < (2**126)@128,
      b5 < (2**126)@128,
      b6 < (2**126)@128,
      b7 < (2**126)@128,
      b8 < (2**126)@128
  ]
}


(* Start with undefined rhs *)
mov in48_0@uint64 a0;
mov in48_8@uint64 a1;
mov in48_16@uint64 a2;
mov in48_24@uint64 a3;
mov in48_32@uint64 a4;
mov in48_40@uint64 a5;
mov in48_48@uint64 a6;
mov in48_56@uint64 a7;
mov in48_64@uint64 a8;
mov out47_0@uint128 b0;
mov out47_16@uint128 b1;
mov out47_32@uint128 b2;
mov out47_48@uint128 b3;
mov out47_64@uint128 b4;
mov out47_80@uint128 b5;
mov out47_96@uint128 b6;
mov out47_112@uint128 b7;
mov out47_128@uint128 b8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_47(D); *)
mov v1 out47_0;
(* _2 = *in_48(D); *)
mov v2 in48_0;
(* _3 = 4611686018427387872 - _2; *)
usub v3 0x3fffffffffffffe0@uint64 v2;
(* _4 = (__int128 unsigned) _3; *)
vpc v4@uint128 v3@uint64;
(* _5 = _1 + _4; *)
uadd v5 v1 v4;
(* *out_47(D) = _5; *)
mov out47_0 v5;
(* _6 = MEM[(uint128_t * )out_47(D) + 16B]; *)
mov v6 out47_16;
(* _7 = MEM[(const limb * )in_48(D) + 8B]; *)
mov v7 in48_8;
(* _8 = 4611686018427387888 - _7; *)
usub v8 0x3ffffffffffffff0@uint64 v7;
(* _9 = (__int128 unsigned) _8; *)
vpc v9@uint128 v8@uint64;
(* _10 = _6 + _9; *)
uadd v10 v6 v9;
(* MEM[(uint128_t * )out_47(D) + 16B] = _10; *)
mov out47_16 v10;
(* _11 = MEM[(uint128_t * )out_47(D) + 32B]; *)
mov v11 out47_32;
(* _12 = MEM[(const limb * )in_48(D) + 16B]; *)
mov v12 in48_16;
(* _13 = 4611686018427387888 - _12; *)
usub v13 0x3ffffffffffffff0@uint64 v12;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _15 = _11 + _14; *)
uadd v15 v11 v14;
(* MEM[(uint128_t * )out_47(D) + 32B] = _15; *)
mov out47_32 v15;
(* _16 = MEM[(uint128_t * )out_47(D) + 48B]; *)
mov v16 out47_48;
(* _17 = MEM[(const limb * )in_48(D) + 24B]; *)
mov v17 in48_24;
(* _18 = 4611686018427387888 - _17; *)
usub v18 0x3ffffffffffffff0@uint64 v17;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* _20 = _16 + _19; *)
uadd v20 v16 v19;
(* MEM[(uint128_t * )out_47(D) + 48B] = _20; *)
mov out47_48 v20;
(* _21 = MEM[(uint128_t * )out_47(D) + 64B]; *)
mov v21 out47_64;
(* _22 = MEM[(const limb * )in_48(D) + 32B]; *)
mov v22 in48_32;
(* _23 = 4611686018427387888 - _22; *)
usub v23 0x3ffffffffffffff0@uint64 v22;
(* _24 = (__int128 unsigned) _23; *)
vpc v24@uint128 v23@uint64;
(* _25 = _21 + _24; *)
uadd v25 v21 v24;
(* MEM[(uint128_t * )out_47(D) + 64B] = _25; *)
mov out47_64 v25;
(* _26 = MEM[(uint128_t * )out_47(D) + 80B]; *)
mov v26 out47_80;
(* _27 = MEM[(const limb * )in_48(D) + 40B]; *)
mov v27 in48_40;
(* _28 = 4611686018427387888 - _27; *)
usub v28 0x3ffffffffffffff0@uint64 v27;
(* _29 = (__int128 unsigned) _28; *)
vpc v29@uint128 v28@uint64;
(* _30 = _26 + _29; *)
uadd v30 v26 v29;
(* MEM[(uint128_t * )out_47(D) + 80B] = _30; *)
mov out47_80 v30;
(* _31 = MEM[(uint128_t * )out_47(D) + 96B]; *)
mov v31 out47_96;
(* _32 = MEM[(const limb * )in_48(D) + 48B]; *)
mov v32 in48_48;
(* _33 = 4611686018427387888 - _32; *)
usub v33 0x3ffffffffffffff0@uint64 v32;
(* _34 = (__int128 unsigned) _33; *)
vpc v34@uint128 v33@uint64;
(* _35 = _31 + _34; *)
uadd v35 v31 v34;
(* MEM[(uint128_t * )out_47(D) + 96B] = _35; *)
mov out47_96 v35;
(* _36 = MEM[(uint128_t * )out_47(D) + 112B]; *)
mov v36 out47_112;
(* _37 = MEM[(const limb * )in_48(D) + 56B]; *)
mov v37 in48_56;
(* _38 = 4611686018427387888 - _37; *)
usub v38 0x3ffffffffffffff0@uint64 v37;
(* _39 = (__int128 unsigned) _38; *)
vpc v39@uint128 v38@uint64;
(* _40 = _36 + _39; *)
uadd v40 v36 v39;
(* MEM[(uint128_t * )out_47(D) + 112B] = _40; *)
mov out47_112 v40;
(* _41 = MEM[(uint128_t * )out_47(D) + 128B]; *)
mov v41 out47_128;
(* _42 = MEM[(const limb * )in_48(D) + 64B]; *)
mov v42 in48_64;
(* _43 = 4611686018427387888 - _42; *)
usub v43 0x3ffffffffffffff0@uint64 v42;
(* _44 = (__int128 unsigned) _43; *)
vpc v44@uint128 v43@uint64;
(* _45 = _41 + _44; *)
uadd v45 v41 v44;
(* MEM[(uint128_t * )out_47(D) + 128B] = _45; *)
mov out47_128 v45;
(* return; *)


(* Start with unused lhs *)
mov c0 out47_0@uint128;
mov c1 out47_16@uint128;
mov c2 out47_32@uint128;
mov c3 out47_48@uint128;
mov c4 out47_64@uint128;
mov c5 out47_80@uint128;
mov c6 out47_96@uint128;
mov c7 out47_112@uint128;
mov c8 out47_128@uint128;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
      -
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
  )
  (mod (2**521 -1))
  &&
  and [
      c0 < b0 + (2**63)@128,
      c1 < b1 + (2**63)@128,
      c2 < b2 + (2**63)@128,
      c3 < b3 + (2**63)@128,
      c4 < b4 + (2**63)@128,
      c5 < b5 + (2**63)@128,
      c6 < b6 + (2**63)@128,
      c7 < b7 + (2**63)@128,
      c8 < b8 + (2**63)@128
  ]
}
(* NOTE: range property does not hold *)
(*
Arguments: -v -qfbv_solver boolector -disable_rpost ./felem_diff128_tuned.cl
Parsing Cryptoline file:		[OK]		0.002250 seconds
Checking well-formedness:		[OK]		0.000367 seconds
Transforming to SSA form:		[OK]		0.000133 seconds
Rewriting assignments:			[OK]		0.000582 seconds
Verifying program safety:		[OK]		0.034433 seconds
Verifying range assertions:		[OK]		0.402897 seconds
Rewriting value-preserved casting:	[OK]		0.000004 seconds
Verifying algebraic assertions:		[OK]		0.012155 seconds
Verifying algebraic specification:	[OK]		0.093659 seconds
Verification result:			[OK]		0.547025 seconds
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6, uint128 a7, uint128 a8, uint128 b0, uint128 b1, uint128 b2, uint128 b3, uint128 b4, uint128 b5, uint128 b6, uint128 b7, uint128 b8) = 
{
  true
  &&
  and [
      a0 < (2**126)@128,
      a1 < (2**126)@128,
      a2 < (2**126)@128,
      a3 < (2**126)@128,
      a4 < (2**126)@128,
      a5 < (2**126)@128,
      a6 < (2**126)@128,
      a7 < (2**126)@128,
      a8 < (2**126)@128,
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
mov in39_0@uint128 b0;
mov in39_16@uint128 b1;
mov in39_32@uint128 b2;
mov in39_48@uint128 b3;
mov in39_64@uint128 b4;
mov in39_80@uint128 b5;
mov in39_96@uint128 b6;
mov in39_112@uint128 b7;
mov in39_128@uint128 b8;
mov out38_0@uint128 a0;
mov out38_16@uint128 a1;
mov out38_32@uint128 a2;
mov out38_48@uint128 a3;
mov out38_64@uint128 a4;
mov out38_80@uint128 a5;
mov out38_96@uint128 a6;
mov out38_112@uint128 a7;
mov out38_128@uint128 a8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_38(D); *)
mov v1 out38_0;
(* _2 = *in_39(D); *)
mov v2 in39_0;
(* _3 = _1 - _2; *)
usubb carry v3 v1 v2;
(* _4 = _3 + 0x7fffffffffffffc00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffc0@uint64;
join value value_hi value_lo;
uadds carry1 v4 v3 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* *out_38(D) = _4; *)
mov out38_0 v4;
(* _5 = MEM[(uint128_t * )out_38(D) + 16B]; *)
mov v5 out38_16;
(* _6 = MEM[(const uint128_t * )in_39(D) + 16B]; *)
mov v6 in39_16;
(* _7 = _5 - _6; *)
usubb carry v7 v5 v6;
(* _8 = _7 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v8 v7 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 16B] = _8; *)
mov out38_16 v8;
(* _9 = MEM[(uint128_t * )out_38(D) + 32B]; *)
mov v9 out38_32;
(* _10 = MEM[(const uint128_t * )in_39(D) + 32B]; *)
mov v10 in39_32;
(* _11 = _9 - _10; *)
usubb carry v11 v9 v10;
(* _12 = _11 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v12 v11 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 32B] = _12; *)
mov out38_32 v12;
(* _13 = MEM[(uint128_t * )out_38(D) + 48B]; *)
mov v13 out38_48;
(* _14 = MEM[(const uint128_t * )in_39(D) + 48B]; *)
mov v14 in39_48;
(* _15 = _13 - _14; *)
usubb carry v15 v13 v14;
(* _16 = _15 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v16 v15 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 48B] = _16; *)
mov out38_48 v16;
(* _17 = MEM[(uint128_t * )out_38(D) + 64B]; *)
mov v17 out38_64;
(* _18 = MEM[(const uint128_t * )in_39(D) + 64B]; *)
mov v18 in39_64;
(* _19 = _17 - _18; *)
usubb carry v19 v17 v18;
(* _20 = _19 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v20 v19 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 64B] = _20; *)
mov out38_64 v20;
(* _21 = MEM[(uint128_t * )out_38(D) + 80B]; *)
mov v21 out38_80;
(* _22 = MEM[(const uint128_t * )in_39(D) + 80B]; *)
mov v22 in39_80;
(* _23 = _21 - _22; *)
usubb carry v23 v21 v22;
(* _24 = _23 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v24 v23 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 80B] = _24; *)
mov out38_80 v24;
(* _25 = MEM[(uint128_t * )out_38(D) + 96B]; *)
mov v25 out38_96;
(* _26 = MEM[(const uint128_t * )in_39(D) + 96B]; *)
mov v26 in39_96;
(* _27 = _25 - _26; *)
usubb carry v27 v25 v26;
(* _28 = _27 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v28 v27 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 96B] = _28; *)
mov out38_96 v28;
(* _29 = MEM[(uint128_t * )out_38(D) + 112B]; *)
mov v29 out38_112;
(* _30 = MEM[(const uint128_t * )in_39(D) + 112B]; *)
mov v30 in39_112;
(* _31 = _29 - _30; *)
usubb carry v31 v29 v30;
(* _32 = _31 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v32 v31 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 112B] = _32; *)
mov out38_112 v32;
(* _33 = MEM[(uint128_t * )out_38(D) + 128B]; *)
mov v33 out38_128;
(* _34 = MEM[(const uint128_t * )in_39(D) + 128B]; *)
mov v34 in39_128;
(* _35 = _33 - _34; *)
usubb carry v35 v33 v34;
(* _36 = _35 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v36 v35 value;

assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(uint128_t * )out_38(D) + 128B] = _36; *)
mov out38_128 v36;
(* return; *)


(* Start with unused lhs *)
mov c0 out38_0@uint128;
mov c1 out38_16@uint128;
mov c2 out38_32@uint128;
mov c3 out38_48@uint128;
mov c4 out38_64@uint128;
mov c5 out38_80@uint128;
mov c6 out38_96@uint128;
mov c7 out38_112@uint128;
mov c8 out38_128@uint128;
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
      c0 <= a0 + (2**127 - 2**69)@128,
      c1 <= a1 + (2**127 - 2**69)@128,
      c2 <= a2 + (2**127 - 2**69)@128,
      c3 <= a3 + (2**127 - 2**69)@128,
      c4 <= a4 + (2**127 - 2**69)@128,
      c5 <= a5 + (2**127 - 2**69)@128,
      c6 <= a6 + (2**127 - 2**69)@128,
      c7 <= a7 + (2**127 - 2**69)@128,
      c8 <= a8 + (2**127 - 2**69)@128
  ]
}
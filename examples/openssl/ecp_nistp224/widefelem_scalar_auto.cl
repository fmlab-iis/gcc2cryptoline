proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov out16_0@uint128 _;
mov out16_16@uint128 _;
mov out16_32@uint128 _;
mov out16_48@uint128 _;
mov out16_64@uint128 _;
mov out16_80@uint128 _;
mov out16_96@uint128 _;
mov scalar17@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_16(D); *)
mov v1 out16_0;
(* _2 = _1 * scalar_17(D); *)
umul v2 v1 scalar17;
(* *out_16(D) = _2; *)
mov out16_0 v2;
(* _3 = MEM[(widelimb * )out_16(D) + 16B]; *)
mov v3 out16_16;
(* _4 = _3 * scalar_17(D); *)
umul v4 v3 scalar17;
(* MEM[(widelimb * )out_16(D) + 16B] = _4; *)
mov out16_16 v4;
(* _5 = MEM[(widelimb * )out_16(D) + 32B]; *)
mov v5 out16_32;
(* _6 = _5 * scalar_17(D); *)
umul v6 v5 scalar17;
(* MEM[(widelimb * )out_16(D) + 32B] = _6; *)
mov out16_32 v6;
(* _7 = MEM[(widelimb * )out_16(D) + 48B]; *)
mov v7 out16_48;
(* _8 = _7 * scalar_17(D); *)
umul v8 v7 scalar17;
(* MEM[(widelimb * )out_16(D) + 48B] = _8; *)
mov out16_48 v8;
(* _9 = MEM[(widelimb * )out_16(D) + 64B]; *)
mov v9 out16_64;
(* _10 = _9 * scalar_17(D); *)
umul v10 v9 scalar17;
(* MEM[(widelimb * )out_16(D) + 64B] = _10; *)
mov out16_64 v10;
(* _11 = MEM[(widelimb * )out_16(D) + 80B]; *)
mov v11 out16_80;
(* _12 = _11 * scalar_17(D); *)
umul v12 v11 scalar17;
(* MEM[(widelimb * )out_16(D) + 80B] = _12; *)
mov out16_80 v12;
(* _13 = MEM[(widelimb * )out_16(D) + 96B]; *)
mov v13 out16_96;
(* _14 = _13 * scalar_17(D); *)
umul v14 v13 scalar17;
(* MEM[(widelimb * )out_16(D) + 96B] = _14; *)
mov out16_96 v14;
(* return; *)


(* Start with unused lhs *)
mov _ out16_0@uint128;
mov _ out16_16@uint128;
mov _ out16_32@uint128;
mov _ out16_48@uint128;
mov _ out16_64@uint128;
mov _ out16_80@uint128;
mov _ out16_96@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

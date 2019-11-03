proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov out21_0@uint128 _;
mov out21_16@uint128 _;
mov out21_32@uint128 _;
mov out21_48@uint128 _;
mov out21_64@uint128 _;
mov out21_80@uint128 _;
mov out21_96@uint128 _;
mov out21_112@uint128 _;
mov out21_128@uint128 _;
mov scalar22@uint64 _;
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
mov _ out21_0@uint128;
mov _ out21_16@uint128;
mov _ out21_32@uint128;
mov _ out21_48@uint128;
mov _ out21_64@uint128;
mov _ out21_80@uint128;
mov _ out21_96@uint128;
mov _ out21_112@uint128;
mov _ out21_128@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

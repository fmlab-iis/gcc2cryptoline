proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov out11_0@uint128 _;
mov out11_16@uint128 _;
mov out11_32@uint128 _;
mov out11_48@uint128 _;
mov scalar12@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_11(D); *)
mov v1 out11_0;
(* _2 = (__int128 unsigned) scalar_12(D); *)
vpc v2@uint128 scalar12@uint64;
(* _3 = _1 * _2; *)
umul v3 v1 v2;
(* *out_11(D) = _3; *)
mov out11_0 v3;
(* _4 = MEM[(limb * )out_11(D) + 16B]; *)
mov v4 out11_16;
(* _5 = _2 * _4; *)
umul v5 v2 v4;
(* MEM[(limb * )out_11(D) + 16B] = _5; *)
mov out11_16 v5;
(* _6 = MEM[(limb * )out_11(D) + 32B]; *)
mov v6 out11_32;
(* _7 = _2 * _6; *)
umul v7 v2 v6;
(* MEM[(limb * )out_11(D) + 32B] = _7; *)
mov out11_32 v7;
(* _8 = MEM[(limb * )out_11(D) + 48B]; *)
mov v8 out11_48;
(* _9 = _2 * _8; *)
umul v9 v2 v8;
(* MEM[(limb * )out_11(D) + 48B] = _9; *)
mov out11_48 v9;
(* return; *)


(* Start with unused lhs *)
mov _ out11_0@uint128;
mov _ out11_16@uint128;
mov _ out11_32@uint128;
mov _ out11_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

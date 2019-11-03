proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov out10_0@uint64 _;
mov out10_8@uint64 _;
mov out10_16@uint64 _;
mov out10_24@uint64 _;
mov scalar11@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_10(D); *)
mov v1 out10_0;
(* _2 = _1 * scalar_11(D); *)
umul v2 v1 scalar11;
(* *out_10(D) = _2; *)
mov out10_0 v2;
(* _3 = MEM[(limb * )out_10(D) + 8B]; *)
mov v3 out10_8;
(* _4 = _3 * scalar_11(D); *)
umul v4 v3 scalar11;
(* MEM[(limb * )out_10(D) + 8B] = _4; *)
mov out10_8 v4;
(* _5 = MEM[(limb * )out_10(D) + 16B]; *)
mov v5 out10_16;
(* _6 = _5 * scalar_11(D); *)
umul v6 v5 scalar11;
(* MEM[(limb * )out_10(D) + 16B] = _6; *)
mov out10_16 v6;
(* _7 = MEM[(limb * )out_10(D) + 24B]; *)
mov v7 out10_24;
(* _8 = _7 * scalar_11(D); *)
umul v8 v7 scalar11;
(* MEM[(limb * )out_10(D) + 24B] = _8; *)
mov out10_24 v8;
(* return; *)


(* Start with unused lhs *)
mov _ out10_0@uint64;
mov _ out10_8@uint64;
mov _ out10_16@uint64;
mov _ out10_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

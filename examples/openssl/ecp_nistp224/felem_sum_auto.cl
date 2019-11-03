proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in15_0@uint64 _;
mov in15_8@uint64 _;
mov in15_16@uint64 _;
mov in15_24@uint64 _;
mov out14_0@uint64 _;
mov out14_8@uint64 _;
mov out14_16@uint64 _;
mov out14_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_14(D); *)
mov v1 out14_0;
(* _2 = *in_15(D); *)
mov v2 in15_0;
(* _3 = _1 + _2; *)
uadd v3 v1 v2;
(* *out_14(D) = _3; *)
mov out14_0 v3;
(* _4 = MEM[(limb * )out_14(D) + 8B]; *)
mov v4 out14_8;
(* _5 = MEM[(const limb * )in_15(D) + 8B]; *)
mov v5 in15_8;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(limb * )out_14(D) + 8B] = _6; *)
mov out14_8 v6;
(* _7 = MEM[(limb * )out_14(D) + 16B]; *)
mov v7 out14_16;
(* _8 = MEM[(const limb * )in_15(D) + 16B]; *)
mov v8 in15_16;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(limb * )out_14(D) + 16B] = _9; *)
mov out14_16 v9;
(* _10 = MEM[(limb * )out_14(D) + 24B]; *)
mov v10 out14_24;
(* _11 = MEM[(const limb * )in_15(D) + 24B]; *)
mov v11 in15_24;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(limb * )out_14(D) + 24B] = _12; *)
mov out14_24 v12;
(* return; *)


(* Start with unused lhs *)
mov _ out14_0@uint64;
mov _ out14_8@uint64;
mov _ out14_16@uint64;
mov _ out14_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

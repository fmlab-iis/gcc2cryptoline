proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in23_0@uint128 _;
mov in23_16@uint128 _;
mov in23_32@uint128 _;
mov in23_48@uint128 _;
mov out18_0@uint128 _;
mov out18_16@uint128 _;
mov out18_32@uint128 _;
mov out18_48@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_18(D); *)
mov v1 out18_0;
(* _2 = _1 + 0x1fffffffffffffffdfffffffe00; *)
mov value_lo 0xfffffdfffffffe00@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* *out_18(D) = _2; *)
mov out18_0 v2;
(* _3 = MEM[(limb * )out_18(D) + 16B]; *)
mov v3 out18_16;
(* _4 = _3 + 0x200000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x20000000000@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* MEM[(limb * )out_18(D) + 16B] = _4; *)
mov out18_16 v4;
(* _5 = MEM[(limb * )out_18(D) + 32B]; *)
mov v5 out18_32;
(* _6 = _5 + 0x1fffffffffffffffe0000000200; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* MEM[(limb * )out_18(D) + 32B] = _6; *)
mov out18_32 v6;
(* _7 = MEM[(limb * )out_18(D) + 48B]; *)
mov v7 out18_48;
(* _8 = _7 + 0x1fffffffffffffffe0000000200; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* MEM[(limb * )out_18(D) + 48B] = _8; *)
mov out18_48 v8;
(* _9 = *in_23(D); *)
mov v9 in23_0;
(* _10 = _2 - _9; *)
usub v10 v2 v9;
(* *out_18(D) = _10; *)
mov out18_0 v10;
(* _11 = MEM[(const limb * )in_23(D) + 16B]; *)
mov v11 in23_16;
(* _12 = _4 - _11; *)
usub v12 v4 v11;
(* MEM[(limb * )out_18(D) + 16B] = _12; *)
mov out18_16 v12;
(* _13 = MEM[(const limb * )in_23(D) + 32B]; *)
mov v13 in23_32;
(* _14 = _6 - _13; *)
usub v14 v6 v13;
(* MEM[(limb * )out_18(D) + 32B] = _14; *)
mov out18_32 v14;
(* _15 = MEM[(const limb * )in_23(D) + 48B]; *)
mov v15 in23_48;
(* _16 = _8 - _15; *)
usub v16 v8 v15;
(* MEM[(limb * )out_18(D) + 48B] = _16; *)
mov out18_48 v16;
(* return; *)


(* Start with unused lhs *)
mov _ out18_0@uint128;
mov _ out18_16@uint128;
mov _ out18_32@uint128;
mov _ out18_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

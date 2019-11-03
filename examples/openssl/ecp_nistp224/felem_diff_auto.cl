proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in23_0@uint64 _;
mov in23_8@uint64 _;
mov in23_16@uint64 _;
mov in23_24@uint64 _;
mov out18_0@uint64 _;
mov out18_8@uint64 _;
mov out18_16@uint64 _;
mov out18_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_18(D); *)
mov v1 out18_0;
(* _2 = _1 + 288230376151711748; *)
uadd v2 v1 0x400000000000004@uint64;
(* *out_18(D) = _2; *)
mov out18_0 v2;
(* _3 = MEM[(limb * )out_18(D) + 8B]; *)
mov v3 out18_8;
(* _4 = _3 + 288225978105200636; *)
uadd v4 v3 0x3fffbfffffffffc@uint64;
(* MEM[(limb * )out_18(D) + 8B] = _4; *)
mov out18_8 v4;
(* _5 = MEM[(limb * )out_18(D) + 16B]; *)
mov v5 out18_16;
(* _6 = _5 + 288230376151711740; *)
uadd v6 v5 0x3fffffffffffffc@uint64;
(* MEM[(limb * )out_18(D) + 16B] = _6; *)
mov out18_16 v6;
(* _7 = MEM[(limb * )out_18(D) + 24B]; *)
mov v7 out18_24;
(* _8 = _7 + 288230376151711740; *)
uadd v8 v7 0x3fffffffffffffc@uint64;
(* MEM[(limb * )out_18(D) + 24B] = _8; *)
mov out18_24 v8;
(* _9 = *in_23(D); *)
mov v9 in23_0;
(* _10 = _2 - _9; *)
usub v10 v2 v9;
(* *out_18(D) = _10; *)
mov out18_0 v10;
(* _11 = MEM[(const limb * )in_23(D) + 8B]; *)
mov v11 in23_8;
(* _12 = _4 - _11; *)
usub v12 v4 v11;
(* MEM[(limb * )out_18(D) + 8B] = _12; *)
mov out18_8 v12;
(* _13 = MEM[(const limb * )in_23(D) + 16B]; *)
mov v13 in23_16;
(* _14 = _6 - _13; *)
usub v14 v6 v13;
(* MEM[(limb * )out_18(D) + 16B] = _14; *)
mov out18_16 v14;
(* _15 = MEM[(const limb * )in_23(D) + 24B]; *)
mov v15 in23_24;
(* _16 = _8 - _15; *)
usub v16 v8 v15;
(* MEM[(limb * )out_18(D) + 24B] = _16; *)
mov out18_24 v16;
(* return; *)


(* Start with unused lhs *)
mov _ out18_0@uint64;
mov _ out18_8@uint64;
mov _ out18_16@uint64;
mov _ out18_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

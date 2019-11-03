proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in30_0@uint64 _;
mov in30_8@uint64 _;
mov in30_16@uint64 _;
mov in30_24@uint64 _;
mov in30_32@uint64 _;
mov in30_40@uint64 _;
mov in30_48@uint64 _;
mov in30_56@uint64 _;
mov in30_64@uint64 _;
mov out29_0@uint64 _;
mov out29_8@uint64 _;
mov out29_16@uint64 _;
mov out29_24@uint64 _;
mov out29_32@uint64 _;
mov out29_40@uint64 _;
mov out29_48@uint64 _;
mov out29_56@uint64 _;
mov out29_64@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_29(D); *)
mov v1 out29_0;
(* _2 = *in_30(D); *)
mov v2 in30_0;
(* _3 = _1 + _2; *)
uadd v3 v1 v2;
(* *out_29(D) = _3; *)
mov out29_0 v3;
(* _4 = MEM[(limb * )out_29(D) + 8B]; *)
mov v4 out29_8;
(* _5 = MEM[(const limb * )in_30(D) + 8B]; *)
mov v5 in30_8;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(limb * )out_29(D) + 8B] = _6; *)
mov out29_8 v6;
(* _7 = MEM[(limb * )out_29(D) + 16B]; *)
mov v7 out29_16;
(* _8 = MEM[(const limb * )in_30(D) + 16B]; *)
mov v8 in30_16;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(limb * )out_29(D) + 16B] = _9; *)
mov out29_16 v9;
(* _10 = MEM[(limb * )out_29(D) + 24B]; *)
mov v10 out29_24;
(* _11 = MEM[(const limb * )in_30(D) + 24B]; *)
mov v11 in30_24;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(limb * )out_29(D) + 24B] = _12; *)
mov out29_24 v12;
(* _13 = MEM[(limb * )out_29(D) + 32B]; *)
mov v13 out29_32;
(* _14 = MEM[(const limb * )in_30(D) + 32B]; *)
mov v14 in30_32;
(* _15 = _13 + _14; *)
uadd v15 v13 v14;
(* MEM[(limb * )out_29(D) + 32B] = _15; *)
mov out29_32 v15;
(* _16 = MEM[(limb * )out_29(D) + 40B]; *)
mov v16 out29_40;
(* _17 = MEM[(const limb * )in_30(D) + 40B]; *)
mov v17 in30_40;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* MEM[(limb * )out_29(D) + 40B] = _18; *)
mov out29_40 v18;
(* _19 = MEM[(limb * )out_29(D) + 48B]; *)
mov v19 out29_48;
(* _20 = MEM[(const limb * )in_30(D) + 48B]; *)
mov v20 in30_48;
(* _21 = _19 + _20; *)
uadd v21 v19 v20;
(* MEM[(limb * )out_29(D) + 48B] = _21; *)
mov out29_48 v21;
(* _22 = MEM[(limb * )out_29(D) + 56B]; *)
mov v22 out29_56;
(* _23 = MEM[(const limb * )in_30(D) + 56B]; *)
mov v23 in30_56;
(* _24 = _22 + _23; *)
uadd v24 v22 v23;
(* MEM[(limb * )out_29(D) + 56B] = _24; *)
mov out29_56 v24;
(* _25 = MEM[(limb * )out_29(D) + 64B]; *)
mov v25 out29_64;
(* _26 = MEM[(const limb * )in_30(D) + 64B]; *)
mov v26 in30_64;
(* _27 = _25 + _26; *)
uadd v27 v25 v26;
(* MEM[(limb * )out_29(D) + 64B] = _27; *)
mov out29_64 v27;
(* return; *)


(* Start with unused lhs *)
mov _ out29_0@uint64;
mov _ out29_8@uint64;
mov _ out29_16@uint64;
mov _ out29_24@uint64;
mov _ out29_32@uint64;
mov _ out29_40@uint64;
mov _ out29_48@uint64;
mov _ out29_56@uint64;
mov _ out29_64@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

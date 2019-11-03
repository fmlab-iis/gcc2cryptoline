proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in39_0@uint64 _;
mov in39_8@uint64 _;
mov in39_16@uint64 _;
mov in39_24@uint64 _;
mov in39_32@uint64 _;
mov in39_40@uint64 _;
mov in39_48@uint64 _;
mov in39_56@uint64 _;
mov in39_64@uint64 _;
mov out38_0@uint64 _;
mov out38_8@uint64 _;
mov out38_16@uint64 _;
mov out38_24@uint64 _;
mov out38_32@uint64 _;
mov out38_40@uint64 _;
mov out38_48@uint64 _;
mov out38_56@uint64 _;
mov out38_64@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_38(D); *)
mov v1 out38_0;
(* _2 = *in_39(D); *)
mov v2 in39_0;
(* _3 = _1 - _2; *)
usub v3 v1 v2;
(* _4 = _3 + 4611686018427387872; *)
uadd v4 v3 0x3fffffffffffffe0@uint64;
(* *out_38(D) = _4; *)
mov out38_0 v4;
(* _5 = MEM[(limb * )out_38(D) + 8B]; *)
mov v5 out38_8;
(* _6 = MEM[(const limb * )in_39(D) + 8B]; *)
mov v6 in39_8;
(* _7 = _5 - _6; *)
usub v7 v5 v6;
(* _8 = _7 + 4611686018427387888; *)
uadd v8 v7 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 8B] = _8; *)
mov out38_8 v8;
(* _9 = MEM[(limb * )out_38(D) + 16B]; *)
mov v9 out38_16;
(* _10 = MEM[(const limb * )in_39(D) + 16B]; *)
mov v10 in39_16;
(* _11 = _9 - _10; *)
usub v11 v9 v10;
(* _12 = _11 + 4611686018427387888; *)
uadd v12 v11 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 16B] = _12; *)
mov out38_16 v12;
(* _13 = MEM[(limb * )out_38(D) + 24B]; *)
mov v13 out38_24;
(* _14 = MEM[(const limb * )in_39(D) + 24B]; *)
mov v14 in39_24;
(* _15 = _13 - _14; *)
usub v15 v13 v14;
(* _16 = _15 + 4611686018427387888; *)
uadd v16 v15 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 24B] = _16; *)
mov out38_24 v16;
(* _17 = MEM[(limb * )out_38(D) + 32B]; *)
mov v17 out38_32;
(* _18 = MEM[(const limb * )in_39(D) + 32B]; *)
mov v18 in39_32;
(* _19 = _17 - _18; *)
usub v19 v17 v18;
(* _20 = _19 + 4611686018427387888; *)
uadd v20 v19 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 32B] = _20; *)
mov out38_32 v20;
(* _21 = MEM[(limb * )out_38(D) + 40B]; *)
mov v21 out38_40;
(* _22 = MEM[(const limb * )in_39(D) + 40B]; *)
mov v22 in39_40;
(* _23 = _21 - _22; *)
usub v23 v21 v22;
(* _24 = _23 + 4611686018427387888; *)
uadd v24 v23 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 40B] = _24; *)
mov out38_40 v24;
(* _25 = MEM[(limb * )out_38(D) + 48B]; *)
mov v25 out38_48;
(* _26 = MEM[(const limb * )in_39(D) + 48B]; *)
mov v26 in39_48;
(* _27 = _25 - _26; *)
usub v27 v25 v26;
(* _28 = _27 + 4611686018427387888; *)
uadd v28 v27 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 48B] = _28; *)
mov out38_48 v28;
(* _29 = MEM[(limb * )out_38(D) + 56B]; *)
mov v29 out38_56;
(* _30 = MEM[(const limb * )in_39(D) + 56B]; *)
mov v30 in39_56;
(* _31 = _29 - _30; *)
usub v31 v29 v30;
(* _32 = _31 + 4611686018427387888; *)
uadd v32 v31 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 56B] = _32; *)
mov out38_56 v32;
(* _33 = MEM[(limb * )out_38(D) + 64B]; *)
mov v33 out38_64;
(* _34 = MEM[(const limb * )in_39(D) + 64B]; *)
mov v34 in39_64;
(* _35 = _33 - _34; *)
usub v35 v33 v34;
(* _36 = _35 + 4611686018427387888; *)
uadd v36 v35 0x3ffffffffffffff0@uint64;
(* MEM[(limb * )out_38(D) + 64B] = _36; *)
mov out38_64 v36;
(* return; *)


(* Start with unused lhs *)
mov _ out38_0@uint64;
mov _ out38_8@uint64;
mov _ out38_16@uint64;
mov _ out38_24@uint64;
mov _ out38_32@uint64;
mov _ out38_40@uint64;
mov _ out38_48@uint64;
mov _ out38_56@uint64;
mov _ out38_64@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

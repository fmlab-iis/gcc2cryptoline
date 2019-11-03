proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in20_0@uint64 _;
mov in20_8@uint64 _;
mov in20_16@uint64 _;
mov in20_24@uint64 _;
mov in20_32@uint64 _;
mov in20_40@uint64 _;
mov in20_48@uint64 _;
mov in20_56@uint64 _;
mov in20_64@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_20(D); *)
mov v1 in20_0;
(* _2 = 4611686018427387872 - _1; *)
usub v2 0x3fffffffffffffe0@uint64 v1;
(* *out_21(D) = _2; *)
mov out21_0 v2;
(* _3 = MEM[(const limb * )in_20(D) + 8B]; *)
mov v3 in20_8;
(* _4 = 4611686018427387888 - _3; *)
usub v4 0x3ffffffffffffff0@uint64 v3;
(* MEM[(limb * )out_21(D) + 8B] = _4; *)
mov out21_8 v4;
(* _5 = MEM[(const limb * )in_20(D) + 16B]; *)
mov v5 in20_16;
(* _6 = 4611686018427387888 - _5; *)
usub v6 0x3ffffffffffffff0@uint64 v5;
(* MEM[(limb * )out_21(D) + 16B] = _6; *)
mov out21_16 v6;
(* _7 = MEM[(const limb * )in_20(D) + 24B]; *)
mov v7 in20_24;
(* _8 = 4611686018427387888 - _7; *)
usub v8 0x3ffffffffffffff0@uint64 v7;
(* MEM[(limb * )out_21(D) + 24B] = _8; *)
mov out21_24 v8;
(* _9 = MEM[(const limb * )in_20(D) + 32B]; *)
mov v9 in20_32;
(* _10 = 4611686018427387888 - _9; *)
usub v10 0x3ffffffffffffff0@uint64 v9;
(* MEM[(limb * )out_21(D) + 32B] = _10; *)
mov out21_32 v10;
(* _11 = MEM[(const limb * )in_20(D) + 40B]; *)
mov v11 in20_40;
(* _12 = 4611686018427387888 - _11; *)
usub v12 0x3ffffffffffffff0@uint64 v11;
(* MEM[(limb * )out_21(D) + 40B] = _12; *)
mov out21_40 v12;
(* _13 = MEM[(const limb * )in_20(D) + 48B]; *)
mov v13 in20_48;
(* _14 = 4611686018427387888 - _13; *)
usub v14 0x3ffffffffffffff0@uint64 v13;
(* MEM[(limb * )out_21(D) + 48B] = _14; *)
mov out21_48 v14;
(* _15 = MEM[(const limb * )in_20(D) + 56B]; *)
mov v15 in20_56;
(* _16 = 4611686018427387888 - _15; *)
usub v16 0x3ffffffffffffff0@uint64 v15;
(* MEM[(limb * )out_21(D) + 56B] = _16; *)
mov out21_56 v16;
(* _17 = MEM[(const limb * )in_20(D) + 64B]; *)
mov v17 in20_64;
(* _18 = 4611686018427387888 - _17; *)
usub v18 0x3ffffffffffffff0@uint64 v17;
(* MEM[(limb * )out_21(D) + 64B] = _18; *)
mov out21_64 v18;
(* return; *)


(* Start with unused lhs *)
mov _ out21_0@uint64;
mov _ out21_8@uint64;
mov _ out21_16@uint64;
mov _ out21_24@uint64;
mov _ out21_32@uint64;
mov _ out21_40@uint64;
mov _ out21_48@uint64;
mov _ out21_56@uint64;
mov _ out21_64@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

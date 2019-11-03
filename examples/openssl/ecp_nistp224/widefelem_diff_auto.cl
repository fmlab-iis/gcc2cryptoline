proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in38_0@uint128 _;
mov in38_16@uint128 _;
mov in38_32@uint128 _;
mov in38_48@uint128 _;
mov in38_64@uint128 _;
mov in38_80@uint128 _;
mov in38_96@uint128 _;
mov out30_0@uint128 _;
mov out30_16@uint128 _;
mov out30_32@uint128 _;
mov out30_48@uint128 _;
mov out30_64@uint128 _;
mov out30_80@uint128 _;
mov out30_96@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_30(D); *)
mov v1 out30_0;
(* _2 = _1 + 0x1000000000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x100000000000000@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* *out_30(D) = _2; *)
mov out30_0 v2;
(* _3 = MEM[(widelimb * )out_30(D) + 16B]; *)
mov v3 out30_16;
(* _4 = _3 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* MEM[(widelimb * )out_30(D) + 16B] = _4; *)
mov out30_16 v4;
(* _5 = MEM[(widelimb * )out_30(D) + 32B]; *)
mov v5 out30_32;
(* _6 = _5 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* MEM[(widelimb * )out_30(D) + 32B] = _6; *)
mov out30_32 v6;
(* _7 = MEM[(widelimb * )out_30(D) + 48B]; *)
mov v7 out30_48;
(* _8 = _7 + 0x1000000000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x100000000000000@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* MEM[(widelimb * )out_30(D) + 48B] = _8; *)
mov out30_48 v8;
(* _9 = MEM[(widelimb * )out_30(D) + 64B]; *)
mov v9 out30_64;
(* _10 = _9 + 0xfffeffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xfffeffffffffff@uint64;
join value value_hi value_lo;
uadd v10 v9 value;
(* MEM[(widelimb * )out_30(D) + 64B] = _10; *)
mov out30_64 v10;
(* _11 = MEM[(widelimb * )out_30(D) + 80B]; *)
mov v11 out30_80;
(* _12 = _11 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v12 v11 value;
(* MEM[(widelimb * )out_30(D) + 80B] = _12; *)
mov out30_80 v12;
(* _13 = MEM[(widelimb * )out_30(D) + 96B]; *)
mov v13 out30_96;
(* _14 = _13 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v14 v13 value;
(* MEM[(widelimb * )out_30(D) + 96B] = _14; *)
mov out30_96 v14;
(* _15 = *in_38(D); *)
mov v15 in38_0;
(* _16 = _2 - _15; *)
usub v16 v2 v15;
(* *out_30(D) = _16; *)
mov out30_0 v16;
(* _17 = MEM[(const widelimb * )in_38(D) + 16B]; *)
mov v17 in38_16;
(* _18 = _4 - _17; *)
usub v18 v4 v17;
(* MEM[(widelimb * )out_30(D) + 16B] = _18; *)
mov out30_16 v18;
(* _19 = MEM[(const widelimb * )in_38(D) + 32B]; *)
mov v19 in38_32;
(* _20 = _6 - _19; *)
usub v20 v6 v19;
(* MEM[(widelimb * )out_30(D) + 32B] = _20; *)
mov out30_32 v20;
(* _21 = MEM[(const widelimb * )in_38(D) + 48B]; *)
mov v21 in38_48;
(* _22 = _8 - _21; *)
usub v22 v8 v21;
(* MEM[(widelimb * )out_30(D) + 48B] = _22; *)
mov out30_48 v22;
(* _23 = MEM[(const widelimb * )in_38(D) + 64B]; *)
mov v23 in38_64;
(* _24 = _10 - _23; *)
usub v24 v10 v23;
(* MEM[(widelimb * )out_30(D) + 64B] = _24; *)
mov out30_64 v24;
(* _25 = MEM[(const widelimb * )in_38(D) + 80B]; *)
mov v25 in38_80;
(* _26 = _12 - _25; *)
usub v26 v12 v25;
(* MEM[(widelimb * )out_30(D) + 80B] = _26; *)
mov out30_80 v26;
(* _27 = MEM[(const widelimb * )in_38(D) + 96B]; *)
mov v27 in38_96;
(* _28 = _14 - _27; *)
usub v28 v14 v27;
(* MEM[(widelimb * )out_30(D) + 96B] = _28; *)
mov out30_96 v28;
(* return; *)


(* Start with unused lhs *)
mov _ out30_0@uint128;
mov _ out30_16@uint128;
mov _ out30_32@uint128;
mov _ out30_48@uint128;
mov _ out30_64@uint128;
mov _ out30_80@uint128;
mov _ out30_96@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

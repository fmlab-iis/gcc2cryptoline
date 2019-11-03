proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in39_0@uint128 _;
mov in39_16@uint128 _;
mov in39_32@uint128 _;
mov in39_48@uint128 _;
mov in39_64@uint128 _;
mov in39_80@uint128 _;
mov in39_96@uint128 _;
mov in39_112@uint128 _;
mov in39_128@uint128 _;
mov out38_0@uint128 _;
mov out38_16@uint128 _;
mov out38_32@uint128 _;
mov out38_48@uint128 _;
mov out38_64@uint128 _;
mov out38_80@uint128 _;
mov out38_96@uint128 _;
mov out38_112@uint128 _;
mov out38_128@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_38(D); *)
mov v1 out38_0;
(* _2 = *in_39(D); *)
mov v2 in39_0;
(* _3 = _1 - _2; *)
usub v3 v1 v2;
(* _4 = _3 + 0x7fffffffffffffc00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffc0@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* *out_38(D) = _4; *)
mov out38_0 v4;
(* _5 = MEM[(uint128_t * )out_38(D) + 16B]; *)
mov v5 out38_16;
(* _6 = MEM[(const uint128_t * )in_39(D) + 16B]; *)
mov v6 in39_16;
(* _7 = _5 - _6; *)
usub v7 v5 v6;
(* _8 = _7 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* MEM[(uint128_t * )out_38(D) + 16B] = _8; *)
mov out38_16 v8;
(* _9 = MEM[(uint128_t * )out_38(D) + 32B]; *)
mov v9 out38_32;
(* _10 = MEM[(const uint128_t * )in_39(D) + 32B]; *)
mov v10 in39_32;
(* _11 = _9 - _10; *)
usub v11 v9 v10;
(* _12 = _11 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v12 v11 value;
(* MEM[(uint128_t * )out_38(D) + 32B] = _12; *)
mov out38_32 v12;
(* _13 = MEM[(uint128_t * )out_38(D) + 48B]; *)
mov v13 out38_48;
(* _14 = MEM[(const uint128_t * )in_39(D) + 48B]; *)
mov v14 in39_48;
(* _15 = _13 - _14; *)
usub v15 v13 v14;
(* _16 = _15 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v16 v15 value;
(* MEM[(uint128_t * )out_38(D) + 48B] = _16; *)
mov out38_48 v16;
(* _17 = MEM[(uint128_t * )out_38(D) + 64B]; *)
mov v17 out38_64;
(* _18 = MEM[(const uint128_t * )in_39(D) + 64B]; *)
mov v18 in39_64;
(* _19 = _17 - _18; *)
usub v19 v17 v18;
(* _20 = _19 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v20 v19 value;
(* MEM[(uint128_t * )out_38(D) + 64B] = _20; *)
mov out38_64 v20;
(* _21 = MEM[(uint128_t * )out_38(D) + 80B]; *)
mov v21 out38_80;
(* _22 = MEM[(const uint128_t * )in_39(D) + 80B]; *)
mov v22 in39_80;
(* _23 = _21 - _22; *)
usub v23 v21 v22;
(* _24 = _23 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v24 v23 value;
(* MEM[(uint128_t * )out_38(D) + 80B] = _24; *)
mov out38_80 v24;
(* _25 = MEM[(uint128_t * )out_38(D) + 96B]; *)
mov v25 out38_96;
(* _26 = MEM[(const uint128_t * )in_39(D) + 96B]; *)
mov v26 in39_96;
(* _27 = _25 - _26; *)
usub v27 v25 v26;
(* _28 = _27 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v28 v27 value;
(* MEM[(uint128_t * )out_38(D) + 96B] = _28; *)
mov out38_96 v28;
(* _29 = MEM[(uint128_t * )out_38(D) + 112B]; *)
mov v29 out38_112;
(* _30 = MEM[(const uint128_t * )in_39(D) + 112B]; *)
mov v30 in39_112;
(* _31 = _29 - _30; *)
usub v31 v29 v30;
(* _32 = _31 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v32 v31 value;
(* MEM[(uint128_t * )out_38(D) + 112B] = _32; *)
mov out38_112 v32;
(* _33 = MEM[(uint128_t * )out_38(D) + 128B]; *)
mov v33 out38_128;
(* _34 = MEM[(const uint128_t * )in_39(D) + 128B]; *)
mov v34 in39_128;
(* _35 = _33 - _34; *)
usub v35 v33 v34;
(* _36 = _35 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadd v36 v35 value;
(* MEM[(uint128_t * )out_38(D) + 128B] = _36; *)
mov out38_128 v36;
(* return; *)


(* Start with unused lhs *)
mov _ out38_0@uint128;
mov _ out38_16@uint128;
mov _ out38_32@uint128;
mov _ out38_48@uint128;
mov _ out38_64@uint128;
mov _ out38_80@uint128;
mov _ out38_96@uint128;
mov _ out38_112@uint128;
mov _ out38_128@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

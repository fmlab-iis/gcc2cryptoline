proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in19_0@uint64 _;
mov in19_8@uint64 _;
mov in19_16@uint64 _;
mov in19_24@uint64 _;
mov out18_0@uint128 _;
mov out18_16@uint128 _;
mov out18_32@uint128 _;
mov out18_48@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_18(D); *)
mov v1 out18_0;
(* _2 = *in_19(D); *)
mov v2 in19_0;
(* _3 = (__int128 unsigned) _2; *)
vpc v3@uint128 v2@uint64;
(* _4 = _1 + _3; *)
uadd v4 v1 v3;
(* *out_18(D) = _4; *)
mov out18_0 v4;
(* _5 = MEM[(limb * )out_18(D) + 16B]; *)
mov v5 out18_16;
(* _6 = MEM[(const u64 * )in_19(D) + 8B]; *)
mov v6 in19_8;
(* _7 = (__int128 unsigned) _6; *)
vpc v7@uint128 v6@uint64;
(* _8 = _5 + _7; *)
uadd v8 v5 v7;
(* MEM[(limb * )out_18(D) + 16B] = _8; *)
mov out18_16 v8;
(* _9 = MEM[(limb * )out_18(D) + 32B]; *)
mov v9 out18_32;
(* _10 = MEM[(const u64 * )in_19(D) + 16B]; *)
mov v10 in19_16;
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* _12 = _9 + _11; *)
uadd v12 v9 v11;
(* MEM[(limb * )out_18(D) + 32B] = _12; *)
mov out18_32 v12;
(* _13 = MEM[(limb * )out_18(D) + 48B]; *)
mov v13 out18_48;
(* _14 = MEM[(const u64 * )in_19(D) + 24B]; *)
mov v14 in19_24;
(* _15 = (__int128 unsigned) _14; *)
vpc v15@uint128 v14@uint64;
(* _16 = _13 + _15; *)
uadd v16 v13 v15;
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

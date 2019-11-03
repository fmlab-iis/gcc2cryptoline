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
mov out22_0@uint128 _;
mov out22_16@uint128 _;
mov out22_32@uint128 _;
mov out22_48@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_22(D); *)
mov v1 out22_0;
(* _2 = _1 + 0x10000000000000100; *)
mov value_lo 0x100@uint64;
mov value_hi 0x1@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* _3 = MEM[(widelimb * )out_22(D) + 16B]; *)
mov v3 out22_16;
(* _4 = _3 + 18446462598732840704; *)
mov value_lo 0xfffeffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* _5 = MEM[(widelimb * )out_22(D) + 32B]; *)
mov v5 out22_32;
(* _6 = _5 + 18446744073709551360; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* _7 = MEM[(widelimb * )out_22(D) + 48B]; *)
mov v7 out22_48;
(* _8 = _7 + 18446744073709551360; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* _9 = *in_23(D); *)
mov v9 in23_0;
(* _10 = (__int128 unsigned) _9; *)
vpc v10@uint128 v9@uint64;
(* _11 = _2 - _10; *)
usub v11 v2 v10;
(* *out_22(D) = _11; *)
mov out22_0 v11;
(* _12 = MEM[(const limb * )in_23(D) + 8B]; *)
mov v12 in23_8;
(* _13 = (__int128 unsigned) _12; *)
vpc v13@uint128 v12@uint64;
(* _14 = _4 - _13; *)
usub v14 v4 v13;
(* MEM[(widelimb * )out_22(D) + 16B] = _14; *)
mov out22_16 v14;
(* _15 = MEM[(const limb * )in_23(D) + 16B]; *)
mov v15 in23_16;
(* _16 = (__int128 unsigned) _15; *)
vpc v16@uint128 v15@uint64;
(* _17 = _6 - _16; *)
usub v17 v6 v16;
(* MEM[(widelimb * )out_22(D) + 32B] = _17; *)
mov out22_32 v17;
(* _18 = MEM[(const limb * )in_23(D) + 24B]; *)
mov v18 in23_24;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* _20 = _8 - _19; *)
usub v20 v8 v19;
(* MEM[(widelimb * )out_22(D) + 48B] = _20; *)
mov out22_48 v20;
(* return; *)


(* Start with unused lhs *)
mov _ out22_0@uint128;
mov _ out22_16@uint128;
mov _ out22_32@uint128;
mov _ out22_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

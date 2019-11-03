proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov small14_0@uint64 _;
mov small14_8@uint64 _;
mov small14_16@uint64 _;
mov small14_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *small_14(D); *)
mov v1 small14_0;
(* _2 = (__int128 unsigned) _1; *)
vpc v2@uint128 v1@uint64;
(* _3 = 0x1fffffffffffffffdfffffffe00 - _2; *)
mov value_lo 0xfffffdfffffffe00@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
usub v3 value v2;
(* *out_15(D) = _3; *)
mov out15_0 v3;
(* _4 = MEM[(const u64 * )small_14(D) + 8B]; *)
mov v4 small14_8;
(* _5 = (__int128 unsigned) _4; *)
vpc v5@uint128 v4@uint64;
(* _6 = 0x200000000000000000000000000 - _5; *)
mov value_lo 0x0@uint64;
mov value_hi 0x20000000000@uint64;
join value value_hi value_lo;
usub v6 value v5;
(* MEM[(limb * )out_15(D) + 16B] = _6; *)
mov out15_16 v6;
(* _7 = MEM[(const u64 * )small_14(D) + 16B]; *)
mov v7 small14_16;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _9 = 0x1fffffffffffffffe0000000200 - _8; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
usub v9 value v8;
(* MEM[(limb * )out_15(D) + 32B] = _9; *)
mov out15_32 v9;
(* _10 = MEM[(const u64 * )small_14(D) + 24B]; *)
mov v10 small14_24;
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* _12 = 0x1fffffffffffffffe0000000200 - _11; *)
mov value_lo 0xfffffe0000000200@uint64;
mov value_hi 0x1ffffffffff@uint64;
join value value_hi value_lo;
usub v12 value v11;
(* MEM[(limb * )out_15(D) + 48B] = _12; *)
mov out15_48 v12;
(* return; *)


(* Start with unused lhs *)
mov _ out15_0@uint128;
mov _ out15_16@uint128;
mov _ out15_32@uint128;
mov _ out15_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

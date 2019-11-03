proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in3_0@uint64 _;
mov in3_8@uint64 _;
mov in3_16@uint64 _;
mov in3_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _7 = *in_3(D); *)
mov v7 in3_0;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _10 = MEM[(const limb * )in_3(D) + 8B]; *)
mov v10 in3_8;
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* _13 = MEM[(const limb * )in_3(D) + 16B]; *)
mov v13 in3_16;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _16 = MEM[(const limb * )in_3(D) + 24B]; *)
mov v16 in3_24;
(* _17 = (__int128 unsigned) _16; *)
vpc v17@uint128 v16@uint64;
(* _18 = 18446744073709551360 - _17; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
usub v18 value v17;
(* _23 = 0x80000000000000010000000000008100 - _8; *)
mov value_lo 0x8100@uint64;
mov value_hi 0x8000000000000001@uint64;
join value value_hi value_lo;
usub v23 value v8;
(* _22 = 0x7fffffffffffff80ff7effffffffff00 - _11; *)
mov value_lo 0xff7effffffffff00@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
usub v22 value v11;
(* _28 = 0x7fffffffffffff80ffffffffffffff00 - _14; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
usub v28 value v14;
(* _51 = _28 >> 56; *)
usplit v51 tmp_to_use v28 56;
(* _52 = _18 + _51; *)
uadd v52 v18 v51;
(* _53 = _28 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v53 v28 value;
(* _54 = _52 >> 56; *)
usplit v54 tmp_to_use v52 56;
(* _55 = _52 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v55 v52 value;
(* _58 = _54 << 40; *)
usplit tmp1 tmp2 v54 88;
shl v58 tmp2 40;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _25 = _22 + _58; *)
uadd v25 v22 v58;
(* _61 = _23 - _54; *)
usub v61 v23 v54;
(* _62 = _61 >> 56; *)
usplit v62 tmp_to_use v61 56;
(* _63 = _25 + _62; *)
uadd v63 v25 v62;
(* _64 = (long unsigned int) _61; *)
cast v64@uint64 v61@uint128;
(* _65 = _64 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v65 v64 0xffffffffffffff@uint64;
(* *out_4(D) = _65; *)
mov out4_0 v65;
(* _66 = _63 >> 56; *)
usplit v66 tmp_to_use v63 56;
(* _67 = _53 + _66; *)
uadd v67 v53 v66;
(* _68 = (long unsigned int) _63; *)
cast v68@uint64 v63@uint128;
(* _69 = _68 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v69 v68 0xffffffffffffff@uint64;
(* MEM[(limb * )out_4(D) + 8B] = _69; *)
mov out4_8 v69;
(* _70 = _67 >> 56; *)
usplit v70 tmp_to_use v67 56;
(* _71 = _55 + _70; *)
uadd v71 v55 v70;
(* _72 = (long unsigned int) _67; *)
cast v72@uint64 v67@uint128;
(* _73 = _72 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v73 v72 0xffffffffffffff@uint64;
(* MEM[(limb * )out_4(D) + 16B] = _73; *)
mov out4_16 v73;
(* _74 = (long unsigned int) _71; *)
cast v74@uint64 v71@uint128;
(* MEM[(limb * )out_4(D) + 24B] = _74; *)
mov out4_24 v74;
(* return; *)


(* Start with unused lhs *)
mov _ out4_0@uint64;
mov _ out4_8@uint64;
mov _ out4_16@uint64;
mov _ out4_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

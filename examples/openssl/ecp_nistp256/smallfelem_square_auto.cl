proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov small38_0@uint64 _;
mov small38_8@uint64 _;
mov small38_16@uint64 _;
mov small38_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *small_38(D); *)
mov v1 small38_0;
(* a_39 = _1 w* _1; *)
umulj a39 v1 v1;
(* _3 = a_39 >> 64; *)
usplit v3 tmp_to_use a39 64;
(* _58 = a_39 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v58 a39 value;
(* *out_40(D) = _58; *)
mov out40_0 v58;
(* _4 = MEM[(const u64 * )small_38(D) + 8B]; *)
mov v4 small38_8;
(* a_42 = _1 w* _4; *)
umulj a42 v1 v4;
(* _6 = a_42 >> 64; *)
usplit v6 tmp_to_use a42 64;
(* _59 = a_42 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v59 a42 value;
(* _69 = _59 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v69 v59 value;
(* _8 = _3 + _69; *)
uadd v8 v3 v69;
(* MEM[(limb * )out_40(D) + 16B] = _8; *)
mov out40_16 v8;
(* _9 = MEM[(const u64 * )small_38(D) + 16B]; *)
mov v9 small38_16;
(* a_44 = _1 w* _9; *)
umulj a44 v1 v9;
(* _11 = a_44 >> 64; *)
usplit v11 tmp_to_use a44 64;
(* _60 = a_44 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v60 a44 value;
(* _12 = _6 + _60; *)
uadd v12 v6 v60;
(* _13 = _12 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v13 v12 value;
(* _14 = MEM[(const u64 * )small_38(D) + 24B]; *)
mov v14 small38_24;
(* a_45 = _1 w* _14; *)
umulj a45 v1 v14;
(* _16 = a_45 >> 64; *)
usplit v16 tmp_to_use a45 64;
(* _61 = a_45 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v61 a45 value;
(* _17 = _11 + _61; *)
uadd v17 v11 v61;
(* a_46 = _4 w* _9; *)
umulj a46 v4 v9;
(* _18 = a_46 >> 64; *)
usplit v18 tmp_to_use a46 64;
(* _62 = a_46 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v62 a46 value;
(* _19 = _17 + _62; *)
uadd v19 v17 v62;
(* _20 = _19 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v20 v19 value;
(* _21 = _16 + _18; *)
uadd v21 v16 v18;
(* a_47 = _4 w* _4; *)
umulj a47 v4 v4;
(* _22 = a_47 >> 64; *)
usplit v22 tmp_to_use a47 64;
(* _63 = a_47 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v63 a47 value;
(* _23 = _13 + _63; *)
uadd v23 v13 v63;
(* MEM[(limb * )out_40(D) + 32B] = _23; *)
mov out40_32 v23;
(* _24 = _20 + _22; *)
uadd v24 v20 v22;
(* MEM[(limb * )out_40(D) + 48B] = _24; *)
mov out40_48 v24;
(* a_50 = _4 w* _14; *)
umulj a50 v4 v14;
(* _25 = a_50 >> 64; *)
usplit v25 tmp_to_use a50 64;
(* _64 = a_50 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v64 a50 value;
(* _26 = _21 + _64; *)
uadd v26 v21 v64;
(* _27 = _26 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v27 v26 value;
(* a_51 = _9 w* _14; *)
umulj a51 v9 v14;
(* _28 = a_51 >> 64; *)
usplit v28 tmp_to_use a51 64;
(* _65 = a_51 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v65 a51 value;
(* _29 = _25 + _65; *)
uadd v29 v25 v65;
(* _30 = _29 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v30 v29 value;
(* _31 = _28 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v31 v28 value;
(* a_52 = _9 w* _9; *)
umulj a52 v9 v9;
(* _32 = a_52 >> 64; *)
usplit v32 tmp_to_use a52 64;
(* _66 = a_52 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v66 a52 value;
(* _33 = _27 + _66; *)
uadd v33 v27 v66;
(* MEM[(limb * )out_40(D) + 64B] = _33; *)
mov out40_64 v33;
(* _34 = _30 + _32; *)
uadd v34 v30 v32;
(* MEM[(limb * )out_40(D) + 80B] = _34; *)
mov out40_80 v34;
(* a_55 = _14 w* _14; *)
umulj a55 v14 v14;
(* _35 = a_55 >> 64; *)
usplit v35 tmp_to_use a55 64;
(* _67 = a_55 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v67 a55 value;
(* _36 = _31 + _67; *)
uadd v36 v31 v67;
(* MEM[(limb * )out_40(D) + 96B] = _36; *)
mov out40_96 v36;
(* MEM[(limb * )out_40(D) + 112B] = _35; *)
mov out40_112 v35;
(* return; *)


(* Start with unused lhs *)
mov _ out40_0@uint128;
mov _ out40_16@uint128;
mov _ out40_32@uint128;
mov _ out40_48@uint128;
mov _ out40_64@uint128;
mov _ out40_80@uint128;
mov _ out40_96@uint128;
mov _ out40_112@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

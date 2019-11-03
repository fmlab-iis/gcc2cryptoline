proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in54_0@uint128 _;
mov in54_16@uint128 _;
mov in54_32@uint128 _;
mov in54_48@uint128 _;
mov in54_64@uint128 _;
mov in54_80@uint128 _;
mov in54_96@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_54(D); *)
mov v1 in54_0;
(* _2 = _1 + 0x80000000000000000000000000008000; *)
mov value_lo 0x8000@uint64;
mov value_hi 0x8000000000000000@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* _3 = MEM[(const widelimb * )in_54(D) + 16B]; *)
mov v3 in54_16;
(* _4 = _3 + 0x7fffffffffffff7fff80000000000000; *)
mov value_lo 0xff80000000000000@uint64;
mov value_hi 0x7fffffffffffff7f@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* _5 = MEM[(const widelimb * )in_54(D) + 32B]; *)
mov v5 in54_32;
(* _6 = _5 + 0x7fffffffffffff800000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* _7 = MEM[(const widelimb * )in_54(D) + 48B]; *)
mov v7 in54_48;
(* _8 = MEM[(const widelimb * )in_54(D) + 64B]; *)
mov v8 in54_64;
(* _9 = MEM[(const widelimb * )in_54(D) + 96B]; *)
mov v9 in54_96;
(* _10 = _9 >> 16; *)
usplit v10 tmp_to_use v9 16;
(* _11 = _8 + _10; *)
uadd v11 v8 v10;
(* _12 = _9 << 40; *)
usplit tmp1 tmp2 v9 88;
shl v12 tmp2 40;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _13 = _12 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v13 v12 value;
(* _15 = _6 - _9; *)
usub v15 v6 v9;
(* _16 = MEM[(const widelimb * )in_54(D) + 80B]; *)
mov v16 in54_80;
(* _17 = _16 >> 16; *)
usplit v17 tmp_to_use v16 16;
(* _64 = _7 + _17; *)
uadd v64 v7 v17;
(* _18 = _13 + _64; *)
uadd v18 v13 v64;
(* _19 = _16 << 40; *)
usplit tmp1 tmp2 v16 88;
shl v19 tmp2 40;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _20 = _19 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v20 v19 value;
(* _21 = _15 + _20; *)
uadd v21 v15 v20;
(* _22 = _4 - _16; *)
usub v22 v4 v16;
(* _23 = _11 >> 16; *)
usplit v23 tmp_to_use v11 16;
(* _24 = _21 + _23; *)
uadd v24 v21 v23;
(* _25 = _11 << 40; *)
usplit tmp1 tmp2 v11 88;
shl v25 tmp2 40;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _26 = _25 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v26 v25 value;
(* _27 = _22 + _26; *)
uadd v27 v22 v26;
(* _28 = _2 - _11; *)
usub v28 v2 v11;
(* _29 = _24 >> 56; *)
usplit v29 tmp_to_use v24 56;
(* _30 = _18 + _29; *)
uadd v30 v18 v29;
(* _31 = _24 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v31 v24 value;
(* _32 = _30 >> 56; *)
usplit v32 tmp_to_use v30 56;
(* _33 = _30 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v33 v30 value;
(* _34 = _30 >> 72; *)
usplit v34 tmp_to_use v30 72;
(* _35 = _31 + _34; *)
uadd v35 v31 v34;
(* _36 = _32 << 40; *)
usplit tmp1 tmp2 v32 88;
shl v36 tmp2 40;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _37 = _36 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v37 v36 value;
(* _38 = _27 + _37; *)
uadd v38 v27 v37;
(* _39 = _28 - _32; *)
usub v39 v28 v32;
(* _40 = _39 >> 56; *)
usplit v40 tmp_to_use v39 56;
(* _41 = _38 + _40; *)
uadd v41 v38 v40;
(* _42 = (long unsigned int) _39; *)
cast v42@uint64 v39@uint128;
(* _43 = _42 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v43 v42 0xffffffffffffff@uint64;
(* *out_55(D) = _43; *)
mov out55_0 v43;
(* _44 = _41 >> 56; *)
usplit v44 tmp_to_use v41 56;
(* _45 = _35 + _44; *)
uadd v45 v35 v44;
(* _46 = (long unsigned int) _41; *)
cast v46@uint64 v41@uint128;
(* _47 = _46 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v47 v46 0xffffffffffffff@uint64;
(* MEM[(limb * )out_55(D) + 8B] = _47; *)
mov out55_8 v47;
(* _48 = _45 >> 56; *)
usplit v48 tmp_to_use v45 56;
(* _49 = _33 + _48; *)
uadd v49 v33 v48;
(* _50 = (long unsigned int) _45; *)
cast v50@uint64 v45@uint128;
(* _51 = _50 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v51 v50 0xffffffffffffff@uint64;
(* MEM[(limb * )out_55(D) + 16B] = _51; *)
mov out55_16 v51;
(* _52 = (long unsigned int) _49; *)
cast v52@uint64 v49@uint128;
(* MEM[(limb * )out_55(D) + 24B] = _52; *)
mov out55_24 v52;
(* return; *)


(* Start with unused lhs *)
mov _ out55_0@uint64;
mov _ out55_8@uint64;
mov _ out55_16@uint64;
mov _ out55_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

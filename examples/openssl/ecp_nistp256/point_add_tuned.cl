/* need long time, maybe use cut */


proc felem_shrink (uint128 a0, uint128 a1, uint128 a2, uint128 a3;
                   uint64 c0, uint64 c1, uint64 c2, uint64 c3) =
{
  true
  &&
  and [
      a0 <u (2**109)@128,
      a1 <u (2**109)@128,
      a2 <u (2**109)@128,
      a3 <u (2**109)@128
  ]
}


(* Start with undefined rhs *)
mov in50_0@uint128 a0;
mov in50_16@uint128 a1;
mov in50_32@uint128 a2;
mov in50_48@uint128 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _2 = MEM[(const limb * )in_50(D) + 48B]; *)
mov v2 in50_48;
(* _3 = _2 + 18446744069414584320; *)
mov value_lo 0xffffffff00000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v3 v2 value;
(* _4 = MEM[(const limb * )in_50(D) + 32B]; *)
mov v4 in50_32;
(* _5 = _4 >> 64; *)
usplit v5 tmp_to_use v4 64;
(* _6 = _3 + _5; *)
uadd v6 v3 v5;
(* _1 = _4 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v1 v4 value;

assert true && v1 = tmp_to_use;
assume v1 = tmp_to_use && true;

(* _8 = _1 + 18446673704965373952; *)
mov value_lo 0xffffc00000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v8 v1 value;
(* _10 = *in_50(D); *)
mov v10 in50_0;
(* _11 = _10 + 18446744073709551615; *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v11 v10 value;
(* _12 = MEM[(const limb * )in_50(D) + 16B]; *)
mov v12 in50_16;
(* _13 = _12 + 0x40000000000000000000ffffffff; *)
mov value_lo 0xffffffff@uint64;
mov value_hi 0x400000000000@uint64;
join value value_hi value_lo;
uadd v13 v12 value;
(* _14 = _6 >> 64; *)
usplit v14 tmp_to_use v6 64;
(* a_52 = (u64) _14; *)
vpc a52@uint64 v14@uint128;
(* _7 = _6 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v7 v6 value;

assert true && v7 = tmp_to_use;
assume v7 = tmp_to_use && true;

(* _16 = _14 << 32; *)
usplit tmp1 tmp2 v14 96;
shl v16 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _76 = _16 - _14; *)
usub v76 v16 v14;
(* _17 = _7 + _76; *)
uadd v17 v7 v76;
(* _18 = _17 >> 64; *)
usplit v18 tmp_to_use v17 64;
(* a_53 = (u64) _18; *)
vpc a53@uint64 v18@uint128;
(* b_54 = a_52 + a_53; *)
uadd b54 a52 a53;
(* _9 = _17 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v9 v17 value;

assert true && v9 = tmp_to_use;
assume v9 = tmp_to_use && true;

(* _20 = _18 << 32; *)
usplit tmp1 tmp2 v18 96;
shl v20 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _75 = _20 - _18; *)
usub v75 v20 v18;
(* _21 = _9 + _75; *)
uadd v21 v9 v75;
(* _22 = (__int128 unsigned) b_54; *)
vpc v22@uint128 b54@uint64;
(* _23 = _11 + _22; *)
uadd v23 v11 v22;
(* _24 = _22 << 32; *)
usplit tmp1 tmp2 v22 96;
shl v24 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _25 = _13 - _24; *)
usub v25 v13 v24;
(* _26 = _21 >> 64; *)
usplit v26 tmp_to_use v21 64;
(* high_55 = (u64) _26; *)
vpc high55@uint64 v26@uint128;
(* high_56 = -high_55; *)
(* TODO: check negation semantics *)
(* ====== modified : carry -> high ======= *)
usubb high high56 0@uint64 high55;
(* low_57 = (u64) _21; *)
cast low57@uint64 v21@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && low57 = tmp_to_use_p;
assume low57 = tmp_to_use && true;

(* low.0_27 = (signed long) _21; *)
cast v27@int64 v21@uint128;

assert true && v27 = low57;
assume v27 = low57 && true;

(* _28 = low.0_27 >> 63; *)
(* TODO: signed operation, need check *)
(* ====== modified: combine ====== *)
(* ssplit v28 tmp_to_use v27 63; *)
(* mask_58 = (u64) _28; *)
(* cast mask58@uint64 v28@int64; *)
(* cast v27_p@uint64 v27; *)
usplit low_h1bit low_l63bit low57 63;
vpc mask@uint1 low_h1bit;
(* low_59 = low_57 & 9223372036854775807; *)
(* Note: 0x7fffffffffffffff@uint64 = 0x7fffffffffffffff *)
(* Note: 0x7fffffffffffffff@uint64 = 0b111111111111111111111111111111111111111111111111111111111111111 *)
and uint64 low59 low57 0x7fffffffffffffff@uint64;
(* low_60 = low_59 + 9223372041149743103; *)
(* uadd low60 low59 0x80000000ffffffff@uint64; *)
uadds discarded low60 low59 0x80000000ffffffff@uint64;
(* low_61 = ~low_60; *)
not uint64 low61 low60;
(* low.1_29 = (signed long) low_61; *)
(* cast v29@int64 low61@uint64; *)
(* _30 = low.1_29 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit v30 tmp_to_use v29 63; *)
(* low_62 = (u64) _30; *)
(* cast low62@uint64 v30@int64; *)
usplit low discarded low61 63;
vpc low@uint1 low;
(* _31 = mask_58 & low_62; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint64 v31 mask58 low62; *)
cmove v31 mask low 0@uint1;
(* mask_63 = _31 | high_56; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint64 mask63 v31 high56; *)
cmove mask63 v31 1@uint1 high;
(* _32 = (__int128 unsigned) mask_63; *)
(* vpc v32@uint128 mask63@uint64; *)
cmove v32@uint128 mask63 0xffffffffffffffff@uint128 0@uint128;
(* _33 = _23 - _32; *)
usub v33 v23 v32;
(* _34 = mask_63 & 4294967295; *)
(* Note: 0xffffffff@uint64 = 0x000000ffffffff *)
(* Note: 0xffffffff@uint64 = 0b00000000000000000000000000000011111111111111111111111111111111 *)
(* and uint64 v34 mask63 0xffffffff@uint64; *)
cmove v34 mask63 0xFFFFFFFF@uint64 0@uint64;
(* _35 = (__int128 unsigned) _34; *)
vpc v35@uint128 v34@uint64;
(* _36 = _25 - _35; *)
usub v36 v25 v35;
(* _37 = mask_63 & 18446744069414584321; *)
(* Note: 0xffffffff00000001@uint64 = 0xffffffff00000001 *)
(* Note: 0xffffffff00000001@uint64 = 0b1111111111111111111111111111111100000000000000000000000000000001 *)
(* and uint64 v37 mask63 0xffffffff00000001@uint64; *)
cmove v37 mask63 0xFFFFFFFF00000001@uint64 0@uint64;
(* _38 = (__int128 unsigned) _37; *)
vpc v38@uint128 v37@uint64;
(* _39 = _21 - _38; *)
usub v39 v21 v38;
(* _40 = _33 >> 64; *)
usplit v40 tmp_to_use v33 64;
(* _41 = _36 + _40; *)
uadd v41 v36 v40;
(* _42 = (long unsigned int) _33; *)
cast v42@uint64 v33@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v42 = tmp_to_use_p;
assume v42 = tmp_to_use_p && true;


(* _43 = _41 >> 64; *)
usplit v43 tmp_to_use v41 64;
(* _44 = _8 + _43; *)
uadd v44 v8 v43;
(* _45 = (long unsigned int) _41; *)
cast v45@uint64 v41@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v45 = tmp_to_use_p;
assume v45 = tmp_to_use && true;


(* _46 = _44 >> 64; *)
usplit v46 tmp_to_use v44 64;
(* _47 = _39 + _46; *)
uadd v47 v39 v46;
(* _48 = (long unsigned int) _44; *)
cast v48@uint64 v44@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v48 = tmp_to_use_p;
assume v48 = tmp_to_use && true;

(* *out_64(D) = _42; *)
mov out64_0 v42;
(* MEM[(u64 * )out_64(D) + 8B] = _45; *)
mov out64_8 v45;
(* MEM[(u64 * )out_64(D) + 16B] = _48; *)
mov out64_16 v48;
(* _49 = (long unsigned int) _47; *)
vpc v49@uint64 v47@uint128;
(* MEM[(u64 * )out_64(D) + 24B] = _49; *)
mov out64_24 v49;
(* return; *)


(* Start with unused lhs *)
mov c0 out64_0@uint64;
mov c1 out64_8@uint64;
mov c2 out64_16@uint64;
mov c3 out64_24@uint64;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3])
  =
  (limbs 64 [a0, a1, a2, a3])
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  true
}


proc felem_reduce (uint128 in0, uint128 in1, uint128 in2, uint128 in3, uint128 in4, uint128 in5, uint128 in6, uint128 in7; uint128 out0, uint128 out1, uint128 out2, uint128 out3) =
{
  true
  &&
  and [
      in0 < (2**64)@128,
      in1 < (3 * 2**64)@128,
      in2 < (5 * 2**64)@128,
      in3 < (7 * 2**64)@128,
      in4 < (7 * 2**64)@128,
      in5 < (5 * 2**64)@128,
      in6 < (3 * 2**64)@128,
      in7 < (2**64)@128
  ]
}


(* Start with undefined rhs *)
mov in10_0@uint128 in0;
mov in10_16@uint128 in1;
mov in10_32@uint128 in2;
mov in10_48@uint128 in3;
mov in10_64@uint128 in4;
mov in10_80@uint128 in5;
mov in10_96@uint128 in6;
mov in10_112@uint128 in7;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_10(D); *)
mov v1 in10_0;
(* _2 = _1 + 0xfffffffffffffffeffffffff0; *)
uadd v2 v1 0xfffffffffffffffeffffffff0@uint128;
(* *out_11(D) = _2; *)
mov out11_0 v2;
(* _3 = MEM[(const limb * )in_10(D) + 16B]; *)
mov v3 in10_16;
(* _4 = _3 + 0x10000000000000000000000000; *)
uadd v4 v3 0x10000000000000000000000000@uint128;
(* MEM[(limb * )out_11(D) + 16B] = _4; *)
mov out11_16 v4;
(* _5 = MEM[(const limb * )in_10(D) + 32B]; *)
mov v5 in10_32;
(* _6 = _5 + 0xffffffffffffffff000000010; *)
uadd v6 v5 0xffffffffffffffff000000010@uint128;
(* MEM[(limb * )out_11(D) + 32B] = _6; *)
mov out11_32 v6;
(* _7 = MEM[(const limb * )in_10(D) + 48B]; *)
mov v7 in10_48;
(* _8 = _7 + 0xffffffffffffffff000000010; *)
uadd v8 v7 0xffffffffffffffff000000010@uint128;
(* MEM[(limb * )out_11(D) + 48B] = _8; *)
mov out11_48 v8;
(* _17 = MEM[(const limb * )in_10(D) + 64B]; *)
mov v17 in10_64;
(* _18 = MEM[(const limb * )in_10(D) + 80B]; *)
mov v18 in10_80;
(* _19 = _18 << 32; *)
usplit tmp1 tmp2 v18 96;
shl v19 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _20 = _17 + _19; *)
uadd v20 v17 v19;
(* _22 = _2 + _20; *)
uadd v22 v2 v20;
(* *out_11(D) = _22; *)
mov out11_0 v22;
(* _24 = _8 - _20; *)
usub v24 v8 v20;
(* MEM[(limb * )out_11(D) + 48B] = _24; *)
mov out11_48 v24;
(* _25 = MEM[(const limb * )in_10(D) + 80B]; *)
mov v25 in10_80;
(* _26 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v26 in10_112;
(* _30 = _4 - _26; *)
usub v30 v4 v26;
(* _29 = _25 + _30; *)
uadd v29 v25 v30;
(* MEM[(limb * )out_11(D) + 16B] = _29; *)
mov out11_16 v29;
(* _28 = _6 - _25; *)
usub v28 v6 v25;
(* _32 = _26 + _28; *)
uadd v32 v26 v28;
(* MEM[(limb * )out_11(D) + 32B] = _32; *)
mov out11_32 v32;
(* _33 = MEM[(const limb * )in_10(D) + 64B]; *)
mov v33 in10_64;
(* _34 = _33 << 32; *)
usplit tmp1 tmp2 v33 96;
shl v34 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _35 = _29 - _34; *)
usub v35 v29 v34;
(* MEM[(limb * )out_11(D) + 16B] = _35; *)
mov out11_16 v35;
(* _36 = MEM[(const limb * )in_10(D) + 64B]; *)
mov v36 in10_64;
(* _37 = _36 << 32; *)
usplit tmp1 tmp2 v36 96;
shl v37 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _38 = _24 + _37; *)
uadd v38 v24 v37;
(* MEM[(limb * )out_11(D) + 48B] = _38; *)
mov out11_48 v38;
(* _39 = MEM[(const limb * )in_10(D) + 80B]; *)
mov v39 in10_80;
(* _40 = _39 << 32; *)
usplit tmp1 tmp2 v39 96;
shl v40 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _41 = _32 - _40; *)
usub v41 v32 v40;
(* MEM[(limb * )out_11(D) + 32B] = _41; *)
mov out11_32 v41;
(* _42 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v42 in10_96;
(* _43 = _22 - _42; *)
usub v43 v22 v42;
(* *out_11(D) = _43; *)
mov out11_0 v43;
(* _44 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v44 in10_96;
(* _45 = _44 << 32; *)
usplit tmp1 tmp2 v44 96;
shl v45 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _46 = _43 - _45; *)
usub v46 v43 v45;
(* *out_11(D) = _46; *)
mov out11_0 v46;
(* _47 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v47 in10_96;
(* _48 = _47 << 33; *)
usplit tmp1 tmp2 v47 95;
shl v48 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _49 = _35 + _48; *)
uadd v49 v35 v48;
(* MEM[(limb * )out_11(D) + 16B] = _49; *)
mov out11_16 v49;
(* _50 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v50 in10_96;
(* _51 = _50 * 2; *)
umul v51 v50 0x2@uint128;
(* _52 = _41 + _51; *)
uadd v52 v41 v51;
(* MEM[(limb * )out_11(D) + 32B] = _52; *)
mov out11_32 v52;
(* _53 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v53 in10_96;
(* _54 = _53 << 32; *)
usplit tmp1 tmp2 v53 96;
shl v54 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _55 = _38 - _54; *)
usub v55 v38 v54;
(* MEM[(limb * )out_11(D) + 48B] = _55; *)
mov out11_48 v55;
(* _56 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v56 in10_112;
(* _57 = _46 - _56; *)
usub v57 v46 v56;
(* *out_11(D) = _57; *)
mov out11_0 v57;
(* _58 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v58 in10_112;
(* _59 = _58 << 32; *)
usplit tmp1 tmp2 v58 96;
shl v59 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _60 = _57 - _59; *)
usub v60 v57 v59;
(* *out_11(D) = _60; *)
mov out11_0 v60;
(* _61 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v61 in10_112;
(* _62 = _61 << 33; *)
usplit tmp1 tmp2 v61 95;
shl v62 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _63 = _52 + _62; *)
uadd v63 v52 v62;
(* MEM[(limb * )out_11(D) + 32B] = _63; *)
mov out11_32 v63;
(* _64 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v64 in10_112;
(* _65 = _64 * 3; *)
umul v65 v64 0x3@uint128;
(* _66 = _55 + _65; *)
uadd v66 v55 v65;
(* MEM[(limb * )out_11(D) + 48B] = _66; *)
mov out11_48 v66;
(* return; *)


(* Start with unused lhs *)
mov out0 out11_0@uint128;
mov out1 out11_16@uint128;
mov out2 out11_32@uint128;
mov out3 out11_48@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [out0, out1, out2, out3])
  =
  (
     (limbs 64 [in0, in1, in2, in3, in4, in5, in6, in7])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  and [
      out0 < (2**101)@128,
      out1 < (2**101)@128,
      out2 < (2**101)@128,
      out3 < (2**101)@128
  ]
}

/* inline only */
proc felem_reduce_ (uint128 out0, uint128 out1, uint128 out2, uint128 out3, uint128 in4, uint128 in5, uint128 in6, uint128 in7; uint128 c0, uint128 c1, uint128 c2, uint128 c3) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in51_64@uint128 in4;
mov in51_80@uint128 in5;
mov in51_96@uint128 in6;
mov in51_112@uint128 in7;
mov out53_0@uint128 out0;
mov out53_16@uint128 out1;
mov out53_32@uint128 out2;
mov out53_48@uint128 out3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = MEM[(const limb * )in_51(D) + 64B]; *)
mov v1 in51_64;
(* _2 = MEM[(const limb * )in_51(D) + 80B]; *)
mov v2 in51_80;
(* _3 = _2 << 32; *)
usplit tmp1 tmp2 v2 96;
shl v3 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _4 = _1 + _3; *)
uadd v4 v1 v3;
(* _5 = *out_53(D); *)
mov v5 out53_0;
(* _7 = _4 + _5; *)
uadd v7 v4 v5;
(* *out_53(D) = _7; *)
mov out53_0 v7;
(* _8 = MEM[(limb * )out_53(D) + 48B]; *)
mov v8 out53_48;
(* _9 = _8 - _4; *)
usub v9 v8 v4;
(* MEM[(limb * )out_53(D) + 48B] = _9; *)
mov out53_48 v9;
(* _10 = MEM[(const limb * )in_51(D) + 80B]; *)
mov v10 in51_80;
(* _11 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v11 in51_112;
(* _13 = MEM[(limb * )out_53(D) + 16B]; *)
mov v13 out53_16;
(* _73 = _10 + _13; *)
uadd v73 v10 v13;
(* _14 = _73 - _11; *)
usub v14 v73 v11;
(* MEM[(limb * )out_53(D) + 16B] = _14; *)
mov out53_16 v14;
(* _15 = MEM[(limb * )out_53(D) + 32B]; *)
mov v15 out53_32;
(* _72 = _11 + _15; *)
uadd v72 v11 v15;
(* _16 = _72 - _10; *)
usub v16 v72 v10;
(* MEM[(limb * )out_53(D) + 32B] = _16; *)
mov out53_32 v16;
(* _17 = MEM[(const limb * )in_51(D) + 64B]; *)
mov v17 in51_64;
(* _18 = _17 << 32; *)
usplit tmp1 tmp2 v17 96;
shl v18 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _19 = _14 - _18; *)
usub v19 v14 v18;
(* MEM[(limb * )out_53(D) + 16B] = _19; *)
mov out53_16 v19;
(* _20 = MEM[(const limb * )in_51(D) + 64B]; *)
mov v20 in51_64;
(* _21 = _20 << 32; *)
usplit tmp1 tmp2 v20 96;
shl v21 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _22 = _9 + _21; *)
uadd v22 v9 v21;
(* MEM[(limb * )out_53(D) + 48B] = _22; *)
mov out53_48 v22;
(* _23 = MEM[(const limb * )in_51(D) + 80B]; *)
mov v23 in51_80;
(* _24 = _23 << 32; *)
usplit tmp1 tmp2 v23 96;
shl v24 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _25 = _16 - _24; *)
usub v25 v16 v24;
(* MEM[(limb * )out_53(D) + 32B] = _25; *)
mov out53_32 v25;
(* _26 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v26 in51_96;
(* _27 = _7 - _26; *)
usub v27 v7 v26;
(* *out_53(D) = _27; *)
mov out53_0 v27;
(* _28 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v28 in51_96;
(* _29 = _28 << 32; *)
usplit tmp1 tmp2 v28 96;
shl v29 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _30 = _27 - _29; *)
usubb borrow_v30 v30 v27 v29;
(* *out_53(D) = _30; *)
mov out53_0 v30;
(* _31 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v31 in51_96;
(* _32 = _31 << 33; *)
usplit tmp1 tmp2 v31 95;
shl v32 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _33 = _19 + _32; *)
uadd v33 v19 v32;
(* MEM[(limb * )out_53(D) + 16B] = _33; *)
mov out53_16 v33;
(* _34 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v34 in51_96;
(* _35 = _34 * 2; *)
umul v35 v34 0x2@uint128;
(* _36 = _25 + _35; *)
uadd v36 v25 v35;
(* MEM[(limb * )out_53(D) + 32B] = _36; *)
mov out53_32 v36;
(* _37 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v37 in51_96;
(* _38 = _37 << 32; *)
usplit tmp1 tmp2 v37 96;
shl v38 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _39 = _22 - _38; *)
usub v39 v22 v38;
(* MEM[(limb * )out_53(D) + 48B] = _39; *)
mov out53_48 v39;
(* _40 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v40 in51_112;
(* _41 = _30 - _40; *)
usub v41 v30 v40;
(* *out_53(D) = _41; *)
mov out53_0 v41;
(* _42 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v42 in51_112;
(* _43 = _42 << 32; *)
usplit tmp1 tmp2 v42 96;
shl v43 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _44 = _41 - _43; *)
usub v44 v41 v43;
(* *out_53(D) = _44; *)
mov out53_0 v44;
(* _45 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v45 in51_112;
(* _46 = _45 << 33; *)
usplit tmp1 tmp2 v45 95;
shl v46 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _47 = _36 + _46; *)
uadd v47 v36 v46;
(* MEM[(limb * )out_53(D) + 32B] = _47; *)
mov out53_32 v47;
(* _48 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v48 in51_112;
(* _49 = _48 * 3; *)
umul v49 v48 0x3@uint128;
(* _50 = _39 + _49; *)
uadd v50 v39 v49;
(* MEM[(limb * )out_53(D) + 48B] = _50; *)
mov out53_48 v50;
(* return; *)


(* Start with unused lhs *)
mov c0 out53_0@uint128;
mov c1 out53_16@uint128;
mov c2 out53_32@uint128;
mov c3 out53_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

proc smallfelem_mul (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
                     uint64 b0, uint64 b1, uint64 b2, uint64 b3;
                     uint128 c0, uint128 c1, uint128 c2, uint128 c3,
                     uint128 c4, uint128 c5, uint128 c6, uint128 c7) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov small158_0@uint64 a0;
mov small158_8@uint64 a1;
mov small158_16@uint64 a2;
mov small158_24@uint64 a3;
mov small259_0@uint64 b0;
mov small259_8@uint64 b1;
mov small259_16@uint64 b2;
mov small259_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *small1_58(D); *)
mov v1 small158_0;
(* _3 = *small2_59(D); *)
mov v3 small259_0;
(* a_60 = _1 w* _3; *)
umulj a60 v1 v3;
(* _5 = a_60 >> 64; *)
usplit v5 tmp_to_use a60 64;
(* _85 = a_60 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v85 a60 value;

assert true && v85 = tmp_to_use;
assume v85 = tmp_to_use && true;

(* *out_61(D) = _85; *)
mov out61_0 v85;
(* _6 = MEM[(const u64 * )small2_59(D) + 8B]; *)
mov v6 small259_8;
(* a_63 = _1 w* _6; *)
umulj a63 v1 v6;
(* _8 = a_63 >> 64; *)
usplit v8 tmp_to_use a63 64;
(* _86 = a_63 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v86 a63 value;

assert true && v86 = tmp_to_use;
assume v86 = tmp_to_use && true;

(* _9 = _5 + _86; *)
uadd v9 v5 v86;
(* _10 = MEM[(const u64 * )small1_58(D) + 8B]; *)
mov v10 small158_8;
(* a_64 = _3 w* _10; *)
umulj a64 v3 v10;
(* _12 = a_64 >> 64; *)
usplit v12 tmp_to_use a64 64;
(* _87 = a_64 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 a64 value;

assert true && v87 = tmp_to_use;
assume v87 = tmp_to_use && true;

(* _13 = _9 + _87; *)
uadd v13 v9 v87;
(* MEM[(limb * )out_61(D) + 16B] = _13; *)
mov out61_16 v13;
(* _14 = _8 + _12; *)
uadd v14 v8 v12;
(* _15 = MEM[(const u64 * )small2_59(D) + 16B]; *)
mov v15 small259_16;
(* a_66 = _1 w* _15; *)
umulj a66 v1 v15;
(* _17 = a_66 >> 64; *)
usplit v17 tmp_to_use a66 64;
(* _88 = a_66 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v88 a66 value;

assert true && v88 = tmp_to_use;
assume v88 = tmp_to_use && true;

(* _18 = _14 + _88; *)
uadd v18 v14 v88;
(* a_67 = _6 w* _10; *)
umulj a67 v6 v10;
(* _19 = a_67 >> 64; *)
usplit v19 tmp_to_use a67 64;
(* _89 = a_67 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v89 a67 value;

assert true && v89 = tmp_to_use;
assume v89 = tmp_to_use && true;

(* _20 = _18 + _89; *)
uadd v20 v18 v89;
(* _21 = _17 + _19; *)
uadd v21 v17 v19;
(* _22 = MEM[(const u64 * )small1_58(D) + 16B]; *)
mov v22 small158_16;
(* a_68 = _3 w* _22; *)
umulj a68 v3 v22;
(* _24 = a_68 >> 64; *)
usplit v24 tmp_to_use a68 64;
(* _90 = a_68 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v90 a68 value;

assert true && v90 = tmp_to_use;
assume v90 = tmp_to_use && true;

(* _25 = _20 + _90; *)
uadd v25 v20 v90;
(* MEM[(limb * )out_61(D) + 32B] = _25; *)
mov out61_32 v25;
(* _26 = _21 + _24; *)
uadd v26 v21 v24;
(* _27 = MEM[(const u64 * )small2_59(D) + 24B]; *)
mov v27 small259_24;
(* a_70 = _1 w* _27; *)
umulj a70 v1 v27;
(* _29 = a_70 >> 64; *)
usplit v29 tmp_to_use a70 64;
(* _91 = a_70 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v91 a70 value;

assert true && v91 = tmp_to_use;
assume v91 = tmp_to_use && true;

(* _30 = _26 + _91; *)
uadd v30 v26 v91;
(* a_71 = _10 w* _15; *)
umulj a71 v10 v15;
(* _31 = a_71 >> 64; *)
usplit v31 tmp_to_use a71 64;
(* _92 = a_71 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v92 a71 value;

assert true && v92 = tmp_to_use;
assume v92 = tmp_to_use && true;

(* _32 = _30 + _92; *)
uadd v32 v30 v92;
(* _33 = _29 + _31; *)
uadd v33 v29 v31;
(* a_72 = _6 w* _22; *)
umulj a72 v6 v22;
(* _34 = a_72 >> 64; *)
usplit v34 tmp_to_use a72 64;
(* _93 = a_72 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v93 a72 value;

assert true && v93 = tmp_to_use;
assume v93 = tmp_to_use && true;

(* _35 = _32 + _93; *)
uadd v35 v32 v93;
(* _36 = _33 + _34; *)
uadd v36 v33 v34;
(* _37 = MEM[(const u64 * )small1_58(D) + 24B]; *)
mov v37 small158_24;
(* a_73 = _3 w* _37; *)
umulj a73 v3 v37;
(* _39 = a_73 >> 64; *)
usplit v39 tmp_to_use a73 64;
(* _94 = a_73 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v94 a73 value;

assert true && v94 = tmp_to_use;
assume v94 = tmp_to_use && true;

(* _40 = _35 + _94; *)
uadd v40 v35 v94;
(* MEM[(limb * )out_61(D) + 48B] = _40; *)
mov out61_48 v40;
(* _41 = _36 + _39; *)
uadd v41 v36 v39;
(* a_75 = _10 w* _27; *)
umulj a75 v10 v27;
(* _42 = a_75 >> 64; *)
usplit v42 tmp_to_use a75 64;
(* _95 = a_75 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v95 a75 value;

assert true && v95 = tmp_to_use;
assume v95 = tmp_to_use && true;

(* _43 = _41 + _95; *)
uadd v43 v41 v95;
(* a_76 = _15 w* _22; *)
umulj a76 v15 v22;
(* _44 = a_76 >> 64; *)
usplit v44 tmp_to_use a76 64;
(* _96 = a_76 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v96 a76 value;

assert true && v96 = tmp_to_use;
assume v96 = tmp_to_use && true;


(* _45 = _43 + _96; *)
uadd v45 v43 v96;
(* _46 = _42 + _44; *)
uadd v46 v42 v44;
(* a_77 = _6 w* _37; *)
umulj a77 v6 v37;
(* _47 = a_77 >> 64; *)
usplit v47 tmp_to_use a77 64;
(* _97 = a_77 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v97 a77 value;

assert true && v97 = tmp_to_use;
assume v97 = tmp_to_use && true;


(* _48 = _45 + _97; *)
uadd v48 v45 v97;
(* MEM[(limb * )out_61(D) + 64B] = _48; *)
mov out61_64 v48;
(* _49 = _46 + _47; *)
uadd v49 v46 v47;
(* a_79 = _22 w* _27; *)
umulj a79 v22 v27;
(* _50 = a_79 >> 64; *)
usplit v50 tmp_to_use a79 64;
(* _98 = a_79 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v98 a79 value;

assert true && v98 = tmp_to_use;
assume v98 = tmp_to_use && true;


(* _51 = _49 + _98; *)
uadd v51 v49 v98;
(* a_80 = _15 w* _37; *)
umulj a80 v15 v37;
(* _52 = a_80 >> 64; *)
usplit v52 tmp_to_use a80 64;
(* _99 = a_80 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v99 a80 value;

assert true && v99 = tmp_to_use;
assume v99 = tmp_to_use && true;


(* _53 = _51 + _99; *)
uadd v53 v51 v99;
(* MEM[(limb * )out_61(D) + 80B] = _53; *)
mov out61_80 v53;
(* _54 = _50 + _52; *)
uadd v54 v50 v52;
(* a_82 = _27 w* _37; *)
umulj a82 v27 v37;
(* _55 = a_82 >> 64; *)
usplit v55 tmp_to_use a82 64;
(* _100 = a_82 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v100 a82 value;

assert true && v100 = tmp_to_use;
assume v100 = tmp_to_use && true;

(* _56 = _54 + _100; *)
uadd v56 v54 v100;
(* MEM[(limb * )out_61(D) + 96B] = _56; *)
mov out61_96 v56;
(* MEM[(limb * )out_61(D) + 112B] = _55; *)
mov out61_112 v55;
(* return; *)


(* Start with unused lhs *)
mov c0 out61_0@uint128;
mov c1 out61_16@uint128;
mov c2 out61_32@uint128;
mov c3 out61_48@uint128;
mov c4 out61_64@uint128;
mov c5 out61_80@uint128;
mov c6 out61_96@uint128;
mov c7 out61_112@uint128;
(* End with unsed lhs *)



{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      (limbs 64 [a0, a1, a2, a3])
      *
      (limbs 64 [b0, b1, b2, b3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and
  [
      c0 <u (7 * 2**64)@128,
      c1 <u (7 * 2**64)@128,
      c2 <u (7 * 2**64)@128,
      c3 <u (7 * 2**64)@128,
      c4 <u (7 * 2**64)@128,
      c5 <u (7 * 2**64)@128,
      c6 <u (7 * 2**64)@128,
      c7 <u (7 * 2**64)@128
  ]
}

proc smallfelem_square (uint64 a0, uint64 a1, uint64 a2, uint64 a3;
                        uint128 c0, uint128 c1, uint128 c2, uint128 c3,
                        uint128 c4, uint128 c5, uint128 c6, uint128 c7) =
{
  true
  &&
  true
}



(* Start with undefined rhs *)
mov small38_0@uint64 a0;
mov small38_8@uint64 a1;
mov small38_16@uint64 a2;
mov small38_24@uint64 a3;
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

assert true && v58 = tmp_to_use;
assume v58 = tmp_to_use && true;

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

assert true && v59 = tmp_to_use;
assume v59 = tmp_to_use && true;

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

assert true && v60 = tmp_to_use;
assume v60 = tmp_to_use && true;

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

assert true && v61 = tmp_to_use;
assume v61 = tmp_to_use && true;

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

assert true && v62 = tmp_to_use;
assume v62 = tmp_to_use && true;

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

assert true && v63 = tmp_to_use;
assume v63 = tmp_to_use && true;

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

assert true && v64 = tmp_to_use;
assume v64 = tmp_to_use && true;

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

assert true && v65 = tmp_to_use;
assume v65 = tmp_to_use && true;

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

assert true && v66 = tmp_to_use;
assume v66 = tmp_to_use && true;

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

assert true && v67 = tmp_to_use;
assume v67 = tmp_to_use && true;

(* _36 = _31 + _67; *)
uadd v36 v31 v67;
(* MEM[(limb * )out_40(D) + 96B] = _36; *)
mov out40_96 v36;
(* MEM[(limb * )out_40(D) + 112B] = _35; *)
mov out40_112 v35;
(* return; *)


(* Start with unused lhs *)
mov c0 out40_0@uint128;
mov c1 out40_16@uint128;
mov c2 out40_32@uint128;
mov c3 out40_48@uint128;
mov c4 out40_64@uint128;
mov c5 out40_80@uint128;
mov c6 out40_96@uint128;
mov c7 out40_112@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      sq
      (limbs 64 [a0, a1, a2, a3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and
  [
      c0 <u (7 * 2**64)@128,
      c1 <u (7 * 2**64)@128,
      c2 <u (7 * 2**64)@128,
      c3 <u (7 * 2**64)@128,
      c4 <u (7 * 2**64)@128,
      c5 <u (7 * 2**64)@128,
      c6 <u (7 * 2**64)@128,
      c7 <u (7 * 2**64)@128
  ]
}

proc felem_mul (uint128 a0, uint128 a1, uint128 a2, uint128 a3,
                uint128 b0, uint128 b1, uint128 b2, uint128 b3;
                uint128 c0, uint128 c1, uint128 c2, uint128 c3,
                uint128 c4, uint128 c5, uint128 c6, uint128 c7) =
{
  true
  &&
  and [
      a0 <u (2**109)@128, a1 <u (2**109)@128,
      a2 <u (2**109)@128, a3 <u (2**109)@128,
      b0 <u (2**109)@128, b1 <u (2**109)@128,
      b2 <u (2**109)@128, b3 <u (2**109)@128
  ]
}


/* Start with undefined rhs */
mov in12_0@uint128 a0;
mov in12_16@uint128 a1;
mov in12_32@uint128 a2;
mov in12_48@uint128 a3;
mov in24_0@uint128 b0;
mov in24_16@uint128 b1;
mov in24_32@uint128 b2;
mov in24_48@uint128 b3;
/* End with undefined rhs */



/* BB's index is 2 */

/* _98 = MEM[(const limb *)in1_2(D) + 48B]; */
mov v98 in12_48;
/* _99 = _98 + 18446744069414584320; */
uadd v99 v98 0xffffffff00000000@uint128;
/* _100 = MEM[(const limb *)in1_2(D) + 32B]; */
mov v100 in12_32;
/* _101 = _100 >> 64; */
usplit v101 tmp_to_use v100 64;
/* _102 = _99 + _101; */
uadd v102 v99 v101;
/* _103 = _100 & 18446744073709551615; */
and uint128 v103 v100 0xffffffffffffffff@uint128;

assert true && v103 = tmp_to_use;
assume v103 = tmp_to_use && true;

/* _104 = _103 + 18446673704965373952; */
uadd v104 v103 0xffffc00000000000@uint128;
/* _105 = *in1_2(D); */
mov v105 in12_0;
/* _106 = _105 + 18446744073709551615; */
uadd v106 v105 0xffffffffffffffff@uint128;
/* _107 = MEM[(const limb *)in1_2(D) + 16B]; */
mov v107 in12_16;
/* _108 = _107 + 0x40000000000000000000ffffffff; */
uadd v108 v107 0x40000000000000000000ffffffff@uint128;
/* _109 = _102 >> 64; */
usplit v109 tmp_to_use v102 64;
/* a_110 = (u64) _109; */
vpc a110@uint64 v109@uint128;
/* _111 = _102 & 18446744073709551615; */
and uint128 v111 v102 0xffffffffffffffff@uint128;

assert true && v111 = tmp_to_use;
assume v111 = tmp_to_use && true;

/* _113 = _109 << 32; */
usplit tmp1 tmp2 v109 96;
shl v113 tmp2 32;
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
/* _179 = _113 - _109; */
usub v179 v113 v109;
/* _114 = _111 + _179; */
uadd v114 v111 v179;
/* _115 = _114 >> 64; */
usplit v115 tmp_to_use v114 64;
/* a_116 = (u64) _115; */
vpc a116@uint64 v115@uint128;
/* b_117 = a_110 + a_116; */
uadd b117 a110 a116;
/* _118 = _114 & 18446744073709551615; */
and uint128 v118 v114 0xffffffffffffffff@uint128;

assert true && v118 = tmp_to_use;
assume v118 = tmp_to_use && true;

/* _120 = _115 << 32; */
usplit tmp1 tmp2 v115 96;
shl v120 tmp2 32;
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
/* _178 = _120 - _115; */
usub v178 v120 v115;
/* _121 = _118 + _178; */
uadd v121 v118 v178;
/* _122 = (__int128 unsigned) b_117; */
vpc v122@uint128 b117@uint64;
/* _123 = _106 + _122; */
uadd v123 v106 v122;
/* _124 = _122 << 32; */
usplit tmp1 tmp2 v122 96;
shl v124 tmp2 32;
/* TODO: check tmp1 heuristic */
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
/* _125 = _108 - _124; */
usub v125 v108 v124;
/* _126 = _121 >> 64; */
usplit v126 tmp_to_use v121 64;
/* high_127 = (u64) _126; */
vpc high127@uint64 v126@uint128;
/* high_128 = -high_127; */
/* TODO: check negation semantics */
usubb high high128 0@uint64 high127;
/* low_129 = (u64) _121; */
cast low129@uint64 v121@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && low129 = tmp_to_use_p;
assume low129 = tmp_to_use && true;

/* low0_130 = (signed long) _121; */
cast v130@int64 v121@uint128;

assert true && v130 = low129;
assume v130 = low129 && true;

/* _131 = low0_130 >> 63; */
/* TODO: signed operation, need check */
/* ssplit v131 tmp_to_use v130 63; */
/* mask_132 = (u64) _131; */
/* cast mask132@uint64 v131@int64; */
usplit low_h1bit low_l63bit low129 63;
vpc mask@uint1 low_h1bit;
/* low_133 = low_129 & 9223372036854775807; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 low133 low129 0x7fffffffffffffff@uint64;
/* low_134 = low_133 + 9223372041149743103; */
uadds discarded low134 low133 0x80000000ffffffff@uint64;
/* low_135 = ~low_134; */
not uint64 low135 low134;
/* low1_136 = (signed long) low_135; */
/* cast v136@int64 low135@uint64; */
/* _137 = low1_136 >> 63; */
/* TODO: signed operation, need check */
/* ssplit v137 tmp_to_use v136 63; */
/* low_138 = (u64) _137; */
/* cast low138@uint64 v137@int64; */
usplit low discarded low135 63;
vpc low@uint1 low;
/* _139 = mask_132 & low_138; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* and uint64 v139 mask132 low138; */
cmove v139 mask low 0@uint1;
/* mask_140 = high_128 | _139; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* or uint64 mask140 high128 v139; */
cmove mask140 v139 1@uint1 high;
/* _141 = (__int128 unsigned) mask_140; */
/* vpc v141@uint128 mask140@uint64; */
cmove v141@uint128 mask140 0xffffffffffffffff@uint128 0@uint128;
/* _142 = _123 - _141; */
usub v142 v123 v141;
/* _143 = mask_140 & 4294967295; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* and uint64 v143 mask140 0xffffffff@uint64; */
cmove v143 mask140 0xFFFFFFFF@uint64 0@uint64;
/* _144 = (__int128 unsigned) _143; */
vpc v144@uint128 v143@uint64;
/* _145 = _125 - _144; */
usub v145 v125 v144;
/* _146 = mask_140 & 18446744069414584321; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* and uint64 v146 mask140 0xffffffff00000001@uint64; */
cmove v146 mask140 0xFFFFFFFF00000001@uint64 0@uint64;
/* _147 = (__int128 unsigned) _146; */
vpc v147@uint128 v146@uint64;
/* _148 = _121 - _147; */
usub v148 v121 v147;
/* _149 = _142 >> 64; */
usplit v149 tmp_to_use_v142 v142 64;
/* _150 = _145 + _149; */
uadd v150 v145 v149;
/* _152 = _150 >> 64; */
usplit v152 tmp_to_use_v150 v150 64;
/* _153 = _104 + _152; */
uadd v153 v104 v152;
/* _155 = _153 >> 64; */
usplit v155 tmp_to_use_v153 v153 64;
/* _156 = _148 + _155; */
uadd v156 v148 v155;
/* felem_shrink (&small2, in2_4(D)); */
call felem_shrink (in24_0, in24_16, in24_32, in24_48,
                   small2_0, small2_8, small2_16, small2_24);
/* _159 = _142 & 18446744073709551615; */
and uint128 v159 v142 0xffffffffffffffff@uint128;
assert true && v159 = tmp_to_use_v142;
assume v159 = tmp_to_use_v142 && true;
/* _12 = MEM[(const u64 *)&small2]; */
mov v12 small2_0;
/* _13 = (__int128 unsigned) _12; */
vpc v13@uint128 v12@uint64;
/* a_14 = _13 * _159; */
umul a14 v13 v159;
/* _15 = a_14 >> 64; */
usplit v15 tmp_to_use a14 64;
/* _16 = a_14 & 18446744073709551615; */
and uint128 v16 a14 0xffffffffffffffff@uint128;
assert true && v16 = tmp_to_use;
assume v16 = tmp_to_use && true;
/* *out_6(D) = _16; */
mov out6_0 v16;
/* _17 = MEM[(const u64 *)&small2 + 8B]; */
mov v17 small2_8;
/* _18 = (__int128 unsigned) _17; */
vpc v18@uint128 v17@uint64;
/* a_19 = _18 * _159; */
umul a19 v18 v159;
/* _20 = a_19 >> 64; */
usplit v20 tmp_to_use a19 64;
/* _21 = a_19 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v21 a19 0xffffffffffffffff@uint128;
assert true && v21 = tmp_to_use;
assume v21 = tmp_to_use && true;
/* _22 = _15 + _21; */
uadd v22 v15 v21;
/* _160 = _150 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v160 v150 0xffffffffffffffff@uint128;
assert true && v160 = tmp_to_use_v150;
assume v160 = tmp_to_use_v150 && true;
/* a_25 = _13 * _160; */
umul a25 v13 v160;
/* _26 = a_25 >> 64; */
usplit v26 tmp_to_use a25 64;
/* _27 = a_25 & 18446744073709551615; */
and uint128 v27 a25 0xffffffffffffffff@uint128;
assert true && v27 = tmp_to_use;
assume v27 = tmp_to_use && true;
/* _28 = _22 + _27; */
uadd v28 v22 v27;
/* MEM[(limb *)out_6(D) + 16B] = _28; */
mov out6_16 v28;
/* _30 = MEM[(const u64 *)&small2 + 16B]; */
mov v30 small2_16;
/* _31 = (__int128 unsigned) _30; */
vpc v31@uint128 v30@uint64;
/* a_32 = _31 * _159; */
umul a32 v31 v159;
/* _33 = a_32 >> 64; */
usplit v33 tmp_to_use a32 64;
/* _34 = a_32 & 18446744073709551615; */
and uint128 v34 a32 0xffffffffffffffff@uint128;
assert true && v34 = tmp_to_use;
assume v34 = tmp_to_use && true;
/* _177 = _20 + _34; */
uadd v177 v20 v34;
/* _35 = _26 + _177; */
uadd v35 v26 v177;
/* a_36 = _18 * _160; */
umul a36 v18 v160;
/* _37 = a_36 >> 64; */
usplit v37 tmp_to_use a36 64;
/* _38 = a_36 & 18446744073709551615; */
and uint128 v38 a36 0xffffffffffffffff@uint128;
assert true && v38 = tmp_to_use;
assume v38 = tmp_to_use && true;
/* _39 = _35 + _38; */
uadd v39 v35 v38;
/* _161 = _153 & 18446744073709551615; */
and uint128 v161 v153 0xffffffffffffffff@uint128;
assert true && v161 = tmp_to_use_v153;
assume v161 = tmp_to_use_v153 && true;
/* a_43 = _13 * _161; */
umul a43 v13 v161;
/* _44 = a_43 >> 64; */
usplit v44 tmp_to_use a43 64;
/* _45 = a_43 & 18446744073709551615; */
and uint128 v45 a43 0xffffffffffffffff@uint128;
assert true && v45 = tmp_to_use;
assume v45 = tmp_to_use && true;
/* _46 = _39 + _45; */
uadd v46 v39 v45;
/* MEM[(limb *)out_6(D) + 32B] = _46; */
mov out6_32 v46;
/* _48 = MEM[(const u64 *)&small2 + 24B]; */
mov v48 small2_24;
/* _49 = (__int128 unsigned) _48; */
vpc v49@uint128 v48@uint64;
/* a_50 = _49 * _159; */
umul a50 v49 v159;
/* _51 = a_50 >> 64; */
usplit v51 tmp_to_use a50 64;
/* _52 = a_50 & 18446744073709551615; */
and uint128 v52 a50 0xffffffffffffffff@uint128;
assert true && v52 = tmp_to_use;
assume v52 = tmp_to_use && true;
/* _174 = _33 + _52; */
uadd v174 v33 v52;
/* _175 = _37 + _174; */
uadd v175 v37 v174;
/* a_54 = _31 * _160; */
umul a54 v31 v160;
/* _55 = a_54 >> 64; */
usplit v55 tmp_to_use a54 64;
/* _56 = a_54 & 18446744073709551615; */
and uint128 v56 a54 0xffffffffffffffff@uint128;
assert true && v56 = tmp_to_use;
assume v56 = tmp_to_use && true;
/* _176 = _56 + _175; */
uadd v176 v56 v175;
/* _57 = _44 + _176; */
uadd v57 v44 v176;
/* a_59 = _18 * _161; */
umul a59 v18 v161;
/* _60 = a_59 >> 64; */
usplit v60 tmp_to_use a59 64;
/* _61 = a_59 & 18446744073709551615; */
and uint128 v61 a59 0xffffffffffffffff@uint128;
assert true && v61 = tmp_to_use;
assume v61 = tmp_to_use && true;
/* _62 = _57 + _61; */
uadd v62 v57 v61;
/* _162 = _156 & 18446744073709551615; */
and uint128 v162 v156 0xffffffffffffffff@uint128;
assert true && v162 = v156;
assume v162 = v156 && true;
/* a_66 = _13 * _162; */
umul a66 v13 v162;
/* _67 = a_66 >> 64; */
usplit v67 tmp_to_use a66 64;
/* _68 = a_66 & 18446744073709551615; */
and uint128 v68 a66 0xffffffffffffffff@uint128;
assert true && v68 = tmp_to_use;
assume v68 = tmp_to_use && true;
/* _69 = _62 + _68; */
uadd v69 v62 v68;
/* MEM[(limb *)out_6(D) + 48B] = _69; */
mov out6_48 v69;
/* a_71 = _49 * _160; */
umul a71 v49 v160;
/* _72 = a_71 >> 64; */
usplit v72 tmp_to_use a71 64;
/* _73 = a_71 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v73 a71 0xffffffffffffffff@uint128;
assert true && v73 = tmp_to_use;
assume v73 = tmp_to_use && true;
/* _7 = _55 + _73; */
uadd v7 v55 v73;
/* _171 = _7 + _51; */
uadd v171 v7 v51;
/* _172 = _60 + _171; */
uadd v172 v60 v171;
/* a_75 = _31 * _161; */
umul a75 v31 v161;
/* _76 = a_75 >> 64; */
usplit v76 tmp_to_use a75 64;
/* _77 = a_75 & 18446744073709551615; */
and uint128 v77 a75 0xffffffffffffffff@uint128;
assert true && v77 = tmp_to_use;
assume v77 = tmp_to_use && true;
/* _173 = _77 + _172; */
uadd v173 v77 v172;
/* _78 = _67 + _173; */
uadd v78 v67 v173;
/* a_80 = _18 * _162; */
umul a80 v18 v162;
/* _81 = a_80 >> 64; */
usplit v81 tmp_to_use a80 64;
/* _82 = a_80 & 18446744073709551615; */
and uint128 v82 a80 0xffffffffffffffff@uint128;
assert true && v82 = tmp_to_use;
assume v82 = tmp_to_use && true;
/* _83 = _78 + _82; */
uadd v83 v78 v82;
/* MEM[(limb *)out_6(D) + 64B] = _83; */
mov out6_64 v83;
/* a_85 = _49 * _161; */
umul a85 v49 v161;
/* _86 = a_85 >> 64; */
usplit v86 tmp_to_use a85 64;
/* _87 = a_85 & 18446744073709551615; */
and uint128 v87 a85 0xffffffffffffffff@uint128;
assert true && v87 = tmp_to_use;
assume v87 = tmp_to_use && true;
/* _64 = _76 + _87; */
uadd v64 v76 v87;
/* _3 = _64 + _72; */
uadd v3 v64 v72;
/* _88 = _3 + _81; */
uadd v88 v3 v81;
/* a_89 = _31 * _162; */
umul a89 v31 v162;
/* _90 = a_89 >> 64; */
usplit v90 tmp_to_use a89 64;
/* _91 = a_89 & 18446744073709551615; */
and uint128 v91 a89 0xffffffffffffffff@uint128;
assert true && v91 = tmp_to_use;
assume v91 = tmp_to_use && true;
/* _92 = _88 + _91; */
uadd v92 v88 v91;
/* MEM[(limb *)out_6(D) + 80B] = _92; */
mov out6_80 v92;
/* a_94 = _49 * _162; */
umul a94 v49 v162;
/* _95 = a_94 >> 64; */
usplit v95 tmp_to_use a94 64;
/* _96 = a_94 & 18446744073709551615; */
and uint128 v96 a94 0xffffffffffffffff@uint128;
assert true && v96 = tmp_to_use;
assume v96 = tmp_to_use && true;
/* _41 = _90 + _96; */
uadd v41 v90 v96;
/* _97 = _41 + _86; */
uadd v97 v41 v86;
/* MEM[(limb *)out_6(D) + 96B] = _97; */
mov out6_96 v97;
/* MEM[(limb *)out_6(D) + 112B] = _95; */
mov out6_112 v95;


/* Start with unused lhs */
mov c0 out6_0@uint128;
mov c1 out6_16@uint128;
mov c2 out6_32@uint128;
mov c3 out6_48@uint128;
mov c4 out6_64@uint128;
mov c5 out6_80@uint128;
mov c6 out6_96@uint128;
mov c7 out6_112@uint128;
/* End with unsed lhs */

{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      (limbs 64 [a0, a1, a2, a3])
      *
      (limbs 64 [b0, b1, b2, b3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and [
      c0 <u (7 * 2**64)@128,
      c1 <u (7 * 2**64)@128,
      c2 <u (7 * 2**64)@128,
      c3 <u (7 * 2**64)@128,
      c4 <u (7 * 2**64)@128,
      c5 <u (7 * 2**64)@128,
      c6 <u (7 * 2**64)@128,
      c7 <u (7 * 2**64)@128
  ]
}

proc longfelem_diff (uint128 out0, uint128 out1, uint128 out2, uint128 out3,
                     uint128 out4, uint128 out5, uint128 out6, uint128 out7,
                     uint128 in0, uint128 in1, uint128 in2, uint128 in3,
                     uint128 in4, uint128 in5, uint128 in6, uint128 in7;
                     uint128 c0, uint128 c1, uint128 c2, uint128 c3,
                     uint128 c4, uint128 c5, uint128 c6, uint128 c7) =
{
  true
  &&
  and [
      in0 < (7 * 2**67)@128,
      in1 < (7 * 2**67)@128,
      in2 < (7 * 2**67)@128,
      in3 < (7 * 2**67)@128,
      in4 < (7 * 2**67)@128,
      in5 < (7 * 2**67)@128,
      in6 < (7 * 2**67)@128,
      in7 < (7 * 2**67)@128,
      out0 < (7 * 2**67)@128,
      out1 < (7 * 2**67)@128,
      out2 < (7 * 2**67)@128,
      out3 < (7 * 2**67)@128,
      out4 < (7 * 2**67)@128,
      out5 < (7 * 2**67)@128,
      out6 < (7 * 2**67)@128,
      out7 < (7 * 2**67)@128
  ]
}


(* Start with undefined rhs *)
mov in43_0@uint128 in0;
mov in43_16@uint128 in1;
mov in43_32@uint128 in2;
mov in43_48@uint128 in3;
mov in43_64@uint128 in4;
mov in43_80@uint128 in5;
mov in43_96@uint128 in6;
mov in43_112@uint128 in7;
mov out34_0@uint128 out0;
mov out34_16@uint128 out1;
mov out34_32@uint128 out2;
mov out34_48@uint128 out3;
mov out34_64@uint128 out4;
mov out34_80@uint128 out5;
mov out34_96@uint128 out6;
mov out34_112@uint128 out7;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_34(D); *)
mov v1 out34_0;
(* _2 = _1 + 0x3fffffffffffffff40; *)
uadd v2 v1 0x3fffffffffffffff40@uint128;
(* *out_34(D) = _2; *)
mov out34_0 v2;
(* _3 = MEM[(limb * )out_34(D) + 16B]; *)
mov v3 out34_16;
(* _4 = _3 + 0x400000010000000000; *)
uadd v4 v3 0x400000010000000000@uint128;
(* MEM[(limb * )out_34(D) + 16B] = _4; *)
mov out34_16 v4;
(* _5 = MEM[(limb * )out_34(D) + 32B]; *)
mov v5 out34_32;
(* _6 = _5 + 0x400000000000000000; *)
uadd v6 v5 0x400000000000000000@uint128;
(* MEM[(limb * )out_34(D) + 32B] = _6; *)
mov out34_32 v6;
(* _7 = MEM[(limb * )out_34(D) + 48B]; *)
mov v7 out34_48;
(* _8 = _7 + 0x3ffffffec000000040; *)
uadd v8 v7 0x3ffffffec000000040@uint128;
(* MEM[(limb * )out_34(D) + 48B] = _8; *)
mov out34_48 v8;
(* _9 = MEM[(limb * )out_34(D) + 64B]; *)
mov v9 out34_64;
(* _10 = _9 + 0x3fffffffffffffffc0; *)
uadd v10 v9 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 64B] = _10; *)
mov out34_64 v10;
(* _11 = MEM[(limb * )out_34(D) + 80B]; *)
mov v11 out34_80;
(* _12 = _11 + 0x3fffffffffffffffc0; *)
uadd v12 v11 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 80B] = _12; *)
mov out34_80 v12;
(* _13 = MEM[(limb * )out_34(D) + 96B]; *)
mov v13 out34_96;
(* _14 = _13 + 0x3fffffffffffffffc0; *)
uadd v14 v13 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 96B] = _14; *)
mov out34_96 v14;
(* _15 = MEM[(limb * )out_34(D) + 112B]; *)
mov v15 out34_112;
(* _16 = _15 + 0x3fffffffffffffffc0; *)
uadd v16 v15 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 112B] = _16; *)
mov out34_112 v16;
(* _17 = *in_43(D); *)
mov v17 in43_0;
(* _18 = _2 - _17; *)
usub v18 v2 v17;
(* *out_34(D) = _18; *)
mov out34_0 v18;
(* _19 = MEM[(const limb * )in_43(D) + 16B]; *)
mov v19 in43_16;
(* _20 = _4 - _19; *)
usub v20 v4 v19;
(* MEM[(limb * )out_34(D) + 16B] = _20; *)
mov out34_16 v20;
(* _21 = MEM[(const limb * )in_43(D) + 32B]; *)
mov v21 in43_32;
(* _22 = _6 - _21; *)
usub v22 v6 v21;
(* MEM[(limb * )out_34(D) + 32B] = _22; *)
mov out34_32 v22;
(* _23 = MEM[(const limb * )in_43(D) + 48B]; *)
mov v23 in43_48;
(* _24 = _8 - _23; *)
usub v24 v8 v23;
(* MEM[(limb * )out_34(D) + 48B] = _24; *)
mov out34_48 v24;
(* _25 = MEM[(const limb * )in_43(D) + 64B]; *)
mov v25 in43_64;
(* _26 = _10 - _25; *)
usub v26 v10 v25;
(* MEM[(limb * )out_34(D) + 64B] = _26; *)
mov out34_64 v26;
(* _27 = MEM[(const limb * )in_43(D) + 80B]; *)
mov v27 in43_80;
(* _28 = _12 - _27; *)
usub v28 v12 v27;
(* MEM[(limb * )out_34(D) + 80B] = _28; *)
mov out34_80 v28;
(* _29 = MEM[(const limb * )in_43(D) + 96B]; *)
mov v29 in43_96;
(* _30 = _14 - _29; *)
usub v30 v14 v29;
(* MEM[(limb * )out_34(D) + 96B] = _30; *)
mov out34_96 v30;
(* _31 = MEM[(const limb * )in_43(D) + 112B]; *)
mov v31 in43_112;
(* _32 = _16 - _31; *)
usub v32 v16 v31;
(* MEM[(limb * )out_34(D) + 112B] = _32; *)
mov out34_112 v32;
(* return; *)


(* Start with unused lhs *)
mov c0 out34_0@uint128;
mov c1 out34_16@uint128;
mov c2 out34_32@uint128;
mov c3 out34_48@uint128;
mov c4 out34_64@uint128;
mov c5 out34_80@uint128;
mov c6 out34_96@uint128;
mov c7 out34_112@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      (limbs 64 [out0, out1, out2, out3, out4, out5, out6, out7])
      -
      (limbs 64 [in0, in1, in2, in3, in4, in5, in6, in7])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  and [
      c0 <= out0 + (2**70 + 2**40)@128,
      c1 <= out1 + (2**70 + 2**40)@128,
      c2 <= out2 + (2**70 + 2**40)@128,
      c3 <= out3 + (2**70 + 2**40)@128,
      c4 <= out4 + (2**70 + 2**40)@128,
      c5 <= out5 + (2**70 + 2**40)@128,
      c6 <= out6 + (2**70 + 2**40)@128,
      c7 <= out7 + (2**70 + 2**40)@128
  ]
}

proc main (uint128 X1_0, uint128 X1_1, uint128 X1_2, uint128 X1_3,
           uint128 Y1_0, uint128 Y1_1, uint128 Y1_2, uint128 Y1_3,
           uint128 Z1_0, uint128 Z1_1, uint128 Z1_2, uint128 Z1_3,
           uint64 X2_0, uint64 X2_1, uint64 X2_2, uint64 X2_3,
           uint64 Y2_0, uint64 Y2_1, uint64 Y2_2, uint64 Y2_3,
           uint64 Z2_0, uint64 Z2_1, uint64 Z2_2, uint64 Z2_3) =
{
  true
  &&
  and [
    X1_0 <u (2**109)@128, X1_1 <u (2**109)@128, X1_2 <u (2**109)@128, X1_3 <u (2**109)@128,
    Y1_0 <u (2**109)@128, Y1_1 <u (2**109)@128, Y1_2 <u (2**109)@128, Y1_3 <u (2**109)@128,
    Z1_0 <u (2**109)@128, Z1_1 <u (2**109)@128, Z1_2 <u (2**109)@128, Z1_3 <u (2**109)@128,
    /* X2_0 <u (2**109)@128, X2_1 <u (2**109)@128, X2_2 <u (2**109)@128, X2_3 <u (2**109)@128, */
    /* Y2_0 <u (2**109)@128, Y2_1 <u (2**109)@128, Y2_2 <u (2**109)@128, Y2_3 <u (2**109)@128, */
    /* Z2_0 <u (2**109)@128, Z2_1 <u (2**109)@128, Z2_2 <u (2**109)@128, Z2_3 <u (2**109)@128, */
    /* general case */
    (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3] >u (limbs 64 [1@64, 0@64, 0@64, 0@64]))
  ]
}


/* Start with undefined rhs */
mov x122_0@uint128 X1_0;
mov x122_16@uint128 X1_1;
mov x122_32@uint128 X1_2;
mov x122_48@uint128 X1_3;
mov x233_0@uint64 X2_0;
mov x233_8@uint64 X2_1;
mov x233_16@uint64 X2_2;
mov x233_24@uint64 X2_3;
mov y130_0@uint128  Y1_0;
mov y130_16@uint128 Y1_1;
mov y130_32@uint128  Y1_2;
mov y130_48@uint128  Y1_3;
mov y243_0@uint64 Y2_0;
mov y243_8@uint64 Y2_1;
mov y243_16@uint64 Y2_2;
mov y243_24@uint64 Y2_3;
mov z18_0@uint128 Z1_0;
mov z18_16@uint128 Z1_1;
mov z18_32@uint128 Z1_2;
mov z18_48@uint128 Z1_3;
mov z212_0@uint64 Z2_0;
mov z212_8@uint64 Z2_1;
mov z212_16@uint64 Z2_2;
mov z212_24@uint64 Z2_3;
/* End with undefined rhs */



/* BB's index is 2 */

/* felem_shrink (&small3, z1_8(D)); */
call felem_shrink (z18_0, z18_16, z18_32, z18_48,
                   small3_0, small3_8, small3_16, small3_24);
/* z1_is_zero_11 = smallfelem_is_zero (&small3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* z2_is_zero_14 = smallfelem_is_zero (z2_12(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* smallfelem_square (&tmp, &small3); */
call smallfelem_square (small3_0, small3_8, small3_16, small3_24,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp_0, ftmp_16, ftmp_32, ftmp_48);
/* felem_shrink (&small1, &ftmp); */
call felem_shrink (ftmp_0, ftmp_16, ftmp_32, ftmp_48,
                   small1_0, small1_8, small1_16, small1_24);
/* if (mixed_18(D) == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 4> */

/* BB's index is 3 */  /* NOTE: choosqe BB3 */

/* smallfelem_square (&tmp, z2_12(D)); */
call smallfelem_square (z212_0, z212_8, z212_16, z212_24,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp2, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48);
/* felem_shrink (&small2, &ftmp2); */
call felem_shrink (ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48,
                   small2_0, small2_8, small2_16, small2_24);
/* felem_shrink (&small5, x1_22(D)); */
call felem_shrink (x122_0, x122_16, x122_32, x122_48,
                   small5_0, small5_8, small5_16, small5_24);
/* smallfelem_mul (&tmp, &small5, &small2); */
call smallfelem_mul (small5_0, small5_8, small5_16, small5_24,
                     small2_0, small2_8, small2_16, small2_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp3, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp3_0, ftmp3_16, ftmp3_32, ftmp3_48);
/* _118 = *z1_8(D); */
mov v118 z18_0;
/* _119 = MEM[(const limb *)z1_8(D) + 16B]; */
mov v119 z18_16;
/* _120 = MEM[(const limb *)z1_8(D) + 32B]; */
mov v120 z18_32;
/* _121 = MEM[(const limb *)z1_8(D) + 48B]; */
mov v121 z18_48;
/* _106 = *z2_12(D); */
mov v106 z212_0;
/* _107 = (__int128 unsigned) _106; */
vpc v107@uint128 v106@uint64;
/* _108 = _107 + _118; */
uadd v108 v107 v118;
/* MEM[(limb *)&ftmp5] = _108; */
mov ftmp5_0 v108;
/* _109 = MEM[(const u64 *)z2_12(D) + 8B]; */
mov v109 z212_8;
/* _110 = (__int128 unsigned) _109; */
vpc v110@uint128 v109@uint64;
/* _111 = _110 + _119; */
uadd v111 v110 v119;
/* MEM[(limb *)&ftmp5 + 16B] = _111; */
mov ftmp5_16 v111;
/* _112 = MEM[(const u64 *)z2_12(D) + 16B]; */
mov v112 z212_16;
/* _113 = (__int128 unsigned) _112; */
vpc v113@uint128 v112@uint64;
/* _114 = _113 + _120; */
uadd v114 v113 v120;
/* MEM[(limb *)&ftmp5 + 32B] = _114; */
mov ftmp5_32 v114;
/* _115 = MEM[(const u64 *)z2_12(D) + 24B]; */
mov v115 z212_24;
/* _116 = (__int128 unsigned) _115; */
vpc v116@uint128 v115@uint64;
/* _117 = _116 + _121; */
uadd v117 v116 v121;
/* MEM[(limb *)&ftmp5 + 48B] = _117; */
mov ftmp5_48 v117;
/* felem_shrink (&small, &ftmp5); */
call felem_shrink (ftmp5_0, ftmp5_16, ftmp5_32, ftmp5_48,
                   small_0, small_8, small_16, small_24);
/* smallfelem_square (&tmp, &small); */
call smallfelem_square (small_0, small_8, small_16, small_24,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp5, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp5_0, ftmp5_16, ftmp5_32, ftmp5_48);
/* _47 = MEM[(limb *)&ftmp2]; */
mov v47 ftmp2_0;
/* _38 = MEM[(const limb *)&ftmp]; */
mov v38 ftmp_0;
/* _13 = _38 + _47; */
uadd v13 v38 v47;
/* MEM[(limb *)&ftmp2] = _13; */
mov ftmp2_0 v13;
/* _10 = MEM[(limb *)&ftmp2 + 16B]; */
mov v10 ftmp2_16;
/* _98 = MEM[(const limb *)&ftmp + 16B]; */
mov v98 ftmp_16;
/* _99 = _10 + _98; */
uadd v99 v10 v98;
/* MEM[(limb *)&ftmp2 + 16B] = _99; */
mov ftmp2_16 v99;
/* _100 = MEM[(limb *)&ftmp2 + 32B]; */
mov v100 ftmp2_32;
/* _101 = MEM[(const limb *)&ftmp + 32B]; */
mov v101 ftmp_32;
/* _102 = _100 + _101; */
uadd v102 v100 v101;
/* MEM[(limb *)&ftmp2 + 32B] = _102; */
mov ftmp2_32 v102;
/* _103 = MEM[(limb *)&ftmp2 + 48B]; */
mov v103 ftmp2_48;
/* _104 = MEM[(const limb *)&ftmp + 48B]; */
mov v104 ftmp_48;
/* _105 = _103 + _104; */
uadd v105 v103 v104;
/* MEM[(limb *)&ftmp2 + 48B] = _105; */
mov ftmp2_48 v105;
/* _333 = MEM[(limb *)&ftmp5]; */
mov v333 ftmp5_0;
/* _334 = _333 + 0x1fffffffffffffffdfffffffe00; */
uadd v334 v333 0x1fffffffffffffffdfffffffe00@uint128;
/* _335 = MEM[(limb *)&ftmp5 + 16B]; */
mov v335 ftmp5_16;
/* _336 = _335 + 0x200000000000000000000000000; */
uadd v336 v335 0x200000000000000000000000000@uint128;
/* _337 = MEM[(limb *)&ftmp5 + 32B]; */
mov v337 ftmp5_32;
/* _338 = _337 + 0x1fffffffffffffffe0000000200; */
uadd v338 v337 0x1fffffffffffffffe0000000200@uint128;
/* _339 = MEM[(limb *)&ftmp5 + 48B]; */
mov v339 ftmp5_48;
/* _340 = _339 + 0x1fffffffffffffffe0000000200; */
uadd v340 v339 0x1fffffffffffffffe0000000200@uint128;
/* _342 = _334 - _13; */
usub v342 v334 v13;
/* MEM[(limb *)&ftmp5] = _342; */
mov ftmp5_0 v342;
/* _344 = _336 - _99; */
usub v344 v336 v99;
/* MEM[(limb *)&ftmp5 + 16B] = _344; */
mov ftmp5_16 v344;
/* _346 = _338 - _102; */
usub v346 v338 v102;
/* MEM[(limb *)&ftmp5 + 32B] = _346; */
mov ftmp5_32 v346;
/* _348 = _340 - _105; */
usub v348 v340 v105;
/* MEM[(limb *)&ftmp5 + 48B] = _348; */
mov ftmp5_48 v348;
/* smallfelem_mul (&tmp, &small2, z2_12(D)); */
call smallfelem_mul (small2_0, small2_8, small2_16, small2_24,
                     z212_0, z212_8, z212_16, z212_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp2, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48);
/* felem_mul (&tmp, y1_30(D), &ftmp2); */
call felem_mul (y130_0, y130_16, y130_32, y130_48,
                ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp6, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp6_0, ftmp6_16, ftmp6_32, ftmp6_48);
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 4 */ /* NOTE: discard this branch */

/* /\* _134 = *x1_22(D); *\/ */
/* mov v134 x122_0; */
/* /\* MEM[(limb *)&ftmp3] = _134; *\/ */
/* mov ftmp3_0 v134; */
/* /\* _135 = MEM[(const limb *)x1_22(D) + 16B]; *\/ */
/* mov v135 x122_16; */
/* /\* MEM[(limb *)&ftmp3 + 16B] = _135; *\/ */
/* mov ftmp3_16 v135; */
/* /\* _136 = MEM[(const limb *)x1_22(D) + 32B]; *\/ */
/* mov v136 x122_32; */
/* /\* MEM[(limb *)&ftmp3 + 32B] = _136; *\/ */
/* mov ftmp3_32 v136; */
/* /\* _137 = MEM[(const limb *)x1_22(D) + 48B]; *\/ */
/* mov v137 x122_48; */
/* /\* MEM[(limb *)&ftmp3 + 48B] = _137; *\/ */
/* mov ftmp3_48 v137; */
/* /\* _130 = *z1_8(D); *\/ */
/* mov v130 z18_0; */
/* /\* _131 = MEM[(const limb *)z1_8(D) + 16B]; *\/ */
/* mov v131 z18_16; */
/* /\* _132 = MEM[(const limb *)z1_8(D) + 32B]; *\/ */
/* mov v132 z18_32; */
/* /\* _133 = MEM[(const limb *)z1_8(D) + 48B]; *\/ */
/* mov v133 z18_48; */
/* /\* _126 = _130 * 2; *\/ */
/* umul v126 v130 0x2@uint128; */
/* /\* MEM[(limb *)&ftmp5] = _126; *\/ */
/* mov ftmp5_0 v126; */
/* /\* _127 = _131 * 2; *\/ */
/* umul v127 v131 0x2@uint128; */
/* /\* MEM[(limb *)&ftmp5 + 16B] = _127; *\/ */
/* mov ftmp5_16 v127; */
/* /\* _128 = _132 * 2; *\/ */
/* umul v128 v132 0x2@uint128; */
/* /\* MEM[(limb *)&ftmp5 + 32B] = _128; *\/ */
/* mov ftmp5_32 v128; */
/* /\* _129 = _133 * 2; *\/ */
/* umul v129 v133 0x2@uint128; */
/* /\* MEM[(limb *)&ftmp5 + 48B] = _129; *\/ */
/* mov ftmp5_48 v129; */
/* /\* _122 = *y1_30(D); *\/ */
/* mov v122 y130_0; */
/* /\* MEM[(limb *)&ftmp6] = _122; *\/ */
/* mov ftmp6_0 v122; */
/* /\* _123 = MEM[(const limb *)y1_30(D) + 16B]; *\/ */
/* mov v123 y130_16; */
/* /\* MEM[(limb *)&ftmp6 + 16B] = _123; *\/ */
/* mov ftmp6_16 v123; */
/* /\* _124 = MEM[(const limb *)y1_30(D) + 32B]; *\/ */
/* mov v124 y130_32; */
/* /\* MEM[(limb *)&ftmp6 + 32B] = _124; *\/ */
/* mov ftmp6_32 v124; */
/* /\* _125 = MEM[(const limb *)y1_30(D) + 48B]; *\/ */
/* mov v125 y130_48; */
/* /\* MEM[(limb *)&ftmp6 + 48B] = _125; *\/ */
/* mov ftmp6_48 v125; */
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* MEM_5 = PHI <MEM_32(3), MEM_332(4)> */
/* smallfelem_mul (&tmp, x2_33(D), &small1); */
call smallfelem_mul (x233_0, x233_8, x233_16, x233_24,
                     small1_0, small1_8, small1_16, small1_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp4, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp4_0, ftmp4_16, ftmp4_32, ftmp4_48);
/* _365 = MEM[(limb *)&ftmp4]; */
mov v365 ftmp4_0;
/* _366 = _365 + 0x7fffffffffffffff7fffffff800; */
uadd v366 v365 0x7fffffffffffffff7fffffff800@uint128;
/* _367 = MEM[(limb *)&ftmp4 + 16B]; */
mov v367 ftmp4_16;
/* _368 = _367 + 0x800000000000000000000000000; */
uadd v368 v367 0x800000000000000000000000000@uint128;
/* _369 = MEM[(limb *)&ftmp4 + 32B]; */
mov v369 ftmp4_32;
/* _370 = _369 + 0x7fffffffffffffff80000000800; */
uadd v370 v369 0x7fffffffffffffff80000000800@uint128;
/* _371 = MEM[(limb *)&ftmp4 + 48B]; */
mov v371 ftmp4_48;
/* _372 = _371 + 0x7fffffffffffffff80000000800; */
uadd v372 v371 0x7fffffffffffffff80000000800@uint128;
/* _373 = MEM[(const limb *)&ftmp3]; */
mov v373 ftmp3_0;
/* _374 = _366 - _373; */
usub v374 v366 v373;
/* MEM[(limb *)&ftmp4] = _374; */
mov ftmp4_0 v374;
/* _375 = MEM[(const limb *)&ftmp3 + 16B]; */
mov v375 ftmp3_16;
/* _376 = _368 - _375; */
usub v376 v368 v375;
/* MEM[(limb *)&ftmp4 + 16B] = _376; */
mov ftmp4_16 v376;
/* _377 = MEM[(const limb *)&ftmp3 + 32B]; */
mov v377 ftmp3_32;
/* _378 = _370 - _377; */
usub v378 v370 v377;
/* MEM[(limb *)&ftmp4 + 32B] = _378; */
mov ftmp4_32 v378;
/* _379 = MEM[(const limb *)&ftmp3 + 48B]; */
mov v379 ftmp3_48;
/* _380 = _372 - _379; */
usub v380 v372 v379;
/* MEM[(limb *)&ftmp4 + 48B] = _380; */
mov ftmp4_48 v380;

/* felem_shrink (&small4, &ftmp4); */
call felem_shrink (ftmp4_0, ftmp4_16, ftmp4_32, ftmp4_48,
                   small4_0, small4_8, small4_16, small4_24);
/* x_equal_39 = smallfelem_is_zero (&small4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_shrink (&small2, &ftmp5); */
call felem_shrink (ftmp5_0, ftmp5_16, ftmp5_32, ftmp5_48,
                   small2_0, small2_8, small2_16, small2_24);
/* smallfelem_mul (&tmp, &small4, &small2); */
call smallfelem_mul (small4_0, small4_8, small4_16, small4_24,
                     small2_0, small2_8, small2_16, small2_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&z_out, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   z_out_0, z_out_16, z_out_32, z_out_48);
/* smallfelem_mul (&tmp, &small1, &small3); */
call smallfelem_mul (small1_0, small1_8, small1_16, small1_24,
                     small3_0, small3_8, small3_16, small3_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp_0, ftmp_16, ftmp_32, ftmp_48);
/* felem_shrink (&small2, &ftmp); */
call felem_shrink (ftmp_0, ftmp_16, ftmp_32, ftmp_48,
                   small2_0, small2_8, small2_16, small2_24);
/* smallfelem_mul (&tmp, y2_43(D), &small2); */
call smallfelem_mul (y243_0, y243_8, y243_16, y243_24,
                     small2_0, small2_8, small2_16, small2_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&ftmp5, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp5_0, ftmp5_16, ftmp5_32, ftmp5_48);
/* _349 = MEM[(limb *)&ftmp5]; */
mov v349 ftmp5_0;
/* _350 = _349 + 0x7fffffffffffffff7fffffff800; */
uadd v350 v349 0x7fffffffffffffff7fffffff800@uint128;
/* _351 = MEM[(limb *)&ftmp5 + 16B]; */
mov v351 ftmp5_16;
/* _352 = _351 + 0x800000000000000000000000000; */
uadd v352 v351 0x800000000000000000000000000@uint128;
/* _353 = MEM[(limb *)&ftmp5 + 32B]; */
mov v353 ftmp5_32;
/* _354 = _353 + 0x7fffffffffffffff80000000800; */
uadd v354 v353 0x7fffffffffffffff80000000800@uint128;
/* _355 = MEM[(limb *)&ftmp5 + 48B]; */
mov v355 ftmp5_48;
/* _356 = _355 + 0x7fffffffffffffff80000000800; */
uadd v356 v355 0x7fffffffffffffff80000000800@uint128;
/* _357 = MEM[(const limb *)&ftmp6]; */
mov v357 ftmp6_0;
/* _358 = _350 - _357; */
usub v358 v350 v357;
/* _359 = MEM[(const limb *)&ftmp6 + 16B]; */
mov v359 ftmp6_16;
/* _360 = _352 - _359; */
usub v360 v352 v359;
/* _361 = MEM[(const limb *)&ftmp6 + 32B]; */
mov v361 ftmp6_32;
/* _362 = _354 - _361; */
usub v362 v354 v361;
/* _363 = MEM[(const limb *)&ftmp6 + 48B]; */
mov v363 ftmp6_48;
/* _364 = _356 - _363; */
usub v364 v356 v363;
/* _139 = _358 * 2; */
umul v139 v358 0x2@uint128;
/* MEM[(limb *)&ftmp5] = _139; */
mov ftmp5_0 v139;
/* _141 = _360 * 2; */
umul v141 v360 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 16B] = _141; */
mov ftmp5_16 v141;
/* _143 = _362 * 2; */
umul v143 v362 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 32B] = _143; */
mov ftmp5_32 v143;
/* _145 = _364 * 2; */
umul v145 v364 0x2@uint128;
/* MEM[(limb *)&ftmp5 + 48B] = _145; */
mov ftmp5_48 v145;
/* felem_shrink (&small1, &ftmp5); */
call felem_shrink (ftmp5_0, ftmp5_16, ftmp5_32, ftmp5_48,
                   small1_0, small1_8, small1_16, small1_24);
/* y_equal_48 = smallfelem_is_zero (&small1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _1 = x_equal_39 != 0; */
/* subb lt_value dontcare x_equal39 0x0@uint128; */
/* subb gt_value dontcare value 0x0@uint128 x_equal39; */
/* or uint1 v1 lt_value gt_value; */
/* vpc v1@uint8 v1@uint1; */
/* _2 = y_equal_48 != 0; */
/* subb lt_value dontcare y_equal48 0x0@uint128; */
/* subb gt_value dontcare value 0x0@uint128 y_equal48; */
/* or uint1 v2 lt_value gt_value; */
/* vpc v2@uint8 v2@uint1; */
/* _3 = _1 & _2; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* and uint8 v3 v1 v2; */
/* if (_3 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 8> */

/* BB's index is 6 */

/* _4 = z1_is_zero_11 | z2_is_zero_14; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* or uint128 v4 z1_is_zero11 z2_is_zero14; */
/* if (_4 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 8> */

/* BB's index is 7 */

/* point_double (x3_49(D), y3_50(D), z3_51(D), x1_22(D), y1_30(D), z1_8(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* _254 = MEM[(const limb *)&ftmp4]; */
mov v254 ftmp4_0;
/* _255 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v255 ftmp4_16;
/* _256 = MEM[(const limb *)&ftmp4 + 32B]; */
mov v256 ftmp4_32;
/* _257 = MEM[(const limb *)&ftmp4 + 48B]; */
mov v257 ftmp4_48;
/* _250 = _254 * 2; */
umul v250 v254 0x2@uint128;
/* MEM[(limb *)&ftmp] = _250; */
mov ftmp_0 v250;
/* _251 = _255 * 2; */
umul v251 v255 0x2@uint128;
/* MEM[(limb *)&ftmp + 16B] = _251; */
mov ftmp_16 v251;
/* _252 = _256 * 2; */
umul v252 v256 0x2@uint128;
/* MEM[(limb *)&ftmp + 32B] = _252; */
mov ftmp_32 v252;
/* _253 = _257 * 2; */
umul v253 v257 0x2@uint128;
/* MEM[(limb *)&ftmp + 48B] = _253; */
mov ftmp_48 v253;

/* felem_shrink (&small, &ftmp); */
call felem_shrink (ftmp_0, ftmp_16, ftmp_32, ftmp_48,
                   small_0, small_8, small_16, small_24);
/* smallfelem_square (&tmp, &small); */
call smallfelem_square (small_0, small_8, small_16, small_24,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);

/* felem_reduce (&ftmp, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp_0, ftmp_16, ftmp_32, ftmp_48);

/* felem_shrink (&small1, &ftmp4); */
call felem_shrink (ftmp4_0, ftmp4_16, ftmp4_32, ftmp4_48,
                   small1_p_0, small1_p_8, small1_p_16, small1_p_24);
/* felem_shrink (&small2, &ftmp); */
call felem_shrink (ftmp_0, ftmp_16, ftmp_32, ftmp_48,
                   small2_p_0, small2_p_8, small2_p_16, small2_p_24);
/* smallfelem_mul (&tmp, &small1, &small2); */
call smallfelem_mul (small1_p_0, small1_p_8, small1_p_16, small1_p_24,
                     small2_p_0, small2_p_8, small2_p_16, small2_p_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* felem_reduce (&ftmp2, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48);
/* felem_shrink (&small1, &ftmp3); */
call felem_shrink (ftmp3_0, ftmp3_16, ftmp3_32, ftmp3_48,
                   small1_p_0, small1_p_8, small1_p_16, small1_p_24);
/* felem_shrink (&small2, &ftmp); */
call felem_shrink (ftmp_0, ftmp_16, ftmp_32, ftmp_48,
                   small2_p_0, small2_p_8, small2_p_16, small2_p_24);
/* smallfelem_mul (&tmp, &small1, &small2); */
call smallfelem_mul (small1_p_0, small1_p_8, small1_p_16, small1_p_24,
                     small2_p_0, small2_p_8, small2_p_16, small2_p_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* small1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* small2 ={v} {CLOBBER}; */
/* felem_reduce (&ftmp4, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   ftmp4_0, ftmp4_16, ftmp4_32, ftmp4_48);
/* smallfelem_square (&tmp, &small1); */
call smallfelem_square (small1_0, small1_8, small1_16, small1_24,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_reduce (&x_out, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                   x_out_0, x_out_16, x_out_32, x_out_48);
/* _246 = MEM[(const limb *)&ftmp4]; */
mov v246 ftmp4_0;
/* _247 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v247 ftmp4_16;
/* _248 = MEM[(const limb *)&ftmp4 + 32B]; */
mov v248 ftmp4_32;
/* _249 = MEM[(const limb *)&ftmp4 + 48B]; */
mov v249 ftmp4_48;
/* _242 = _246 * 2; */
umul v242 v246 0x2@uint128;
/* _243 = _247 * 2; */
umul v243 v247 0x2@uint128;
/* _244 = _248 * 2; */
umul v244 v248 0x2@uint128;
/* _245 = _249 * 2; */
umul v245 v249 0x2@uint128;
/* _234 = MEM[(const limb *)&ftmp2]; */
mov v234 ftmp2_0;
/* _235 = _234 + _242; */
uadd v235 v234 v242;
/* MEM[(limb *)&ftmp4] = _235; */
mov ftmp4_0 v235;
/* _236 = MEM[(const limb *)&ftmp2 + 16B]; */
mov v236 ftmp2_16;
/* _237 = _236 + _243; */
uadd v237 v236 v243;
/* MEM[(limb *)&ftmp4 + 16B] = _237; */
mov ftmp4_16 v237;
/* _238 = MEM[(const limb *)&ftmp2 + 32B]; */
mov v238 ftmp2_32;
/* _239 = _238 + _244; */
uadd v239 v238 v244;
/* MEM[(limb *)&ftmp4 + 32B] = _239; */
mov ftmp4_32 v239;
/* _240 = MEM[(const limb *)&ftmp2 + 48B]; */
mov v240 ftmp2_48;
/* _241 = _240 + _245; */
uadd v241 v240 v245;
/* MEM[(limb *)&ftmp4 + 48B] = _241; */
mov ftmp4_48 v241;
/* _422 = MEM[(limb *)&x_out]; */
mov v422 x_out_0;
/* _423 = _422 + 0x1fffffffffffffffdfffffffe00; */
uadd v423 v422 0x1fffffffffffffffdfffffffe00@uint128;
/* _424 = MEM[(limb *)&x_out + 16B]; */
mov v424 x_out_16;
/* _425 = _424 + 0x200000000000000000000000000; */
uadd v425 v424 0x200000000000000000000000000@uint128;
/* _426 = MEM[(limb *)&x_out + 32B]; */
mov v426 x_out_32;
/* _427 = _426 + 0x1fffffffffffffffe0000000200; */
uadd v427 v426 0x1fffffffffffffffe0000000200@uint128;
/* _428 = MEM[(limb *)&x_out + 48B]; */
mov v428 x_out_48;
/* _429 = _428 + 0x1fffffffffffffffe0000000200; */
uadd v429 v428 0x1fffffffffffffffe0000000200@uint128;
/* _431 = _423 - _235; */
usub v431 v423 v235;
/* MEM[(limb *)&x_out] = _431; */
mov x_out_0 v431;
/* _433 = _425 - _237; */
usub v433 v425 v237;
/* MEM[(limb *)&x_out + 16B] = _433; */
mov x_out_16 v433;
/* _435 = _427 - _239; */
usub v435 v427 v239;
/* MEM[(limb *)&x_out + 32B] = _435; */
mov x_out_32 v435;
/* _437 = _429 - _241; */
usub v437 v429 v241;
/* MEM[(limb *)&x_out + 48B] = _437; */
mov x_out_48 v437;
/* _578 = _246 + 0x7fffffffffffffff7fffffff800; */
uadd v578 v246 0x7fffffffffffffff7fffffff800@uint128;
/* _589 = _235 + _578; */
uadd v589 v235 v578;
/* _415 = _589 - _423; */
usub v415 v589 v423;
/* MEM[(limb *)&ftmp3] = _415; */
mov ftmp3_0 v415;
/* _448 = _247 + 0x800000000000000000000000000; */
uadd v448 v247 0x800000000000000000000000000@uint128;
/* _507 = _237 + _448; */
uadd v507 v237 v448;
/* _417 = _507 - _425; */
usub v417 v507 v425;
/* MEM[(limb *)&ftmp3 + 16B] = _417; */
mov ftmp3_16 v417;
/* _481 = _248 + 0x7fffffffffffffff80000000800; */
uadd v481 v248 0x7fffffffffffffff80000000800@uint128;
/* _454 = _239 + _481; */
uadd v454 v239 v481;
/* _419 = _454 - _427; */
usub v419 v454 v427;
/* MEM[(limb *)&ftmp3 + 32B] = _419; */
mov ftmp3_32 v419;
/* _529 = _249 + 0x7fffffffffffffff80000000800; */
uadd v529 v249 0x7fffffffffffffff80000000800@uint128;
/* _483 = _241 + _529; */
uadd v483 v241 v529;
/* _421 = _483 - _429; */
usub v421 v483 v429;
/* MEM[(limb *)&ftmp3 + 48B] = _421; */
mov ftmp3_48 v421;
/* felem_shrink (&small2, &ftmp3); */
call felem_shrink (ftmp3_0, ftmp3_16, ftmp3_32, ftmp3_48,
                   small2_0, small2_8, small2_16, small2_24);
/* smallfelem_mul (&tmp, &small1, &small2); */
call smallfelem_mul (small1_0, small1_8, small1_16, small1_24,
                     small2_0, small2_8, small2_16, small2_24,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* felem_shrink (&small1, &ftmp6); */
call felem_shrink (ftmp6_0, ftmp6_16, ftmp6_32, ftmp6_48,
                   small1_0, small1_8, small1_16, small1_24);
/* felem_shrink (&small2, &ftmp2); */
call felem_shrink (ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48,
                   small2_0, small2_8, small2_16, small2_24);
/* smallfelem_mul (&tmp2, &small1, &small2); */
call smallfelem_mul (small1_0, small1_8, small1_16, small1_24,
                     small2_0, small2_8, small2_16, small2_24,
                     tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96, tmp2_112);
/* _389 = MEM[(limb *)&tmp2]; */
mov v389 tmp2_0;
/* _391 = _389 * 2; */
umul v391 v389 0x2@uint128;
/* MEM[(limb *)&tmp2] = _391; */
mov tmp2_0 v391;
/* _392 = MEM[(limb *)&tmp2 + 16B]; */
mov v392 tmp2_16;
/* _393 = _392 * 2; */
umul v393 v392 0x2@uint128;
/* MEM[(limb *)&tmp2 + 16B] = _393; */
mov tmp2_16 v393;
/* _394 = MEM[(limb *)&tmp2 + 32B]; */
mov v394 tmp2_32;
/* _395 = _394 * 2; */
umul v395 v394 0x2@uint128;
/* MEM[(limb *)&tmp2 + 32B] = _395; */
mov tmp2_32 v395;
/* _396 = MEM[(limb *)&tmp2 + 48B]; */
mov v396 tmp2_48;
/* _397 = _396 * 2; */
umul v397 v396 0x2@uint128;
/* MEM[(limb *)&tmp2 + 48B] = _397; */
mov tmp2_48 v397;
/* _398 = MEM[(limb *)&tmp2 + 64B]; */
mov v398 tmp2_64;
/* _399 = _398 * 2; */
umul v399 v398 0x2@uint128;
/* MEM[(limb *)&tmp2 + 64B] = _399; */
mov tmp2_64 v399;
/* _400 = MEM[(limb *)&tmp2 + 80B]; */
mov v400 tmp2_80;
/* _401 = _400 * 2; */
umul v401 v400 0x2@uint128;
/* MEM[(limb *)&tmp2 + 80B] = _401; */
mov tmp2_80 v401;
/* _402 = MEM[(limb *)&tmp2 + 96B]; */
mov v402 tmp2_96;
/* _403 = _402 * 2; */
umul v403 v402 0x2@uint128;
/* MEM[(limb *)&tmp2 + 96B] = _403; */
mov tmp2_96 v403;
/* _404 = MEM[(limb *)&tmp2 + 112B]; */
mov v404 tmp2_112;
/* _405 = _404 * 2; */
umul v405 v404 0x2@uint128;
/* MEM[(limb *)&tmp2 + 112B] = _405; */
mov tmp2_112 v405;
/* longfelem_diff (&tmp, &tmp2); */
call longfelem_diff (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                     tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96, tmp2_112,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112);
/* _381 = MEM[(const limb *)&tmp]; */
mov v381 tmp_0;
/* _382 = _381 + 0x1fffffffffffffffdfffffffe00; */
uadd v382 v381 0x1fffffffffffffffdfffffffe00@uint128;
/* MEM[(limb *)&y_out] = _382; */
mov y_out_0 v382;
/* _383 = MEM[(const limb *)&tmp + 16B]; */
mov v383 tmp_16;
/* _384 = _383 + 0x200000000000000000000000000; */
uadd v384 v383 0x200000000000000000000000000@uint128;
/* MEM[(limb *)&y_out + 16B] = _384; */
mov y_out_16 v384;
/* _385 = MEM[(const limb *)&tmp + 32B]; */
mov v385 tmp_32;
/* _386 = _385 + 0x1fffffffffffffffe0000000200; */
uadd v386 v385 0x1fffffffffffffffe0000000200@uint128;
/* MEM[(limb *)&y_out + 32B] = _386; */
mov y_out_32 v386;
/* _387 = MEM[(const limb *)&tmp + 48B]; */
mov v387 tmp_48;
/* _388 = _387 + 0x1fffffffffffffffe0000000200; */
uadd v388 v387 0x1fffffffffffffffe0000000200@uint128;
/* MEM[(limb *)&y_out + 48B] = _388; */
mov y_out_48 v388;
/* felem_reduce_ (&y_out, &tmp); */
call felem_reduce_ (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, tmp_112,
                    y_out_0, y_out_16, y_out_32, y_out_48);

/* /\* mask64_219 = (const u64) z1_is_zero_11; *\/ */
/* cast mask64219@uint64 z1_is_zero11@uint128; */
/* /\* _535 = ~z1_is_zero_11; *\/ */
/* not uint128 v535 z1_is_zero11; */
/* /\* _704 = *x2_33(D); *\/ */
/* mov v704 x233_0; */
/* /\* _705 = mask64_219 & _704; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v705 mask64219 v704; */
/* /\* _706 = (__int128 unsigned) _705; *\/ */
/* vpc v706@uint128 v705@uint64; */
/* /\* _709 = MEM[(limb *)&x_out]; *\/ */
/* mov v709 x_out_0; */
/* /\* _710 = _535 & _709; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v710 v535 v709; */
/* /\* _711 = _706 | _710; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v711 v706 v710; */
/* /\* _721 = MEM[(const u64 *)x2_33(D) + 8B]; *\/ */
/* mov v721 x233_8; */
/* /\* _722 = mask64_219 & _721; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v722 mask64219 v721; */
/* /\* _723 = (__int128 unsigned) _722; *\/ */
/* vpc v723@uint128 v722@uint64; */
/* /\* _726 = MEM[(limb *)&x_out + 16B]; *\/ */
/* mov v726 x_out_16; */
/* /\* _727 = _535 & _726; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v727 v535 v726; */
/* /\* _728 = _723 | _727; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v728 v723 v727; */
/* /\* MEM[(limb *)&x_out + 16B] = _728; *\/ */
/* mov x_out_16 v728; */
/* /\* _738 = MEM[(const u64 *)x2_33(D) + 16B]; *\/ */
/* mov v738 x233_16; */
/* /\* _739 = mask64_219 & _738; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v739 mask64219 v738; */
/* /\* _740 = (__int128 unsigned) _739; *\/ */
/* vpc v740@uint128 v739@uint64; */
/* /\* _743 = MEM[(limb *)&x_out + 32B]; *\/ */
/* mov v743 x_out_32; */
/* /\* _744 = _535 & _743; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v744 v535 v743; */
/* /\* _745 = _740 | _744; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v745 v740 v744; */
/* /\* MEM[(limb *)&x_out + 32B] = _745; *\/ */
/* mov x_out_32 v745; */
/* /\* _224 = MEM[(const u64 *)x2_33(D) + 24B]; *\/ */
/* mov v224 x233_24; */
/* /\* _225 = mask64_219 & _224; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v225 mask64219 v224; */
/* /\* _226 = (__int128 unsigned) _225; *\/ */
/* vpc v226@uint128 v225@uint64; */
/* /\* _229 = MEM[(limb *)&x_out + 48B]; *\/ */
/* mov v229 x_out_48; */
/* /\* _231 = _229 & _535; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v231 v229 v535; */
/* /\* _232 = _226 | _231; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v232 v226 v231; */
/* /\* MEM[(limb *)&x_out + 48B] = _232; *\/ */
/* mov x_out_48 v232; */
/* /\* _659 = *x1_22(D); *\/ */
/* mov v659 x122_0; */
/* /\* _662 = _659 ^ _711; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_663 = z2_is_zero_14 & _662; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp663 z2_is_zero14 v662; */
/* /\* _664 = tmp_663 ^ _711; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out] = _664; *\/ */
/* mov x_out_0 v664; */
/* /\* _674 = MEM[(const limb *)x1_22(D) + 16B]; *\/ */
/* mov v674 x122_16; */
/* /\* _677 = _674 ^ _728; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_678 = z2_is_zero_14 & _677; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp678 z2_is_zero14 v677; */
/* /\* _679 = tmp_678 ^ _728; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 16B] = _679; *\/ */
/* mov x_out_16 v679; */
/* /\* _689 = MEM[(const limb *)x1_22(D) + 32B]; *\/ */
/* mov v689 x122_32; */
/* /\* _692 = _689 ^ _745; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_693 = z2_is_zero_14 & _692; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp693 z2_is_zero14 v692; */
/* /\* _694 = tmp_693 ^ _745; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 32B] = _694; *\/ */
/* mov x_out_32 v694; */
/* /\* _212 = MEM[(const limb *)x1_22(D) + 48B]; *\/ */
/* mov v212 x122_48; */
/* /\* _215 = _212 ^ _232; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_216 = z2_is_zero_14 & _215; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp216 z2_is_zero14 v215; */
/* /\* _217 = tmp_216 ^ _232; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 48B] = _217; *\/ */
/* mov x_out_48 v217; */
/* /\* _608 = *y2_43(D); *\/ */
/* mov v608 y243_0; */
/* /\* _609 = mask64_219 & _608; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v609 mask64219 v608; */
/* /\* _610 = (__int128 unsigned) _609; *\/ */
/* vpc v610@uint128 v609@uint64; */
/* /\* _613 = MEM[(limb *)&y_out]; *\/ */
/* mov v613 y_out_0; */
/* /\* _614 = _535 & _613; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v614 v535 v613; */
/* /\* _615 = _610 | _614; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v615 v610 v614; */
/* /\* _625 = MEM[(const u64 *)y2_43(D) + 8B]; *\/ */
/* mov v625 y243_8; */
/* /\* _626 = mask64_219 & _625; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v626 mask64219 v625; */
/* /\* _627 = (__int128 unsigned) _626; *\/ */
/* vpc v627@uint128 v626@uint64; */
/* /\* _630 = MEM[(limb *)&y_out + 16B]; *\/ */
/* mov v630 y_out_16; */
/* /\* _631 = _535 & _630; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v631 v535 v630; */
/* /\* _632 = _627 | _631; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v632 v627 v631; */
/* /\* MEM[(limb *)&y_out + 16B] = _632; *\/ */
/* mov y_out_16 v632; */
/* /\* _642 = MEM[(const u64 *)y2_43(D) + 16B]; *\/ */
/* mov v642 y243_16; */
/* /\* _643 = mask64_219 & _642; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v643 mask64219 v642; */
/* /\* _644 = (__int128 unsigned) _643; *\/ */
/* vpc v644@uint128 v643@uint64; */
/* /\* _647 = MEM[(limb *)&y_out + 32B]; *\/ */
/* mov v647 y_out_32; */
/* /\* _648 = _535 & _647; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v648 v535 v647; */
/* /\* _649 = _644 | _648; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v649 v644 v648; */
/* /\* MEM[(limb *)&y_out + 32B] = _649; *\/ */
/* mov y_out_32 v649; */
/* /\* _198 = MEM[(const u64 *)y2_43(D) + 24B]; *\/ */
/* mov v198 y243_24; */
/* /\* _199 = _198 & mask64_219; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v199 v198 mask64219; */
/* /\* _200 = (__int128 unsigned) _199; *\/ */
/* vpc v200@uint128 v199@uint64; */
/* /\* _203 = MEM[(limb *)&y_out + 48B]; *\/ */
/* mov v203 y_out_48; */
/* /\* _205 = _203 & _535; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v205 v203 v535; */
/* /\* _206 = _200 | _205; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v206 v200 v205; */
/* /\* MEM[(limb *)&y_out + 48B] = _206; *\/ */
/* mov y_out_48 v206; */
/* /\* _550 = *y1_30(D); *\/ */
/* mov v550 y130_0; */
/* /\* _549 = _550 ^ _615; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_545 = z2_is_zero_14 & _549; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp545 z2_is_zero14 v549; */
/* /\* _541 = tmp_545 ^ _615; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out] = _541; *\/ */
/* mov y_out_0 v541; */
/* /\* _230 = MEM[(const limb *)y1_30(D) + 16B]; *\/ */
/* mov v230 y130_16; */
/* /\* _581 = _230 ^ _632; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_582 = z2_is_zero_14 & _581; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp582 z2_is_zero14 v581; */
/* /\* _583 = tmp_582 ^ _632; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 16B] = _583; *\/ */
/* mov y_out_16 v583; */
/* /\* _593 = MEM[(const limb *)y1_30(D) + 32B]; *\/ */
/* mov v593 y130_32; */
/* /\* _596 = _593 ^ _649; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_597 = z2_is_zero_14 & _596; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp597 z2_is_zero14 v596; */
/* /\* _598 = tmp_597 ^ _649; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 32B] = _598; *\/ */
/* mov y_out_32 v598; */
/* /\* _187 = MEM[(const limb *)y1_30(D) + 48B]; *\/ */
/* mov v187 y130_48; */
/* /\* _190 = _187 ^ _206; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_191 = z2_is_zero_14 & _190; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp191 z2_is_zero14 v190; */
/* /\* _192 = tmp_191 ^ _206; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 48B] = _192; *\/ */
/* mov y_out_48 v192; */
/* /\* _390 = *z2_12(D); *\/ */
/* mov v390 z212_0; */
/* /\* _347 = mask64_219 & _390; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v347 mask64219 v390; */
/* /\* _345 = (__int128 unsigned) _347; *\/ */
/* vpc v345@uint128 v347@uint64; */
/* /\* _263 = MEM[(limb *)&z_out]; *\/ */
/* mov v263 z_out_0; */
/* /\* _262 = _263 & _535; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v262 v263 v535; */
/* /\* _261 = _262 | _345; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v261 v262 v345; */
/* /\* _169 = MEM[(const u64 *)z2_12(D) + 8B]; *\/ */
/* mov v169 z212_8; */
/* /\* _158 = _169 & mask64_219; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v158 v169 mask64219; */
/* /\* _144 = (__int128 unsigned) _158; *\/ */
/* vpc v144@uint128 v158@uint64; */
/* /\* _138 = MEM[(limb *)&z_out + 16B]; *\/ */
/* mov v138 z_out_16; */
/* /\* _81 = _138 & _535; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v81 v138 v535; */
/* /\* _79 = _81 | _144; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v79 v81 v144; */
/* /\* MEM[(limb *)&z_out + 16B] = _79; *\/ */
/* mov z_out_16 v79; */
/* /\* _573 = MEM[(const u64 *)z2_12(D) + 16B]; *\/ */
/* mov v573 z212_16; */
/* /\* _574 = mask64_219 & _573; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v574 mask64219 v573; */
/* /\* _576 = (__int128 unsigned) _574; *\/ */
/* vpc v576@uint128 v574@uint64; */
/* /\* _563 = MEM[(limb *)&z_out + 32B]; *\/ */
/* mov v563 z_out_32; */
/* /\* _566 = _535 & _563; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v566 v535 v563; */
/* /\* _567 = _566 | _576; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v567 v566 v576; */
/* /\* MEM[(limb *)&z_out + 32B] = _567; *\/ */
/* mov z_out_32 v567; */
/* /\* _173 = MEM[(const u64 *)z2_12(D) + 24B]; *\/ */
/* mov v173 z212_24; */
/* /\* _174 = _173 & mask64_219; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v174 v173 mask64219; */
/* /\* _175 = (__int128 unsigned) _174; *\/ */
/* vpc v175@uint128 v174@uint64; */
/* /\* _178 = MEM[(limb *)&z_out + 48B]; *\/ */
/* mov v178 z_out_48; */
/* /\* _180 = _178 & _535; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 v180 v178 v535; */
/* /\* _181 = _175 | _180; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint128 v181 v175 v180; */
/* /\* MEM[(limb *)&z_out + 48B] = _181; *\/ */
/* mov z_out_48 v181; */
/* /\* _526 = *z1_8(D); *\/ */
/* mov v526 z18_0; */
/* /\* _523 = _261 ^ _526; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_522 = z2_is_zero_14 & _523; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp522 z2_is_zero14 v523; */
/* /\* _521 = _261 ^ tmp_522; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out] = _521; *\/ */
/* mov z_out_0 v521; */
/* /\* _473 = MEM[(const limb *)z1_8(D) + 16B]; *\/ */
/* mov v473 z18_16; */
/* /\* _460 = _79 ^ _473; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_459 = z2_is_zero_14 & _460; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp459 z2_is_zero14 v460; */
/* /\* _458 = _79 ^ tmp_459; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out + 16B] = _458; *\/ */
/* mov z_out_16 v458; */
/* /\* _440 = MEM[(const limb *)z1_8(D) + 32B]; *\/ */
/* mov v440 z18_32; */
/* /\* _436 = _440 ^ _567; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_434 = z2_is_zero_14 & _436; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp434 z2_is_zero14 v436; */
/* /\* _432 = tmp_434 ^ _567; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out + 32B] = _432; *\/ */
/* mov z_out_32 v432; */
/* /\* _162 = MEM[(const limb *)z1_8(D) + 48B]; *\/ */
/* mov v162 z18_48; */
/* /\* _165 = _162 ^ _181; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_166 = z2_is_zero_14 & _165; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint128 tmp166 z2_is_zero14 v165; */
/* /\* _167 = tmp_166 ^ _181; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* *x3_49(D) = _664; *\/ */
/* mov x349_0 v664; */
/* /\* MEM[(limb *)x3_49(D) + 16B] = _679; *\/ */
/* mov x349_16 v679; */
/* /\* MEM[(limb *)x3_49(D) + 32B] = _694; *\/ */
/* mov x349_32 v694; */
/* /\* MEM[(limb *)x3_49(D) + 48B] = _217; *\/ */
/* mov x349_48 v217; */
/* /\* *y3_50(D) = _541; *\/ */
/* mov y350_0 v541; */
/* /\* MEM[(limb *)y3_50(D) + 16B] = _583; *\/ */
/* mov y350_16 v583; */
/* /\* MEM[(limb *)y3_50(D) + 32B] = _598; *\/ */
/* mov y350_32 v598; */
/* /\* MEM[(limb *)y3_50(D) + 48B] = _192; *\/ */
/* mov y350_48 v192; */
/* /\* *z3_51(D) = _521; *\/ */
/* mov z351_0 v521; */
/* /\* MEM[(limb *)z3_51(D) + 16B] = _458; *\/ */
/* mov z351_16 v458; */
/* /\* MEM[(limb *)z3_51(D) + 32B] = _432; *\/ */
/* mov z351_32 v432; */
/* /\* MEM[(limb *)z3_51(D) + 48B] = _167; *\/ */
/* mov z351_48 v167; */
/* /\* ftmp ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* ftmp2 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* ftmp3 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* ftmp4 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* ftmp5 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* ftmp6 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* x_out ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* y_out ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* z_out ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* tmp ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* tmp2 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* small1 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* small2 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* small3 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* small4 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* small5 ={v} {CLOBBER}; *\/ */
/* /\* TODO: Skip translation for constructor *\/ */
/* /\* goto <bb 9> *\/ */
/* /\* TODO: unconditional jump *\/ */

/* /\* BB's index is 9 *\/ */

/* /\* MEM_6 = PHI <MEM_97(8), MEM_68(7)> *\/ */
/* /\* return; *\/ */


/* Start with unused lhs */
/* mov _ x349_0@uint128; */
/* mov _ x349_16@uint128; */
/* mov _ x349_32@uint128; */
/* mov _ x349_48@uint128; */
mov X3_0 x_out_0@uint128;
mov X3_1 x_out_16@uint128;
mov X3_2 x_out_32@uint128;
mov X3_3 x_out_48@uint128;
/* mov _ y350_0@uint128; */
/* mov _ y350_16@uint128; */
/* mov _ y350_32@uint128; */
/* mov _ y350_48@uint128; */
mov Y3_0 y_out_0@uint128;
mov Y3_1 y_out_16@uint128;
mov Y3_2 y_out_32@uint128;
mov Y3_3 y_out_48@uint128;
/* mov _ z351_0@uint128; */
/* mov _ z351_16@uint128; */
/* mov _ z351_32@uint128; */
/* mov _ z351_48@uint128; */
mov Z3_0 z_out_0@uint128;
mov Z3_1 z_out_16@uint128;
mov Z3_2 z_out_32@uint128;
mov Z3_3 z_out_48@uint128;
/* End with unsed lhs */




{
 /* http://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-3.html#addition-add-2007-bl */
 and [
      (limbs 64 [X3_0, X3_1, X3_2, X3_3])
      = ((2 * ((limbs 64 [Y2_0, Y2_1, Y2_2, Y2_3]) * (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 3
             - (limbs 64 [Y1_0, Y1_1, Y1_2, Y1_3]) * (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) **3)
       ) ** 2
       - 4 * ((((limbs 64 [X2_0, X2_1, X2_2, X2_3]) *
                (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) **2) -
                ((limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
                 (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 )) ** 3)
       - 2 * (((limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
                (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2)
               * 4 * (((limbs 64 [X2_0, X2_1, X2_2, X2_3]) *
                              (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) **2
                             )- ((limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
                              (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2
                             )
                            ) ** 2))
       (mod  (limbs 64 [18446744073709551615,
              4294967295,
              0,
              18446744069414584321 ])),
     (limbs 64 [Y3_0, Y3_1, Y3_2, Y3_3])
     =
     ( /* r * (V - X3) */
      /* r */
      (2 * ((limbs 64 [Y2_0, Y2_1, Y2_2, Y2_3]) * (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 3
             - (limbs 64 [Y1_0, Y1_1, Y1_2, Y1_3]) * (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) **3)
      )
      *
      ( /* V */
       (((limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
         (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2)
         * 4 * (((limbs 64 [X2_0, X2_1, X2_2, X2_3]) *
                 (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) **2
                )-
                ((limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
                 (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2
                )
               ) ** 2)
        -
        (limbs 64 [X3_0, X3_1, X3_2, X3_3])
      )
      - ( /* 2 * S1 * J */
          2
          * (
             (limbs 64 [Y1_0, Y1_1, Y1_2, Y1_3]) * (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) **3)
             * 4 * ((((limbs 64 [X2_0, X2_1, X2_2, X2_3]) *
                (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) **2) -
                ((limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
                 (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 )) ** 3)
          )
     )
     (mod  (limbs 64 [18446744073709551615,
            4294967295,
            0,
            18446744069414584321 ])),
      (limbs 64 [Z3_0, Z3_1, Z3_2, Z3_3])
      = ((((limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) + (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3])) ** 2
          - (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 2 - (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2)
          * (
             (
              (limbs 64 [X2_0, X2_1, X2_2, X2_3]) *
              (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3]) **2
             )
             -
             (
              (limbs 64 [X1_0, X1_1, X1_2, X1_3]) *
              (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2
             )
            )
        )
        (mod  (limbs 64 [  18446744073709551615,
               4294967295,
               0,
               18446744069414584321 ]))
     ]
     &&
     true
}

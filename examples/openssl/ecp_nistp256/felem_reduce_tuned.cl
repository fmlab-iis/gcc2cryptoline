proc main (uint128 in0, uint128 in1, uint128 in2, uint128 in3, uint128 in4, uint128 in5, uint128 in6, uint128 in7) = 
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

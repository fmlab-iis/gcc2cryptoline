proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in51_64@uint128 _;
mov in51_80@uint128 _;
mov in51_96@uint128 _;
mov in51_112@uint128 _;
mov out53_0@uint128 _;
mov out53_16@uint128 _;
mov out53_32@uint128 _;
mov out53_48@uint128 _;
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
usub v30 v27 v29;
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
mov _ out53_0@uint128;
mov _ out53_16@uint128;
mov _ out53_32@uint128;
mov _ out53_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

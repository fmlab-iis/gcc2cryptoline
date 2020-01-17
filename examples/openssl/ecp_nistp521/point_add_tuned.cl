proc felem_reduce (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6, uint128 a7, uint128 a8; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4, uint64 c5, uint64 c6, uint64 c7, uint64 c8) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in109_0@uint128 a0;
mov in109_16@uint128 a1;
mov in109_32@uint128 a2;
mov in109_48@uint128 a3;
mov in109_64@uint128 a4;
mov in109_80@uint128 a5;
mov in109_96@uint128 a6;
mov in109_112@uint128 a7;
mov in109_128@uint128 a8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_109(D); *)
mov v1 in109_0;
(* _2 = (long unsigned int) _1; *)
cast v2@uint64 v1@uint128;
(* _3 = _2 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v3 v2 0x3ffffffffffffff@uint64; *)
split tmpv3 v3 v2 58;
(* _4 = MEM[(const uint128_t * )in_109(D) + 16B]; *)
mov v4 in109_16;
(* _5 = (long unsigned int) _4; *)
cast v5@uint64 v4@uint128;
(* _6 = _5 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
split tmpv6 v6 v5 58;
(* _7 = MEM[(const uint128_t * )in_109(D) + 32B]; *)
mov v7 in109_32;
(* _8 = (long unsigned int) _7; *)
cast v8@uint64 v7@uint128;
(* _9 = _8 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v9 v8 0x3ffffffffffffff@uint64; *)
split tmpv9 v9 v8 58;
(* _10 = MEM[(const uint128_t * )in_109(D) + 48B]; *)
mov v10 in109_48;
(* _11 = (long unsigned int) _10; *)
cast v11@uint64 v10@uint128;
(* _12 = _11 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v12 v11 0x3ffffffffffffff@uint64; *)
split tmpv12 v12 v11 58;
(* _13 = MEM[(const uint128_t * )in_109(D) + 64B]; *)
mov v13 in109_64;
(* _14 = (long unsigned int) _13; *)
cast v14@uint64 v13@uint128;
(* _15 = _14 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v15 v14 0x3ffffffffffffff@uint64; *)
split tmpv15 v15 v14 58;
(* _16 = MEM[(const uint128_t * )in_109(D) + 80B]; *)
mov v16 in109_80;
(* _17 = (long unsigned int) _16; *)
cast v17@uint64 v16@uint128;
(* _18 = _17 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v18 v17 0x3ffffffffffffff@uint64; *)
split tmpv18 v18 v17 58;
(* _19 = MEM[(const uint128_t * )in_109(D) + 96B]; *)
mov v19 in109_96;
(* _20 = (long unsigned int) _19; *)
cast v20@uint64 v19@uint128;
(* _21 = _20 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v21 v20 0x3ffffffffffffff@uint64; *)
split tmpv21 v21 v20 58;
(* _22 = MEM[(const uint128_t * )in_109(D) + 112B]; *)
mov v22 in109_112;
(* _23 = (long unsigned int) _22; *)
cast v23@uint64 v22@uint128;
(* _24 = _23 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v24 v23 0x3ffffffffffffff@uint64; *)
split tmpv24 v24 v23 58;
(* _25 = MEM[(const uint128_t * )in_109(D) + 128B]; *)
mov v25 in109_128;
(* _26 = (long unsigned int) _25; *)
cast v26@uint64 v25@uint128;
(* _27 = _26 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
(* and uint64 v27 v26 0x3ffffffffffffff@uint64; *)
split tmpv27 v27 v26 58;
(* _28 = _2 >> 58; *)
usplit v28 tmp_to_use v2 58;


assert true && v28 = tmpv3;
assume v28 = tmpv3 && true;

assert true && v3 = tmp_to_use;
assume v3 = tmp_to_use && true;

(* _29 = _6 + _28; *)
uadd v29 v6 v28;
(* _30 = _1 >> 64; *)
usplit v30 tmp_to_use v1 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v2;
assume tmp_to_use = v2 && true;

(* _31 = (long unsigned int) _30; *)
(* ======= modified: cast -> vpc ======== *)
vpc v31@uint64 v30@uint128;
(* _32 = _31 << 6; *)
usplit tmp1 tmp2 v31 58;
shl v32 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _33 = _32 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v33 v32 0x3ffffffffffffc0@uint64; *)
usplit tmp v33 v32 58;

(* _34 = _29 + _33; *)
uadd v34 v29 v33;
(* _35 = _31 >> 52; *)
usplit v35 tmp_to_use v31 52;

assert true && tmp_to_use * (2**6)@64 = v33;
assume tmp_to_use * (2**6) = v33 && true;

(* _37 = _5 >> 58; *)
usplit v37 tmp_to_use v5 58;

assert true && v37 = tmpv6;
assume v37 = tmpv6 && true;

assert true && v6 = tmp_to_use;
assume v6 = tmp_to_use && true;

(* _132 = _9 + _37; *)
uadd v132 v9 v37;
(* _38 = _35 + _132; *)
uadd v38 v35 v132;
(* _39 = _4 >> 64; *)
usplit v39 tmp_to_use v4 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v5;
assume tmp_to_use = v5 && true;

(* _40 = (long unsigned int) _39; *)
(* ======= modified: cast -> vpc ======== *)
vpc v40@uint64 v39@uint128;
(* _41 = _40 << 6; *)
usplit tmp1 tmp2 v40 58;
shl v41 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _42 = _41 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v42 v41 0x3ffffffffffffc0@uint64; *)
usplit tmp v42 v41 58;
(* _43 = _38 + _42; *)
uadd v43 v38 v42;
(* MEM[(limb * )out_110(D) + 16B] = _43; *)
mov out110_16 v43;
(* _44 = _40 >> 52; *)
usplit v44 tmp_to_use v40 52;

assert true && tmp_to_use * (2**6)@64 = v42;
assume tmp_to_use * (2**6) = v42 && true;

(* _46 = _8 >> 58; *)
usplit v46 tmp_to_use v8 58;

assert true && v46 = tmpv9;
assume v46 = tmpv9 && true;

assert true && v9 = tmp_to_use;
assume v9 = tmp_to_use && true;


(* _131 = _12 + _46; *)
uadd v131 v12 v46;
(* _47 = _44 + _131; *)
uadd v47 v44 v131;
(* _48 = _7 >> 64; *)
usplit v48 tmp_to_use v7 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v8;
assume tmp_to_use = v8 && true;

(* _49 = (long unsigned int) _48; *)
(* ======= modified: cast -> vpc ======== *)
vpc v49@uint64 v48@uint128;
(* _50 = _49 << 6; *)
usplit tmp1 tmp2 v49 58;
shl v50 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* ssert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _51 = _50 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v51 v50 0x3ffffffffffffc0@uint64; *)
usplit tmp v51 v50 58;
(* _52 = _47 + _51; *)
uadd v52 v47 v51;
(* MEM[(limb * )out_110(D) + 24B] = _52; *)
mov out110_24 v52;
(* _53 = _49 >> 52; *)
usplit v53 tmp_to_use v49 52;

assert true && tmp_to_use * (2**6)@64 = v51;
assume tmp_to_use * (2**6) = v51 && true;

(* _55 = _11 >> 58; *)
usplit v55 tmp_to_use v11 58;

assert true && v55 = tmpv12;
assume v55 = tmpv12 && true;

assert true && v12 = tmp_to_use;
assume v12 = tmp_to_use && true;


(* _130 = _15 + _55; *)
uadd v130 v15 v55;
(* _56 = _53 + _130; *)
uadd v56 v53 v130;
(* _57 = _10 >> 64; *)
usplit v57 tmp_to_use v10 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v11;
assume tmp_to_use = v11 && true;

(* _58 = (long unsigned int) _57; *)
(* ======= modified: cast -> vpc ======== *)
vpc v58@uint64 v57@uint128;
(* _59 = _58 << 6; *)
usplit tmp1 tmp2 v58 58;
shl v59 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _60 = _59 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v60 v59 0x3ffffffffffffc0@uint64; *)
usplit tmp v60 v59 58;
(* _61 = _56 + _60; *)
uadd v61 v56 v60;
(* MEM[(limb * )out_110(D) + 32B] = _61; *)
mov out110_32 v61;
(* _62 = _58 >> 52; *)
usplit v62 tmp_to_use v58 52;

assert true && tmp_to_use * (2**6)@64 = v60;
assume tmp_to_use * (2**6) = v60 && true;

(* _64 = _14 >> 58; *)
usplit v64 tmp_to_use v14 58;


assert true && v64 = tmpv15;
assume v64 = tmpv15 && true;

assert true && v15 = tmp_to_use;
assume v15 = tmp_to_use && true;

(* _129 = _18 + _64; *)
uadd v129 v18 v64;
(* _65 = _62 + _129; *)
uadd v65 v62 v129;
(* _66 = _13 >> 64; *)
usplit v66 tmp_to_use v13 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v14;
assume tmp_to_use = v14 && true;

(* _67 = (long unsigned int) _66; *)
(* ======= modified: cast -> vpc ======== *)
vpc v67@uint64 v66@uint128;
(* _68 = _67 << 6; *)
usplit tmp1 tmp2 v67 58;
shl v68 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* ssert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _69 = _68 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v69 v68 0x3ffffffffffffc0@uint64; *)
usplit tmp v69 v68 58;
(* _70 = _65 + _69; *)
uadd v70 v65 v69;
(* MEM[(limb * )out_110(D) + 40B] = _70; *)
mov out110_40 v70;
(* _71 = _67 >> 52; *)
usplit v71 tmp_to_use v67 52;

assert true && tmp_to_use * (2**6)@64 = v69;
assume tmp_to_use * (2**6) = v69 && true;

(* _73 = _17 >> 58; *)
usplit v73 tmp_to_use v17 58;

assert true && v73 = tmpv18;
assume v73 = tmpv18 && true;

assert true && v18 = tmp_to_use;
assume v18 = tmp_to_use && true;

(* _128 = _21 + _73; *)
uadd v128 v21 v73;
(* _74 = _71 + _128; *)
uadd v74 v71 v128;
(* _75 = _16 >> 64; *)
usplit v75 tmp_to_use v16 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v17;
assume tmp_to_use = v17 && true;

(* _76 = (long unsigned int) _75; *)
(* ======= modified: cast -> vpc ======== *)
vpc v76@uint64 v75@uint128;
(* _77 = _76 << 6; *)
usplit tmp1 tmp2 v76 58;
shl v77 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _78 = _77 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v78 v77 0x3ffffffffffffc0@uint64; *)
usplit tmp v78 v77 58;
(* _79 = _74 + _78; *)
uadd v79 v74 v78;
(* MEM[(limb * )out_110(D) + 48B] = _79; *)
mov out110_48 v79;
(* _80 = _76 >> 52; *)
usplit v80 tmp_to_use v76 52;

assert true && tmp_to_use * (2**6)@64 = v78;
assume tmp_to_use * (2**6) = v78 && true;

(* _82 = _20 >> 58; *)
usplit v82 tmp_to_use v20 58;


assert true && v82 = tmpv21;
assume v82 = tmpv21 && true;

assert true && v21 = tmp_to_use;
assume v21 = tmp_to_use && true;

(* _126 = _24 + _82; *)
uadd v126 v24 v82;
(* _83 = _80 + _126; *)
uadd v83 v80 v126;
(* _84 = _19 >> 64; *)
usplit v84 tmp_to_use v19 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v20;
assume tmp_to_use = v20 && true;

(* _85 = (long unsigned int) _84; *)
(* ======= modified: cast -> vpc ======== *)
vpc v85@uint64 v84@uint128;
(* _86 = _85 << 6; *)
usplit tmp1 tmp2 v85 58;
shl v86 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* ssert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _87 = _86 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v87 v86 0x3ffffffffffffc0@uint64; *)
usplit tmp v87 v86 58;
(* _88 = _83 + _87; *)
uadd v88 v83 v87;
(* MEM[(limb * )out_110(D) + 56B] = _88; *)
mov out110_56 v88;
(* _89 = _85 >> 52; *)
usplit v89 tmp_to_use v85 52;

assert true && tmp_to_use * (2**6)@64 = v87;
assume tmp_to_use * (2**6) = v87 && true;

(* _91 = _23 >> 58; *)
usplit v91 tmp_to_use v23 58;

assert true && v91 = tmpv24;
assume v91 = tmpv24 && true;

assert true && v24 = tmp_to_use;
assume v24 = tmp_to_use && true;

(* _127 = _27 + _91; *)
uadd v127 v27 v91;
(* _92 = _89 + _127; *)
uadd v92 v89 v127;
(* _93 = _22 >> 64; *)
usplit v93 tmp_to_use v22 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v23;
assume tmp_to_use = v23 && true;

(* _94 = (long unsigned int) _93; *)
(* ======= modified: cast -> vpc ======== *)
vpc v94@uint64 v93@uint128;
(* _95 = _94 << 6; *)
usplit tmp1 tmp2 v94 58;
shl v95 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* ssert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _96 = _95 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v96 v95 0x3ffffffffffffc0@uint64; *)
usplit tmp v96 v95 58;
(* _97 = _92 + _96; *)
uadd v97 v92 v96;
(* MEM[(limb * )out_110(D) + 64B] = _97; *)
mov out110_64 v97;
(* overflow1_118 = _94 >> 52; *)
usplit overflow1118 tmp_to_use v94 52;

assert true && tmp_to_use * (2**6)@64 = v96;
assume tmp_to_use * (2**6) = v96 && true;

(* _98 = _26 >> 58; *)
usplit v98 tmp_to_use v26 58;

assert true && v98 = tmpv27;
assume v98 = tmpv27 && true;

assert true && v27 = tmp_to_use;
assume v27 = tmp_to_use && true;

(* overflow1_119 = _98 + overflow1_118; *)
uadd overflow1119 v98 overflow1118;
(* _99 = _25 >> 64; *)
usplit v99 tmp_to_use v25 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v26;
assume tmp_to_use = v26 && true;

(* _100 = (long unsigned int) _99; *)
(* ======= modified: cast -> vpc ======== *)
vpc v100@uint64 v99@uint128;
(* _101 = _100 << 6; *)
usplit tmp1 tmp2 v100 58;
shl v101 tmp2 6;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _102 = _101 & 288230376151711680; *)
(* Note: 0x3ffffffffffffc0@uint64 = 0x3ffffffffffffc0 *)
(* Note: 0x3ffffffffffffc0@uint64 = 0b00001111111111111111111111111111111111111111111111111111000000 *)
(* and uint64 v102 v101 0x3ffffffffffffc0@uint64; *)
usplit tmp v102 v101 58;
(* overflow1_120 = _102 + overflow1_119; *)
uadd overflow1120 v102 overflow1119;
(* overflow2_121 = _100 >> 52; *)
usplit overflow2121 tmp_to_use v100 52;

assert true && tmp_to_use * (2**6)@64 = v102;
assume tmp_to_use * (2**6) = v102 && true;

(* overflow1_122 = overflow1_120 << 1; *)
usplit tmp1 tmp2 overflow1120 63;
shl overflow1122 tmp2 1;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* overflow2_123 = overflow2_121 << 1; *)
usplit tmp1 tmp2 overflow2121 63;
shl overflow2123 tmp2 1;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _103 = _3 + overflow1_122; *)
uadd v103 v3 overflow1122;
(* _104 = _34 + overflow2_123; *)
uadd v104 v34 overflow2123;
(* _105 = _103 >> 58; *)
usplit v105 tmp_to_use v103 58;
(* _106 = _104 + _105; *)
uadd v106 v104 v105;
(* MEM[(limb * )out_110(D) + 8B] = _106; *)
mov out110_8 v106;
(* _107 = _103 & 288230376151711743; *)
(* Note: 0x3ffffffffffffff@uint64 = 0x3ffffffffffffff *)
(* Note: 0x3ffffffffffffff@uint64 = 0b00001111111111111111111111111111111111111111111111111111111111 *)
and uint64 v107 v103 0x3ffffffffffffff@uint64;

assert true && tmp_to_use = v107;
assume tmp_to_use = v107 && true;

(* *out_110(D) = _107; *)
mov out110_0 v107;
(* return; *)


(* Start with unused lhs *)
mov c0 out110_0@uint64;
mov c1 out110_8@uint64;
mov c2 out110_16@uint64;
mov c3 out110_24@uint64;
mov c4 out110_32@uint64;
mov c5 out110_40@uint64;
mov c6 out110_48@uint64;
mov c7 out110_56@uint64;
mov c8 out110_64@uint64;
(* End with unsed lhs *)



{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
  )
  (mod (2**521 -1))
  &&
  and [
      c0 < (2**58)@64,
      c1 < (2**59 + 2**14)@64,
      c2 < (2**59 + 2**14)@64,
      c3 < (2**59 + 2**14)@64,
      c4 < (2**59 + 2**14)@64,
      c5 < (2**59 + 2**14)@64,
      c6 < (2**59 + 2**14)@64,
      c7 < (2**59 + 2**14)@64,
      c8 < (2**59 + 2**14)@64
  ]
}

proc felem_square (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8; uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4, uint128 c5, uint128 c6, uint128 c7, uint128 c8) =
{
  true
  &&
  and [
      a0 < (2**62)@64,
      a1 < (2**62)@64,
      a2 < (2**62)@64,
      a3 < (2**62)@64,
      a4 < (2**62)@64,
      a5 < (2**62)@64,
      a6 < (2**62)@64,
      a7 < (2**62)@64,
      a8 < (2**62)@64
  ]
}



(* Start with undefined rhs *)
mov in104_0@uint64 a0;
mov in104_8@uint64 a1;
mov in104_16@uint64 a2;
mov in104_24@uint64 a3;
mov in104_32@uint64 a4;
mov in104_40@uint64 a5;
mov in104_48@uint64 a6;
mov in104_56@uint64 a7;
mov in104_64@uint64 a8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _119 = *in_104(D); *)
mov v119 in104_0;
(* _120 = MEM[(const limb * )in_104(D) + 8B]; *)
mov v120 in104_8;
(* _121 = _120 * 2; *)
umul v121 v120 0x2@uint64;
(* _122 = MEM[(const limb * )in_104(D) + 16B]; *)
mov v122 in104_16;
(* _123 = _122 * 2; *)
umul v123 v122 0x2@uint64;
(* _124 = MEM[(const limb * )in_104(D) + 24B]; *)
mov v124 in104_24;
(* _125 = _124 * 2; *)
umul v125 v124 0x2@uint64;
(* _126 = MEM[(const limb * )in_104(D) + 32B]; *)
mov v126 in104_32;
(* _127 = _126 * 2; *)
umul v127 v126 0x2@uint64;
(* _128 = MEM[(const limb * )in_104(D) + 40B]; *)
mov v128 in104_40;
(* _129 = _128 * 2; *)
umul v129 v128 0x2@uint64;
(* _130 = MEM[(const limb * )in_104(D) + 48B]; *)
mov v130 in104_48;
(* _131 = _130 * 2; *)
umul v131 v130 0x2@uint64;
(* _132 = MEM[(const limb * )in_104(D) + 56B]; *)
mov v132 in104_56;
(* _133 = _132 * 2; *)
umul v133 v132 0x2@uint64;
(* _134 = MEM[(const limb * )in_104(D) + 64B]; *)
mov v134 in104_64;
(* _135 = _134 * 2; *)
umul v135 v134 0x2@uint64;
(* _115 = _128 * 4; *)
umul v115 v128 0x4@uint64;
(* _116 = _130 * 4; *)
umul v116 v130 0x4@uint64;
(* _117 = _132 * 4; *)
umul v117 v132 0x4@uint64;
(* _118 = _134 * 4; *)
umul v118 v134 0x4@uint64;
(* _2 = _119 w* _119; *)
umulj v2 v119 v119;
(* _4 = _119 w* _121; *)
umulj v4 v119 v121;
(* _6 = _119 w* _123; *)
umulj v6 v119 v123;
(* _8 = _120 w* _120; *)
umulj v8 v120 v120;
(* _11 = _119 w* _125; *)
umulj v11 v119 v125;
(* _12 = _123 w* _120; *)
umulj v12 v123 v120;
(* _149 = _11 + _12; *)
uadd v149 v11 v12;
(* _15 = _119 w* _127; *)
umulj v15 v119 v127;
(* _16 = _120 w* _125; *)
umulj v16 v120 v125;
(* _17 = _15 + _16; *)
uadd v17 v15 v16;
(* _19 = _122 w* _122; *)
umulj v19 v122 v122;
(* _20 = _17 + _19; *)
uadd v20 v17 v19;
(* _22 = _119 w* _129; *)
umulj v22 v119 v129;
(* _23 = _120 w* _127; *)
umulj v23 v120 v127;
(* _142 = _22 + _23; *)
uadd v142 v22 v23;
(* _25 = _125 w* _122; *)
umulj v25 v125 v122;
(* _143 = _25 + _142; *)
uadd v143 v25 v142;
(* _28 = _119 w* _131; *)
umulj v28 v119 v131;
(* _29 = _120 w* _129; *)
umulj v29 v120 v129;
(* _30 = _28 + _29; *)
uadd v30 v28 v29;
(* _32 = _124 w* _124; *)
umulj v32 v124 v124;
(* _33 = _127 w* _122; *)
umulj v33 v127 v122;
(* _140 = _30 + _32; *)
uadd v140 v30 v32;
(* _35 = _33 + _140; *)
uadd v35 v33 v140;
(* _37 = _119 w* _133; *)
umulj v37 v119 v133;
(* _38 = _120 w* _131; *)
umulj v38 v120 v131;
(* _136 = _37 + _38; *)
uadd v136 v37 v38;
(* _40 = _127 w* _124; *)
umulj v40 v127 v124;
(* _41 = _122 w* _129; *)
umulj v41 v122 v129;
(* _138 = _40 + _136; *)
uadd v138 v40 v136;
(* _43 = _41 + _138; *)
uadd v43 v41 v138;
(* _45 = _119 w* _135; *)
umulj v45 v119 v135;
(* _46 = _120 w* _133; *)
umulj v46 v120 v133;
(* _47 = _45 + _46; *)
uadd v47 v45 v46;
(* _48 = _129 w* _124; *)
umulj v48 v129 v124;
(* _49 = _122 w* _131; *)
umulj v49 v122 v131;
(* _53 = _126 w* _126; *)
umulj v53 v126 v126;
(* _165 = _47 + _53; *)
uadd v165 v47 v53;
(* _166 = _48 + _165; *)
uadd v166 v48 v165;
(* _54 = _49 + _166; *)
uadd v54 v49 v166;
(* MEM[(uint128_t * )out_105(D) + 128B] = _54; *)
mov out105_128 v54;
(* _56 = _120 w* _118; *)
umulj v56 v120 v118;
(* _58 = _122 w* _117; *)
umulj v58 v122 v117;
(* _59 = _56 + _58; *)
uadd v59 v56 v58;
(* _61 = _126 w* _115; *)
umulj v61 v126 v115;
(* _63 = _124 w* _116; *)
umulj v63 v124 v116;
(* _162 = _2 + _59; *)
uadd v162 v2 v59;
(* _163 = _61 + _162; *)
uadd v163 v61 v162;
(* _66 = _63 + _163; *)
uadd v66 v63 v163;
(* *out_105(D) = _66; *)
mov out105_0 v66;
(* _67 = _122 w* _118; *)
umulj v67 v122 v118;
(* _68 = _124 w* _117; *)
umulj v68 v124 v117;
(* _158 = _4 + _67; *)
uadd v158 v4 v67;
(* _71 = _129 w* _128; *)
umulj v71 v129 v128;
(* _72 = _126 w* _116; *)
umulj v72 v126 v116;
(* _159 = _68 + _158; *)
uadd v159 v68 v158;
(* _160 = _71 + _159; *)
uadd v160 v71 v159;
(* _75 = _72 + _160; *)
uadd v75 v72 v160;
(* MEM[(uint128_t * )out_105(D) + 16B] = _75; *)
mov out105_16 v75;
(* _76 = _124 w* _118; *)
umulj v76 v124 v118;
(* _154 = _6 + _76; *)
uadd v154 v6 v76;
(* _77 = _126 w* _117; *)
umulj v77 v126 v117;
(* _79 = _116 w* _128; *)
umulj v79 v116 v128;
(* _155 = _8 + _154; *)
uadd v155 v8 v154;
(* _156 = _77 + _155; *)
uadd v156 v77 v155;
(* _81 = _79 + _156; *)
uadd v81 v79 v156;
(* MEM[(uint128_t * )out_105(D) + 32B] = _81; *)
mov out105_32 v81;
(* _82 = _126 w* _118; *)
umulj v82 v126 v118;
(* _83 = _117 w* _128; *)
umulj v83 v117 v128;
(* _86 = _131 w* _130; *)
umulj v86 v131 v130;
(* _150 = _82 + _149; *)
uadd v150 v82 v149;
(* _151 = _83 + _150; *)
uadd v151 v83 v150;
(* _88 = _86 + _151; *)
uadd v88 v86 v151;
(* MEM[(uint128_t * )out_105(D) + 48B] = _88; *)
mov out105_48 v88;
(* _89 = _118 w* _128; *)
umulj v89 v118 v128;
(* _90 = _117 w* _130; *)
umulj v90 v117 v130;
(* _146 = _20 + _89; *)
uadd v146 v20 v89;
(* _92 = _90 + _146; *)
uadd v92 v90 v146;
(* MEM[(uint128_t * )out_105(D) + 64B] = _92; *)
mov out105_64 v92;
(* _93 = _118 w* _130; *)
umulj v93 v118 v130;
(* _95 = _133 w* _132; *)
umulj v95 v133 v132;
(* _144 = _93 + _143; *)
uadd v144 v93 v143;
(* _97 = _95 + _144; *)
uadd v97 v95 v144;
(* MEM[(uint128_t * )out_105(D) + 80B] = _97; *)
mov out105_80 v97;
(* _98 = _118 w* _132; *)
umulj v98 v118 v132;
(* _99 = _35 + _98; *)
uadd v99 v35 v98;
(* MEM[(uint128_t * )out_105(D) + 96B] = _99; *)
mov out105_96 v99;
(* _101 = _135 w* _134; *)
umulj v101 v135 v134;
(* _102 = _43 + _101; *)
uadd v102 v43 v101;
(* MEM[(uint128_t * )out_105(D) + 112B] = _102; *)
mov out105_112 v102;
(* return; *)


(* Start with unused lhs *)
mov c0 out105_0@uint128;
mov c1 out105_16@uint128;
mov c2 out105_32@uint128;
mov c3 out105_48@uint128;
mov c4 out105_64@uint128;
mov c5 out105_80@uint128;
mov c6 out105_96@uint128;
mov c7 out105_112@uint128;
mov c8 out105_128@uint128;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      sq
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
  )
  (mod (2**521 -1))
  &&
  true
}

proc felem_mul (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5, uint64 b6, uint64 b7, uint64 b8; uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4, uint128 c5, uint128 c6, uint128 c7, uint128 c8) =
{
  true
  &&
  and [
      a0 < (2**62 + 2**59 + 2**14)@64,
      a1 < (2**62 + 2**59 + 2**14)@64,
      a2 < (2**62 + 2**59 + 2**14)@64,
      a3 < (2**62 + 2**59 + 2**14)@64,
      a4 < (2**62 + 2**59 + 2**14)@64,
      a5 < (2**62 + 2**59 + 2**14)@64,
      a6 < (2**62 + 2**59 + 2**14)@64,
      a7 < (2**62 + 2**59 + 2**14)@64,
      a8 < (2**62 + 2**59 + 2**14)@64,
      b0 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b1 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b2 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b3 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b4 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b5 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b6 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b7 < (2**61 + 2**60 + 2**16 + 2**15)@64,
      b8 < (2**61 + 2**60 + 2**16 + 2**15)@64
  ]
}

(* Start with undefined rhs *)
mov in1191_0@uint64 a0;
mov in1191_8@uint64 a1;
mov in1191_16@uint64 a2;
mov in1191_24@uint64 a3;
mov in1191_32@uint64 a4;
mov in1191_40@uint64 a5;
mov in1191_48@uint64 a6;
mov in1191_56@uint64 a7;
mov in1191_64@uint64 a8;
mov in2190_0@uint64 b0;
mov in2190_8@uint64 b1;
mov in2190_16@uint64 b2;
mov in2190_24@uint64 b3;
mov in2190_32@uint64 b4;
mov in2190_40@uint64 b5;
mov in2190_48@uint64 b6;
mov in2190_56@uint64 b7;
mov in2190_64@uint64 b8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _202 = *in2_190(D); *)
mov v202 in2190_0;
(* _203 = MEM[(const limb * )in2_190(D) + 8B]; *)
mov v203 in2190_8;
(* _204 = _203 * 2; *)
umul v204 v203 0x2@uint64;
(* _205 = MEM[(const limb * )in2_190(D) + 16B]; *)
mov v205 in2190_16;
(* _206 = _205 * 2; *)
umul v206 v205 0x2@uint64;
(* _207 = MEM[(const limb * )in2_190(D) + 24B]; *)
mov v207 in2190_24;
(* _208 = _207 * 2; *)
umul v208 v207 0x2@uint64;
(* _209 = MEM[(const limb * )in2_190(D) + 32B]; *)
mov v209 in2190_32;
(* _210 = _209 * 2; *)
umul v210 v209 0x2@uint64;
(* _211 = MEM[(const limb * )in2_190(D) + 40B]; *)
mov v211 in2190_40;
(* _212 = _211 * 2; *)
umul v212 v211 0x2@uint64;
(* _213 = MEM[(const limb * )in2_190(D) + 48B]; *)
mov v213 in2190_48;
(* _214 = _213 * 2; *)
umul v214 v213 0x2@uint64;
(* _215 = MEM[(const limb * )in2_190(D) + 56B]; *)
mov v215 in2190_56;
(* _216 = _215 * 2; *)
umul v216 v215 0x2@uint64;
(* _217 = MEM[(const limb * )in2_190(D) + 64B]; *)
mov v217 in2190_64;
(* _218 = _217 * 2; *)
umul v218 v217 0x2@uint64;
(* _1 = *in1_191(D); *)
mov v1 in1191_0;
(* _4 = _1 w* _202; *)
umulj v4 v1 v202;
(* _6 = _1 w* _203; *)
umulj v6 v1 v203;
(* _7 = MEM[(const limb * )in1_191(D) + 8B]; *)
mov v7 in1191_8;
(* _9 = _202 w* _7; *)
umulj v9 v202 v7;
(* _290 = _6 + _9; *)
uadd v290 v6 v9;
(* _12 = _1 w* _205; *)
umulj v12 v1 v205;
(* _13 = _203 w* _7; *)
umulj v13 v203 v7;
(* _277 = _12 + _13; *)
uadd v277 v12 v13;
(* _15 = MEM[(const limb * )in1_191(D) + 16B]; *)
mov v15 in1191_16;
(* _17 = _202 w* _15; *)
umulj v17 v202 v15;
(* _278 = _17 + _277; *)
uadd v278 v17 v277;
(* _20 = _1 w* _207; *)
umulj v20 v1 v207;
(* _21 = _7 w* _205; *)
umulj v21 v7 v205;
(* _265 = _20 + _21; *)
uadd v265 v20 v21;
(* _23 = MEM[(const limb * )in1_191(D) + 24B]; *)
mov v23 in1191_24;
(* _25 = _202 w* _23; *)
umulj v25 v202 v23;
(* _26 = _203 w* _15; *)
umulj v26 v203 v15;
(* _266 = _25 + _265; *)
uadd v266 v25 v265;
(* _267 = _26 + _266; *)
uadd v267 v26 v266;
(* _30 = _1 w* _209; *)
umulj v30 v1 v209;
(* _31 = _7 w* _207; *)
umulj v31 v7 v207;
(* _253 = _30 + _31; *)
uadd v253 v30 v31;
(* _33 = _203 w* _23; *)
umulj v33 v203 v23;
(* _34 = _205 w* _15; *)
umulj v34 v205 v15;
(* _254 = _33 + _253; *)
uadd v254 v33 v253;
(* _255 = _34 + _254; *)
uadd v255 v34 v254;
(* _37 = MEM[(const limb * )in1_191(D) + 32B]; *)
mov v37 in1191_32;
(* _39 = _202 w* _37; *)
umulj v39 v202 v37;
(* _256 = _39 + _255; *)
uadd v256 v39 v255;
(* _42 = _1 w* _211; *)
umulj v42 v1 v211;
(* _43 = _7 w* _209; *)
umulj v43 v7 v209;
(* _242 = _42 + _43; *)
uadd v242 v42 v43;
(* _45 = _205 w* _23; *)
umulj v45 v205 v23;
(* _46 = _15 w* _207; *)
umulj v46 v15 v207;
(* _243 = _45 + _242; *)
uadd v243 v45 v242;
(* _244 = _46 + _243; *)
uadd v244 v46 v243;
(* _49 = MEM[(const limb * )in1_191(D) + 40B]; *)
mov v49 in1191_40;
(* _51 = _202 w* _49; *)
umulj v51 v202 v49;
(* _52 = _203 w* _37; *)
umulj v52 v203 v37;
(* _245 = _51 + _244; *)
uadd v245 v51 v244;
(* _246 = _52 + _245; *)
uadd v246 v52 v245;
(* _56 = _1 w* _213; *)
umulj v56 v1 v213;
(* _57 = _7 w* _211; *)
umulj v57 v7 v211;
(* _231 = _56 + _57; *)
uadd v231 v56 v57;
(* _59 = _207 w* _23; *)
umulj v59 v207 v23;
(* _60 = _15 w* _209; *)
umulj v60 v15 v209;
(* _232 = _59 + _231; *)
uadd v232 v59 v231;
(* _233 = _60 + _232; *)
uadd v233 v60 v232;
(* _63 = _203 w* _49; *)
umulj v63 v203 v49;
(* _64 = _205 w* _37; *)
umulj v64 v205 v37;
(* _234 = _63 + _233; *)
uadd v234 v63 v233;
(* _235 = _64 + _234; *)
uadd v235 v64 v234;
(* _67 = MEM[(const limb * )in1_191(D) + 48B]; *)
mov v67 in1191_48;
(* _69 = _202 w* _67; *)
umulj v69 v202 v67;
(* _236 = _69 + _235; *)
uadd v236 v69 v235;
(* _72 = _1 w* _215; *)
umulj v72 v1 v215;
(* _73 = _7 w* _213; *)
umulj v73 v7 v213;
(* _222 = _72 + _73; *)
uadd v222 v72 v73;
(* _75 = _23 w* _209; *)
umulj v75 v23 v209;
(* _76 = _15 w* _211; *)
umulj v76 v15 v211;
(* _223 = _75 + _222; *)
uadd v223 v75 v222;
(* _224 = _76 + _223; *)
uadd v224 v76 v223;
(* _79 = _205 w* _49; *)
umulj v79 v205 v49;
(* _80 = _207 w* _37; *)
umulj v80 v207 v37;
(* _225 = _79 + _224; *)
uadd v225 v79 v224;
(* _226 = _80 + _225; *)
uadd v226 v80 v225;
(* _83 = MEM[(const limb * )in1_191(D) + 56B]; *)
mov v83 in1191_56;
(* _85 = _202 w* _83; *)
umulj v85 v202 v83;
(* _86 = _203 w* _67; *)
umulj v86 v203 v67;
(* _227 = _85 + _226; *)
uadd v227 v85 v226;
(* _88 = _86 + _227; *)
uadd v88 v86 v227;
(* _90 = _1 w* _217; *)
umulj v90 v1 v217;
(* _91 = _7 w* _215; *)
umulj v91 v7 v215;
(* _309 = _90 + _91; *)
uadd v309 v90 v91;
(* _93 = _23 w* _211; *)
umulj v93 v23 v211;
(* _94 = _15 w* _213; *)
umulj v94 v15 v213;
(* _310 = _93 + _309; *)
uadd v310 v93 v309;
(* _311 = _94 + _310; *)
uadd v311 v94 v310;
(* _97 = _207 w* _49; *)
umulj v97 v207 v49;
(* _98 = _209 w* _37; *)
umulj v98 v209 v37;
(* _312 = _97 + _311; *)
uadd v312 v97 v311;
(* _313 = _98 + _312; *)
uadd v313 v98 v312;
(* _101 = _203 w* _83; *)
umulj v101 v203 v83;
(* _102 = _205 w* _67; *)
umulj v102 v205 v67;
(* _314 = _101 + _313; *)
uadd v314 v101 v313;
(* _104 = _102 + _314; *)
uadd v104 v102 v314;
(* _105 = MEM[(const limb * )in1_191(D) + 64B]; *)
mov v105 in1191_64;
(* _107 = _202 w* _105; *)
umulj v107 v202 v105;
(* _108 = _104 + _107; *)
uadd v108 v104 v107;
(* MEM[(uint128_t * )out_192(D) + 128B] = _108; *)
mov out192_128 v108;
(* _110 = _7 w* _218; *)
umulj v110 v7 v218;
(* _112 = _15 w* _216; *)
umulj v112 v15 v216;
(* _113 = _110 + _112; *)
uadd v113 v110 v112;
(* _115 = _37 w* _212; *)
umulj v115 v37 v212;
(* _117 = _23 w* _214; *)
umulj v117 v23 v214;
(* _300 = _4 + _113; *)
uadd v300 v4 v113;
(* _301 = _115 + _300; *)
uadd v301 v115 v300;
(* _121 = _67 w* _208; *)
umulj v121 v67 v208;
(* _123 = _49 w* _210; *)
umulj v123 v49 v210;
(* _302 = _117 + _301; *)
uadd v302 v117 v301;
(* _303 = _121 + _302; *)
uadd v303 v121 v302;
(* _127 = _105 w* _204; *)
umulj v127 v105 v204;
(* _129 = _83 w* _206; *)
umulj v129 v83 v206;
(* _304 = _123 + _303; *)
uadd v304 v123 v303;
(* _305 = _127 + _304; *)
uadd v305 v127 v304;
(* _132 = _129 + _305; *)
uadd v132 v129 v305;
(* *out_192(D) = _132; *)
mov out192_0 v132;
(* _133 = _15 w* _218; *)
umulj v133 v15 v218;
(* _134 = _23 w* _216; *)
umulj v134 v23 v216;
(* _136 = _49 w* _212; *)
umulj v136 v49 v212;
(* _137 = _37 w* _214; *)
umulj v137 v37 v214;
(* _140 = _83 w* _208; *)
umulj v140 v83 v208;
(* _141 = _67 w* _210; *)
umulj v141 v67 v210;
(* _144 = _105 w* _206; *)
umulj v144 v105 v206;
(* _291 = _133 + _290; *)
uadd v291 v133 v290;
(* _292 = _134 + _291; *)
uadd v292 v134 v291;
(* _293 = _136 + _292; *)
uadd v293 v136 v292;
(* _294 = _137 + _293; *)
uadd v294 v137 v293;
(* _295 = _140 + _294; *)
uadd v295 v140 v294;
(* _296 = _141 + _295; *)
uadd v296 v141 v295;
(* _146 = _144 + _296; *)
uadd v146 v144 v296;
(* MEM[(uint128_t * )out_192(D) + 16B] = _146; *)
mov out192_16 v146;
(* _147 = _23 w* _218; *)
umulj v147 v23 v218;
(* _148 = _37 w* _216; *)
umulj v148 v37 v216;
(* _150 = _67 w* _212; *)
umulj v150 v67 v212;
(* _151 = _49 w* _214; *)
umulj v151 v49 v214;
(* _154 = _105 w* _208; *)
umulj v154 v105 v208;
(* _155 = _83 w* _210; *)
umulj v155 v83 v210;
(* _279 = _147 + _278; *)
uadd v279 v147 v278;
(* _280 = _148 + _279; *)
uadd v280 v148 v279;
(* _281 = _150 + _280; *)
uadd v281 v150 v280;
(* _282 = _151 + _281; *)
uadd v282 v151 v281;
(* _283 = _154 + _282; *)
uadd v283 v154 v282;
(* _158 = _155 + _283; *)
uadd v158 v155 v283;
(* MEM[(uint128_t * )out_192(D) + 32B] = _158; *)
mov out192_32 v158;
(* _159 = _37 w* _218; *)
umulj v159 v37 v218;
(* _160 = _49 w* _216; *)
umulj v160 v49 v216;
(* _162 = _83 w* _212; *)
umulj v162 v83 v212;
(* _163 = _67 w* _214; *)
umulj v163 v67 v214;
(* _166 = _105 w* _210; *)
umulj v166 v105 v210;
(* _268 = _159 + _267; *)
uadd v268 v159 v267;
(* _269 = _160 + _268; *)
uadd v269 v160 v268;
(* _270 = _162 + _269; *)
uadd v270 v162 v269;
(* _271 = _163 + _270; *)
uadd v271 v163 v270;
(* _168 = _166 + _271; *)
uadd v168 v166 v271;
(* MEM[(uint128_t * )out_192(D) + 48B] = _168; *)
mov out192_48 v168;
(* _169 = _49 w* _218; *)
umulj v169 v49 v218;
(* _170 = _67 w* _216; *)
umulj v170 v67 v216;
(* _172 = _105 w* _212; *)
umulj v172 v105 v212;
(* _173 = _83 w* _214; *)
umulj v173 v83 v214;
(* _257 = _169 + _256; *)
uadd v257 v169 v256;
(* _258 = _170 + _257; *)
uadd v258 v170 v257;
(* _259 = _172 + _258; *)
uadd v259 v172 v258;
(* _176 = _173 + _259; *)
uadd v176 v173 v259;
(* MEM[(uint128_t * )out_192(D) + 64B] = _176; *)
mov out192_64 v176;
(* _177 = _67 w* _218; *)
umulj v177 v67 v218;
(* _178 = _83 w* _216; *)
umulj v178 v83 v216;
(* _180 = _105 w* _214; *)
umulj v180 v105 v214;
(* _247 = _177 + _246; *)
uadd v247 v177 v246;
(* _248 = _178 + _247; *)
uadd v248 v178 v247;
(* _182 = _180 + _248; *)
uadd v182 v180 v248;
(* MEM[(uint128_t * )out_192(D) + 80B] = _182; *)
mov out192_80 v182;
(* _183 = _83 w* _218; *)
umulj v183 v83 v218;
(* _184 = _105 w* _216; *)
umulj v184 v105 v216;
(* _237 = _183 + _236; *)
uadd v237 v183 v236;
(* _186 = _184 + _237; *)
uadd v186 v184 v237;
(* MEM[(uint128_t * )out_192(D) + 96B] = _186; *)
mov out192_96 v186;
(* _187 = _105 w* _218; *)
umulj v187 v105 v218;
(* _188 = _88 + _187; *)
uadd v188 v88 v187;
(* MEM[(uint128_t * )out_192(D) + 112B] = _188; *)
mov out192_112 v188;
(* return; *)


(* Start with unused lhs *)
mov c0 out192_0@uint128;
mov c1 out192_16@uint128;
mov c2 out192_32@uint128;
mov c3 out192_48@uint128;
mov c4 out192_64@uint128;
mov c5 out192_80@uint128;
mov c6 out192_96@uint128;
mov c7 out192_112@uint128;
mov c8 out192_128@uint128;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
      *
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
  )
  (mod (2**521 -1))
  &&
  true
}

proc felem_diff_128_64 (uint128 b0, uint128 b1, uint128 b2, uint128 b3, uint128 b4,
                        uint128 b5, uint128 b6, uint128 b7, uint128 b8,
                        uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
                        uint64 a5, uint64 a6, uint64 a7, uint64 a8;
                        uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4,
                        uint128 c5, uint128 c6, uint128 c7, uint128 c8
                       ) =
{
  true
  &&
  and [
      a0 < (2**62 + 2**17)@64,
      a1 < (2**62 + 2**17)@64,
      a2 < (2**62 + 2**17)@64,
      a3 < (2**62 + 2**17)@64,
      a4 < (2**62 + 2**17)@64,
      a5 < (2**62 + 2**17)@64,
      a6 < (2**62 + 2**17)@64,
      a7 < (2**62 + 2**17)@64,
      a8 < (2**62 + 2**17)@64,
      b0 < (2**126)@128,
      b1 < (2**126)@128,
      b2 < (2**126)@128,
      b3 < (2**126)@128,
      b4 < (2**126)@128,
      b5 < (2**126)@128,
      b6 < (2**126)@128,
      b7 < (2**126)@128,
      b8 < (2**126)@128
  ]
}

(* Start with undefined rhs *)
mov in48_0@uint64 a0;
mov in48_8@uint64 a1;
mov in48_16@uint64 a2;
mov in48_24@uint64 a3;
mov in48_32@uint64 a4;
mov in48_40@uint64 a5;
mov in48_48@uint64 a6;
mov in48_56@uint64 a7;
mov in48_64@uint64 a8;
mov out47_0@uint128 b0;
mov out47_16@uint128 b1;
mov out47_32@uint128 b2;
mov out47_48@uint128 b3;
mov out47_64@uint128 b4;
mov out47_80@uint128 b5;
mov out47_96@uint128 b6;
mov out47_112@uint128 b7;
mov out47_128@uint128 b8;
(* End with undefined rhs *)




(* BB's index is 2 *)

(* _1 = *out_47(D); *)
mov v1 out47_0;
(* _2 = *in_48(D); *)
mov v2 in48_0;
(* _3 = 9223372036854775744 - _2; *)
usub v3 0x7fffffffffffffc0@uint64 v2;
(* _4 = (__int128 unsigned) _3; *)
vpc v4@uint128 v3@uint64;
(* _5 = _1 + _4; *)
uadd v5 v1 v4;
(* *out_47(D) = _5; *)
mov out47_0 v5;
(* _6 = MEM[(uint128_t * )out_47(D) + 16B]; *)
mov v6 out47_16;
(* _7 = MEM[(const limb * )in_48(D) + 8B]; *)
mov v7 in48_8;
(* _8 = 9223372036854775776 - _7; *)
usub v8 0x7fffffffffffffe0@uint64 v7;
(* _9 = (__int128 unsigned) _8; *)
vpc v9@uint128 v8@uint64;
(* _10 = _6 + _9; *)
uadd v10 v6 v9;
(* MEM[(uint128_t * )out_47(D) + 16B] = _10; *)
mov out47_16 v10;
(* _11 = MEM[(uint128_t * )out_47(D) + 32B]; *)
mov v11 out47_32;
(* _12 = MEM[(const limb * )in_48(D) + 16B]; *)
mov v12 in48_16;
(* _13 = 9223372036854775776 - _12; *)
usub v13 0x7fffffffffffffe0@uint64 v12;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _15 = _11 + _14; *)
uadd v15 v11 v14;
(* MEM[(uint128_t * )out_47(D) + 32B] = _15; *)
mov out47_32 v15;
(* _16 = MEM[(uint128_t * )out_47(D) + 48B]; *)
mov v16 out47_48;
(* _17 = MEM[(const limb * )in_48(D) + 24B]; *)
mov v17 in48_24;
(* _18 = 9223372036854775776 - _17; *)
usub v18 0x7fffffffffffffe0@uint64 v17;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* _20 = _16 + _19; *)
uadd v20 v16 v19;
(* MEM[(uint128_t * )out_47(D) + 48B] = _20; *)
mov out47_48 v20;
(* _21 = MEM[(uint128_t * )out_47(D) + 64B]; *)
mov v21 out47_64;
(* _22 = MEM[(const limb * )in_48(D) + 32B]; *)
mov v22 in48_32;
(* _23 = 9223372036854775776 - _22; *)
usub v23 0x7fffffffffffffe0@uint64 v22;
(* _24 = (__int128 unsigned) _23; *)
vpc v24@uint128 v23@uint64;
(* _25 = _21 + _24; *)
uadd v25 v21 v24;
(* MEM[(uint128_t * )out_47(D) + 64B] = _25; *)
mov out47_64 v25;
(* _26 = MEM[(uint128_t * )out_47(D) + 80B]; *)
mov v26 out47_80;
(* _27 = MEM[(const limb * )in_48(D) + 40B]; *)
mov v27 in48_40;
(* _28 = 9223372036854775776 - _27; *)
usub v28 0x7fffffffffffffe0@uint64 v27;
(* _29 = (__int128 unsigned) _28; *)
vpc v29@uint128 v28@uint64;
(* _30 = _26 + _29; *)
uadd v30 v26 v29;
(* MEM[(uint128_t * )out_47(D) + 80B] = _30; *)
mov out47_80 v30;
(* _31 = MEM[(uint128_t * )out_47(D) + 96B]; *)
mov v31 out47_96;
(* _32 = MEM[(const limb * )in_48(D) + 48B]; *)
mov v32 in48_48;
(* _33 = 9223372036854775776 - _32; *)
usub v33 0x7fffffffffffffe0@uint64 v32;
(* _34 = (__int128 unsigned) _33; *)
vpc v34@uint128 v33@uint64;
(* _35 = _31 + _34; *)
uadd v35 v31 v34;
(* MEM[(uint128_t * )out_47(D) + 96B] = _35; *)
mov out47_96 v35;
(* _36 = MEM[(uint128_t * )out_47(D) + 112B]; *)
mov v36 out47_112;
(* _37 = MEM[(const limb * )in_48(D) + 56B]; *)
mov v37 in48_56;
(* _38 = 9223372036854775776 - _37; *)
usub v38 0x7fffffffffffffe0@uint64 v37;
(* _39 = (__int128 unsigned) _38; *)
vpc v39@uint128 v38@uint64;
(* _40 = _36 + _39; *)
uadd v40 v36 v39;
(* MEM[(uint128_t * )out_47(D) + 112B] = _40; *)
mov out47_112 v40;
(* _41 = MEM[(uint128_t * )out_47(D) + 128B]; *)
mov v41 out47_128;
(* _42 = MEM[(const limb * )in_48(D) + 64B]; *)
mov v42 in48_64;
(* _43 = 9223372036854775776 - _42; *)
usub v43 0x7fffffffffffffe0@uint64 v42;
(* _44 = (__int128 unsigned) _43; *)
vpc v44@uint128 v43@uint64;
(* _45 = _41 + _44; *)
uadd v45 v41 v44;
(* MEM[(uint128_t * )out_47(D) + 128B] = _45; *)
mov out47_128 v45;
(* return; *)


(* Start with unused lhs *)
mov c0 out47_0@uint128;
mov c1 out47_16@uint128;
mov c2 out47_32@uint128;
mov c3 out47_48@uint128;
mov c4 out47_64@uint128;
mov c5 out47_80@uint128;
mov c6 out47_96@uint128;
mov c7 out47_112@uint128;
mov c8 out47_128@uint128;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
      -
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
  )
  (mod (2**521 -1))
  &&
  and [
      c0 < b0 + (2**63)@128,
      c1 < b1 + (2**63)@128,
      c2 < b2 + (2**63)@128,
      c3 < b3 + (2**63)@128,
      c4 < b4 + (2**63)@128,
      c5 < b5 + (2**63)@128,
      c6 < b6 + (2**63)@128,
      c7 < b7 + (2**63)@128,
      c8 < b8 + (2**63)@128
  ]
}

proc felem_diff128 (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4,
           uint128 a5, uint128 a6, uint128 a7, uint128 a8,
           uint128 b0, uint128 b1, uint128 b2, uint128 b3, uint128 b4,
           uint128 b5, uint128 b6, uint128 b7, uint128 b8;
           uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4,
           uint128 c5, uint128 c6, uint128 c7, uint128 c8) =
{
  true
  &&
  and [
      a0 < (2**126)@128,
      a1 < (2**126)@128,
      a2 < (2**126)@128,
      a3 < (2**126)@128,
      a4 < (2**126)@128,
      a5 < (2**126)@128,
      a6 < (2**126)@128,
      a7 < (2**126)@128,
      a8 < (2**126)@128,
      b0 < (2**126)@128,
      b1 < (2**126)@128,
      b2 < (2**126)@128,
      b3 < (2**126)@128,
      b4 < (2**126)@128,
      b5 < (2**126)@128,
      b6 < (2**126)@128,
      b7 < (2**126)@128,
      b8 < (2**126)@128
  ]
}


(* Start with undefined rhs *)
mov in39_0@uint128 b0;
mov in39_16@uint128 b1;
mov in39_32@uint128 b2;
mov in39_48@uint128 b3;
mov in39_64@uint128 b4;
mov in39_80@uint128 b5;
mov in39_96@uint128 b6;
mov in39_112@uint128 b7;
mov in39_128@uint128 b8;
mov out38_0@uint128 a0;
mov out38_16@uint128 a1;
mov out38_32@uint128 a2;
mov out38_48@uint128 a3;
mov out38_64@uint128 a4;
mov out38_80@uint128 a5;
mov out38_96@uint128 a6;
mov out38_112@uint128 a7;
mov out38_128@uint128 a8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_38(D); *)
mov v1 out38_0;
(* _2 = *in_39(D); *)
mov v2 in39_0;
(* _3 = _1 - _2; *)
usubb carry v3 v1 v2;
(* _4 = _3 + 0x7fffffffffffffc00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffc0@uint64;
join value value_hi value_lo;
uadds carry1 v4 v3 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* *out_38(D) = _4; *)
mov out38_0 v4;
(* _5 = MEM[(uint128_t * )out_38(D) + 16B]; *)
mov v5 out38_16;
(* _6 = MEM[(const uint128_t * )in_39(D) + 16B]; *)
mov v6 in39_16;
(* _7 = _5 - _6; *)
usubb carry v7 v5 v6;
(* _8 = _7 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v8 v7 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 16B] = _8; *)
mov out38_16 v8;
(* _9 = MEM[(uint128_t * )out_38(D) + 32B]; *)
mov v9 out38_32;
(* _10 = MEM[(const uint128_t * )in_39(D) + 32B]; *)
mov v10 in39_32;
(* _11 = _9 - _10; *)
usubb carry v11 v9 v10;
(* _12 = _11 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v12 v11 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 32B] = _12; *)
mov out38_32 v12;
(* _13 = MEM[(uint128_t * )out_38(D) + 48B]; *)
mov v13 out38_48;
(* _14 = MEM[(const uint128_t * )in_39(D) + 48B]; *)
mov v14 in39_48;
(* _15 = _13 - _14; *)
usubb carry v15 v13 v14;
(* _16 = _15 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v16 v15 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 48B] = _16; *)
mov out38_48 v16;
(* _17 = MEM[(uint128_t * )out_38(D) + 64B]; *)
mov v17 out38_64;
(* _18 = MEM[(const uint128_t * )in_39(D) + 64B]; *)
mov v18 in39_64;
(* _19 = _17 - _18; *)
usubb carry v19 v17 v18;
(* _20 = _19 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v20 v19 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 64B] = _20; *)
mov out38_64 v20;
(* _21 = MEM[(uint128_t * )out_38(D) + 80B]; *)
mov v21 out38_80;
(* _22 = MEM[(const uint128_t * )in_39(D) + 80B]; *)
mov v22 in39_80;
(* _23 = _21 - _22; *)
usubb carry v23 v21 v22;
(* _24 = _23 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v24 v23 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 80B] = _24; *)
mov out38_80 v24;
(* _25 = MEM[(uint128_t * )out_38(D) + 96B]; *)
mov v25 out38_96;
(* _26 = MEM[(const uint128_t * )in_39(D) + 96B]; *)
mov v26 in39_96;
(* _27 = _25 - _26; *)
usubb carry v27 v25 v26;
(* _28 = _27 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v28 v27 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 96B] = _28; *)
mov out38_96 v28;
(* _29 = MEM[(uint128_t * )out_38(D) + 112B]; *)
mov v29 out38_112;
(* _30 = MEM[(const uint128_t * )in_39(D) + 112B]; *)
mov v30 in39_112;
(* _31 = _29 - _30; *)
usubb carry v31 v29 v30;
(* _32 = _31 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v32 v31 value;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint128_t * )out_38(D) + 112B] = _32; *)
mov out38_112 v32;
(* _33 = MEM[(uint128_t * )out_38(D) + 128B]; *)
mov v33 out38_128;
(* _34 = MEM[(const uint128_t * )in_39(D) + 128B]; *)
mov v34 in39_128;
(* _35 = _33 - _34; *)
usubb carry v35 v33 v34;
(* _36 = _35 + 0x7fffffffffffffe00000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffffe0@uint64;
join value value_hi value_lo;
uadds carry1 v36 v35 value;

assert true && carry = carry1;
assume carry = carry1 && true;
(* MEM[(uint128_t * )out_38(D) + 128B] = _36; *)
mov out38_128 v36;
(* return; *)


(* Start with unused lhs *)
mov c0 out38_0@uint128;
mov c1 out38_16@uint128;
mov c2 out38_32@uint128;
mov c3 out38_48@uint128;
mov c4 out38_64@uint128;
mov c5 out38_80@uint128;
mov c6 out38_96@uint128;
mov c7 out38_112@uint128;
mov c8 out38_128@uint128;
(* End with unsed lhs *)


{
  (
      limbs 58 [c0, c1, c2, c3, c4, c5, c6, c7, c8]
  )
  =
  (
      limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8]
      -
      limbs 58 [b0, b1, b2, b3, b4, b5, b6, b7, b8]
  )
  (mod (2**521 -1))
  &&
  and [
      c0 <= a0 + (2**127 - 2**69)@128,
      c1 <= a1 + (2**127 - 2**69)@128,
      c2 <= a2 + (2**127 - 2**69)@128,
      c3 <= a3 + (2**127 - 2**69)@128,
      c4 <= a4 + (2**127 - 2**69)@128,
      c5 <= a5 + (2**127 - 2**69)@128,
      c6 <= a6 + (2**127 - 2**69)@128,
      c7 <= a7 + (2**127 - 2**69)@128,
      c8 <= a8 + (2**127 - 2**69)@128
  ]
}

proc main (uint64 X1_0, uint64 X1_1, uint64 X1_2, uint64 X1_3,
           uint64 X1_4, uint64 X1_5, uint64 X1_6, uint64 X1_7, uint64 X1_8,
           uint64 Y1_0, uint64 Y1_1, uint64 Y1_2, uint64 Y1_3,
           uint64 Y1_4, uint64 Y1_5, uint64 Y1_6, uint64 Y1_7, uint64 Y1_8,
           uint64 Z1_0, uint64 Z1_1, uint64 Z1_2, uint64 Z1_3,
           uint64 Z1_4, uint64 Z1_5, uint64 Z1_6, uint64 Z1_7, uint64 Z1_8,
           uint64 X2_0, uint64 X2_1, uint64 X2_2, uint64 X2_3,
           uint64 X2_4, uint64 X2_5, uint64 X2_6, uint64 X2_7, uint64 X2_8,
           uint64 Y2_0, uint64 Y2_1, uint64 Y2_2, uint64 Y2_3,
           uint64 Y2_4, uint64 Y2_5, uint64 Y2_6, uint64 Y2_7, uint64 Y2_8,
           uint64 Z2_0, uint64 Z2_1, uint64 Z2_2, uint64 Z2_3,
           uint64 Z2_4, uint64 Z2_5, uint64 Z2_6, uint64 Z2_7, uint64 Z2_8) =

{
  true
  &&
  and [
       X1_0 <u (2**59+2**14)@64, X1_1 <u (2**59+2**14)@64, X1_2 <u (2**59+2**14)@64,
       X1_3 <u (2**59+2**14)@64, X1_4 <u (2**59+2**14)@64, X1_5 <u (2**59+2**14)@64,
       X1_6 <u (2**59+2**14)@64, X1_7 <u (2**59+2**14)@64, X1_8 <u (2**59+2**14)@64,

       Y1_0 <u (2**59+2**14)@64, Y1_1 <u (2**59+2**14)@64, Y1_2 <u (2**59+2**14)@64,
       Y1_3 <u (2**59+2**14)@64, Y1_4 <u (2**59+2**14)@64, Y1_5 <u (2**59+2**14)@64,
       Y1_6 <u (2**59+2**14)@64, Y1_7 <u (2**59+2**14)@64, Y1_8 <u (2**59+2**14)@64,

       Z1_0 <u (2**59+2**14)@64, Z1_1 <u (2**59+2**14)@64, Z1_2 <u (2**59+2**14)@64,
       Z1_3 <u (2**59+2**14)@64, Z1_4 <u (2**59+2**14)@64, Z1_5 <u (2**59+2**14)@64,
       Z1_6 <u (2**59+2**14)@64, Z1_7 <u (2**59+2**14)@64, Z1_8 <u (2**59+2**14)@64,

       X2_0 <u (2**59+2**14)@64, X2_1 <u (2**59+2**14)@64, X2_2 <u (2**59+2**14)@64,
       X2_3 <u (2**59+2**14)@64, X2_4 <u (2**59+2**14)@64, X2_5 <u (2**59+2**14)@64,
       X2_6 <u (2**59+2**14)@64, X2_7 <u (2**59+2**14)@64, X2_8 <u (2**59+2**14)@64,

       Y2_0 <u (2**59+2**14)@64, Y2_1 <u (2**59+2**14)@64, Y2_2 <u (2**59+2**14)@64,
       Y2_3 <u (2**59+2**14)@64, Y2_4 <u (2**59+2**14)@64, Y2_5 <u (2**59+2**14)@64,
       Y2_6 <u (2**59+2**14)@64, Y2_7 <u (2**59+2**14)@64, Y2_8 <u (2**59+2**14)@64,

       Z2_0 <u (2**59+2**14)@64, Z2_1 <u (2**59+2**14)@64, Z2_2 <u (2**59+2**14)@64,
       Z2_3 <u (2**59+2**14)@64, Z2_4 <u (2**59+2**14)@64, Z2_5 <u (2**59+2**14)@64,
       Z2_6 <u (2**59+2**14)@64, Z2_7 <u (2**59+2**14)@64, Z2_8 <u (2**59+2**14)@64,
       (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]
        >u (limbs 58 [1@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64]))
  ]
}


/* Start with undefined rhs */
mov x119_0@uint64 X1_0;
mov x119_8@uint64 X1_1;
mov x119_16@uint64 X1_2;
mov x119_24@uint64 X1_3;
mov x119_32@uint64 X1_4;
mov x119_40@uint64 X1_5;
mov x119_48@uint64 X1_6;
mov x119_56@uint64 X1_7;
mov x119_64@uint64 X1_8;
mov x232_0@uint64 X2_0;
mov x232_8@uint64 X2_1;
mov x232_16@uint64 X2_2;
mov x232_24@uint64 X2_3;
mov x232_32@uint64 X2_4;
mov x232_40@uint64 X2_5;
mov x232_48@uint64 X2_6;
mov x232_56@uint64 X2_7;
mov x232_64@uint64 X2_8;
mov y129_0@uint64 Y1_0;
mov y129_8@uint64 Y1_1;
mov y129_16@uint64 Y1_2;
mov y129_24@uint64 Y1_3;
mov y129_32@uint64 Y1_4;
mov y129_40@uint64 Y1_5;
mov y129_48@uint64 Y1_6;
mov y129_56@uint64 Y1_7;
mov y129_64@uint64 Y1_8;
mov y242_0@uint64 Y2_0;
mov y242_8@uint64 Y2_1;
mov y242_16@uint64 Y2_2;
mov y242_24@uint64 Y2_3;
mov y242_32@uint64 Y2_4;
mov y242_40@uint64 Y2_5;
mov y242_48@uint64 Y2_6;
mov y242_56@uint64 Y2_7;
mov y242_64@uint64 Y2_8;
mov z18_0@uint64 Z1_0;
mov z18_8@uint64 Z1_1;
mov z18_16@uint64 Z1_2;
mov z18_24@uint64 Z1_3;
mov z18_32@uint64 Z1_4;
mov z18_40@uint64 Z1_5;
mov z18_48@uint64 Z1_6;
mov z18_56@uint64 Z1_7;
mov z18_64@uint64 Z1_8;
mov z211_0@uint64 Z2_0;
mov z211_8@uint64 Z2_1;
mov z211_16@uint64 Z2_2;
mov z211_24@uint64 Z2_3;
mov z211_32@uint64 Z2_4;
mov z211_40@uint64 Z2_5;
mov z211_48@uint64 Z2_6;
mov z211_56@uint64 Z2_7;
mov z211_64@uint64 Z2_8;
/* End with undefined rhs */



/* BB's index is 2 */

/* z1_is_zero_10 = felem_is_zero (z1_8(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* z2_is_zero_13 = felem_is_zero (z2_11(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_square (&tmp, z1_8(D)); */
call felem_square (z18_0, z18_8, z18_16, z18_24, z18_32,
                  z18_40, z18_48, z18_56, z18_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                   ftmp_40, ftmp_48, ftmp_56, ftmp_64);
/* if (mixed_16(D) == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 4> */

/* BB's index is 3 */

/* felem_square (&tmp, z2_11(D)); */
call felem_square (z211_0, z211_8, z211_16, z211_24, z211_32,
                  z211_40, z211_48, z211_56, z211_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp2, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                   ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64);
/* felem_mul (&tmp, x1_19(D), &ftmp2); */
call felem_mul (x119_0, x119_8, x119_16, x119_24, x119_32,
                x119_40, x119_48, x119_56, x119_64,
                ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp3, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24, ftmp3_32,
                   ftmp3_40, ftmp3_48, ftmp3_56, ftmp3_64);
/* vect__46286_544 = MEM[(const limb *)z1_8(D)]; */
mov vect__46286544_0 z18_0;
mov vect__46286544_8 z18_8;
/* vect__46287_424 = MEM[(const limb *)z1_8(D) + 16B]; */
mov vect__46287424_0 z18_16;
mov vect__46287424_8 z18_24;
/* vect__46288_450 = MEM[(const limb *)z1_8(D) + 32B]; */
mov vect__46288450_0 z18_32;
mov vect__46288450_8 z18_40;
/* vect__46289_537 = MEM[(const limb *)z1_8(D) + 48B]; */
mov vect__46289537_0 z18_48;
mov vect__46289537_8 z18_56;
/* _97 = MEM[(const limb *)z1_8(D) + 64B]; */
mov v97 z18_64;
/* vect__339292_225 = MEM[(const limb *)z2_11(D)]; */
mov vect__339292225_0 z211_0;
mov vect__339292225_8 z211_8;
/* vect__339293_223 = MEM[(const limb *)z2_11(D) + 16B]; */
mov vect__339293223_0 z211_16;
mov vect__339293223_8 z211_24;
/* vect__339294_561 = MEM[(const limb *)z2_11(D) + 32B]; */
mov vect__339294561_0 z211_32;
mov vect__339294561_8 z211_40;
/* vect__339295_621 = MEM[(const limb *)z2_11(D) + 48B]; */
mov vect__339295621_0 z211_48;
mov vect__339295621_8 z211_56;
/* vect__340296_412 = vect__339292_225 + vect__46286_544; */
uadd vect__340296412_0 vect__339292225_0 vect__46286544_0;
uadd vect__340296412_8 vect__339292225_8 vect__46286544_8;
/* vect__340296_48 = vect__339293_223 + vect__46287_424; */
uadd vect__34029648_0 vect__339293223_0 vect__46287424_0;
uadd vect__34029648_8 vect__339293223_8 vect__46287424_8;
/* vect__340296_589 = vect__46288_450 + vect__339294_561; */
uadd vect__340296589_0 vect__46288450_0 vect__339294561_0;
uadd vect__340296589_8 vect__46288450_8 vect__339294561_8;
/* vect__340296_458 = vect__46289_537 + vect__339295_621; */
uadd vect__340296458_0 vect__46289537_0 vect__339295621_0;
uadd vect__340296458_8 vect__46289537_8 vect__339295621_8;
/* MEM[(limb *)&ftmp5] = vect__340296_412; */
mov ftmp5_0 vect__340296412_0;
mov ftmp5_8 vect__340296412_8;
/* MEM[(limb *)&ftmp5 + 16B] = vect__340296_48; */
mov ftmp5_16 vect__34029648_0;
mov ftmp5_24 vect__34029648_8;
/* MEM[(limb *)&ftmp5 + 32B] = vect__340296_589; */
mov ftmp5_32 vect__340296589_0;
mov ftmp5_40 vect__340296589_8;
/* MEM[(limb *)&ftmp5 + 48B] = vect__340296_458; */
mov ftmp5_48 vect__340296458_0;
mov ftmp5_56 vect__340296458_8;
/* _363 = MEM[(const limb *)z2_11(D) + 64B]; */
mov v363 z211_64;
/* _364 = _97 + _363; */
uadd v364 v97 v363;
/* MEM[(limb *)&ftmp5 + 64B] = _364; */
mov ftmp5_64 v364;
/* felem_square (&tmp, &ftmp5); */
call felem_square (ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24, ftmp5_32,
                  ftmp5_40, ftmp5_48, ftmp5_56, ftmp5_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_diff_128_64 (&tmp, &ftmp); */
call felem_diff_128_64 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128,
                        ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                        ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_diff_128_64 (&tmp, &ftmp2); */
call felem_diff_128_64 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128,
                        ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                        ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp5, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24, ftmp5_32,
                   ftmp5_40, ftmp5_48, ftmp5_56, ftmp5_64);
/* felem_mul (&tmp, &ftmp2, z2_11(D)); */
call felem_mul (ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                z211_0, z211_8, z211_16, z211_24, z211_32,
                z211_40, z211_48, z211_56, z211_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp2, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                   ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64);
/* felem_mul (&tmp, y1_29(D), &ftmp2); */
call felem_mul (y129_0, y129_8, y129_16, y129_24, y129_32,
                y129_40, y129_48, y129_56, y129_64,
                ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp6, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp6_0, ftmp6_8, ftmp6_16, ftmp6_24, ftmp6_32,
                   ftmp6_40, ftmp6_48, ftmp6_56, ftmp6_64);
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 4 */ /* NOTE: skip this branch */

/* /\* _125 = *x1_19(D); *\/ */
/* mov v125 x119_0; */
/* /\* MEM[(limb *)&ftmp3] = _125; *\/ */
/* mov ftmp3_0 v125; */
/* /\* _126 = MEM[(const limb *)x1_19(D) + 8B]; *\/ */
/* mov v126 x119_8; */
/* /\* MEM[(limb *)&ftmp3 + 8B] = _126; *\/ */
/* mov ftmp3_8 v126; */
/* /\* _127 = MEM[(const limb *)x1_19(D) + 16B]; *\/ */
/* mov v127 x119_16; */
/* /\* MEM[(limb *)&ftmp3 + 16B] = _127; *\/ */
/* mov ftmp3_16 v127; */
/* /\* _128 = MEM[(const limb *)x1_19(D) + 24B]; *\/ */
/* mov v128 x119_24; */
/* /\* MEM[(limb *)&ftmp3 + 24B] = _128; *\/ */
/* mov ftmp3_24 v128; */
/* /\* _129 = MEM[(const limb *)x1_19(D) + 32B]; *\/ */
/* mov v129 x119_32; */
/* /\* MEM[(limb *)&ftmp3 + 32B] = _129; *\/ */
/* mov ftmp3_32 v129; */
/* /\* _130 = MEM[(const limb *)x1_19(D) + 40B]; *\/ */
/* mov v130 x119_40; */
/* /\* MEM[(limb *)&ftmp3 + 40B] = _130; *\/ */
/* mov ftmp3_40 v130; */
/* /\* _131 = MEM[(const limb *)x1_19(D) + 48B]; *\/ */
/* mov v131 x119_48; */
/* /\* MEM[(limb *)&ftmp3 + 48B] = _131; *\/ */
/* mov ftmp3_48 v131; */
/* /\* _132 = MEM[(const limb *)x1_19(D) + 56B]; *\/ */
/* mov v132 x119_56; */
/* /\* MEM[(limb *)&ftmp3 + 56B] = _132; *\/ */
/* mov ftmp3_56 v132; */
/* /\* _133 = MEM[(const limb *)x1_19(D) + 64B]; *\/ */
/* mov v133 x119_64; */
/* /\* MEM[(limb *)&ftmp3 + 64B] = _133; *\/ */
/* mov ftmp3_64 v133; */
/* /\* _107 = *z1_8(D); *\/ */
/* mov v107 z18_0; */
/* /\* _108 = _107 * 2; *\/ */
/* umul v108 v107 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5] = _108; *\/ */
/* mov ftmp5_0 v108; */
/* /\* _109 = MEM[(const limb *)z1_8(D) + 8B]; *\/ */
/* mov v109 z18_8; */
/* /\* _110 = _109 * 2; *\/ */
/* umul v110 v109 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 8B] = _110; *\/ */
/* mov ftmp5_8 v110; */
/* /\* _111 = MEM[(const limb *)z1_8(D) + 16B]; *\/ */
/* mov v111 z18_16; */
/* /\* _112 = _111 * 2; *\/ */
/* umul v112 v111 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 16B] = _112; *\/ */
/* mov ftmp5_16 v112; */
/* /\* _113 = MEM[(const limb *)z1_8(D) + 24B]; *\/ */
/* mov v113 z18_24; */
/* /\* _114 = _113 * 2; *\/ */
/* umul v114 v113 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 24B] = _114; *\/ */
/* mov ftmp5_24 v114; */
/* /\* _115 = MEM[(const limb *)z1_8(D) + 32B]; *\/ */
/* mov v115 z18_32; */
/* /\* _116 = _115 * 2; *\/ */
/* umul v116 v115 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 32B] = _116; *\/ */
/* mov ftmp5_32 v116; */
/* /\* _117 = MEM[(const limb *)z1_8(D) + 40B]; *\/ */
/* mov v117 z18_40; */
/* /\* _118 = _117 * 2; *\/ */
/* umul v118 v117 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 40B] = _118; *\/ */
/* mov ftmp5_40 v118; */
/* /\* _119 = MEM[(const limb *)z1_8(D) + 48B]; *\/ */
/* mov v119 z18_48; */
/* /\* _120 = _119 * 2; *\/ */
/* umul v120 v119 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 48B] = _120; *\/ */
/* mov ftmp5_48 v120; */
/* /\* _121 = MEM[(const limb *)z1_8(D) + 56B]; *\/ */
/* mov v121 z18_56; */
/* /\* _122 = _121 * 2; *\/ */
/* umul v122 v121 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 56B] = _122; *\/ */
/* mov ftmp5_56 v122; */
/* /\* _123 = MEM[(const limb *)z1_8(D) + 64B]; *\/ */
/* mov v123 z18_64; */
/* /\* _124 = _123 * 2; *\/ */
/* umul v124 v123 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 64B] = _124; *\/ */
/* mov ftmp5_64 v124; */
/* /\* _98 = *y1_29(D); *\/ */
/* mov v98 y129_0; */
/* /\* MEM[(limb *)&ftmp6] = _98; *\/ */
/* mov ftmp6_0 v98; */
/* /\* _99 = MEM[(const limb *)y1_29(D) + 8B]; *\/ */
/* mov v99 y129_8; */
/* /\* MEM[(limb *)&ftmp6 + 8B] = _99; *\/ */
/* mov ftmp6_8 v99; */
/* /\* _100 = MEM[(const limb *)y1_29(D) + 16B]; *\/ */
/* mov v100 y129_16; */
/* /\* MEM[(limb *)&ftmp6 + 16B] = _100; *\/ */
/* mov ftmp6_16 v100; */
/* /\* _101 = MEM[(const limb *)y1_29(D) + 24B]; *\/ */
/* mov v101 y129_24; */
/* /\* MEM[(limb *)&ftmp6 + 24B] = _101; *\/ */
/* mov ftmp6_24 v101; */
/* /\* _102 = MEM[(const limb *)y1_29(D) + 32B]; *\/ */
/* mov v102 y129_32; */
/* /\* MEM[(limb *)&ftmp6 + 32B] = _102; *\/ */
/* mov ftmp6_32 v102; */
/* /\* _103 = MEM[(const limb *)y1_29(D) + 40B]; *\/ */
/* mov v103 y129_40; */
/* /\* MEM[(limb *)&ftmp6 + 40B] = _103; *\/ */
/* mov ftmp6_40 v103; */
/* /\* _104 = MEM[(const limb *)y1_29(D) + 48B]; *\/ */
/* mov v104 y129_48; */
/* /\* MEM[(limb *)&ftmp6 + 48B] = _104; *\/ */
/* mov ftmp6_48 v104; */
/* /\* _105 = MEM[(const limb *)y1_29(D) + 56B]; *\/ */
/* mov v105 y129_56; */
/* /\* MEM[(limb *)&ftmp6 + 56B] = _105; *\/ */
/* mov ftmp6_56 v105; */
/* /\* _106 = MEM[(const limb *)y1_29(D) + 64B]; *\/ */
/* mov v106 y129_64; */
/* /\* MEM[(limb *)&ftmp6 + 64B] = _106; *\/ */
/* mov ftmp6_64 v106; */
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* MEM_5 = PHI <MEM_31(3), MEM_337(4)> */
/* felem_mul (&tmp, x2_32(D), &ftmp); */
call felem_mul (x232_0, x232_8, x232_16, x232_24, x232_32,
                x232_40, x232_48, x232_56, x232_64,
                ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_diff_128_64 (&tmp, &ftmp3); */
call felem_diff_128_64 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128,
                        ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24, ftmp3_32,
                        ftmp3_40, ftmp3_48, ftmp3_56, ftmp3_64,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp4, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24, ftmp4_32,
                   ftmp4_40, ftmp4_48, ftmp4_56, ftmp4_64);
/* x_equal_37 = felem_is_zero (&ftmp4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* felem_mul (&tmp, &ftmp5, &ftmp4); */
call felem_mul (ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24, ftmp5_32,
                ftmp5_40, ftmp5_48, ftmp5_56, ftmp5_64,
                ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24, ftmp4_32,
                ftmp4_40, ftmp4_48, ftmp4_56, ftmp4_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&z_out, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   z_out_0, z_out_8, z_out_16, z_out_24, z_out_32,
                   z_out_40, z_out_48, z_out_56, z_out_64);
/* felem_mul (&tmp, &ftmp, z1_8(D)); */
call felem_mul (ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                z18_0, z18_8, z18_16, z18_24, z18_32,
                z18_40, z18_48, z18_56, z18_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                   ftmp_40, ftmp_48, ftmp_56, ftmp_64);
/* felem_mul (&tmp, y2_42(D), &ftmp); */
call felem_mul (y242_0, y242_8, y242_16, y242_24, y242_32,
                y242_40, y242_48, y242_56, y242_64,
                ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_diff_128_64 (&tmp, &ftmp6); */
call felem_diff_128_64 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128,
                        ftmp6_0, ftmp6_8, ftmp6_16, ftmp6_24, ftmp6_32,
                        ftmp6_40, ftmp6_48, ftmp6_56, ftmp6_64,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp5, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24, ftmp5_32,
                   ftmp5_40, ftmp5_48, ftmp5_56, ftmp5_64);
/* y_equal_47 = felem_is_zero (&ftmp5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _365 = MEM[(limb *)&ftmp5]; */
/* mov v365 ftmp5_0; */
/* /\* _366 = _365 * 2; *\/ */
/* umul v366 v365 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5] = _366; *\/ */
/* mov ftmp5_0 v366; */
/* /\* _367 = MEM[(limb *)&ftmp5 + 8B]; *\/ */
/* mov v367 ftmp5_8; */
/* /\* _368 = _367 * 2; *\/ */
/* umul v368 v367 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 8B] = _368; *\/ */
/* mov ftmp5_8 v368; */
/* /\* _369 = MEM[(limb *)&ftmp5 + 16B]; *\/ */
/* mov v369 ftmp5_16; */
/* /\* _370 = _369 * 2; *\/ */
/* umul v370 v369 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 16B] = _370; *\/ */
/* mov ftmp5_16 v370; */
/* /\* _371 = MEM[(limb *)&ftmp5 + 24B]; *\/ */
/* mov v371 ftmp5_24; */
/* /\* _372 = _371 * 2; *\/ */
/* umul v372 v371 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 24B] = _372; *\/ */
/* mov ftmp5_24 v372; */
/* /\* _373 = MEM[(limb *)&ftmp5 + 32B]; *\/ */
/* mov v373 ftmp5_32; */
/* /\* _374 = _373 * 2; *\/ */
/* umul v374 v373 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 32B] = _374; *\/ */
/* mov ftmp5_32 v374; */
/* /\* _375 = MEM[(limb *)&ftmp5 + 40B]; *\/ */
/* mov v375 ftmp5_40; */
/* /\* _376 = _375 * 2; *\/ */
/* umul v376 v375 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 40B] = _376; *\/ */
/* mov ftmp5_40 v376; */
/* /\* _377 = MEM[(limb *)&ftmp5 + 48B]; *\/ */
/* mov v377 ftmp5_48; */
/* /\* _378 = _377 * 2; *\/ */
/* umul v378 v377 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 48B] = _378; *\/ */
/* mov ftmp5_48 v378; */
/* /\* _379 = MEM[(limb *)&ftmp5 + 56B]; *\/ */
/* mov v379 ftmp5_56; */
/* /\* _380 = _379 * 2; *\/ */
/* umul v380 v379 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 56B] = _380; *\/ */
/* mov ftmp5_56 v380; */
/* /\* _381 = MEM[(limb *)&ftmp5 + 64B]; *\/ */
/* mov v381 ftmp5_64; */
/* /\* _382 = _381 * 2; *\/ */
/* umul v382 v381 0x2@uint64; */
/* /\* MEM[(limb *)&ftmp5 + 64B] = _382; *\/ */
/* mov ftmp5_64 v382; */
/* _1 = x_equal_37 != 0; */
/* subb lt_value dontcare x_equal37 0x0@uint64; */
/* subb gt_value dontcare value 0x0@uint64 x_equal37; */
/* or uint1 v1 lt_value gt_value; */
/* vpc v1@uint8 v1@uint1; */
/* _2 = y_equal_47 != 0; */
/* subb lt_value dontcare y_equal47 0x0@uint64; */
/* subb gt_value dontcare value 0x0@uint64 y_equal47; */
/* or uint1 v2 lt_value gt_value; */
/* vpc v2@uint8 v2@uint1; */
/* _3 = _1 & _2; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* and uint8 v3 v1 v2; */
/* if (_3 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 8> */

/* BB's index is 6 */

/* _4 = z1_is_zero_10 | z2_is_zero_13; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* or uint64 v4 z1_is_zero10 z2_is_zero13; */
/* if (_4 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 8> */

/* BB's index is 7 */

/* point_double (x3_49(D), y3_50(D), z3_51(D), x1_19(D), y1_29(D), z1_8(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* ftmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp6 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* y_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* _236 = MEM[(const limb *)&ftmp4]; */
mov v236 ftmp4_0;
/* _237 = MEM[(const limb *)&ftmp4 + 8B]; */
mov v237 ftmp4_8;
/* _238 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v238 ftmp4_16;
/* _239 = MEM[(const limb *)&ftmp4 + 24B]; */
mov v239 ftmp4_24;
/* _240 = MEM[(const limb *)&ftmp4 + 32B]; */
mov v240 ftmp4_32;
/* _241 = MEM[(const limb *)&ftmp4 + 40B]; */
mov v241 ftmp4_40;
/* _242 = MEM[(const limb *)&ftmp4 + 48B]; */
mov v242 ftmp4_48;
/* _243 = MEM[(const limb *)&ftmp4 + 56B]; */
mov v243 ftmp4_56;
/* _244 = MEM[(const limb *)&ftmp4 + 64B]; */
mov v244 ftmp4_64;
/* _457 = _236 * 2; */
umul v457 v236 0x2@uint64;
/* MEM[(limb *)&ftmp] = _457; */
mov ftmp_0 v457;
/* _459 = _237 * 2; */
umul v459 v237 0x2@uint64;
/* MEM[(limb *)&ftmp + 8B] = _459; */
mov ftmp_8 v459;
/* _461 = _238 * 2; */
umul v461 v238 0x2@uint64;
/* MEM[(limb *)&ftmp + 16B] = _461; */
mov ftmp_16 v461;
/* _463 = _239 * 2; */
umul v463 v239 0x2@uint64;
/* MEM[(limb *)&ftmp + 24B] = _463; */
mov ftmp_24 v463;
/* _465 = _240 * 2; */
umul v465 v240 0x2@uint64;
/* MEM[(limb *)&ftmp + 32B] = _465; */
mov ftmp_32 v465;
/* _467 = _241 * 2; */
umul v467 v241 0x2@uint64;
/* MEM[(limb *)&ftmp + 40B] = _467; */
mov ftmp_40 v467;
/* _469 = _242 * 2; */
umul v469 v242 0x2@uint64;
/* MEM[(limb *)&ftmp + 48B] = _469; */
mov ftmp_48 v469;
/* _471 = _243 * 2; */
umul v471 v243 0x2@uint64;
/* MEM[(limb *)&ftmp + 56B] = _471; */
mov ftmp_56 v471;
/* _473 = _244 * 2; */
umul v473 v244 0x2@uint64;
/* MEM[(limb *)&ftmp + 64B] = _473; */
mov ftmp_64 v473;
/* felem_square (&tmp, &ftmp); */
call felem_square (ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                  ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                   ftmp_40, ftmp_48, ftmp_56, ftmp_64);
/* felem_mul (&tmp, &ftmp4, &ftmp); */
call felem_mul (ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24, ftmp4_32,
                ftmp4_40, ftmp4_48, ftmp4_56, ftmp4_64,
                ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp2, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                   ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64);
/* felem_mul (&tmp, &ftmp3, &ftmp); */
call felem_mul (ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24, ftmp3_32,
                ftmp3_40, ftmp3_48, ftmp3_56, ftmp3_64,
                ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&ftmp4, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24, ftmp4_32,
                   ftmp4_40, ftmp4_48, ftmp4_56, ftmp4_64);
/* felem_square (&tmp, &ftmp5); */
call felem_square (ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24, ftmp5_32,
                  ftmp5_40, ftmp5_48, ftmp5_56, ftmp5_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_diff_128_64 (&tmp, &ftmp2); */
call felem_diff_128_64 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128,
                        ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                        ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128);
/* _227 = MEM[(const limb *)&ftmp4]; */
mov v227 ftmp4_0;
/* MEM[(limb *)&ftmp3] = _227; */
mov ftmp3_0 v227;
/* _228 = MEM[(const limb *)&ftmp4 + 8B]; */
mov v228 ftmp4_8;
/* MEM[(limb *)&ftmp3 + 8B] = _228; */
mov ftmp3_8 v228;
/* _229 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v229 ftmp4_16;
/* MEM[(limb *)&ftmp3 + 16B] = _229; */
mov ftmp3_16 v229;
/* _230 = MEM[(const limb *)&ftmp4 + 24B]; */
mov v230 ftmp4_24;
/* MEM[(limb *)&ftmp3 + 24B] = _230; */
mov ftmp3_24 v230;
/* _231 = MEM[(const limb *)&ftmp4 + 32B]; */
mov v231 ftmp4_32;
/* MEM[(limb *)&ftmp3 + 32B] = _231; */
mov ftmp3_32 v231;
/* _232 = MEM[(const limb *)&ftmp4 + 40B]; */
mov v232 ftmp4_40;
/* MEM[(limb *)&ftmp3 + 40B] = _232; */
mov ftmp3_40 v232;
/* _233 = MEM[(const limb *)&ftmp4 + 48B]; */
mov v233 ftmp4_48;
/* MEM[(limb *)&ftmp3 + 48B] = _233; */
mov ftmp3_48 v233;
/* _234 = MEM[(const limb *)&ftmp4 + 56B]; */
mov v234 ftmp4_56;
/* MEM[(limb *)&ftmp3 + 56B] = _234; */
mov ftmp3_56 v234;
/* _235 = MEM[(const limb *)&ftmp4 + 64B]; */
mov v235 ftmp4_64;
/* MEM[(limb *)&ftmp3 + 64B] = _235; */
mov ftmp3_64 v235;
/* _439 = _227 * 2; */
umul v439 v227 0x2@uint64;
/* MEM[(limb *)&ftmp4] = _439; */
mov ftmp4_0 v439;
/* _441 = _228 * 2; */
umul v441 v228 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 8B] = _441; */
mov ftmp4_8 v441;
/* _443 = _229 * 2; */
umul v443 v229 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 16B] = _443; */
mov ftmp4_16 v443;
/* _445 = _230 * 2; */
umul v445 v230 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 24B] = _445; */
mov ftmp4_24 v445;
/* _447 = _231 * 2; */
umul v447 v231 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 32B] = _447; */
mov ftmp4_32 v447;
/* _449 = _232 * 2; */
umul v449 v232 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 40B] = _449; */
mov ftmp4_40 v449;
/* _451 = _233 * 2; */
umul v451 v233 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 48B] = _451; */
mov ftmp4_48 v451;
/* _453 = _234 * 2; */
umul v453 v234 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 56B] = _453; */
mov ftmp4_56 v453;
/* _455 = _235 * 2; */
umul v455 v235 0x2@uint64;
/* MEM[(limb *)&ftmp4 + 64B] = _455; */
mov ftmp4_64 v455;
/* felem_diff_128_64 (&tmp, &ftmp4); */
call felem_diff_128_64 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128,
                        ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24, ftmp4_32,
                        ftmp4_40, ftmp4_48, ftmp4_56, ftmp4_64,
                        tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                        tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&x_out, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   x_out_0, x_out_8, x_out_16, x_out_24, x_out_32,
                   x_out_40, x_out_48, x_out_56, x_out_64);
/* vect__402301_264 = MEM[(limb *)&ftmp3]; */
mov vect__402301264_0 ftmp3_0;
mov vect__402301264_8 ftmp3_8;
/* vect__402302_162 = MEM[(limb *)&ftmp3 + 16B]; */
mov vect__402302162_0 ftmp3_16;
mov vect__402302162_8 ftmp3_24;
/* vect__402303_182 = MEM[(limb *)&ftmp3 + 32B]; */
mov vect__402303182_0 ftmp3_32;
mov vect__402303182_8 ftmp3_40;
/* vect__402304_180 = MEM[(limb *)&ftmp3 + 48B]; */
mov vect__402304180_0 ftmp3_48;
mov vect__402304180_8 ftmp3_56;
/* vect__403308_560 = MEM[(const limb *)&x_out]; */
mov vect__403308560_0 x_out_0;
mov vect__403308560_8 x_out_8;
/* vect__403309_76 = MEM[(const limb *)&x_out + 16B]; */
mov vect__40330976_0 x_out_16;
mov vect__40330976_8 x_out_24;
/* vect__403310_552 = MEM[(const limb *)&x_out + 32B]; */
mov vect__403310552_0 x_out_32;
mov vect__403310552_8 x_out_40;
/* vect__403311_566 = MEM[(const limb *)&x_out + 48B]; */
mov vect__403311566_0 x_out_48;
mov vect__403311566_8 x_out_56;
/* vect__259305_198 = vect__402301_264 + { 4611686018427387872, 4611686018427387888 }; */
uadd vect__259305198_0 vect__402301264_0 0x3fffffffffffffe0@uint64;
uadd vect__259305198_8 vect__402301264_8 0x3ffffffffffffff0@uint64;
/* vect__259305_197 = vect__402302_162 + { 4611686018427387888, 4611686018427387888 }; */
uadd vect__259305197_0 vect__402302162_0 0x3ffffffffffffff0@uint64;
uadd vect__259305197_8 vect__402302162_8 0x3ffffffffffffff0@uint64;
/* vect__259305_196 = vect__402303_182 + { 4611686018427387888, 4611686018427387888 }; */
uadd vect__259305196_0 vect__402303182_0 0x3ffffffffffffff0@uint64;
uadd vect__259305196_8 vect__402303182_8 0x3ffffffffffffff0@uint64;
/* vect__259305_195 = vect__402304_180 + { 4611686018427387888, 4611686018427387888 }; */
uadd vect__259305195_0 vect__402304180_0 0x3ffffffffffffff0@uint64;
uadd vect__259305195_8 vect__402304180_8 0x3ffffffffffffff0@uint64;
/* vect__405312_535 = vect__259305_198 - vect__403308_560; */
usub vect__405312535_0 vect__259305198_0 vect__403308560_0;
usub vect__405312535_8 vect__259305198_8 vect__403308560_8;
/* vect__405312_708 = vect__259305_197 - vect__403309_76; */
usub vect__405312708_0 vect__259305197_0 vect__40330976_0;
usub vect__405312708_8 vect__259305197_8 vect__40330976_8;
/* vect__405312_707 = vect__259305_196 - vect__403310_552; */
usub vect__405312707_0 vect__259305196_0 vect__403310552_0;
usub vect__405312707_8 vect__259305196_8 vect__403310552_8;
/* vect__405312_706 = vect__259305_195 - vect__403311_566; */
usub vect__405312706_0 vect__259305195_0 vect__403311566_0;
usub vect__405312706_8 vect__259305195_8 vect__403311566_8;
/* MEM[(limb *)&ftmp3] = vect__405312_535; */
mov ftmp3_0 vect__405312535_0;
mov ftmp3_8 vect__405312535_8;
/* MEM[(limb *)&ftmp3 + 16B] = vect__405312_708; */
mov ftmp3_16 vect__405312708_0;
mov ftmp3_24 vect__405312708_8;
/* MEM[(limb *)&ftmp3 + 32B] = vect__405312_707; */
mov ftmp3_32 vect__405312707_0;
mov ftmp3_40 vect__405312707_8;
/* MEM[(limb *)&ftmp3 + 48B] = vect__405312_706; */
mov ftmp3_48 vect__405312706_0;
mov ftmp3_56 vect__405312706_8;
/* _434 = MEM[(limb *)&ftmp3 + 64B]; */
mov v434 ftmp3_64;
/* _435 = MEM[(const limb *)&x_out + 64B]; */
mov v435 x_out_64;
/* _251 = _434 + 4611686018427387888; */
uadd v251 v434 0x3ffffffffffffff0@uint64;
/* _437 = _251 - _435; */
usub v437 v251 v435;
/* MEM[(limb *)&ftmp3 + 64B] = _437; */
mov ftmp3_64 v437;
/* felem_mul (&tmp, &ftmp5, &ftmp3); */
call felem_mul (ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24, ftmp5_32,
                ftmp5_40, ftmp5_48, ftmp5_56, ftmp5_64,
                ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24, ftmp3_32,
                ftmp3_40, ftmp3_48, ftmp3_56, ftmp3_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_mul (&tmp2, &ftmp6, &ftmp2); */
call felem_mul (ftmp6_0, ftmp6_8, ftmp6_16, ftmp6_24, ftmp6_32,
                ftmp6_40, ftmp6_48, ftmp6_56, ftmp6_64,
                ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64,
                tmp2_80, tmp2_96, tmp2_112, tmp2_128);
/* _383 = MEM[(uint128_t *)&tmp2]; */
mov v383 tmp2_0;
/* _385 = _383 * 2; */
umul v385 v383 0x2@uint128;
/* MEM[(uint128_t *)&tmp2] = _385; */
mov tmp2_0 v385;
/* _386 = MEM[(uint128_t *)&tmp2 + 16B]; */
mov v386 tmp2_16;
/* _387 = _386 * 2; */
umul v387 v386 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 16B] = _387; */
mov tmp2_16 v387;
/* _388 = MEM[(uint128_t *)&tmp2 + 32B]; */
mov v388 tmp2_32;
/* _389 = _388 * 2; */
umul v389 v388 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 32B] = _389; */
mov tmp2_32 v389;
/* _390 = MEM[(uint128_t *)&tmp2 + 48B]; */
mov v390 tmp2_48;
/* _391 = _390 * 2; */
umul v391 v390 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 48B] = _391; */
mov tmp2_48 v391;
/* _392 = MEM[(uint128_t *)&tmp2 + 64B]; */
mov v392 tmp2_64;
/* _393 = _392 * 2; */
umul v393 v392 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 64B] = _393; */
mov tmp2_64 v393;
/* _394 = MEM[(uint128_t *)&tmp2 + 80B]; */
mov v394 tmp2_80;
/* _395 = _394 * 2; */
umul v395 v394 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 80B] = _395; */
mov tmp2_80 v395;
/* _396 = MEM[(uint128_t *)&tmp2 + 96B]; */
mov v396 tmp2_96;
/* _397 = _396 * 2; */
umul v397 v396 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 96B] = _397; */
mov tmp2_96 v397;
/* _398 = MEM[(uint128_t *)&tmp2 + 112B]; */
mov v398 tmp2_112;
/* _399 = _398 * 2; */
umul v399 v398 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 112B] = _399; */
mov tmp2_112 v399;
/* _400 = MEM[(uint128_t *)&tmp2 + 128B]; */
mov v400 tmp2_128;
/* _401 = _400 * 2; */
umul v401 v400 0x2@uint128;
/* MEM[(uint128_t *)&tmp2 + 128B] = _401; */
mov tmp2_128 v401;
/* felem_diff128 (&tmp, &tmp2); */
call felem_diff128 (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                    tmp_80, tmp_96, tmp_112, tmp_128,
                    tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64,
                    tmp2_80, tmp2_96, tmp2_112, tmp2_128,
                    tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                    tmp_80, tmp_96, tmp_112, tmp_128);
/* felem_reduce (&y_out, &tmp); */
call felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   y_out_0, y_out_8, y_out_16, y_out_24, y_out_32,
                   y_out_40, y_out_48, y_out_56, y_out_64);

/* NOTE: body end */

/* /\* vect_cst__678 = {z1_is_zero_10, z1_is_zero_10}; *\/ */
/* mov v678_0 z1_is_zero10; */
/* mov v678_1 z1_is_zero10; */
/* /\* vect__220275_814 = MEM[(const limb *)x2_32(D)]; *\/ */
/* mov vect__220275814_0 x232_0; */
/* mov vect__220275814_8 x232_8; */
/* /\* vect__222278_815 = MEM[(limb *)&x_out]; *\/ */
/* mov vect__222278815_0 x_out_0; */
/* mov vect__222278815_8 x_out_8; */
/* /\* vect__223279_816 = vect__220275_814 ^ vect__222278_815; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_224280_817 = vect_cst__678 & vect__223279_816; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_224280817_0 v678_0 vect__223279816_0; */
/* and uint64 vect_tmp_224280817_8 v678_8 vect__223279816_8; */
/* /\* vect__225281_818 = vect__222278_815 ^ vect_tmp_224280_817; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__220275_829 = MEM[(const limb *)x2_32(D) + 16B]; *\/ */
/* mov vect__220275829_0 x232_16; */
/* mov vect__220275829_8 x232_24; */
/* /\* vect__222278_830 = MEM[(limb *)&x_out + 16B]; *\/ */
/* mov vect__222278830_0 x_out_16; */
/* mov vect__222278830_8 x_out_24; */
/* /\* vect__223279_831 = vect__220275_829 ^ vect__222278_830; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_224280_832 = vect_cst__678 & vect__223279_831; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_224280832_0 v678_0 vect__223279831_0; */
/* and uint64 vect_tmp_224280832_8 v678_8 vect__223279831_8; */
/* /\* vect__225281_833 = vect__222278_830 ^ vect_tmp_224280_832; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__220275_844 = MEM[(const limb *)x2_32(D) + 32B]; *\/ */
/* mov vect__220275844_0 x232_32; */
/* mov vect__220275844_8 x232_40; */
/* /\* vect__222278_845 = MEM[(limb *)&x_out + 32B]; *\/ */
/* mov vect__222278845_0 x_out_32; */
/* mov vect__222278845_8 x_out_40; */
/* /\* vect__223279_846 = vect__220275_844 ^ vect__222278_845; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_224280_847 = vect_cst__678 & vect__223279_846; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_224280847_0 v678_0 vect__223279846_0; */
/* and uint64 vect_tmp_224280847_8 v678_8 vect__223279846_8; */
/* /\* vect__225281_848 = vect__222278_845 ^ vect_tmp_224280_847; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__220275_673 = MEM[(const limb *)x2_32(D) + 48B]; *\/ */
/* mov vect__220275673_0 x232_48; */
/* mov vect__220275673_8 x232_56; */
/* /\* vect__222278_676 = MEM[(limb *)&x_out + 48B]; *\/ */
/* mov vect__222278676_0 x_out_48; */
/* mov vect__222278676_8 x_out_56; */
/* /\* vect__223279_677 = vect__220275_673 ^ vect__222278_676; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_224280_679 = vect__223279_677 & vect_cst__678; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_224280679_0 vect__223279677_0 v678_0; */
/* and uint64 vect_tmp_224280679_8 vect__223279677_8 v678_8; */
/* /\* vect__225281_680 = vect__222278_676 ^ vect_tmp_224280_679; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _661 = MEM[(const limb *)x2_32(D) + 64B]; *\/ */
/* mov v661 x232_64; */
/* /\* _663 = MEM[(limb *)&x_out + 64B]; *\/ */
/* mov v663 x_out_64; */
/* /\* _664 = _661 ^ _663; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_665 = z1_is_zero_10 & _664; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 tmp665 z1_is_zero10 v664; */
/* /\* _666 = _663 ^ tmp_665; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_cst__645 = {z2_is_zero_13, z2_is_zero_13}; *\/ */
/* mov v645_0 z2_is_zero13; */
/* mov v645_1 z2_is_zero13; */
/* /\* vect__209262_769 = MEM[(const limb *)x1_19(D)]; *\/ */
/* mov vect__209262769_0 x119_0; */
/* mov vect__209262769_8 x119_8; */
/* /\* vect__212266_771 = vect__209262_769 ^ vect__225281_818; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_213267_772 = vect_cst__645 & vect__212266_771; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_213267772_0 v645_0 vect__212266771_0; */
/* and uint64 vect_tmp_213267772_8 v645_8 vect__212266771_8; */
/* /\* vect__214268_773 = vect_tmp_213267_772 ^ vect__225281_818; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out] = vect__214268_773; *\/ */
/* mov x_out_0 vect__214268773_0; */
/* mov x_out_8 vect__214268773_8; */
/* /\* vect__209262_784 = MEM[(const limb *)x1_19(D) + 16B]; *\/ */
/* mov vect__209262784_0 x119_16; */
/* mov vect__209262784_8 x119_24; */
/* /\* vect__212266_786 = vect__209262_784 ^ vect__225281_833; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_213267_787 = vect_cst__645 & vect__212266_786; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_213267787_0 v645_0 vect__212266786_0; */
/* and uint64 vect_tmp_213267787_8 v645_8 vect__212266786_8; */
/* /\* vect__214268_788 = vect_tmp_213267_787 ^ vect__225281_833; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 16B] = vect__214268_788; *\/ */
/* mov x_out_16 vect__214268788_0; */
/* mov x_out_24 vect__214268788_8; */
/* /\* vect__209262_799 = MEM[(const limb *)x1_19(D) + 32B]; *\/ */
/* mov vect__209262799_0 x119_32; */
/* mov vect__209262799_8 x119_40; */
/* /\* vect__212266_801 = vect__209262_799 ^ vect__225281_848; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_213267_802 = vect_cst__645 & vect__212266_801; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_213267802_0 v645_0 vect__212266801_0; */
/* and uint64 vect_tmp_213267802_8 v645_8 vect__212266801_8; */
/* /\* vect__214268_803 = vect_tmp_213267_802 ^ vect__225281_848; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 32B] = vect__214268_803; *\/ */
/* mov x_out_32 vect__214268803_0; */
/* mov x_out_40 vect__214268803_8; */
/* /\* vect__209262_640 = MEM[(const limb *)x1_19(D) + 48B]; *\/ */
/* mov vect__209262640_0 x119_48; */
/* mov vect__209262640_8 x119_56; */
/* /\* vect__212266_644 = vect__209262_640 ^ vect__225281_680; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_213267_646 = vect__212266_644 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_213267646_0 vect__212266644_0 v645_0; */
/* and uint64 vect_tmp_213267646_8 vect__212266644_8 v645_8; */
/* /\* vect__214268_647 = vect_tmp_213267_646 ^ vect__225281_680; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 48B] = vect__214268_647; *\/ */
/* mov x_out_48 vect__214268647_0; */
/* mov x_out_56 vect__214268647_8; */
/* /\* _628 = MEM[(const limb *)x1_19(D) + 64B]; *\/ */
/* mov v628 x119_64; */
/* /\* _631 = _628 ^ _666; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_632 = z2_is_zero_13 & _631; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 tmp632 z2_is_zero13 v631; */
/* /\* _633 = tmp_632 ^ _666; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__198249_724 = MEM[(const limb *)y2_42(D)]; *\/ */
/* mov vect__198249724_0 y242_0; */
/* mov vect__198249724_8 y242_8; */
/* /\* vect__200252_725 = MEM[(limb *)&y_out]; *\/ */
/* mov vect__200252725_0 y_out_0; */
/* mov vect__200252725_8 y_out_8; */
/* /\* vect__201253_726 = vect__198249_724 ^ vect__200252_725; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_202254_727 = vect_cst__678 & vect__201253_726; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_202254727_0 v678_0 vect__201253726_0; */
/* and uint64 vect_tmp_202254727_8 v678_8 vect__201253726_8; */
/* /\* vect__203255_728 = vect__200252_725 ^ vect_tmp_202254_727; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__198249_739 = MEM[(const limb *)y2_42(D) + 16B]; *\/ */
/* mov vect__198249739_0 y242_16; */
/* mov vect__198249739_8 y242_24; */
/* /\* vect__200252_740 = MEM[(limb *)&y_out + 16B]; *\/ */
/* mov vect__200252740_0 y_out_16; */
/* mov vect__200252740_8 y_out_24; */
/* /\* vect__201253_741 = vect__198249_739 ^ vect__200252_740; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_202254_742 = vect_cst__678 & vect__201253_741; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_202254742_0 v678_0 vect__201253741_0; */
/* and uint64 vect_tmp_202254742_8 v678_8 vect__201253741_8; */
/* /\* vect__203255_743 = vect__200252_740 ^ vect_tmp_202254_742; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__198249_754 = MEM[(const limb *)y2_42(D) + 32B]; *\/ */
/* mov vect__198249754_0 y242_32; */
/* mov vect__198249754_8 y242_40; */
/* /\* vect__200252_755 = MEM[(limb *)&y_out + 32B]; *\/ */
/* mov vect__200252755_0 y_out_32; */
/* mov vect__200252755_8 y_out_40; */
/* /\* vect__201253_756 = vect__198249_754 ^ vect__200252_755; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_202254_757 = vect_cst__678 & vect__201253_756; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_202254757_0 v678_0 vect__201253756_0; */
/* and uint64 vect_tmp_202254757_8 v678_8 vect__201253756_8; */
/* /\* vect__203255_758 = vect__200252_755 ^ vect_tmp_202254_757; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__198249_607 = MEM[(const limb *)y2_42(D) + 48B]; *\/ */
/* mov vect__198249607_0 y242_48; */
/* mov vect__198249607_8 y242_56; */
/* /\* vect__200252_610 = MEM[(limb *)&y_out + 48B]; *\/ */
/* mov vect__200252610_0 y_out_48; */
/* mov vect__200252610_8 y_out_56; */
/* /\* vect__201253_611 = vect__198249_607 ^ vect__200252_610; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_202254_613 = vect__201253_611 & vect_cst__678; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_202254613_0 vect__201253611_0 v678_0; */
/* and uint64 vect_tmp_202254613_8 vect__201253611_8 v678_8; */
/* /\* vect__203255_614 = vect__200252_610 ^ vect_tmp_202254_613; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _595 = MEM[(const limb *)y2_42(D) + 64B]; *\/ */
/* mov v595 y242_64; */
/* /\* _597 = MEM[(limb *)&y_out + 64B]; *\/ */
/* mov v597 y_out_64; */
/* /\* _598 = _595 ^ _597; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_599 = z1_is_zero_10 & _598; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 tmp599 z1_is_zero10 v598; */
/* /\* _600 = _597 ^ tmp_599; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__187236_547 = MEM[(const limb *)y1_29(D)]; *\/ */
/* mov vect__187236547_0 y129_0; */
/* mov vect__187236547_8 y129_8; */
/* /\* vect__190240_279 = vect__187236_547 ^ vect__203255_728; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_191241_280 = vect__190240_279 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_191241280_0 vect__190240279_0 v645_0; */
/* and uint64 vect_tmp_191241280_8 vect__190240279_8 v645_8; */
/* /\* vect__192242_281 = vect_tmp_191241_280 ^ vect__203255_728; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out] = vect__192242_281; *\/ */
/* mov y_out_0 vect__192242281_0; */
/* mov y_out_8 vect__192242281_8; */
/* /\* vect__187236_694 = MEM[(const limb *)y1_29(D) + 16B]; *\/ */
/* mov vect__187236694_0 y129_16; */
/* mov vect__187236694_8 y129_24; */
/* /\* vect__190240_696 = vect__187236_694 ^ vect__203255_743; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_191241_697 = vect_cst__645 & vect__190240_696; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_191241697_0 v645_0 vect__190240696_0; */
/* and uint64 vect_tmp_191241697_8 v645_8 vect__190240696_8; */
/* /\* vect__192242_698 = vect_tmp_191241_697 ^ vect__203255_743; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 16B] = vect__192242_698; *\/ */
/* mov y_out_16 vect__192242698_0; */
/* mov y_out_24 vect__192242698_8; */
/* /\* vect__187236_709 = MEM[(const limb *)y1_29(D) + 32B]; *\/ */
/* mov vect__187236709_0 y129_32; */
/* mov vect__187236709_8 y129_40; */
/* /\* vect__190240_711 = vect__187236_709 ^ vect__203255_758; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_191241_712 = vect_cst__645 & vect__190240_711; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_191241712_0 v645_0 vect__190240711_0; */
/* and uint64 vect_tmp_191241712_8 v645_8 vect__190240711_8; */
/* /\* vect__192242_713 = vect_tmp_191241_712 ^ vect__203255_758; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 32B] = vect__192242_713; *\/ */
/* mov y_out_32 vect__192242713_0; */
/* mov y_out_40 vect__192242713_8; */
/* /\* vect__187236_571 = MEM[(const limb *)y1_29(D) + 48B]; *\/ */
/* mov vect__187236571_0 y129_48; */
/* mov vect__187236571_8 y129_56; */
/* /\* vect__190240_565 = vect__187236_571 ^ vect__203255_614; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_191241_559 = vect__190240_565 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_191241559_0 vect__190240565_0 v645_0; */
/* and uint64 vect_tmp_191241559_8 vect__190240565_8 v645_8; */
/* /\* vect__192242_555 = vect_tmp_191241_559 ^ vect__203255_614; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 48B] = vect__192242_555; *\/ */
/* mov y_out_48 vect__192242555_0; */
/* mov y_out_56 vect__192242555_8; */
/* /\* _584 = MEM[(const limb *)y1_29(D) + 64B]; *\/ */
/* mov v584 y129_64; */
/* /\* _580 = _584 ^ _600; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_576 = z2_is_zero_13 & _580; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 tmp576 z2_is_zero13 v580; */
/* /\* _577 = tmp_576 ^ _600; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__176223_199 = MEM[(const limb *)z2_11(D)]; *\/ */
/* mov vect__176223199_0 z211_0; */
/* mov vect__176223199_8 z211_8; */
/* /\* vect__178226_200 = MEM[(limb *)&z_out]; *\/ */
/* mov vect__178226200_0 z_out_0; */
/* mov vect__178226200_8 z_out_8; */
/* /\* vect__179227_201 = vect__176223_199 ^ vect__178226_200; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_180228_202 = vect__179227_201 & vect_cst__678; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_180228202_0 vect__179227201_0 v678_0; */
/* and uint64 vect_tmp_180228202_8 vect__179227201_8 v678_8; */
/* /\* vect__181229_203 = vect__178226_200 ^ vect_tmp_180228_202; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__176223_192 = MEM[(const limb *)z2_11(D) + 16B]; *\/ */
/* mov vect__176223192_0 z211_16; */
/* mov vect__176223192_8 z211_24; */
/* /\* vect__178226_193 = MEM[(limb *)&z_out + 16B]; *\/ */
/* mov vect__178226193_0 z_out_16; */
/* mov vect__178226193_8 z_out_24; */
/* /\* vect__179227_574 = vect__176223_192 ^ vect__178226_193; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_180228_173 = vect__179227_574 & vect_cst__678; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_180228173_0 vect__179227574_0 v678_0; */
/* and uint64 vect_tmp_180228173_8 vect__179227574_8 v678_8; */
/* /\* vect__181229_174 = vect_tmp_180228_173 ^ vect__178226_193; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__176223_163 = MEM[(const limb *)z2_11(D) + 32B]; *\/ */
/* mov vect__176223163_0 z211_32; */
/* mov vect__176223163_8 z211_40; */
/* /\* vect__178226_164 = MEM[(limb *)&z_out + 32B]; *\/ */
/* mov vect__178226164_0 z_out_32; */
/* mov vect__178226164_8 z_out_40; */
/* /\* vect__179227_165 = vect__176223_163 ^ vect__178226_164; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_180228_166 = vect__179227_165 & vect_cst__678; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_180228166_0 vect__179227165_0 v678_0; */
/* and uint64 vect_tmp_180228166_8 vect__179227165_8 v678_8; */
/* /\* vect__181229_167 = vect__178226_164 ^ vect_tmp_180228_166; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__176223_262 = MEM[(const limb *)z2_11(D) + 48B]; *\/ */
/* mov vect__176223262_0 z211_48; */
/* mov vect__176223262_8 z211_56; */
/* /\* vect__178226_250 = MEM[(limb *)&z_out + 48B]; *\/ */
/* mov vect__178226250_0 z_out_48; */
/* mov vect__178226250_8 z_out_56; */
/* /\* vect__179227_249 = vect__178226_250 ^ vect__176223_262; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_180228_247 = vect__179227_249 & vect_cst__678; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_180228247_0 vect__179227249_0 v678_0; */
/* and uint64 vect_tmp_180228247_8 vect__179227249_8 v678_8; */
/* /\* vect__181229_246 = vect_tmp_180228_247 ^ vect__178226_250; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _353 = MEM[(const limb *)z2_11(D) + 64B]; *\/ */
/* mov v353 z211_64; */
/* /\* _347 = MEM[(limb *)&z_out + 64B]; *\/ */
/* mov v347 z_out_64; */
/* /\* _344 = _347 ^ _353; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_341 = z1_is_zero_10 & _344; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 tmp341 z1_is_zero10 v344; */
/* /\* _338 = tmp_341 ^ _347; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect__165210_265 = MEM[(const limb *)z1_8(D)]; *\/ */
/* mov vect__165210265_0 z18_0; */
/* mov vect__165210265_8 z18_8; */
/* /\* vect__168214_22 = vect__181229_203 ^ vect__165210_265; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_169215_161 = vect__168214_22 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_169215161_0 vect__16821422_0 v645_0; */
/* and uint64 vect_tmp_169215161_8 vect__16821422_8 v645_8; */
/* /\* vect__170216_569 = vect_tmp_169215_161 ^ vect__181229_203; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out] = vect__170216_569; *\/ */
/* mov z_out_0 vect__170216569_0; */
/* mov z_out_8 vect__170216569_8; */
/* /\* vect__165210_654 = MEM[(const limb *)z1_8(D) + 16B]; *\/ */
/* mov vect__165210654_0 z18_16; */
/* mov vect__165210654_8 z18_24; */
/* /\* vect__168214_554 = vect__181229_174 ^ vect__165210_654; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_169215_531 = vect__168214_554 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_169215531_0 vect__168214554_0 v645_0; */
/* and uint64 vect_tmp_169215531_8 vect__168214554_8 v645_8; */
/* /\* vect__170216_217 = vect__181229_174 ^ vect_tmp_169215_531; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out + 16B] = vect__170216_217; *\/ */
/* mov z_out_16 vect__170216217_0; */
/* mov z_out_24 vect__170216217_8; */
/* /\* vect__165210_206 = MEM[(const limb *)z1_8(D) + 32B]; *\/ */
/* mov vect__165210206_0 z18_32; */
/* mov vect__165210206_8 z18_40; */
/* /\* vect__168214_208 = vect__181229_167 ^ vect__165210_206; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_169215_209 = vect__168214_208 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_169215209_0 vect__168214208_0 v645_0; */
/* and uint64 vect_tmp_169215209_8 vect__168214208_8 v645_8; */
/* /\* vect__170216_210 = vect__181229_167 ^ vect_tmp_169215_209; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out + 32B] = vect__170216_210; *\/ */
/* mov z_out_32 vect__170216210_0; */
/* mov z_out_40 vect__170216210_8; */
/* /\* vect__165210_452 = MEM[(const limb *)z1_8(D) + 48B]; *\/ */
/* mov vect__165210452_0 z18_48; */
/* mov vect__165210452_8 z18_56; */
/* /\* vect__168214_444 = vect__181229_246 ^ vect__165210_452; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_169215_440 = vect__168214_444 & vect_cst__645; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_169215440_0 vect__168214444_0 v645_0; */
/* and uint64 vect_tmp_169215440_8 vect__168214444_8 v645_8; */
/* /\* vect__170216_438 = vect__181229_246 ^ vect_tmp_169215_440; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out + 48B] = vect__170216_438; *\/ */
/* mov z_out_48 vect__170216438_0; */
/* mov z_out_56 vect__170216438_8; */
/* /\* _539 = MEM[(const limb *)z1_8(D) + 64B]; *\/ */
/* mov v539 z18_64; */
/* /\* _470 = _338 ^ _539; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* tmp_468 = z2_is_zero_13 & _470; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 tmp468 z2_is_zero13 v470; */
/* /\* _466 = _338 ^ tmp_468; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _152 = MEM[(const limb *)&x_out]; *\/ */
/* mov v152 x_out_0; */
/* /\* *x3_49(D) = _152; *\/ */
/* mov x349_0 v152; */
/* /\* _153 = MEM[(const limb *)&x_out + 8B]; *\/ */
/* mov v153 x_out_8; */
/* /\* MEM[(limb *)x3_49(D) + 8B] = _153; *\/ */
/* mov x349_8 v153; */
/* /\* _154 = MEM[(const limb *)&x_out + 16B]; *\/ */
/* mov v154 x_out_16; */
/* /\* MEM[(limb *)x3_49(D) + 16B] = _154; *\/ */
/* mov x349_16 v154; */
/* /\* _155 = MEM[(const limb *)&x_out + 24B]; *\/ */
/* mov v155 x_out_24; */
/* /\* MEM[(limb *)x3_49(D) + 24B] = _155; *\/ */
/* mov x349_24 v155; */
/* /\* _156 = MEM[(const limb *)&x_out + 32B]; *\/ */
/* mov v156 x_out_32; */
/* /\* MEM[(limb *)x3_49(D) + 32B] = _156; *\/ */
/* mov x349_32 v156; */
/* /\* _157 = MEM[(const limb *)&x_out + 40B]; *\/ */
/* mov v157 x_out_40; */
/* /\* MEM[(limb *)x3_49(D) + 40B] = _157; *\/ */
/* mov x349_40 v157; */
/* /\* _158 = MEM[(const limb *)&x_out + 48B]; *\/ */
/* mov v158 x_out_48; */
/* /\* MEM[(limb *)x3_49(D) + 48B] = _158; *\/ */
/* mov x349_48 v158; */
/* /\* _159 = MEM[(const limb *)&x_out + 56B]; *\/ */
/* mov v159 x_out_56; */
/* /\* MEM[(limb *)x3_49(D) + 56B] = _159; *\/ */
/* mov x349_56 v159; */
/* /\* MEM[(limb *)x3_49(D) + 64B] = _633; *\/ */
/* mov x349_64 v633; */
/* /\* _143 = MEM[(const limb *)&y_out]; *\/ */
/* mov v143 y_out_0; */
/* /\* *y3_50(D) = _143; *\/ */
/* mov y350_0 v143; */
/* /\* _144 = MEM[(const limb *)&y_out + 8B]; *\/ */
/* mov v144 y_out_8; */
/* /\* MEM[(limb *)y3_50(D) + 8B] = _144; *\/ */
/* mov y350_8 v144; */
/* /\* _145 = MEM[(const limb *)&y_out + 16B]; *\/ */
/* mov v145 y_out_16; */
/* /\* MEM[(limb *)y3_50(D) + 16B] = _145; *\/ */
/* mov y350_16 v145; */
/* /\* _146 = MEM[(const limb *)&y_out + 24B]; *\/ */
/* mov v146 y_out_24; */
/* /\* MEM[(limb *)y3_50(D) + 24B] = _146; *\/ */
/* mov y350_24 v146; */
/* /\* _147 = MEM[(const limb *)&y_out + 32B]; *\/ */
/* mov v147 y_out_32; */
/* /\* MEM[(limb *)y3_50(D) + 32B] = _147; *\/ */
/* mov y350_32 v147; */
/* /\* _148 = MEM[(const limb *)&y_out + 40B]; *\/ */
/* mov v148 y_out_40; */
/* /\* MEM[(limb *)y3_50(D) + 40B] = _148; *\/ */
/* mov y350_40 v148; */
/* /\* _149 = MEM[(const limb *)&y_out + 48B]; *\/ */
/* mov v149 y_out_48; */
/* /\* MEM[(limb *)y3_50(D) + 48B] = _149; *\/ */
/* mov y350_48 v149; */
/* /\* _150 = MEM[(const limb *)&y_out + 56B]; *\/ */
/* mov v150 y_out_56; */
/* /\* MEM[(limb *)y3_50(D) + 56B] = _150; *\/ */
/* mov y350_56 v150; */
/* /\* MEM[(limb *)y3_50(D) + 64B] = _577; *\/ */
/* mov y350_64 v577; */
/* /\* _134 = MEM[(const limb *)&z_out]; *\/ */
/* mov v134 z_out_0; */
/* /\* *z3_51(D) = _134; *\/ */
/* mov z351_0 v134; */
/* /\* _135 = MEM[(const limb *)&z_out + 8B]; *\/ */
/* mov v135 z_out_8; */
/* /\* MEM[(limb *)z3_51(D) + 8B] = _135; *\/ */
/* mov z351_8 v135; */
/* /\* _136 = MEM[(const limb *)&z_out + 16B]; *\/ */
/* mov v136 z_out_16; */
/* /\* MEM[(limb *)z3_51(D) + 16B] = _136; *\/ */
/* mov z351_16 v136; */
/* /\* _137 = MEM[(const limb *)&z_out + 24B]; *\/ */
/* mov v137 z_out_24; */
/* /\* MEM[(limb *)z3_51(D) + 24B] = _137; *\/ */
/* mov z351_24 v137; */
/* /\* _138 = MEM[(const limb *)&z_out + 32B]; *\/ */
/* mov v138 z_out_32; */
/* /\* MEM[(limb *)z3_51(D) + 32B] = _138; *\/ */
/* mov z351_32 v138; */
/* /\* _139 = MEM[(const limb *)&z_out + 40B]; *\/ */
/* mov v139 z_out_40; */
/* /\* MEM[(limb *)z3_51(D) + 40B] = _139; *\/ */
/* mov z351_40 v139; */
/* /\* _140 = MEM[(const limb *)&z_out + 48B]; *\/ */
/* mov v140 z_out_48; */
/* /\* MEM[(limb *)z3_51(D) + 48B] = _140; *\/ */
/* mov z351_48 v140; */
/* /\* _141 = MEM[(const limb *)&z_out + 56B]; *\/ */
/* mov v141 z_out_56; */
/* /\* MEM[(limb *)z3_51(D) + 56B] = _141; *\/ */
/* mov z351_56 v141; */
/* /\* MEM[(limb *)z3_51(D) + 64B] = _466; *\/ */
/* mov z351_64 v466; */
/* ftmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp6 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* y_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 9 */

/* MEM_6 = PHI <MEM_92(8), MEM_63(7)> */
/* return; */

mov X3_0 x_out_0@uint64;
mov X3_1 x_out_8@uint64;
mov X3_2 x_out_16@uint64;
mov X3_3 x_out_24@uint64;
mov X3_4 x_out_32@uint64;
mov X3_5 x_out_40@uint64;
mov X3_6 x_out_48@uint64;
mov X3_7 x_out_56@uint64;
mov X3_8 x_out_64@uint64;

mov Y3_0 y_out_0@uint64;
mov Y3_1 y_out_8@uint64;
mov Y3_2 y_out_16@uint64;
mov Y3_3 y_out_24@uint64;
mov Y3_4 y_out_32@uint64;
mov Y3_5 y_out_40@uint64;
mov Y3_6 y_out_48@uint64;
mov Y3_7 y_out_56@uint64;
mov Y3_8 y_out_64@uint64;

mov Z3_0 z_out_0@uint64;
mov Z3_1 z_out_8@uint64;
mov Z3_2 z_out_16@uint64;
mov Z3_3 z_out_24@uint64;
mov Z3_4 z_out_32@uint64;
mov Z3_5 z_out_40@uint64;
mov Z3_6 z_out_48@uint64;
mov Z3_7 z_out_56@uint64;
mov Z3_8 z_out_64@uint64;





{
 /* http://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-3.html#addition-add-2007-bl */
 and [
      (limbs 58 [X3_0, X3_1, X3_2, X3_3, X3_4, X3_5, X3_6, X3_7, X3_8])
      = ((2 * ((limbs 58 [Y2_0, Y2_1, Y2_2, Y2_3, Y2_4, Y2_5, Y2_6, Y2_7, Y2_8]) * (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) ** 3
             - (limbs 58 [Y1_0, Y1_1, Y1_2, Y1_3, Y1_4, Y1_5, Y1_6, Y1_7, Y1_8]) * (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) **3)
       ) ** 2
       - 4 * ((((limbs 58 [X2_0, X2_1, X2_2, X2_3, X2_4, X2_5, X2_6, X2_7, X2_8]) *
                (limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) **2) -
                ((limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
                 (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2 )) ** 3)
       - 2 * (((limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
                (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2)
               * 4 * (((limbs 58 [X2_0, X2_1, X2_2, X2_3, X2_4, X2_5, X2_6, X2_7, X2_8]) *
                              (limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) **2
                             )-
                             ((limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
                              (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2
                             )
                            ) ** 2))
       (mod  (2**521 - 1)),
     (limbs 58 [Y3_0, Y3_1, Y3_2, Y3_3, Y3_4, Y3_5, Y3_6, Y3_7, Y3_8])
     =
     ( /* r * (V - X3) */
      /* r */
      (2 * ((limbs 58 [Y2_0, Y2_1, Y2_2, Y2_3, Y2_4, Y2_5, Y2_6, Y2_7, Y2_8]) * (limbs 64 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) ** 3
             - (limbs 58 [Y1_0, Y1_1, Y1_2, Y1_3, Y1_4, Y1_5, Y1_6, Y1_7, Y1_8]) * (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) **3)
      )
      *
      ( /* V */
       (((limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
         (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2)
         * 4 * (((limbs 58 [X2_0, X2_1, X2_2, X2_3, X2_4, X2_5, X2_6, X2_7, X2_8]) *
                 (limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) **2
                )-
                ((limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
                 (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2
                )
               ) ** 2)
        -
        (limbs 58 [X3_0, X3_1, X3_2, X3_3, X3_4, X3_5, X3_6, X3_7, X3_8])
      )
      - ( /* 2 * S1 * J */
          2
          * (
             (limbs 58 [Y1_0, Y1_1, Y1_2, Y1_3, Y1_4, Y1_5, Y1_6, Y1_7, Y1_8]) * (limbs 64 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) **3)
             * 4 * ((((limbs 58 [X2_0, X2_1, X2_2, X2_3, X2_4, X2_5, X2_6, X2_7, X2_8]) *
                (limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) **2) -
                ((limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
                 (limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2 )) ** 3)
          )
     )
     (mod  (2**521 - 1)),
      (limbs 58 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4, Z3_5, Z3_6, Z3_7, Z3_8])
      = (((( limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) + ( limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8])) ** 2
          - ( limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) ** 2 - ( limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2)
          * ((
              ( limbs 58 [X2_0, X2_1, X2_2, X2_3, X2_4, X2_5, X2_6, X2_7, X2_8]) *
              ( limbs 58 [Z1_0, Z1_1, Z1_2, Z1_3, Z1_4, Z1_5, Z1_6, Z1_7, Z1_8]) **2
             )
             -
             (( limbs 58 [X1_0, X1_1, X1_2, X1_3, X1_4, X1_5, X1_6, X1_7, X1_8]) *
              ( limbs 58 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4, Z2_5, Z2_6, Z2_7, Z2_8]) ** 2
             ))
        )
        (mod  (2**521 - 1))
     ]
     &&
     true
}

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
      (limbs 58 [a0, a1, a2, a3, a4, a5, a6, a7, a8])
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


/* ============================================= */
proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 x6, uint64 x7, uint64 x8, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 y6, uint64 y7, uint64 y8, uint64 z0, uint64 z1, uint64 z2, uint64 z3, uint64 z4, uint64 z5, uint64 z6, uint64 z7, uint64 z8) =
{
  true
  &&
  and [
       x0 <u (2**59+2**14)@64, x1 <u (2**59+2**14)@64, x2 <u (2**59+2**14)@64,
       x3 <u (2**59+2**14)@64, x4 <u (2**59+2**14)@64, x5 <u (2**59+2**14)@64,
       x6 <u (2**59+2**14)@64, x7 <u (2**59+2**14)@64, x8 <u (2**59+2**14)@64,

       y0 <u (2**59+2**14)@64, y1 <u (2**59+2**14)@64, y2 <u (2**59+2**14)@64,
       y3 <u (2**59+2**14)@64, y4 <u (2**59+2**14)@64, y5 <u (2**59+2**14)@64,
       y6 <u (2**59+2**14)@64, y7 <u (2**59+2**14)@64, y8 <u (2**59+2**14)@64,

       z0 <u (2**59+2**14)@64, z1 <u (2**59+2**14)@64, z2 <u (2**59+2**14)@64,
       z3 <u (2**59+2**14)@64, z4 <u (2**59+2**14)@64, z5 <u (2**59+2**14)@64,
       z6 <u (2**59+2**14)@64, z7 <u (2**59+2**14)@64, z8 <u (2**59+2**14)@64
      ]
}


(* Start with undefined rhs *)
mov x_in2_0@uint64 x0;
mov x_in2_8@uint64 x1;
mov x_in2_16@uint64 x2;
mov x_in2_24@uint64 x3;
mov x_in2_32@uint64 x4;
mov x_in2_40@uint64 x5;
mov x_in2_48@uint64 x6;
mov x_in2_56@uint64 x7;
mov x_in2_64@uint64 x8;
mov y_in6_0@uint64 y0;
mov y_in6_8@uint64 y1;
mov y_in6_16@uint64 y2;
mov y_in6_24@uint64 y3;
mov y_in6_32@uint64 y4;
mov y_in6_40@uint64 y5;
mov y_in6_48@uint64 y6;
mov y_in6_56@uint64 y7;
mov y_in6_64@uint64 y8;
mov z_in3_0@uint64 z0;
mov z_in3_8@uint64 z1;
mov z_in3_16@uint64 z2;
mov z_in3_24@uint64 z3;
mov z_in3_32@uint64 z4;
mov z_in3_40@uint64 z5;
mov z_in3_48@uint64 z6;
mov z_in3_56@uint64 z7;
mov z_in3_64@uint64 z8;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* vect__61.168_468 = MEM[(const limb * )x_in_2(D)]; *)
mov vect__61168468_0 x_in2_0;
mov vect__61168468_8 x_in2_8;
(* vect__61.169_470 = MEM[(const limb * )x_in_2(D) + 16B]; *)
mov vect__61169470_0 x_in2_16;
mov vect__61169470_8 x_in2_24;
(* vect__61.170_472 = MEM[(const limb * )x_in_2(D) + 32B]; *)
mov vect__61170472_0 x_in2_32;
mov vect__61170472_8 x_in2_40;
(* vect__61.171_474 = MEM[(const limb * )x_in_2(D) + 48B]; *)
mov vect__61171474_0 x_in2_48;
mov vect__61171474_8 x_in2_56;
(* MEM[(limb * )&ftmp] = vect__61.168_468; *)
mov ftmp_0 vect__61168468_0;
mov ftmp_8 vect__61168468_8;
(* MEM[(limb * )&ftmp + 16B] = vect__61.169_470; *)
mov ftmp_16 vect__61169470_0;
mov ftmp_24 vect__61169470_8;
(* MEM[(limb * )&ftmp + 32B] = vect__61.170_472; *)
mov ftmp_32 vect__61170472_0;
mov ftmp_40 vect__61170472_8;
(* MEM[(limb * )&ftmp + 48B] = vect__61.171_474; *)
mov ftmp_48 vect__61171474_0;
mov ftmp_56 vect__61171474_8;
(* _69 = MEM[(const limb * )x_in_2(D) + 64B]; *)
mov v69 x_in2_64;
(* MEM[(limb * )&ftmp + 64B] = _69; *)
mov ftmp_64 v69;
(* MEM[(limb * )&ftmp2] = vect__61.168_468; *)
mov ftmp2_0 vect__61168468_0;
mov ftmp2_8 vect__61168468_8;
(* MEM[(limb * )&ftmp2 + 16B] = vect__61.169_470; *)
mov ftmp2_16 vect__61169470_0;
mov ftmp2_24 vect__61169470_8;
(* MEM[(limb * )&ftmp2 + 32B] = vect__61.170_472; *)
mov ftmp2_32 vect__61170472_0;
mov ftmp2_40 vect__61170472_8;
(* MEM[(limb * )&ftmp2 + 48B] = vect__61.171_474; *)
mov ftmp2_48 vect__61171474_0;
mov ftmp2_56 vect__61171474_8;
(* MEM[(limb * )&ftmp2 + 64B] = _69; *)
mov ftmp2_64 v69;
(* felem_square (&tmp, z_in_3(D)); *)
inline felem_square (z_in3_0, z_in3_8, z_in3_16, z_in3_24, z_in3_32,
                  z_in3_40, z_in3_48, z_in3_56, z_in3_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
(* felem_reduce (&delta, &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   delta_0, delta_8, delta_16, delta_24, delta_32,
                   delta_40, delta_48, delta_56, delta_64);


(* felem_square (&tmp, y_in_6(D)); *)
inline felem_square (y_in6_0, y_in6_8, y_in6_16, y_in6_24, y_in6_32,
                  y_in6_40, y_in6_48, y_in6_56, y_in6_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
(* felem_reduce (&gamma, &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   gamma_0, gamma_8, gamma_16, gamma_24, gamma_32,
                   gamma_40, gamma_48, gamma_56, gamma_64);
(* felem_mul (&tmp, x_in_2(D), &gamma); *)
inline felem_mul (x_in2_0, x_in2_8, x_in2_16, x_in2_24, x_in2_32,
                x_in2_40, x_in2_48, x_in2_56, x_in2_64,
                gamma_0, gamma_8, gamma_16, gamma_24, gamma_32,
                gamma_40, gamma_48, gamma_56, gamma_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
(* felem_reduce (&beta, &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   beta_0, beta_8, beta_16, beta_24, beta_32,
                   beta_40, beta_48, beta_56, beta_64);

rcut and [
          x_in2_0 <u (2**59 + 2**14)@64,  x_in2_8 <u (2**59 + 2**14)@64,
          x_in2_16 <u (2**59 + 2**14)@64, x_in2_24 <u (2**59 + 2**14)@64,
          x_in2_32 <u (2**59 + 2**14)@64, x_in2_40 <u (2**59 + 2**14)@64,
          x_in2_48 <u (2**59 + 2**14)@64, x_in2_56 <u (2**59 + 2**14)@64,
          x_in2_64 <u (2**59 + 2**14)@64,
          y_in6_0 <u (2**59 + 2**14)@64,  y_in6_8 <u (2**59 + 2**14)@64,
          y_in6_16 <u (2**59 + 2**14)@64, y_in6_24 <u (2**59 + 2**14)@64,
          y_in6_32 <u (2**59 + 2**14)@64, y_in6_40 <u (2**59 + 2**14)@64,
          y_in6_48 <u (2**59 + 2**14)@64, y_in6_56 <u (2**59 + 2**14)@64,
          y_in6_64 <u (2**59 + 2**14)@64,
          z_in3_0 <u (2**59 + 2**14)@64,  z_in3_8 <u (2**59 + 2**14)@64,
          z_in3_16 <u (2**59 + 2**14)@64, z_in3_24 <u (2**59 + 2**14)@64,
          z_in3_32 <u (2**59 + 2**14)@64, z_in3_40 <u (2**59 + 2**14)@64,
          z_in3_48 <u (2**59 + 2**14)@64, z_in3_56 <u (2**59 + 2**14)@64,
          z_in3_64 <u (2**59 + 2**14)@64,
          beta_0 <u (2**59 + 2**14)@64,  beta_8 <u (2**59 + 2**14)@64,
          beta_16 <u (2**59 + 2**14)@64, beta_24 <u (2**59 + 2**14)@64,
          beta_32 <u (2**59 + 2**14)@64, beta_40 <u (2**59 + 2**14)@64,
          beta_48 <u (2**59 + 2**14)@64, beta_56 <u (2**59 + 2**14)@64,
          beta_64 <u (2**59 + 2**14)@64,
          gamma_0 <u (2**59 + 2**14)@64,  gamma_8 <u (2**59 + 2**14)@64,
          gamma_16 <u (2**59 + 2**14)@64, gamma_24 <u (2**59 + 2**14)@64,
          gamma_32 <u (2**59 + 2**14)@64, gamma_40 <u (2**59 + 2**14)@64,
          gamma_48 <u (2**59 + 2**14)@64, gamma_56 <u (2**59 + 2**14)@64,
          gamma_64 <u (2**59 + 2**14)@64,
          delta_0 <u (2**59 + 2**14)@64,  delta_8 <u (2**59 + 2**14)@64,
          delta_16 <u (2**59 + 2**14)@64, delta_24 <u (2**59 + 2**14)@64,
          delta_32 <u (2**59 + 2**14)@64, delta_40 <u (2**59 + 2**14)@64,
          delta_48 <u (2**59 + 2**14)@64, delta_56 <u (2**59 + 2**14)@64,
          delta_64 <u (2**59 + 2**14)@64
         ];

(* _422 = MEM[(limb * )&ftmp]; *)
mov v422 ftmp_0;
(* _423 = MEM[(const limb * )&delta]; *)
mov v423 delta_0;
(* _393 = _422 + 4611686018427387872; *)
uadd v393 v422 0x3fffffffffffffe0@uint64;
(* _425 = _393 - _423; *)
usub v425 v393 v423;
(* MEM[(limb * )&ftmp] = _425; *)
mov ftmp_0 v425;
(* _426 = MEM[(limb * )&ftmp + 8B]; *)
mov v426 ftmp_8;
(* _427 = MEM[(const limb * )&delta + 8B]; *)
mov v427 delta_8;
(* _391 = _426 + 4611686018427387888; *)
uadd v391 v426 0x3ffffffffffffff0@uint64;
(* _429 = _391 - _427; *)
usub v429 v391 v427;
(* MEM[(limb * )&ftmp + 8B] = _429; *)
mov ftmp_8 v429;
(* _430 = MEM[(limb * )&ftmp + 16B]; *)
mov v430 ftmp_16;
(* _431 = MEM[(const limb * )&delta + 16B]; *)
mov v431 delta_16;
(* _389 = _430 + 4611686018427387888; *)
uadd v389 v430 0x3ffffffffffffff0@uint64;
(* _433 = _389 - _431; *)
usub v433 v389 v431;
(* MEM[(limb * )&ftmp + 16B] = _433; *)
mov ftmp_16 v433;
(* _434 = MEM[(limb * )&ftmp + 24B]; *)
mov v434 ftmp_24;
(* _435 = MEM[(const limb * )&delta + 24B]; *)
mov v435 delta_24;
(* _387 = _434 + 4611686018427387888; *)
uadd v387 v434 0x3ffffffffffffff0@uint64;
(* _437 = _387 - _435; *)
usub v437 v387 v435;
(* MEM[(limb * )&ftmp + 24B] = _437; *)
mov ftmp_24 v437;
(* _438 = MEM[(limb * )&ftmp + 32B]; *)
mov v438 ftmp_32;
(* _439 = MEM[(const limb * )&delta + 32B]; *)
mov v439 delta_32;
(* _385 = _438 + 4611686018427387888; *)
uadd v385 v438 0x3ffffffffffffff0@uint64;
(* _441 = _385 - _439; *)
usub v441 v385 v439;
(* MEM[(limb * )&ftmp + 32B] = _441; *)
mov ftmp_32 v441;
(* _442 = MEM[(limb * )&ftmp + 40B]; *)
mov v442 ftmp_40;
(* _443 = MEM[(const limb * )&delta + 40B]; *)
mov v443 delta_40;
(* _383 = _442 + 4611686018427387888; *)
uadd v383 v442 0x3ffffffffffffff0@uint64;
(* _445 = _383 - _443; *)
usub v445 v383 v443;
(* MEM[(limb * )&ftmp + 40B] = _445; *)
mov ftmp_40 v445;
(* _446 = MEM[(limb * )&ftmp + 48B]; *)
mov v446 ftmp_48;
(* _447 = MEM[(const limb * )&delta + 48B]; *)
mov v447 delta_48;
(* _381 = _446 + 4611686018427387888; *)
uadd v381 v446 0x3ffffffffffffff0@uint64;
(* _449 = _381 - _447; *)
usub v449 v381 v447;
(* MEM[(limb * )&ftmp + 48B] = _449; *)
mov ftmp_48 v449;
(* _450 = MEM[(limb * )&ftmp + 56B]; *)
mov v450 ftmp_56;
(* _451 = MEM[(const limb * )&delta + 56B]; *)
mov v451 delta_56;
(* _379 = _450 + 4611686018427387888; *)
uadd v379 v450 0x3ffffffffffffff0@uint64;
(* _453 = _379 - _451; *)
usub v453 v379 v451;
(* MEM[(limb * )&ftmp + 56B] = _453; *)
mov ftmp_56 v453;
(* _454 = MEM[(limb * )&ftmp + 64B]; *)
mov v454 ftmp_64;
(* _455 = MEM[(const limb * )&delta + 64B]; *)
mov v455 delta_64;
(* _377 = _454 + 4611686018427387888; *)
uadd v377 v454 0x3ffffffffffffff0@uint64;
(* _457 = _377 - _455; *)
usub v457 v377 v455;
(* MEM[(limb * )&ftmp + 64B] = _457; *)
mov ftmp_64 v457;
(* _395 = MEM[(limb * )&ftmp2]; *)
mov v395 ftmp2_0;
(* _397 = _395 + _423; *)
uadd v397 v395 v423;
(* _398 = MEM[(limb * )&ftmp2 + 8B]; *)
mov v398 ftmp2_8;
(* _400 = _398 + _427; *)
uadd v400 v398 v427;
(* _401 = MEM[(limb * )&ftmp2 + 16B]; *)
mov v401 ftmp2_16;
(* _403 = _401 + _431; *)
uadd v403 v401 v431;
(* _404 = MEM[(limb * )&ftmp2 + 24B]; *)
mov v404 ftmp2_24;
(* _406 = _404 + _435; *)
uadd v406 v404 v435;
(* _407 = MEM[(limb * )&ftmp2 + 32B]; *)
mov v407 ftmp2_32;
(* _409 = _407 + _439; *)
uadd v409 v407 v439;
(* _410 = MEM[(limb * )&ftmp2 + 40B]; *)
mov v410 ftmp2_40;
(* _412 = _410 + _443; *)
uadd v412 v410 v443;
(* _413 = MEM[(limb * )&ftmp2 + 48B]; *)
mov v413 ftmp2_48;
(* _415 = _413 + _447; *)
uadd v415 v413 v447;
(* _416 = MEM[(limb * )&ftmp2 + 56B]; *)
mov v416 ftmp2_56;
(* _418 = _416 + _451; *)
uadd v418 v416 v451;
(* _419 = MEM[(limb * )&ftmp2 + 64B]; *)
mov v419 ftmp2_64;
(* _421 = _419 + _455; *)
uadd v421 v419 v455;
(* _378 = _397 * 3; *)
umul v378 v397 0x3@uint64;
(* MEM[(limb * )&ftmp2] = _378; *)
mov ftmp2_0 v378;
(* _380 = _400 * 3; *)
umul v380 v400 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 8B] = _380; *)
mov ftmp2_8 v380;
(* _382 = _403 * 3; *)
umul v382 v403 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 16B] = _382; *)
mov ftmp2_16 v382;
(* _384 = _406 * 3; *)
umul v384 v406 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 24B] = _384; *)
mov ftmp2_24 v384;
(* _386 = _409 * 3; *)
umul v386 v409 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 32B] = _386; *)
mov ftmp2_32 v386;
(* _388 = _412 * 3; *)
umul v388 v412 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 40B] = _388; *)
mov ftmp2_40 v388;
(* _390 = _415 * 3; *)
umul v390 v415 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 48B] = _390; *)
mov ftmp2_48 v390;
(* _392 = _418 * 3; *)
umul v392 v418 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 56B] = _392; *)
mov ftmp2_56 v392;
(* _394 = _421 * 3; *)
umul v394 v421 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 64B] = _394; *)
mov ftmp2_64 v394;
(* felem_mul (&tmp, &ftmp, &ftmp2); *)
inline felem_mul (ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24, ftmp2_32,
                ftmp2_40, ftmp2_48, ftmp2_56, ftmp2_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
(* felem_reduce (&alpha, &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   alpha_0, alpha_8, alpha_16, alpha_24, alpha_32,
                   alpha_40, alpha_48, alpha_56, alpha_64
                  );

(* felem_square (&tmp, &alpha); *)
inline felem_square (alpha_0, alpha_8, alpha_16, alpha_24, alpha_32,
                  alpha_40, alpha_48, alpha_56, alpha_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
(* _52 = MEM[(const limb * )&beta]; *)
mov v52 beta_0;
(* _53 = MEM[(const limb * )&beta + 8B]; *)
mov v53 beta_8;
(* _54 = MEM[(const limb * )&beta + 16B]; *)
mov v54 beta_16;
(* _55 = MEM[(const limb * )&beta + 24B]; *)
mov v55 beta_24;
(* _56 = MEM[(const limb * )&beta + 32B]; *)
mov v56 beta_32;
(* _57 = MEM[(const limb * )&beta + 40B]; *)
mov v57 beta_40;
(* _58 = MEM[(const limb * )&beta + 48B]; *)
mov v58 beta_48;
(* _59 = MEM[(const limb * )&beta + 56B]; *)
mov v59 beta_56;
(* _60 = MEM[(const limb * )&beta + 64B]; *)
mov v60 beta_64;
(* _360 = _52 * 8; *)
umul v360 v52 0x8@uint64;
(* MEM[(limb * )&ftmp] = _360; *)
mov ftmp_0 v360;
(* _362 = _53 * 8; *)
umul v362 v53 0x8@uint64;
(* MEM[(limb * )&ftmp + 8B] = _362; *)
mov ftmp_8 v362;
(* _364 = _54 * 8; *)
umul v364 v54 0x8@uint64;
(* MEM[(limb * )&ftmp + 16B] = _364; *)
mov ftmp_16 v364;
(* _366 = _55 * 8; *)
umul v366 v55 0x8@uint64;
(* MEM[(limb * )&ftmp + 24B] = _366; *)
mov ftmp_24 v366;
(* _368 = _56 * 8; *)
umul v368 v56 0x8@uint64;
(* MEM[(limb * )&ftmp + 32B] = _368; *)
mov ftmp_32 v368;
(* _370 = _57 * 8; *)
umul v370 v57 0x8@uint64;
(* MEM[(limb * )&ftmp + 40B] = _370; *)
mov ftmp_40 v370;
(* _372 = _58 * 8; *)
umul v372 v58 0x8@uint64;
(* MEM[(limb * )&ftmp + 48B] = _372; *)
mov ftmp_48 v372;
(* _374 = _59 * 8; *)
umul v374 v59 0x8@uint64;
(* MEM[(limb * )&ftmp + 56B] = _374; *)
mov ftmp_56 v374;
(* _376 = _60 * 8; *)
umul v376 v60 0x8@uint64;
(* MEM[(limb * )&ftmp + 64B] = _376; *)
mov ftmp_64 v376;
(* _314 = MEM[(uint128_t * )&tmp]; *)
mov v314 tmp_0;
(* _316 = 9223372036854775744 - _360; *)
usub v316 0x7fffffffffffffc0@uint64 v360;
(* _317 = (__int128 unsigned) _316; *)
vpc v317@uint128 v316@uint64;
(* _318 = _314 + _317; *)
uadd v318 v314 v317;
(* MEM[(uint128_t * )&tmp] = _318; *)
mov tmp_0 v318;
(* _319 = MEM[(uint128_t * )&tmp + 16B]; *)
mov v319 tmp_16;
(* _321 = 9223372036854775776 - _362; *)
usub v321 0x7fffffffffffffe0@uint64 v362;
(* _322 = (__int128 unsigned) _321; *)
vpc v322@uint128 v321@uint64;
(* _323 = _319 + _322; *)
uadd v323 v319 v322;
(* MEM[(uint128_t * )&tmp + 16B] = _323; *)
mov tmp_16 v323;
(* _324 = MEM[(uint128_t * )&tmp + 32B]; *)
mov v324 tmp_32;
(* _326 = 9223372036854775776 - _364; *)
usub v326 0x7fffffffffffffe0@uint64 v364;
(* _327 = (__int128 unsigned) _326; *)
vpc v327@uint128 v326@uint64;
(* _328 = _324 + _327; *)
uadd v328 v324 v327;
(* MEM[(uint128_t * )&tmp + 32B] = _328; *)
mov tmp_32 v328;
(* _329 = MEM[(uint128_t * )&tmp + 48B]; *)
mov v329 tmp_48;
(* _331 = 9223372036854775776 - _366; *)
usub v331 0x7fffffffffffffe0@uint64 v366;
(* _332 = (__int128 unsigned) _331; *)
vpc v332@uint128 v331@uint64;
(* _333 = _329 + _332; *)
uadd v333 v329 v332;
(* MEM[(uint128_t * )&tmp + 48B] = _333; *)
mov tmp_48 v333;
(* _334 = MEM[(uint128_t * )&tmp + 64B]; *)
mov v334 tmp_64;
(* _336 = 9223372036854775776 - _368; *)
usub v336 0x7fffffffffffffe0@uint64 v368;
(* _337 = (__int128 unsigned) _336; *)
vpc v337@uint128 v336@uint64;
(* _338 = _334 + _337; *)
uadd v338 v334 v337;
(* MEM[(uint128_t * )&tmp + 64B] = _338; *)
mov tmp_64 v338;
(* _339 = MEM[(uint128_t * )&tmp + 80B]; *)
mov v339 tmp_80;
(* _341 = 9223372036854775776 - _370; *)
usub v341 0x7fffffffffffffe0@uint64 v370;
(* _342 = (__int128 unsigned) _341; *)
vpc v342@uint128 v341@uint64;
(* _343 = _339 + _342; *)
uadd v343 v339 v342;
(* MEM[(uint128_t * )&tmp + 80B] = _343; *)
mov tmp_80 v343;
(* _344 = MEM[(uint128_t * )&tmp + 96B]; *)
mov v344 tmp_96;
(* _346 = 9223372036854775776 - _372; *)
usub v346 0x7fffffffffffffe0@uint64 v372;
(* _347 = (__int128 unsigned) _346; *)
vpc v347@uint128 v346@uint64;
(* _348 = _344 + _347; *)
uadd v348 v344 v347;
(* MEM[(uint128_t * )&tmp + 96B] = _348; *)
mov tmp_96 v348;
(* _349 = MEM[(uint128_t * )&tmp + 112B]; *)
mov v349 tmp_112;
(* _351 = 9223372036854775776 - _374; *)
usub v351 0x7fffffffffffffe0@uint64 v374;
(* _352 = (__int128 unsigned) _351; *)
vpc v352@uint128 v351@uint64;
(* _353 = _349 + _352; *)
uadd v353 v349 v352;
(* MEM[(uint128_t * )&tmp + 112B] = _353; *)
mov tmp_112 v353;
(* _354 = MEM[(uint128_t * )&tmp + 128B]; *)
mov v354 tmp_128;
(* _356 = 9223372036854775776 - _376; *)
usub v356 0x7fffffffffffffe0@uint64 v376;
(* _357 = (__int128 unsigned) _356; *)
vpc v357@uint128 v356@uint64;
(* _358 = _354 + _357; *)
uadd v358 v354 v357;
(* MEM[(uint128_t * )&tmp + 128B] = _358; *)
mov tmp_128 v358;
(* felem_reduce (x_out_19(D), &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   x_out19_0, x_out19_8, x_out19_16, x_out19_24, x_out19_32,
                   x_out19_40, x_out19_48, x_out19_56, x_out19_64
                  );

ecut and [
          (limbs 58 [x_out19_0, x_out19_8, x_out19_16, x_out19_24, x_out19_32,
                   x_out19_40, x_out19_48, x_out19_56, x_out19_64])
          =
          (
           (
            3 * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) -
                 ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) **2
                )
                * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) +
                   ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) **2)
           ) ** 2
           -
           8 * ( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) *
           ( limbs 58 [y0, y1, y2, y3, y4, y5, y6, y7, y8]) **2
          )
          (mod  (2**521 - 1)),
          (limbs 58 [delta_0, delta_8, delta_16, delta_24, delta_32,
           delta_40, delta_48, delta_56, delta_64])
           = ((limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) ** 2)
          (mod  (2**521 - 1)),
          (limbs 58 [alpha_0, alpha_8, alpha_16, alpha_24, alpha_32,
           alpha_40, alpha_48, alpha_56, alpha_64])
           = (
              3 * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) -
                   (limbs 58 [delta_0, delta_8, delta_16, delta_24, delta_32,
           delta_40, delta_48, delta_56, delta_64]))
                * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) +
                   (limbs 58 [delta_0, delta_8, delta_16, delta_24, delta_32,
           delta_40, delta_48, delta_56, delta_64]))
             )
          (mod  (2**521 - 1)),
           (limbs 58 [gamma_0, gamma_8, gamma_16, gamma_24, gamma_32,
            gamma_40, gamma_48, gamma_56, gamma_64])
           = (( limbs 58 [y0, y1, y2, y3, y4, y5, y6, y7, y8]) **2)
          (mod  (2**521 - 1)),
           (limbs 58 [beta_0, beta_8, beta_16, beta_24, beta_32,
            beta_40, beta_48, beta_56, beta_64])
            = (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) *
               (limbs 58 [gamma_0, gamma_8, gamma_16, gamma_24, gamma_32,
                gamma_40, gamma_48, gamma_56, gamma_64]))
          (mod  (2**521 - 1))
         ];

rcut and [
          x_out19_0 <u (2**59 + 2**14)@64,  x_out19_8 <u (2**59 + 2**14)@64,
          x_out19_16 <u (2**59 + 2**14)@64, x_out19_24 <u (2**59 + 2**14)@64,
          x_out19_32 <u (2**59 + 2**14)@64, x_out19_40 <u (2**59 + 2**14)@64,
          x_out19_48 <u (2**59 + 2**14)@64, x_out19_56 <u (2**59 + 2**14)@64,
          x_out19_64 <u (2**59 + 2**14)@64,
          x_in2_0 <u (2**59 + 2**14)@64,  x_in2_8 <u (2**59 + 2**14)@64,
          x_in2_16 <u (2**59 + 2**14)@64, x_in2_24 <u (2**59 + 2**14)@64,
          x_in2_32 <u (2**59 + 2**14)@64, x_in2_40 <u (2**59 + 2**14)@64,
          x_in2_48 <u (2**59 + 2**14)@64, x_in2_56 <u (2**59 + 2**14)@64,
          x_in2_64 <u (2**59 + 2**14)@64,
          y_in6_0 <u (2**59 + 2**14)@64,  y_in6_8 <u (2**59 + 2**14)@64,
          y_in6_16 <u (2**59 + 2**14)@64, y_in6_24 <u (2**59 + 2**14)@64,
          y_in6_32 <u (2**59 + 2**14)@64, y_in6_40 <u (2**59 + 2**14)@64,
          y_in6_48 <u (2**59 + 2**14)@64, y_in6_56 <u (2**59 + 2**14)@64,
          y_in6_64 <u (2**59 + 2**14)@64,
          z_in3_0 <u (2**59 + 2**14)@64,  z_in3_8 <u (2**59 + 2**14)@64,
          z_in3_16 <u (2**59 + 2**14)@64, z_in3_24 <u (2**59 + 2**14)@64,
          z_in3_32 <u (2**59 + 2**14)@64, z_in3_40 <u (2**59 + 2**14)@64,
          z_in3_48 <u (2**59 + 2**14)@64, z_in3_56 <u (2**59 + 2**14)@64,
          z_in3_64 <u (2**59 + 2**14)@64,
          alpha_0 <u (2**59 + 2**14)@64,  alpha_8 <u (2**59 + 2**14)@64,
          alpha_16 <u (2**59 + 2**14)@64, alpha_24 <u (2**59 + 2**14)@64,
          alpha_32 <u (2**59 + 2**14)@64, alpha_40 <u (2**59 + 2**14)@64,
          alpha_48 <u (2**59 + 2**14)@64, alpha_56 <u (2**59 + 2**14)@64,
          alpha_64 <u (2**59 + 2**14)@64,
          beta_0 <u (2**59 + 2**14)@64,  beta_8 <u (2**59 + 2**14)@64,
          beta_16 <u (2**59 + 2**14)@64, beta_24 <u (2**59 + 2**14)@64,
          beta_32 <u (2**59 + 2**14)@64, beta_40 <u (2**59 + 2**14)@64,
          beta_48 <u (2**59 + 2**14)@64, beta_56 <u (2**59 + 2**14)@64,
          beta_64 <u (2**59 + 2**14)@64,
          gamma_0 <u (2**59 + 2**14)@64,  gamma_8 <u (2**59 + 2**14)@64,
          gamma_16 <u (2**59 + 2**14)@64, gamma_24 <u (2**59 + 2**14)@64,
          gamma_32 <u (2**59 + 2**14)@64, gamma_40 <u (2**59 + 2**14)@64,
          gamma_48 <u (2**59 + 2**14)@64, gamma_56 <u (2**59 + 2**14)@64,
          gamma_64 <u (2**59 + 2**14)@64,
          delta_0 <u (2**59 + 2**14)@64,  delta_8 <u (2**59 + 2**14)@64,
          delta_16 <u (2**59 + 2**14)@64, delta_24 <u (2**59 + 2**14)@64,
          delta_32 <u (2**59 + 2**14)@64, delta_40 <u (2**59 + 2**14)@64,
          delta_48 <u (2**59 + 2**14)@64, delta_56 <u (2**59 + 2**14)@64,
          delta_64 <u (2**59 + 2**14)@64
         ];

(* vect__287.178_102 = MEM[(limb * )&delta]; *)
mov vect__287178102_0 delta_0;
mov vect__287178102_8 delta_8;
(* vect__287.179_104 = MEM[(limb * )&delta + 16B]; *)
mov vect__287179104_0 delta_16;
mov vect__287179104_8 delta_24;
(* vect__287.180_424 = MEM[(limb * )&delta + 32B]; *)
mov vect__287180424_0 delta_32;
mov vect__287180424_8 delta_40;
(* vect__287.181_432 = MEM[(limb * )&delta + 48B]; *)
mov vect__287181432_0 delta_48;
mov vect__287181432_8 delta_56;
(* vect__288.184_440 = MEM[(const limb * )&gamma]; *)
mov vect__288184440_0 gamma_0;
mov vect__288184440_8 gamma_8;
(* vect__288.185_448 = MEM[(const limb * )&gamma + 16B]; *)
mov vect__288185448_0 gamma_16;
mov vect__288185448_8 gamma_24;
(* vect__288.186_456 = MEM[(const limb * )&gamma + 32B]; *)
mov vect__288186456_0 gamma_32;
mov vect__288186456_8 gamma_40;
(* vect__288.187_167 = MEM[(const limb * )&gamma + 48B]; *)
mov vect__288187167_0 gamma_48;
mov vect__288187167_8 gamma_56;
(* vect__289.188_175 = vect__287.178_102 + vect__288.184_440; *)
uadd vect__289188175_0 vect__287178102_0 vect__288184440_0;
uadd vect__289188175_8 vect__287178102_8 vect__288184440_8;
(* vect__289.188_179 = vect__287.179_104 + vect__288.185_448; *)
uadd vect__289188179_0 vect__287179104_0 vect__288185448_0;
uadd vect__289188179_8 vect__287179104_8 vect__288185448_8;
(* vect__289.188_183 = vect__287.180_424 + vect__288.186_456; *)
uadd vect__289188183_0 vect__287180424_0 vect__288186456_0;
uadd vect__289188183_8 vect__287180424_8 vect__288186456_8;
(* vect__289.188_187 = vect__288.187_167 + vect__287.181_432; *)
uadd vect__289188187_0 vect__288187167_0 vect__287181432_0;
uadd vect__289188187_8 vect__288187167_8 vect__287181432_8;
(* MEM[(limb * )&delta] = vect__289.188_175; *)
mov delta_0 vect__289188175_0;
mov delta_8 vect__289188175_8;
(* MEM[(limb * )&delta + 16B] = vect__289.188_179; *)
mov delta_16 vect__289188179_0;
mov delta_24 vect__289188179_8;
(* MEM[(limb * )&delta + 32B] = vect__289.188_183; *)
mov delta_32 vect__289188183_0;
mov delta_40 vect__289188183_8;
(* MEM[(limb * )&delta + 48B] = vect__289.188_187; *)
mov delta_48 vect__289188187_0;
mov delta_56 vect__289188187_8;
(* _311 = MEM[(limb * )&delta + 64B]; *)
mov v311 delta_64;
(* _312 = MEM[(const limb * )&gamma + 64B]; *)
mov v312 gamma_64;
(* _313 = _311 + _312; *)
uadd v313 v311 v312;
(* MEM[(limb * )&delta + 64B] = _313; *)
mov delta_64 v313;
(* vect__43.193_132 = MEM[(const limb * )y_in_6(D)]; *)
mov vect__43193132_0 y_in6_0;
mov vect__43193132_8 y_in6_8;
(* vect__43.194_140 = MEM[(const limb * )y_in_6(D) + 16B]; *)
mov vect__43194140_0 y_in6_16;
mov vect__43194140_8 y_in6_24;
(* vect__43.195_361 = MEM[(const limb * )y_in_6(D) + 32B]; *)
mov vect__43195361_0 y_in6_32;
mov vect__43195361_8 y_in6_40;
(* vect__43.196_365 = MEM[(const limb * )y_in_6(D) + 48B]; *)
mov vect__43196365_0 y_in6_48;
mov vect__43196365_8 y_in6_56;
(* _51 = MEM[(const limb * )y_in_6(D) + 64B]; *)
mov v51 y_in6_64;
(* vect__261.199_371 = MEM[(const limb * )z_in_3(D)]; *)
mov vect__261199371_0 z_in3_0;
mov vect__261199371_8 z_in3_8;
(* vect__261.200_375 = MEM[(const limb * )z_in_3(D) + 16B]; *)
mov vect__261200375_0 z_in3_16;
mov vect__261200375_8 z_in3_24;
(* vect__261.201_320 = MEM[(const limb * )z_in_3(D) + 32B]; *)
mov vect__261201320_0 z_in3_32;
mov vect__261201320_8 z_in3_40;
(* vect__261.202_330 = MEM[(const limb * )z_in_3(D) + 48B]; *)
mov vect__261202330_0 z_in3_48;
mov vect__261202330_8 z_in3_56;
(* vect__262.203_340 = vect__43.193_132 + vect__261.199_371; *)
uadd vect__262203340_0 vect__43193132_0 vect__261199371_0;
uadd vect__262203340_8 vect__43193132_8 vect__261199371_8;
(* vect__262.203_345 = vect__43.194_140 + vect__261.200_375; *)
uadd vect__262203345_0 vect__43194140_0 vect__261200375_0;
uadd vect__262203345_8 vect__43194140_8 vect__261200375_8;
(* vect__262.203_350 = vect__261.201_320 + vect__43.195_361; *)
uadd vect__262203350_0 vect__261201320_0 vect__43195361_0;
uadd vect__262203350_8 vect__261201320_8 vect__43195361_8;
(* vect__262.203_355 = vect__261.202_330 + vect__43.196_365; *)
uadd vect__262203355_0 vect__261202330_0 vect__43196365_0;
uadd vect__262203355_8 vect__261202330_8 vect__43196365_8;
(* MEM[(limb * )&ftmp] = vect__262.203_340; *)
mov ftmp_0 vect__262203340_0;
mov ftmp_8 vect__262203340_8;
(* MEM[(limb * )&ftmp + 16B] = vect__262.203_345; *)
mov ftmp_16 vect__262203345_0;
mov ftmp_24 vect__262203345_8;
(* MEM[(limb * )&ftmp + 32B] = vect__262.203_350; *)
mov ftmp_32 vect__262203350_0;
mov ftmp_40 vect__262203350_8;
(* MEM[(limb * )&ftmp + 48B] = vect__262.203_355; *)
mov ftmp_48 vect__262203355_0;
mov ftmp_56 vect__262203355_8;
(* _285 = MEM[(const limb * )z_in_3(D) + 64B]; *)
mov v285 z_in3_64;
(* _286 = _51 + _285; *)
uadd v286 v51 v285;
(* MEM[(limb * )&ftmp + 64B] = _286; *)
mov ftmp_64 v286;
(* felem_square (&tmp, &ftmp); *)
inline felem_square (ftmp_0, ftmp_8, ftmp_16, ftmp_24, ftmp_32,
                  ftmp_40, ftmp_48, ftmp_56, ftmp_64,
                  tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                  tmp_80, tmp_96, tmp_112, tmp_128);
(* _215 = MEM[(uint128_t * )&tmp]; *)
mov v215 tmp_0;
(* _216 = MEM[(const limb * )&delta]; *)
mov v216 delta_0;
(* _217 = 9223372036854775744 - _216; *)
usub v217 0x7fffffffffffffc0@uint64 v216;
(* _218 = (__int128 unsigned) _217; *)
vpc v218@uint128 v217@uint64;
(* _219 = _215 + _218; *)
uadd v219 v215 v218;
(* MEM[(uint128_t * )&tmp] = _219; *)
mov tmp_0 v219;
(* _220 = MEM[(uint128_t * )&tmp + 16B]; *)
mov v220 tmp_16;
(* _221 = MEM[(const limb * )&delta + 8B]; *)
mov v221 delta_8;
(* _222 = 9223372036854775776 - _221; *)
usub v222 0x7fffffffffffffe0@uint64 v221;
(* _223 = (__int128 unsigned) _222; *)
vpc v223@uint128 v222@uint64;
(* _224 = _220 + _223; *)
uadd v224 v220 v223;
(* MEM[(uint128_t * )&tmp + 16B] = _224; *)
mov tmp_16 v224;
(* _225 = MEM[(uint128_t * )&tmp + 32B]; *)
mov v225 tmp_32;
(* _226 = MEM[(const limb * )&delta + 16B]; *)
mov v226 delta_16;
(* _227 = 9223372036854775776 - _226; *)
usub v227 0x7fffffffffffffe0@uint64 v226;
(* _228 = (__int128 unsigned) _227; *)
vpc v228@uint128 v227@uint64;
(* _229 = _225 + _228; *)
uadd v229 v225 v228;
(* MEM[(uint128_t * )&tmp + 32B] = _229; *)
mov tmp_32 v229;
(* _230 = MEM[(uint128_t * )&tmp + 48B]; *)
mov v230 tmp_48;
(* _231 = MEM[(const limb * )&delta + 24B]; *)
mov v231 delta_24;
(* _232 = 9223372036854775776 - _231; *)
usub v232 0x7fffffffffffffe0@uint64 v231;
(* _233 = (__int128 unsigned) _232; *)
vpc v233@uint128 v232@uint64;
(* _234 = _230 + _233; *)
uadd v234 v230 v233;
(* MEM[(uint128_t * )&tmp + 48B] = _234; *)
mov tmp_48 v234;
(* _235 = MEM[(uint128_t * )&tmp + 64B]; *)
mov v235 tmp_64;
(* _236 = MEM[(const limb * )&delta + 32B]; *)
mov v236 delta_32;
(* _237 = 9223372036854775776 - _236; *)
usub v237 0x7fffffffffffffe0@uint64 v236;
(* _238 = (__int128 unsigned) _237; *)
vpc v238@uint128 v237@uint64;
(* _239 = _235 + _238; *)
uadd v239 v235 v238;
(* MEM[(uint128_t * )&tmp + 64B] = _239; *)
mov tmp_64 v239;
(* _240 = MEM[(uint128_t * )&tmp + 80B]; *)
mov v240 tmp_80;
(* _241 = MEM[(const limb * )&delta + 40B]; *)
mov v241 delta_40;
(* _242 = 9223372036854775776 - _241; *)
usub v242 0x7fffffffffffffe0@uint64 v241;
(* _243 = (__int128 unsigned) _242; *)
vpc v243@uint128 v242@uint64;
(* _244 = _240 + _243; *)
uadd v244 v240 v243;
(* MEM[(uint128_t * )&tmp + 80B] = _244; *)
mov tmp_80 v244;
(* _245 = MEM[(uint128_t * )&tmp + 96B]; *)
mov v245 tmp_96;
(* _246 = MEM[(const limb * )&delta + 48B]; *)
mov v246 delta_48;
(* _247 = 9223372036854775776 - _246; *)
usub v247 0x7fffffffffffffe0@uint64 v246;
(* _248 = (__int128 unsigned) _247; *)
vpc v248@uint128 v247@uint64;
(* _249 = _245 + _248; *)
uadd v249 v245 v248;
(* MEM[(uint128_t * )&tmp + 96B] = _249; *)
mov tmp_96 v249;
(* _250 = MEM[(uint128_t * )&tmp + 112B]; *)
mov v250 tmp_112;
(* _251 = MEM[(const limb * )&delta + 56B]; *)
mov v251 delta_56;
(* _252 = 9223372036854775776 - _251; *)
usub v252 0x7fffffffffffffe0@uint64 v251;
(* _253 = (__int128 unsigned) _252; *)
vpc v253@uint128 v252@uint64;
(* _254 = _250 + _253; *)
uadd v254 v250 v253;
(* MEM[(uint128_t * )&tmp + 112B] = _254; *)
mov tmp_112 v254;
(* _255 = MEM[(uint128_t * )&tmp + 128B]; *)
mov v255 tmp_128;
(* _256 = MEM[(const limb * )&delta + 64B]; *)
mov v256 delta_64;
(* _257 = 9223372036854775776 - _256; *)
usub v257 0x7fffffffffffffe0@uint64 v256;
(* _258 = (__int128 unsigned) _257; *)
vpc v258@uint128 v257@uint64;
(* _259 = _255 + _258; *)
uadd v259 v255 v258;
(* MEM[(uint128_t * )&tmp + 128B] = _259; *)
mov tmp_128 v259;
(* felem_reduce (z_out_25(D), &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   z_out25_0, z_out25_8, z_out25_16, z_out25_24, z_out25_32,
                   z_out25_40, z_out25_48, z_out25_56, z_out25_64
                  );

(* _197 = MEM[(limb * )&beta]; *)
mov v197 beta_0;
(* _198 = _197 * 4; *)
umul v198 v197 0x4@uint64;
(* _199 = MEM[(limb * )&beta + 8B]; *)
mov v199 beta_8;
(* _200 = _199 * 4; *)
umul v200 v199 0x4@uint64;
(* _201 = MEM[(limb * )&beta + 16B]; *)
mov v201 beta_16;
(* _202 = _201 * 4; *)
umul v202 v201 0x4@uint64;
(* _203 = MEM[(limb * )&beta + 24B]; *)
mov v203 beta_24;
(* _204 = _203 * 4; *)
umul v204 v203 0x4@uint64;
(* _205 = MEM[(limb * )&beta + 32B]; *)
mov v205 beta_32;
(* _206 = _205 * 4; *)
umul v206 v205 0x4@uint64;
(* _207 = MEM[(limb * )&beta + 40B]; *)
mov v207 beta_40;
(* _208 = _207 * 4; *)
umul v208 v207 0x4@uint64;
(* _209 = MEM[(limb * )&beta + 48B]; *)
mov v209 beta_48;
(* _210 = _209 * 4; *)
umul v210 v209 0x4@uint64;
(* _211 = MEM[(limb * )&beta + 56B]; *)
mov v211 beta_56;
(* _212 = _211 * 4; *)
umul v212 v211 0x4@uint64;
(* _213 = MEM[(limb * )&beta + 64B]; *)
mov v213 beta_64;
(* _214 = _213 * 4; *)
umul v214 v213 0x4@uint64;
(* _162 = MEM[(const limb * )x_out_19(D)]; *)
mov v162 x_out19_0;
(* _420 = _198 + 4611686018427387872; *)
uadd v420 v198 0x3fffffffffffffe0@uint64;
(* _164 = _420 - _162; *)
usub v164 v420 v162;
(* MEM[(limb * )&beta] = _164; *)
mov beta_0 v164;
(* _166 = MEM[(const limb * )x_out_19(D) + 8B]; *)
mov v166 x_out19_8;
(* _417 = _200 + 4611686018427387888; *)
uadd v417 v200 0x3ffffffffffffff0@uint64;
(* _168 = _417 - _166; *)
usub v168 v417 v166;
(* MEM[(limb * )&beta + 8B] = _168; *)
mov beta_8 v168;
(* _170 = MEM[(const limb * )x_out_19(D) + 16B]; *)
mov v170 x_out19_16;
(* _414 = _202 + 4611686018427387888; *)
uadd v414 v202 0x3ffffffffffffff0@uint64;
(* _172 = _414 - _170; *)
usub v172 v414 v170;
(* MEM[(limb * )&beta + 16B] = _172; *)
mov beta_16 v172;
(* _174 = MEM[(const limb * )x_out_19(D) + 24B]; *)
mov v174 x_out19_24;
(* _411 = _204 + 4611686018427387888; *)
uadd v411 v204 0x3ffffffffffffff0@uint64;
(* _176 = _411 - _174; *)
usub v176 v411 v174;
(* MEM[(limb * )&beta + 24B] = _176; *)
mov beta_24 v176;
(* _178 = MEM[(const limb * )x_out_19(D) + 32B]; *)
mov v178 x_out19_32;
(* _408 = _206 + 4611686018427387888; *)
uadd v408 v206 0x3ffffffffffffff0@uint64;
(* _180 = _408 - _178; *)
usub v180 v408 v178;
(* MEM[(limb * )&beta + 32B] = _180; *)
mov beta_32 v180;
(* _182 = MEM[(const limb * )x_out_19(D) + 40B]; *)
mov v182 x_out19_40;
(* _396 = _208 + 4611686018427387888; *)
uadd v396 v208 0x3ffffffffffffff0@uint64;
(* _184 = _396 - _182; *)
usub v184 v396 v182;
(* MEM[(limb * )&beta + 40B] = _184; *)
mov beta_40 v184;
(* _186 = MEM[(const limb * )x_out_19(D) + 48B]; *)
mov v186 x_out19_48;
(* _402 = _210 + 4611686018427387888; *)
uadd v402 v210 0x3ffffffffffffff0@uint64;
(* _188 = _402 - _186; *)
usub v188 v402 v186;
(* MEM[(limb * )&beta + 48B] = _188; *)
mov beta_48 v188;
(* _190 = MEM[(const limb * )x_out_19(D) + 56B]; *)
mov v190 x_out19_56;
(* _399 = _212 + 4611686018427387888; *)
uadd v399 v212 0x3ffffffffffffff0@uint64;
(* _192 = _399 - _190; *)
usub v192 v399 v190;
(* MEM[(limb * )&beta + 56B] = _192; *)
mov beta_56 v192;
(* _194 = MEM[(const limb * )x_out_19(D) + 64B]; *)
mov v194 x_out19_64;
(* _405 = _214 + 4611686018427387888; *)
uadd v405 v214 0x3ffffffffffffff0@uint64;
(* _196 = _405 - _194; *)
usub v196 v405 v194;
(* MEM[(limb * )&beta + 64B] = _196; *)
mov beta_64 v196;
(* felem_mul (&tmp, &alpha, &beta); *)
inline felem_mul (alpha_0, alpha_8, alpha_16, alpha_24, alpha_32,
                alpha_40, alpha_48, alpha_56, alpha_64,
                beta_0, beta_8, beta_16, beta_24, beta_32,
                beta_40, beta_48, beta_56, beta_64,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                tmp_80, tmp_96, tmp_112, tmp_128);
(* felem_square (&tmp2, &gamma); *)
inline felem_square (gamma_0, gamma_8, gamma_16, gamma_24, gamma_32,
                  gamma_40, gamma_48, gamma_56, gamma_64,
                  tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64,
                  tmp2_80, tmp2_96, tmp2_112, tmp2_128);
(* _142 = MEM[(uint128_t * )&tmp2]; *)
mov v142 tmp2_0;
(* _144 = _142 * 8; *)
umul v144 v142 0x8@uint128;
(* MEM[(uint128_t * )&tmp2] = _144; *)
mov tmp2_0 v144;
(* _145 = MEM[(uint128_t * )&tmp2 + 16B]; *)
mov v145 tmp2_16;
(* _146 = _145 * 8; *)
umul v146 v145 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 16B] = _146; *)
mov tmp2_16 v146;
(* _147 = MEM[(uint128_t * )&tmp2 + 32B]; *)
mov v147 tmp2_32;
(* _148 = _147 * 8; *)
umul v148 v147 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 32B] = _148; *)
mov tmp2_32 v148;
(* _149 = MEM[(uint128_t * )&tmp2 + 48B]; *)
mov v149 tmp2_48;
(* _150 = _149 * 8; *)
umul v150 v149 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 48B] = _150; *)
mov tmp2_48 v150;
(* _151 = MEM[(uint128_t * )&tmp2 + 64B]; *)
mov v151 tmp2_64;
(* _152 = _151 * 8; *)
umul v152 v151 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 64B] = _152; *)
mov tmp2_64 v152;
(* _153 = MEM[(uint128_t * )&tmp2 + 80B]; *)
mov v153 tmp2_80;
(* _154 = _153 * 8; *)
umul v154 v153 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 80B] = _154; *)
mov tmp2_80 v154;
(* _155 = MEM[(uint128_t * )&tmp2 + 96B]; *)
mov v155 tmp2_96;
(* _156 = _155 * 8; *)
umul v156 v155 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 96B] = _156; *)
mov tmp2_96 v156;
(* _157 = MEM[(uint128_t * )&tmp2 + 112B]; *)
mov v157 tmp2_112;
(* _158 = _157 * 8; *)
umul v158 v157 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 112B] = _158; *)
mov tmp2_112 v158;
(* _159 = MEM[(uint128_t * )&tmp2 + 128B]; *)
mov v159 tmp2_128;
(* _160 = _159 * 8; *)
umul v160 v159 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 128B] = _160; *)
mov tmp2_128 v160;
(* _106 = MEM[(uint128_t * )&tmp]; *)
mov v106 tmp_0;
(* _538 = _106 + 0x7fffffffffffffc00000000000000000; *)
uadd v538 v106 0x7fffffffffffffc00000000000000000@uint128;
(* _109 = _538 - _144; *)
usub v109 v538 v144;
(* MEM[(uint128_t * )&tmp] = _109; *)
mov tmp_0 v109;
(* _110 = MEM[(uint128_t * )&tmp + 16B]; *)
mov v110 tmp_16;
(* _537 = _110 + 0x7fffffffffffffe00000000000000000; *)
uadd v537 v110 0x7fffffffffffffe00000000000000000@uint128;
(* _113 = _537 - _146; *)
usub v113 v537 v146;
(* MEM[(uint128_t * )&tmp + 16B] = _113; *)
mov tmp_16 v113;
(* _114 = MEM[(uint128_t * )&tmp + 32B]; *)
mov v114 tmp_32;
(* _536 = _114 + 0x7fffffffffffffe00000000000000000; *)
uadd v536 v114 0x7fffffffffffffe00000000000000000@uint128;
(* _117 = _536 - _148; *)
usub v117 v536 v148;
(* MEM[(uint128_t * )&tmp + 32B] = _117; *)
mov tmp_32 v117;
(* _118 = MEM[(uint128_t * )&tmp + 48B]; *)
mov v118 tmp_48;
(* _535 = _118 + 0x7fffffffffffffe00000000000000000; *)
uadd v535 v118 0x7fffffffffffffe00000000000000000@uint128;
(* _121 = _535 - _150; *)
usub v121 v535 v150;
(* MEM[(uint128_t * )&tmp + 48B] = _121; *)
mov tmp_48 v121;
(* _122 = MEM[(uint128_t * )&tmp + 64B]; *)
mov v122 tmp_64;
(* _534 = _122 + 0x7fffffffffffffe00000000000000000; *)
uadd v534 v122 0x7fffffffffffffe00000000000000000@uint128;
(* _125 = _534 - _152; *)
usub v125 v534 v152;
(* MEM[(uint128_t * )&tmp + 64B] = _125; *)
mov tmp_64 v125;
(* _126 = MEM[(uint128_t * )&tmp + 80B]; *)
mov v126 tmp_80;
(* _533 = _126 + 0x7fffffffffffffe00000000000000000; *)
uadd v533 v126 0x7fffffffffffffe00000000000000000@uint128;
(* _129 = _533 - _154; *)
usub v129 v533 v154;
(* MEM[(uint128_t * )&tmp + 80B] = _129; *)
mov tmp_80 v129;
(* _130 = MEM[(uint128_t * )&tmp + 96B]; *)
mov v130 tmp_96;
(* _532 = _130 + 0x7fffffffffffffe00000000000000000; *)
uadd v532 v130 0x7fffffffffffffe00000000000000000@uint128;
(* _133 = _532 - _156; *)
usub v133 v532 v156;
(* MEM[(uint128_t * )&tmp + 96B] = _133; *)
mov tmp_96 v133;
(* _134 = MEM[(uint128_t * )&tmp + 112B]; *)
mov v134 tmp_112;
(* _531 = _134 + 0x7fffffffffffffe00000000000000000; *)
uadd v531 v134 0x7fffffffffffffe00000000000000000@uint128;
(* _137 = _531 - _158; *)
usub v137 v531 v158;
(* MEM[(uint128_t * )&tmp + 112B] = _137; *)
mov tmp_112 v137;
(* _138 = MEM[(uint128_t * )&tmp + 128B]; *)
mov v138 tmp_128;
(* _530 = _138 + 0x7fffffffffffffe00000000000000000; *)
uadd v530 v138 0x7fffffffffffffe00000000000000000@uint128;
(* _141 = _530 - _160; *)
usub v141 v530 v160;
(* MEM[(uint128_t * )&tmp + 128B] = _141; *)
mov tmp_128 v141;
(* felem_reduce (y_out_33(D), &tmp); *)
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64,
                   tmp_80, tmp_96, tmp_112, tmp_128,
                   y_out33_0, y_out33_8, y_out33_16, y_out33_24, y_out33_32,
                   y_out33_40, y_out33_48, y_out33_56, y_out33_64
                  );

(* Start with unused lhs *)
mov xp0 x_out19_0;
mov xp1 x_out19_8;
mov xp2 x_out19_16;
mov xp3 x_out19_24;
mov xp4 x_out19_32;
mov xp5 x_out19_40;
mov xp6 x_out19_48;
mov xp7 x_out19_56;
mov xp8 x_out19_64;
mov yp0 y_out33_0;
mov yp1 y_out33_8;
mov yp2 y_out33_16;
mov yp3 y_out33_24;
mov yp4 y_out33_32;
mov yp5 y_out33_40;
mov yp6 y_out33_48;
mov yp7 y_out33_56;
mov yp8 y_out33_64;
mov zp0 z_out25_0;
mov zp1 z_out25_8;
mov zp2 z_out25_16;
mov zp3 z_out25_24;
mov zp4 z_out25_32;
mov zp5 z_out25_40;
mov zp6 z_out25_48;
mov zp7 z_out25_56;
mov zp8 z_out25_64;
(* End with unsed lhs *)

{
 /* http://hyperelliptic.org/EFD/g1p/auto-shortw-jacobian-3.html#doubling-dbl-2001-b */
 and [
      /* (*  X' = (3 * (X - Z^2) * (X + Z^2))^2 - 8 * X * Y^2 *) */
      (limbs 58 [xp0, xp1, xp2, xp3, xp4, xp5, xp6, xp7, xp8])
      =
      (
       (
        3 * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) -
             ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) **2
            )
            * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) +
               ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) **2)
       ) ** 2
       -
       8 * ( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) *
       ( limbs 58 [y0, y1, y2, y3, y4, y5, y6, y7, y8]) **2
      )
      (mod  (2**521 - 1)),
      /* (*  Y' = 3 * (X - Z^2) * (X + Z^2) * (4 * X * Y^2 - X') - 8 * Y^4 *) */
      (limbs 58 [yp0, yp1, yp2, yp3, yp4, yp5, yp6, yp7, yp8])
      =
      (

       3 * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) -
            ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) **2)
            * (( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8]) +
               ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8]) **2)
               * (
                  4 * ( limbs 58 [x0, x1, x2, x3, x4, x5, x6, x7, x8])
                  * ( limbs 58 [y0, y1, y2, y3, y4, y5, y6, y7, y8] ** 2)
                  - ( limbs 58 [xp0, xp1, xp2, xp3, xp4, xp5, xp6, xp7, xp8])
                 )
                 -
                 8 * ( limbs 58 [y0, y1, y2, y3, y4, y5, y6, y7, y8]) ** 4
      )
      (mod  (2**521 - 1)),
      (* Z' = (Y + Z)^2 - Y^2 - Z^2 = 2 * Y * Z *)
      ( limbs 58 [zp0, zp1, zp2, zp3, zp4, zp5, zp6, zp7, zp8])
      =
      (
       2
       * ( limbs 58 [y0, y1, y2, y3, y4, y5, y6, y7, y8])
       * ( limbs 58 [z0, z1, z2, z3, z4, z5, z6, z7, z8])
      )
      (mod  (2**521 - 1))
     ] prove with [all ghosts, all cuts]
     &&
     true
}

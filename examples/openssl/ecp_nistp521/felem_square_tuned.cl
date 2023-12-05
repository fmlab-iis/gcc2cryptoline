(* NOTE: safety check fails, range property cannot be specified *)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7, uint64 a8) =
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
  and [
       c0 <u (17 * 2**124)@128,
       c1 <u (17 * 2**124)@128,
       c2 <u (17 * 2**124)@128,
       c3 <u (17 * 2**124)@128,
       c4 <u (17 * 2**124)@128,
       c5 <u (17 * 2**124)@128,
       c6 <u (17 * 2**124)@128,
       c7 <u (17 * 2**124)@128,
       c8 <u (17 * 2**124)@128
      ]
}

proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov beta_0@uint128 _;
mov beta_16@uint128 _;
mov beta_32@uint128 _;
mov beta_48@uint128 _;
mov delta_0@uint128 _;
mov delta_16@uint128 _;
mov delta_32@uint128 _;
mov delta_48@uint128 _;
mov gamma_0@uint128 _;
mov gamma_16@uint128 _;
mov gamma_32@uint128 _;
mov gamma_48@uint128 _;
mov tmp_0@uint128 _;
mov tmp_16@uint128 _;
mov tmp_32@uint128 _;
mov tmp_48@uint128 _;
mov tmp_64@uint128 _;
mov tmp_80@uint128 _;
mov tmp_96@uint128 _;
mov tmp_112@uint128 _;
mov tmp2_0@uint128 _;
mov tmp2_16@uint128 _;
mov tmp2_32@uint128 _;
mov tmp2_48@uint128 _;
mov tmp2_64@uint128 _;
mov tmp2_80@uint128 _;
mov tmp2_96@uint128 _;
mov tmp2_112@uint128 _;
mov x_in2_0@uint128 _;
mov x_in2_16@uint128 _;
mov x_in2_32@uint128 _;
mov x_in2_48@uint128 _;
mov x_out13_0@uint128 _;
mov x_out13_16@uint128 _;
mov x_out13_32@uint128 _;
mov x_out13_48@uint128 _;
mov y_in5_0@uint128 _;
mov y_in5_16@uint128 _;
mov y_in5_32@uint128 _;
mov y_in5_48@uint128 _;
mov z_in3_0@uint128 _;
mov z_in3_16@uint128 _;
mov z_in3_32@uint128 _;
mov z_in3_48@uint128 _;
mov z_out15_0@uint128 _;
mov z_out15_16@uint128 _;
mov z_out15_32@uint128 _;
mov z_out15_48@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _155 = *x_in_2(D); *)
mov v155 x_in2_0;
(* MEM[(limb * )&ftmp] = _155; *)
mov ftmp_0 v155;
(* _156 = MEM[(const limb * )x_in_2(D) + 16B]; *)
mov v156 x_in2_16;
(* MEM[(limb * )&ftmp + 16B] = _156; *)
mov ftmp_16 v156;
(* _157 = MEM[(const limb * )x_in_2(D) + 32B]; *)
mov v157 x_in2_32;
(* MEM[(limb * )&ftmp + 32B] = _157; *)
mov ftmp_32 v157;
(* _158 = MEM[(const limb * )x_in_2(D) + 48B]; *)
mov v158 x_in2_48;
(* MEM[(limb * )&ftmp + 48B] = _158; *)
mov ftmp_48 v158;
(* MEM[(limb * )&ftmp2] = _155; *)
mov ftmp2_0 v155;
(* MEM[(limb * )&ftmp2 + 16B] = _156; *)
mov ftmp2_16 v156;
(* MEM[(limb * )&ftmp2 + 32B] = _157; *)
mov ftmp2_32 v157;
(* MEM[(limb * )&ftmp2 + 48B] = _158; *)
mov ftmp2_48 v158;
(* felem_shrink (&small, z_in_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_square (&tmp, &small); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&delta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_shrink (&small, y_in_5(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_square (&tmp, &small); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&gamma, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_shrink (&small1, &gamma); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_shrink (&small2, x_in_2(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_mul (&tmp, &small1, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&beta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _139 = MEM[(limb * )&ftmp]; *)
mov v139 ftmp_0;
(* _140 = _139 + 0x1fffffffffffffffdfffffffe00; *)
uadd v140 v139 0x1fffffffffffffffdfffffffe00@uint128;
(* _141 = MEM[(limb * )&ftmp + 16B]; *)
mov v141 ftmp_16;
(* _142 = _141 + 0x200000000000000000000000000; *)
uadd v142 v141 0x200000000000000000000000000@uint128;
(* _143 = MEM[(limb * )&ftmp + 32B]; *)
mov v143 ftmp_32;
(* _144 = _143 + 0x1fffffffffffffffe0000000200; *)
uadd v144 v143 0x1fffffffffffffffe0000000200@uint128;
(* _145 = MEM[(limb * )&ftmp + 48B]; *)
mov v145 ftmp_48;
(* _146 = _145 + 0x1fffffffffffffffe0000000200; *)
uadd v146 v145 0x1fffffffffffffffe0000000200@uint128;
(* _147 = MEM[(const limb * )&delta]; *)
mov v147 delta_0;
(* _148 = _140 - _147; *)
usub v148 v140 v147;
(* MEM[(limb * )&ftmp] = _148; *)
mov ftmp_0 v148;
(* _149 = MEM[(const limb * )&delta + 16B]; *)
mov v149 delta_16;
(* _150 = _142 - _149; *)
usub v150 v142 v149;
(* MEM[(limb * )&ftmp + 16B] = _150; *)
mov ftmp_16 v150;
(* _151 = MEM[(const limb * )&delta + 32B]; *)
mov v151 delta_32;
(* _152 = _144 - _151; *)
usub v152 v144 v151;
(* MEM[(limb * )&ftmp + 32B] = _152; *)
mov ftmp_32 v152;
(* _153 = MEM[(const limb * )&delta + 48B]; *)
mov v153 delta_48;
(* _154 = _146 - _153; *)
usub v154 v146 v153;
(* MEM[(limb * )&ftmp + 48B] = _154; *)
mov ftmp_48 v154;
(* _131 = MEM[(limb * )&ftmp2]; *)
mov v131 ftmp2_0;
(* _132 = _131 + _147; *)
uadd v132 v131 v147;
(* _133 = MEM[(limb * )&ftmp2 + 16B]; *)
mov v133 ftmp2_16;
(* _134 = _133 + _149; *)
uadd v134 v133 v149;
(* _135 = MEM[(limb * )&ftmp2 + 32B]; *)
mov v135 ftmp2_32;
(* _136 = _135 + _151; *)
uadd v136 v135 v151;
(* _137 = MEM[(limb * )&ftmp2 + 48B]; *)
mov v137 ftmp2_48;
(* _138 = _137 + _153; *)
uadd v138 v137 v153;
(* _127 = _132 * 3; *)
umul v127 v132 0x3@uint128;
(* MEM[(limb * )&ftmp2] = _127; *)
mov ftmp2_0 v127;
(* _128 = _134 * 3; *)
umul v128 v134 0x3@uint128;
(* MEM[(limb * )&ftmp2 + 16B] = _128; *)
mov ftmp2_16 v128;
(* _129 = _136 * 3; *)
umul v129 v136 0x3@uint128;
(* MEM[(limb * )&ftmp2 + 32B] = _129; *)
mov ftmp2_32 v129;
(* _130 = _138 * 3; *)
umul v130 v138 0x3@uint128;
(* MEM[(limb * )&ftmp2 + 48B] = _130; *)
mov ftmp2_48 v130;
(* felem_shrink (&small1, &ftmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_shrink (&small2, &ftmp2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_mul (&tmp, &small1, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&alpha, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_shrink (&small2, &alpha); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_square (&tmp, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_reduce (x_out_13(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _123 = MEM[(const limb * )&beta]; *)
mov v123 beta_0;
(* _124 = MEM[(const limb * )&beta + 16B]; *)
mov v124 beta_16;
(* _125 = MEM[(const limb * )&beta + 32B]; *)
mov v125 beta_32;
(* _126 = MEM[(const limb * )&beta + 48B]; *)
mov v126 beta_48;
(* _119 = _123 * 8; *)
umul v119 v123 0x8@uint128;
(* _120 = _124 * 8; *)
umul v120 v124 0x8@uint128;
(* _121 = _125 * 8; *)
umul v121 v125 0x8@uint128;
(* _122 = _126 * 8; *)
umul v122 v126 0x8@uint128;
(* _107 = *x_out_13(D); *)
mov v107 x_out13_0;
(* _109 = MEM[(limb * )x_out_13(D) + 16B]; *)
mov v109 x_out13_16;
(* _111 = MEM[(limb * )x_out_13(D) + 32B]; *)
mov v111 x_out13_32;
(* _113 = MEM[(limb * )x_out_13(D) + 48B]; *)
mov v113 x_out13_48;
(* _292 = 0x1fffffffffffffffdfffffffe00 - _119; *)
usub v292 0x1fffffffffffffffdfffffffe00@uint128 v119;
(* _115 = _107 + _292; *)
uadd v115 v107 v292;
(* *x_out_13(D) = _115; *)
mov x_out13_0 v115;
(* _291 = 0x200000000000000000000000000 - _120; *)
usub v291 0x200000000000000000000000000@uint128 v120;
(* _116 = _109 + _291; *)
uadd v116 v109 v291;
(* MEM[(limb * )x_out_13(D) + 16B] = _116; *)
mov x_out13_16 v116;
(* _290 = 0x1fffffffffffffffe0000000200 - _121; *)
usub v290 0x1fffffffffffffffe0000000200@uint128 v121;
(* _117 = _111 + _290; *)
uadd v117 v111 v290;
(* MEM[(limb * )x_out_13(D) + 32B] = _117; *)
mov x_out13_32 v117;
(* _289 = 0x1fffffffffffffffe0000000200 - _122; *)
usub v289 0x1fffffffffffffffe0000000200@uint128 v122;
(* _118 = _113 + _289; *)
uadd v118 v113 v289;
(* MEM[(limb * )x_out_13(D) + 48B] = _118; *)
mov x_out13_48 v118;
(* _95 = MEM[(limb * )&delta]; *)
mov v95 delta_0;
(* _96 = MEM[(const limb * )&gamma]; *)
mov v96 gamma_0;
(* _97 = _95 + _96; *)
uadd v97 v95 v96;
(* MEM[(limb * )&delta] = _97; *)
mov delta_0 v97;
(* _98 = MEM[(limb * )&delta + 16B]; *)
mov v98 delta_16;
(* _99 = MEM[(const limb * )&gamma + 16B]; *)
mov v99 gamma_16;
(* _100 = _98 + _99; *)
uadd v100 v98 v99;
(* MEM[(limb * )&delta + 16B] = _100; *)
mov delta_16 v100;
(* _101 = MEM[(limb * )&delta + 32B]; *)
mov v101 delta_32;
(* _102 = MEM[(const limb * )&gamma + 32B]; *)
mov v102 gamma_32;
(* _103 = _101 + _102; *)
uadd v103 v101 v102;
(* MEM[(limb * )&delta + 32B] = _103; *)
mov delta_32 v103;
(* _104 = MEM[(limb * )&delta + 48B]; *)
mov v104 delta_48;
(* _105 = MEM[(const limb * )&gamma + 48B]; *)
mov v105 gamma_48;
(* _106 = _104 + _105; *)
uadd v106 v104 v105;
(* MEM[(limb * )&delta + 48B] = _106; *)
mov delta_48 v106;
(* _91 = *y_in_5(D); *)
mov v91 y_in5_0;
(* _92 = MEM[(const limb * )y_in_5(D) + 16B]; *)
mov v92 y_in5_16;
(* _93 = MEM[(const limb * )y_in_5(D) + 32B]; *)
mov v93 y_in5_32;
(* _94 = MEM[(const limb * )y_in_5(D) + 48B]; *)
mov v94 y_in5_48;
(* _83 = *z_in_3(D); *)
mov v83 z_in3_0;
(* _84 = _83 + _91; *)
uadd v84 v83 v91;
(* MEM[(limb * )&ftmp] = _84; *)
mov ftmp_0 v84;
(* _85 = MEM[(const limb * )z_in_3(D) + 16B]; *)
mov v85 z_in3_16;
(* _86 = _85 + _92; *)
uadd v86 v85 v92;
(* MEM[(limb * )&ftmp + 16B] = _86; *)
mov ftmp_16 v86;
(* _87 = MEM[(const limb * )z_in_3(D) + 32B]; *)
mov v87 z_in3_32;
(* _88 = _87 + _93; *)
uadd v88 v87 v93;
(* MEM[(limb * )&ftmp + 32B] = _88; *)
mov ftmp_32 v88;
(* _89 = MEM[(const limb * )z_in_3(D) + 48B]; *)
mov v89 z_in3_48;
(* _90 = _89 + _94; *)
uadd v90 v89 v94;
(* MEM[(limb * )&ftmp + 48B] = _90; *)
mov ftmp_48 v90;
(* felem_shrink (&small, &ftmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_square (&tmp, &small); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (z_out_15(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _67 = *z_out_15(D); *)
mov v67 z_out15_0;
(* _69 = MEM[(limb * )z_out_15(D) + 16B]; *)
mov v69 z_out15_16;
(* _71 = MEM[(limb * )z_out_15(D) + 32B]; *)
mov v71 z_out15_32;
(* _73 = MEM[(limb * )z_out_15(D) + 48B]; *)
mov v73 z_out15_48;
(* _75 = MEM[(const limb * )&delta]; *)
mov v75 delta_0;
(* _288 = 0x1fffffffffffffffdfffffffe00 - _75; *)
usub v288 0x1fffffffffffffffdfffffffe00@uint128 v75;
(* _76 = _67 + _288; *)
uadd v76 v67 v288;
(* *z_out_15(D) = _76; *)
mov z_out15_0 v76;
(* _77 = MEM[(const limb * )&delta + 16B]; *)
mov v77 delta_16;
(* _287 = 0x200000000000000000000000000 - _77; *)
usub v287 0x200000000000000000000000000@uint128 v77;
(* _78 = _69 + _287; *)
uadd v78 v69 v287;
(* MEM[(limb * )z_out_15(D) + 16B] = _78; *)
mov z_out15_16 v78;
(* _79 = MEM[(const limb * )&delta + 32B]; *)
mov v79 delta_32;
(* _286 = 0x1fffffffffffffffe0000000200 - _79; *)
usub v286 0x1fffffffffffffffe0000000200@uint128 v79;
(* _80 = _71 + _286; *)
uadd v80 v71 v286;
(* MEM[(limb * )z_out_15(D) + 32B] = _80; *)
mov z_out15_32 v80;
(* _81 = MEM[(const limb * )&delta + 48B]; *)
mov v81 delta_48;
(* _285 = 0x1fffffffffffffffe0000000200 - _81; *)
usub v285 0x1fffffffffffffffe0000000200@uint128 v81;
(* _82 = _73 + _285; *)
uadd v82 v73 v285;
(* MEM[(limb * )z_out_15(D) + 48B] = _82; *)
mov z_out15_48 v82;
(* _59 = MEM[(limb * )&beta]; *)
mov v59 beta_0;
(* _60 = _59 * 4; *)
umul v60 v59 0x4@uint128;
(* _61 = MEM[(limb * )&beta + 16B]; *)
mov v61 beta_16;
(* _62 = _61 * 4; *)
umul v62 v61 0x4@uint128;
(* _63 = MEM[(limb * )&beta + 32B]; *)
mov v63 beta_32;
(* _64 = _63 * 4; *)
umul v64 v63 0x4@uint128;
(* _65 = MEM[(limb * )&beta + 48B]; *)
mov v65 beta_48;
(* _66 = _65 * 4; *)
umul v66 v65 0x4@uint128;
(* _47 = _60 + 0x7fffffffffffffff7fffffff800; *)
uadd v47 v60 0x7fffffffffffffff7fffffff800@uint128;
(* _48 = _62 + 0x800000000000000000000000000; *)
uadd v48 v62 0x800000000000000000000000000@uint128;
(* _49 = _64 + 0x7fffffffffffffff80000000800; *)
uadd v49 v64 0x7fffffffffffffff80000000800@uint128;
(* _50 = _66 + 0x7fffffffffffffff80000000800; *)
uadd v50 v66 0x7fffffffffffffff80000000800@uint128;
(* _51 = MEM[(const limb * )x_out_13(D)]; *)
mov v51 x_out13_0;
(* _52 = _47 - _51; *)
usub v52 v47 v51;
(* MEM[(limb * )&beta] = _52; *)
mov beta_0 v52;
(* _53 = MEM[(const limb * )x_out_13(D) + 16B]; *)
mov v53 x_out13_16;
(* _54 = _48 - _53; *)
usub v54 v48 v53;
(* MEM[(limb * )&beta + 16B] = _54; *)
mov beta_16 v54;
(* _55 = MEM[(const limb * )x_out_13(D) + 32B]; *)
mov v55 x_out13_32;
(* _56 = _49 - _55; *)
usub v56 v49 v55;
(* MEM[(limb * )&beta + 32B] = _56; *)
mov beta_32 v56;
(* _57 = MEM[(const limb * )x_out_13(D) + 48B]; *)
mov v57 x_out13_48;
(* _58 = _50 - _57; *)
usub v58 v50 v57;
(* MEM[(limb * )&beta + 48B] = _58; *)
mov beta_48 v58;
(* felem_shrink (&small2, &beta); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* smallfelem_mul (&tmp, &small2, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* smallfelem_square (&tmp2, &small1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _31 = MEM[(limb * )&tmp2]; *)
mov v31 tmp2_0;
(* _32 = _31 * 8; *)
umul v32 v31 0x8@uint128;
(* MEM[(limb * )&tmp2] = _32; *)
mov tmp2_0 v32;
(* _33 = MEM[(limb * )&tmp2 + 16B]; *)
mov v33 tmp2_16;
(* _34 = _33 * 8; *)
umul v34 v33 0x8@uint128;
(* MEM[(limb * )&tmp2 + 16B] = _34; *)
mov tmp2_16 v34;
(* _35 = MEM[(limb * )&tmp2 + 32B]; *)
mov v35 tmp2_32;
(* _36 = _35 * 8; *)
umul v36 v35 0x8@uint128;
(* MEM[(limb * )&tmp2 + 32B] = _36; *)
mov tmp2_32 v36;
(* _37 = MEM[(limb * )&tmp2 + 48B]; *)
mov v37 tmp2_48;
(* _38 = _37 * 8; *)
umul v38 v37 0x8@uint128;
(* MEM[(limb * )&tmp2 + 48B] = _38; *)
mov tmp2_48 v38;
(* _39 = MEM[(limb * )&tmp2 + 64B]; *)
mov v39 tmp2_64;
(* _40 = _39 * 8; *)
umul v40 v39 0x8@uint128;
(* MEM[(limb * )&tmp2 + 64B] = _40; *)
mov tmp2_64 v40;
(* _41 = MEM[(limb * )&tmp2 + 80B]; *)
mov v41 tmp2_80;
(* _42 = _41 * 8; *)
umul v42 v41 0x8@uint128;
(* MEM[(limb * )&tmp2 + 80B] = _42; *)
mov tmp2_80 v42;
(* _43 = MEM[(limb * )&tmp2 + 96B]; *)
mov v43 tmp2_96;
(* _44 = _43 * 8; *)
umul v44 v43 0x8@uint128;
(* MEM[(limb * )&tmp2 + 96B] = _44; *)
mov tmp2_96 v44;
(* _45 = MEM[(limb * )&tmp2 + 112B]; *)
mov v45 tmp2_112;
(* _46 = _45 * 8; *)
umul v46 v45 0x8@uint128;
(* MEM[(limb * )&tmp2 + 112B] = _46; *)
mov tmp2_112 v46;
(* _226 = MEM[(limb * )&tmp]; *)
mov v226 tmp_0;
(* _227 = _226 + 0x3fffffffffffffff40; *)
uadd v227 v226 0x3fffffffffffffff40@uint128;
(* _228 = MEM[(limb * )&tmp + 16B]; *)
mov v228 tmp_16;
(* _229 = _228 + 0x400000010000000000; *)
uadd v229 v228 0x400000010000000000@uint128;
(* _230 = MEM[(limb * )&tmp + 32B]; *)
mov v230 tmp_32;
(* _231 = _230 + 0x400000000000000000; *)
uadd v231 v230 0x400000000000000000@uint128;
(* _232 = MEM[(limb * )&tmp + 48B]; *)
mov v232 tmp_48;
(* _233 = _232 + 0x3ffffffec000000040; *)
uadd v233 v232 0x3ffffffec000000040@uint128;
(* _234 = MEM[(limb * )&tmp + 64B]; *)
mov v234 tmp_64;
(* _235 = _234 + 0x3fffffffffffffffc0; *)
uadd v235 v234 0x3fffffffffffffffc0@uint128;
(* _236 = MEM[(limb * )&tmp + 80B]; *)
mov v236 tmp_80;
(* _237 = _236 + 0x3fffffffffffffffc0; *)
uadd v237 v236 0x3fffffffffffffffc0@uint128;
(* _238 = MEM[(limb * )&tmp + 96B]; *)
mov v238 tmp_96;
(* _239 = _238 + 0x3fffffffffffffffc0; *)
uadd v239 v238 0x3fffffffffffffffc0@uint128;
(* _240 = MEM[(limb * )&tmp + 112B]; *)
mov v240 tmp_112;
(* _241 = _240 + 0x3fffffffffffffffc0; *)
uadd v241 v240 0x3fffffffffffffffc0@uint128;
(* _243 = _227 - _32; *)
usub v243 v227 v32;
(* MEM[(limb * )&tmp] = _243; *)
mov tmp_0 v243;
(* _245 = _229 - _34; *)
usub v245 v229 v34;
(* MEM[(limb * )&tmp + 16B] = _245; *)
mov tmp_16 v245;
(* _247 = _231 - _36; *)
usub v247 v231 v36;
(* MEM[(limb * )&tmp + 32B] = _247; *)
mov tmp_32 v247;
(* _249 = _233 - _38; *)
usub v249 v233 v38;
(* MEM[(limb * )&tmp + 48B] = _249; *)
mov tmp_48 v249;
(* _251 = _235 - _40; *)
usub v251 v235 v40;
(* MEM[(limb * )&tmp + 64B] = _251; *)
mov tmp_64 v251;
(* _253 = _237 - _42; *)
usub v253 v237 v42;
(* MEM[(limb * )&tmp + 80B] = _253; *)
mov tmp_80 v253;
(* _255 = _239 - _44; *)
usub v255 v239 v44;
(* MEM[(limb * )&tmp + 96B] = _255; *)
mov tmp_96 v255;
(* _257 = _241 - _46; *)
usub v257 v241 v46;
(* MEM[(limb * )&tmp + 112B] = _257; *)
mov tmp_112 v257;
(* _219 = _243 + 0x1fffffffffffffffdfffffffe00; *)
uadd v219 v243 0x1fffffffffffffffdfffffffe00@uint128;
(* *y_out_19(D) = _219; *)
mov y_out19_0 v219;
(* _221 = _245 + 0x200000000000000000000000000; *)
uadd v221 v245 0x200000000000000000000000000@uint128;
(* MEM[(limb * )y_out_19(D) + 16B] = _221; *)
mov y_out19_16 v221;
(* _223 = _247 + 0x1fffffffffffffffe0000000200; *)
uadd v223 v247 0x1fffffffffffffffe0000000200@uint128;
(* MEM[(limb * )y_out_19(D) + 32B] = _223; *)
mov y_out19_32 v223;
(* _225 = _249 + 0x1fffffffffffffffe0000000200; *)
uadd v225 v249 0x1fffffffffffffffe0000000200@uint128;
(* MEM[(limb * )y_out_19(D) + 48B] = _225; *)
mov y_out19_48 v225;
(* felem_reduce_ (y_out_19(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* delta ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* gamma ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* beta ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* alpha ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* ftmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* ftmp2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* small1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ beta_0@uint128;
mov _ beta_16@uint128;
mov _ beta_32@uint128;
mov _ beta_48@uint128;
mov _ ftmp_0@uint128;
mov _ ftmp_16@uint128;
mov _ ftmp_32@uint128;
mov _ ftmp_48@uint128;
mov _ ftmp2_0@uint128;
mov _ ftmp2_16@uint128;
mov _ ftmp2_32@uint128;
mov _ ftmp2_48@uint128;
mov _ tmp_0@uint128;
mov _ tmp_16@uint128;
mov _ tmp_32@uint128;
mov _ tmp_48@uint128;
mov _ tmp_64@uint128;
mov _ tmp_80@uint128;
mov _ tmp_96@uint128;
mov _ tmp_112@uint128;
mov _ tmp2_0@uint128;
mov _ tmp2_16@uint128;
mov _ tmp2_32@uint128;
mov _ tmp2_48@uint128;
mov _ tmp2_64@uint128;
mov _ tmp2_80@uint128;
mov _ tmp2_96@uint128;
mov _ tmp2_112@uint128;
mov _ y_out19_0@uint128;
mov _ y_out19_16@uint128;
mov _ y_out19_32@uint128;
mov _ y_out19_48@uint128;
mov _ z_out15_0@uint128;
mov _ z_out15_16@uint128;
mov _ z_out15_32@uint128;
mov _ z_out15_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

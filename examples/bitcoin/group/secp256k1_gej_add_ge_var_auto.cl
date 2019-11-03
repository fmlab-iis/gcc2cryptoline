proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a12_0@uint64 _;
mov a12_40@uint64 _;
mov a12_120@int32 _;
mov b14_0@uint64 _;
mov b14_40@uint64 _;
mov b14_80@int32 _;
mov h3_0@uint64 _;
mov h3_8@uint64 _;
mov h3_16@uint64 _;
mov h3_24@uint64 _;
mov h3_32@uint64 _;
mov i2_0@uint64 _;
mov i2_8@uint64 _;
mov i2_16@uint64 _;
mov i2_24@uint64 _;
mov i2_32@uint64 _;
mov r13_8@uint64 _;
mov r13_16@uint64 _;
mov r13_24@uint64 _;
mov r13_32@uint64 _;
mov s1_8@uint64 _;
mov s1_16@uint64 _;
mov s1_24@uint64 _;
mov s1_32@uint64 _;
mov s2_0@uint64 _;
mov s2_8@uint64 _;
mov s2_16@uint64 _;
mov s2_24@uint64 _;
mov s2_32@uint64 _;
mov t_0@uint64 _;
mov t_8@uint64 _;
mov t_16@uint64 _;
mov t_24@uint64 _;
mov t_32@uint64 _;
mov u1_8@uint64 _;
mov u1_16@uint64 _;
mov u1_24@uint64 _;
mov u1_32@uint64 _;
mov u2_0@uint64 _;
mov u2_8@uint64 _;
mov u2_16@uint64 _;
mov u2_24@uint64 _;
mov u2_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_12(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v1 a12_120;
(* pretmp_234 = b_14(D)->infinity; *)
(* rhs field infinity's offset is 80 *)
mov v234 b14_80;
(* if (_1 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 3 *)

(* r_13(D)->infinity = pretmp_234; *)
mov r13_120 v234;
(* r_13(D)->x = b_14(D)->x; *)
(* lhs field x's offset is 0 *)
(* rhs field x's offset is 0 *)
mov r13_0 b14_0;
(* r_13(D)->y = b_14(D)->y; *)
(* lhs field y's offset is 40 *)
(* rhs field y's offset is 40 *)
mov r13_40 b14_40;
(* MEM[(struct secp256k1_fe * )r_13(D) + 80B].n[0] = 1; *)
mov r13_80 0x1@uint64;
(* MEM[(struct secp256k1_fe * )r_13(D) + 80B].n[4] = 0; *)
mov r13_112 0x0@uint64;
(* MEM[(struct secp256k1_fe * )r_13(D) + 80B].n[3] = 0; *)
mov r13_104 0x0@uint64;
(* MEM[(struct secp256k1_fe * )r_13(D) + 80B].n[2] = 0; *)
mov r13_96 0x0@uint64;
(* MEM[(struct secp256k1_fe * )r_13(D) + 80B].n[1] = 0; *)
mov r13_88 0x0@uint64;
(* goto <bb 20> *)
(* TODO: unconditional jump *)

(* BB's index is 4 *)

(* if (pretmp_234 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 5>, False label: <bb 8> *)

(* BB's index is 5 *)

(* if (rzr_15(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 6>, False label: <bb 7> *)

(* BB's index is 6 *)

(* rzr_15(D)->n[4] = 0; *)
mov rzr15_32 0x0@uint64;
(* MEM[(long unsigned int * )rzr_15(D)] = { 1, 0 }; *)
mov rzr15_0 0x1@uint64;
mov rzr15_8 0x1@uint64;
(* MEM[(long unsigned int * )rzr_15(D) + 16B] = { 0, 0 }; *)
mov rzr15_16 0x0@uint64;
mov rzr15_24 0x0@uint64;
(* goto <bb 7> *)
(* TODO: unconditional jump *)

(* BB's index is 7 *)

(* .MEM_5 = PHI <.MEM_240(6), .MEM_11(D)(5)> *)
(* *r_13(D) = *a_12(D); *)
(* TODO: skipped, no heuristics ,need self translating *)
(* goto <bb 20> *)
(* TODO: unconditional jump *)

(* BB's index is 8 *)

(* r_13(D)->infinity = 0; *)
mov r13_120 0x0@int32;
(* _91 = &MEM[(const struct secp256k1_fe * )a_12(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_sqr_inner (&z12.n, _91); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* u1 = a_12(D)->x; *)
(* rhs field x's offset is 0 *)
mov u1_0 a12_0;
(* secp256k1_fe_normalize_weak (&u1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _90 = &MEM[(const struct secp256k1_fe * )b_14(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (&u2.n, _90, &z12.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* s1 = a_12(D)->y; *)
(* rhs field y's offset is 40 *)
mov s1_0 a12_40;
(* secp256k1_fe_normalize_weak (&s1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _89 = &MEM[(const struct secp256k1_fe * )b_14(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (&s2.n, _89, &z12.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&s2.n, &s2.n, _91); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__79.385_252 = MEM[(long unsigned int * )&u1]; *)
mov vect__79385252_0 u1_0;
mov vect__79385252_1 u1_8;
(* vect__79.386_254 = MEM[(long unsigned int * )&u1 + 16B]; *)
mov vect__79386254_0 u1_16;
mov vect__79386254_1 u1_24;
(* _87 = u1.n[4]; *)
mov v87 u1_32;
(* vect__69.380_241 = MEM[(long unsigned int * )&u2]; *)
mov vect__69380241_0 u2_0;
mov vect__69380241_1 u2_8;
(* vect__69.381_244 = MEM[(long unsigned int * )&u2 + 16B]; *)
mov vect__69381244_0 u2_16;
mov vect__69381244_1 u2_24;
(* vect__283.382_250 = vect__69.380_241 + { 18014381329608892, 18014398509481980 }; *)
uadd vect__283382250_0 vect__69380241_0 0x3ffffbfffff0bc@uint64;
uadd vect__283382250_1 vect__69380241_1 0x3ffffffffffffc@uint64;
(* vect__283.382_251 = vect__69.381_244 + { 18014398509481980, 18014398509481980 }; *)
uadd vect__283382251_0 vect__69381244_0 0x3ffffffffffffc@uint64;
uadd vect__283382251_1 vect__69381244_1 0x3ffffffffffffc@uint64;
(* vect__70.387_256 = vect__283.382_250 - vect__79.385_252; *)
usub vect__70387256_0 vect__283382250_0 vect__79385252_0;
usub vect__70387256_1 vect__283382250_1 vect__79385252_1;
(* vect__70.387_257 = vect__283.382_251 - vect__79.386_254; *)
usub vect__70387257_0 vect__283382251_0 vect__79386254_0;
usub vect__70387257_1 vect__283382251_1 vect__79386254_1;
(* MEM[(long unsigned int * )&h] = vect__70.387_256; *)
mov h_0 vect__70387256_0;
mov h_8 vect__70387256_1;
(* MEM[(long unsigned int * )&h + 16B] = vect__70.387_257; *)
mov h_16 vect__70387257_0;
mov h_24 vect__70387257_1;
(* _77 = u2.n[4]; *)
mov v77 u2_32;
(* _279 = _77 + 1125899906842620; *)
uadd v279 v77 0x3fffffffffffc@uint64;
(* _78 = _279 - _87; *)
usub v78 v279 v87;
(* h.n[4] = _78; *)
mov h_32 v78;
(* vect__59.397_236 = MEM[(long unsigned int * )&s1]; *)
mov vect__59397236_0 s1_0;
mov vect__59397236_1 s1_8;
(* vect__59.398_239 = MEM[(long unsigned int * )&s1 + 16B]; *)
mov vect__59398239_0 s1_16;
mov vect__59398239_1 s1_24;
(* _67 = s1.n[4]; *)
mov v67 s1_32;
(* vect__49.392_84 = MEM[(long unsigned int * )&s2]; *)
mov vect__4939284_0 s2_0;
mov vect__4939284_1 s2_8;
(* vect__49.393_88 = MEM[(long unsigned int * )&s2 + 16B]; *)
mov vect__4939388_0 s2_16;
mov vect__4939388_1 s2_24;
(* vect__278.394_66 = vect__49.392_84 + { 18014381329608892, 18014398509481980 }; *)
uadd vect__27839466_0 vect__4939284_0 0x3ffffbfffff0bc@uint64;
uadd vect__27839466_1 vect__4939284_1 0x3ffffffffffffc@uint64;
(* vect__278.394_68 = vect__49.393_88 + { 18014398509481980, 18014398509481980 }; *)
uadd vect__27839468_0 vect__4939388_0 0x3ffffffffffffc@uint64;
uadd vect__27839468_1 vect__4939388_1 0x3ffffffffffffc@uint64;
(* vect__50.399_242 = vect__278.394_66 - vect__59.397_236; *)
usub vect__50399242_0 vect__27839466_0 vect__59397236_0;
usub vect__50399242_1 vect__27839466_1 vect__59397236_1;
(* vect__50.399_148 = vect__278.394_68 - vect__59.398_239; *)
usub vect__50399148_0 vect__27839468_0 vect__59398239_0;
usub vect__50399148_1 vect__27839468_1 vect__59398239_1;
(* MEM[(long unsigned int * )&i] = vect__50.399_242; *)
mov i_0 vect__50399242_0;
mov i_8 vect__50399242_1;
(* MEM[(long unsigned int * )&i + 16B] = vect__50.399_148; *)
mov i_16 vect__50399148_0;
mov i_24 vect__50399148_1;
(* _57 = s2.n[4]; *)
mov v57 s2_32;
(* _274 = _57 + 1125899906842620; *)
uadd v274 v57 0x3fffffffffffc@uint64;
(* _58 = _274 - _67; *)
usub v58 v274 v67;
(* i.n[4] = _58; *)
mov i_32 v58;
(* _3 = secp256k1_fe_normalizes_to_zero_var (&h); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (_3 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 9>, False label: <bb 17> *)

(* BB's index is 9 *)

(* _4 = secp256k1_fe_normalizes_to_zero_var (&i); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (_4 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 10>, False label: <bb 14> *)

(* BB's index is 10 *)

(* _218 = a_12(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v218 a12_120;
(* r_13(D)->infinity = _218; *)
mov r13_120 v218;
(* if (_218 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 11>, False label: <bb 13> *)

(* BB's index is 11 *)

(* if (rzr_15(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 12>, False label: <bb 20> *)

(* BB's index is 12 *)

(* rzr_15(D)->n[4] = 0; *)
mov rzr15_32 0x0@uint64;
(* MEM[(long unsigned int * )rzr_15(D)] = { 1, 0 }; *)
mov rzr15_0 0x1@uint64;
mov rzr15_8 0x1@uint64;
(* MEM[(long unsigned int * )rzr_15(D) + 16B] = { 0, 0 }; *)
mov rzr15_16 0x0@uint64;
mov rzr15_24 0x0@uint64;
(* goto <bb 20> *)
(* TODO: unconditional jump *)

(* BB's index is 13 *)

(* secp256k1_gej_double_var.part.14 (r_13(D), a_12(D), rzr_15(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* goto <bb 20> *)
(* TODO: unconditional jump *)

(* BB's index is 14 *)

(* if (rzr_15(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 15>, False label: <bb 16> *)

(* BB's index is 15 *)

(* rzr_15(D)->n[4] = 0; *)
mov rzr15_32 0x0@uint64;
(* MEM[(long unsigned int * )rzr_15(D)] = { 0, 0 }; *)
mov rzr15_0 0x0@uint64;
mov rzr15_8 0x0@uint64;
(* MEM[(long unsigned int * )rzr_15(D) + 16B] = { 0, 0 }; *)
mov rzr15_16 0x0@uint64;
mov rzr15_24 0x0@uint64;
(* goto <bb 16> *)
(* TODO: unconditional jump *)

(* BB's index is 16 *)

(* .MEM_6 = PHI <.MEM_284(15), .MEM_182(14)> *)
(* r_13(D)->infinity = 1; *)
mov r13_120 0x1@int32;
(* goto <bb 20> *)
(* TODO: unconditional jump *)

(* BB's index is 17 *)

(* secp256k1_fe_sqr_inner (&i2.n, &i.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_sqr_inner (&h2.n, &h.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&h3.n, &h.n, &h2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (rzr_15(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 18>, False label: <bb 19> *)

(* BB's index is 18 *)

(* *rzr_15(D) = h; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* goto <bb 19> *)
(* TODO: unconditional jump *)

(* BB's index is 19 *)

(* .MEM_8 = PHI <.MEM_25(18), .MEM_185(17)> *)
(* _163 = &MEM[(struct secp256k1_fe * )r_13(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_163, _91, &h.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&t.n, &u1.n, &h2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* r_13(D)->x = t; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _153 = MEM[(struct secp256k1_fe * )r_13(D)].n[0]; *)
mov v153 r13_0;
(* _154 = _153 * 2; *)
umul v154 v153 0x2@uint64;
(* _155 = MEM[(struct secp256k1_fe * )r_13(D)].n[1]; *)
mov v155 r13_8;
(* _156 = _155 * 2; *)
umul v156 v155 0x2@uint64;
(* _157 = MEM[(struct secp256k1_fe * )r_13(D)].n[2]; *)
mov v157 r13_16;
(* _158 = _157 * 2; *)
umul v158 v157 0x2@uint64;
(* _159 = MEM[(struct secp256k1_fe * )r_13(D)].n[3]; *)
mov v159 r13_24;
(* _160 = _159 * 2; *)
umul v160 v159 0x2@uint64;
(* _161 = MEM[(struct secp256k1_fe * )r_13(D)].n[4]; *)
mov v161 r13_32;
(* _162 = _161 * 2; *)
umul v162 v161 0x2@uint64;
(* _143 = h3.n[0]; *)
mov v143 h3_0;
(* _145 = h3.n[1]; *)
mov v145 h3_8;
(* _147 = h3.n[2]; *)
mov v147 h3_16;
(* _149 = h3.n[3]; *)
mov v149 h3_24;
(* _151 = h3.n[4]; *)
mov v151 h3_32;
(* _128 = i2.n[0]; *)
mov v128 i2_0;
(* _272 = _128 + 36028762659217784; *)
uadd v272 v128 0x7ffff7ffffe178@uint64;
(* _273 = _272 - _143; *)
usub v273 v272 v143;
(* _129 = _273 - _154; *)
usub v129 v273 v154;
(* MEM[(struct secp256k1_fe * )r_13(D)].n[0] = _129; *)
mov r13_0 v129;
(* _130 = i2.n[1]; *)
mov v130 i2_8;
(* _270 = _130 + 36028797018963960; *)
uadd v270 v130 0x7ffffffffffff8@uint64;
(* _271 = _270 - _145; *)
usub v271 v270 v145;
(* _131 = _271 - _156; *)
usub v131 v271 v156;
(* MEM[(struct secp256k1_fe * )r_13(D)].n[1] = _131; *)
mov r13_8 v131;
(* _132 = i2.n[2]; *)
mov v132 i2_16;
(* _268 = _132 + 36028797018963960; *)
uadd v268 v132 0x7ffffffffffff8@uint64;
(* _269 = _268 - _147; *)
usub v269 v268 v147;
(* _133 = _269 - _158; *)
usub v133 v269 v158;
(* MEM[(struct secp256k1_fe * )r_13(D)].n[2] = _133; *)
mov r13_16 v133;
(* _134 = i2.n[3]; *)
mov v134 i2_24;
(* _266 = _134 + 36028797018963960; *)
uadd v266 v134 0x7ffffffffffff8@uint64;
(* _267 = _266 - _149; *)
usub v267 v266 v149;
(* _135 = _267 - _160; *)
usub v135 v267 v160;
(* MEM[(struct secp256k1_fe * )r_13(D)].n[3] = _135; *)
mov r13_24 v135;
(* _136 = i2.n[4]; *)
mov v136 i2_32;
(* _264 = _136 + 2251799813685240; *)
uadd v264 v136 0x7fffffffffff8@uint64;
(* _265 = _264 - _151; *)
usub v265 v264 v151;
(* _137 = _265 - _162; *)
usub v137 v265 v162;
(* MEM[(struct secp256k1_fe * )r_13(D)].n[4] = _137; *)
mov r13_32 v137;
(* _113 = t.n[0]; *)
mov v113 t_0;
(* _333 = _113 + _143; *)
uadd v333 v113 v143;
(* _334 = _333 + 54043143988826676; *)
uadd v334 v333 0xbffff3ffffd234@uint64;
(* _335 = _334 - _272; *)
usub v335 v334 v272;
(* _114 = _154 + _335; *)
uadd v114 v154 v335;
(* MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[0] = _114; *)
mov r13_40 v114;
(* _115 = t.n[1]; *)
mov v115 t_8;
(* _329 = _115 + _145; *)
uadd v329 v115 v145;
(* _330 = _329 + 54043195528445940; *)
uadd v330 v329 0xbffffffffffff4@uint64;
(* _331 = _330 - _270; *)
usub v331 v330 v270;
(* _116 = _156 + _331; *)
uadd v116 v156 v331;
(* MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[1] = _116; *)
mov r13_48 v116;
(* _117 = t.n[2]; *)
mov v117 t_16;
(* _325 = _117 + _147; *)
uadd v325 v117 v147;
(* _326 = _325 + 54043195528445940; *)
uadd v326 v325 0xbffffffffffff4@uint64;
(* _327 = _326 - _268; *)
usub v327 v326 v268;
(* _118 = _158 + _327; *)
uadd v118 v158 v327;
(* MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[2] = _118; *)
mov r13_56 v118;
(* _119 = t.n[3]; *)
mov v119 t_24;
(* _321 = _119 + _149; *)
uadd v321 v119 v149;
(* _322 = _321 + 54043195528445940; *)
uadd v322 v321 0xbffffffffffff4@uint64;
(* _323 = _322 - _266; *)
usub v323 v322 v266;
(* _120 = _160 + _323; *)
uadd v120 v160 v323;
(* MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[3] = _120; *)
mov r13_64 v120;
(* _121 = t.n[4]; *)
mov v121 t_32;
(* _317 = _121 + _151; *)
uadd v317 v121 v151;
(* _318 = _317 + 3377699720527860; *)
uadd v318 v317 0xbfffffffffff4@uint64;
(* _319 = _318 - _264; *)
usub v319 v318 v264;
(* _122 = _162 + _319; *)
uadd v122 v162 v319;
(* MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[4] = _122; *)
mov r13_72 v122;
(* _112 = &MEM[(const struct secp256k1_fe * )r_13(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_112, _112, &i.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&h3.n, &h3.n, &s1.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__102.412_290 = MEM[(long unsigned int * )&h3]; *)
mov vect__102412290_0 h3_0;
mov vect__102412290_1 h3_8;
(* vect__102.413_292 = MEM[(long unsigned int * )&h3 + 16B]; *)
mov vect__102413292_0 h3_16;
mov vect__102413292_1 h3_24;
(* vect__103.414_296 = { 18014381329608892, 18014398509481980 } - vect__102.412_290; *)
usub vect__103414296_0 0x3ffffbfffff0bc@uint64 vect__102412290_0;
usub vect__103414296_1 0x3ffffffffffffc@uint64 vect__102412290_1;
(* vect__103.414_297 = { 18014398509481980, 18014398509481980 } - vect__102.413_292; *)
usub vect__103414297_0 0x3ffffffffffffc@uint64 vect__102413292_0;
usub vect__103414297_1 0x3ffffffffffffc@uint64 vect__102413292_1;
(* _110 = h3.n[4]; *)
mov v110 h3_32;
(* _111 = 1125899906842620 - _110; *)
usub v111 0x3fffffffffffc@uint64 v110;
(* vect__92.408_286 = MEM[(long unsigned int * )r_13(D) + 40B]; *)
mov vect__92408286_0 r13_40;
mov vect__92408286_1 r13_48;
(* vect__92.409_288 = MEM[(long unsigned int * )r_13(D) + 56B]; *)
mov vect__92409288_0 r13_56;
mov vect__92409288_1 r13_64;
(* vect__93.415_298 = vect__92.408_286 + vect__103.414_296; *)
uadd vect__93415298_0 vect__92408286_0 vect__103414296_0;
uadd vect__93415298_1 vect__92408286_1 vect__103414296_1;
(* vect__93.415_299 = vect__92.409_288 + vect__103.414_297; *)
uadd vect__93415299_0 vect__92409288_0 vect__103414297_0;
uadd vect__93415299_1 vect__92409288_1 vect__103414297_1;
(* MEM[(long unsigned int * )r_13(D) + 40B] = vect__93.415_298; *)
mov r13_40 vect__93415298_0;
mov r13_48 vect__93415298_1;
(* MEM[(long unsigned int * )r_13(D) + 56B] = vect__93.415_299; *)
mov r13_56 vect__93415299_0;
mov r13_64 vect__93415299_1;
(* _100 = MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[4]; *)
mov v100 r13_72;
(* _101 = _100 + _111; *)
uadd v101 v100 v111;
(* MEM[(struct secp256k1_fe * )r_13(D) + 40B].n[4] = _101; *)
mov r13_72 v101;
(* z12 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* goto <bb 21> *)
(* TODO: unconditional jump *)

(* BB's index is 20 *)

(* .MEM_9 = PHI <.MEM_217(3), .MEM_16(7), .MEM_24(16), .MEM_225(13), .MEM_142(12), .MEM_219(11)> *)
(* z12 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* i2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* h3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* goto <bb 21> *)
(* TODO: unconditional jump *)

(* BB's index is 21 *)

(* .MEM_10 = PHI <.MEM_37(19), .MEM_48(20)> *)
(* return; *)


(* Start with unused lhs *)
mov _ h_0@uint64;
mov _ h_8@uint64;
mov _ h_16@uint64;
mov _ h_24@uint64;
mov _ h_32@uint64;
mov _ i_0@uint64;
mov _ i_8@uint64;
mov _ i_16@uint64;
mov _ i_24@uint64;
mov _ i_32@uint64;
mov _ r13_0@uint64;
mov _ r13_8@uint64;
mov _ r13_16@uint64;
mov _ r13_24@uint64;
mov _ r13_32@uint64;
mov _ r13_40@uint64;
mov _ r13_48@uint64;
mov _ r13_56@uint64;
mov _ r13_64@uint64;
mov _ r13_72@uint64;
mov _ r13_80@uint64;
mov _ r13_88@uint64;
mov _ r13_96@uint64;
mov _ r13_104@uint64;
mov _ r13_112@uint64;
mov _ r13_120@int32;
mov _ rzr15_0@uint64;
mov _ rzr15_8@uint64;
mov _ rzr15_16@uint64;
mov _ rzr15_24@uint64;
mov _ rzr15_32@uint64;
mov _ v1@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

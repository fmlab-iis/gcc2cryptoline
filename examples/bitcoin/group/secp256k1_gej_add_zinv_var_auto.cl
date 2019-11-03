proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a11_0@uint64 _;
mov a11_40@uint64 _;
mov a11_80@uint64 _;
mov a11_120@int32 _;
mov b9_80@int32 _;
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
mov r10_0@uint64 _;
mov r10_8@uint64 _;
mov r10_16@uint64 _;
mov r10_24@uint64 _;
mov r10_32@uint64 _;
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

(* _1 = b_9(D)->infinity; *)
(* rhs field infinity's offset is 80 *)
mov v1 b9_80;
(* if (_1 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 3 *)

(* *r_10(D) = *a_11(D); *)
(* TODO: skipped, no heuristics ,need self translating *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 4 *)

(* _2 = a_11(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v2 a11_120;
(* pretmp_253 = &MEM[(const struct secp256k1_fe * )b_9(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* pretmp_254 = &MEM[(const struct secp256k1_fe * )b_9(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* pretmp_256 = &bzinv_14(D)->n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* if (_2 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 5>, False label: <bb 6> *)

(* BB's index is 5 *)

(* r_10(D)->infinity = 0; *)
mov r10_120 0x0@int32;
(* secp256k1_fe_sqr_inner (&bzinv2.n, pretmp_256); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&bzinv3.n, &bzinv2.n, pretmp_256); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _52 = &MEM[(struct secp256k1_fe * )r_10(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_52, pretmp_254, &bzinv2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _50 = &MEM[(struct secp256k1_fe * )r_10(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_50, pretmp_253, &bzinv3.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* MEM[(struct secp256k1_fe * )r_10(D) + 80B].n[4] = 0; *)
mov r10_112 0x0@uint64;
(* MEM[(long unsigned int * )r_10(D) + 80B] = { 1, 0 }; *)
mov r10_80 0x1@uint64;
mov r10_88 0x1@uint64;
(* MEM[(long unsigned int * )r_10(D) + 96B] = { 0, 0 }; *)
mov r10_96 0x0@uint64;
mov r10_104 0x0@uint64;
(* bzinv2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* bzinv3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 6 *)

(* r_10(D)->infinity = 0; *)
mov r10_120 0x0@int32;
(* _97 = &MEM[(const struct secp256k1_fe * )a_11(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (&az.n, _97, pretmp_256); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_sqr_inner (&z12.n, &az.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* u1 = a_11(D)->x; *)
(* rhs field x's offset is 0 *)
mov u1_0 a11_0;
(* t0_219 = u1.n[0]; *)
mov t0219 u1_0;
(* t1_220 = u1.n[1]; *)
mov t1220 u1_8;
(* t2_221 = u1.n[2]; *)
mov t2221 u1_16;
(* t3_222 = u1.n[3]; *)
mov t3222 u1_24;
(* t4_223 = u1.n[4]; *)
mov t4223 u1_32;
(* x_224 = t4_223 >> 48; *)
usplit x224 tmp_to_use t4223 48;
(* t4_225 = t4_223 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t4225 t4223 0xffffffffffff@uint64;
(* _226 = x_224 * 4294968273; *)
umul v226 x224 0x1000003d1@uint64;
(* t0_227 = t0_219 + _226; *)
uadd t0227 t0219 v226;
(* _228 = t0_227 >> 52; *)
usplit v228 tmp_to_use t0227 52;
(* t1_229 = t1_220 + _228; *)
uadd t1229 t1220 v228;
(* t0_230 = t0_227 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t0230 t0227 0xfffffffffffff@uint64;
(* _231 = t1_229 >> 52; *)
usplit v231 tmp_to_use t1229 52;
(* t2_232 = t2_221 + _231; *)
uadd t2232 t2221 v231;
(* t1_233 = t1_229 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t1233 t1229 0xfffffffffffff@uint64;
(* _234 = t2_232 >> 52; *)
usplit v234 tmp_to_use t2232 52;
(* t3_235 = t3_222 + _234; *)
uadd t3235 t3222 v234;
(* t2_236 = t2_232 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t2236 t2232 0xfffffffffffff@uint64;
(* _237 = t3_235 >> 52; *)
usplit v237 tmp_to_use t3235 52;
(* t4_238 = t4_225 + _237; *)
uadd t4238 t4225 v237;
(* t3_239 = t3_235 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t3239 t3235 0xfffffffffffff@uint64;
(* u1.n[0] = t0_230; *)
mov u1_0 t0230;
(* u1.n[1] = t1_233; *)
mov u1_8 t1233;
(* u1.n[2] = t2_236; *)
mov u1_16 t2236;
(* u1.n[3] = t3_239; *)
mov u1_24 t3239;
(* u1.n[4] = t4_238; *)
mov u1_32 t4238;
(* secp256k1_fe_mul_inner (&u2.n, pretmp_254, &z12.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* s1 = a_11(D)->y; *)
(* rhs field y's offset is 40 *)
mov s1_0 a11_40;
(* secp256k1_fe_normalize_weak (&s1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&s2.n, pretmp_253, &z12.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&s2.n, &s2.n, &az.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__84.653_269 = MEM[(long unsigned int * )&u1]; *)
mov vect__84653269_0 u1_0;
mov vect__84653269_1 u1_8;
(* vect__84.654_271 = MEM[(long unsigned int * )&u1 + 16B]; *)
mov vect__84654271_0 u1_16;
mov vect__84654271_1 u1_24;
(* _92 = u1.n[4]; *)
mov v92 u1_32;
(* vect__74.648_257 = MEM[(long unsigned int * )&u2]; *)
mov vect__74648257_0 u2_0;
mov vect__74648257_1 u2_8;
(* vect__74.649_260 = MEM[(long unsigned int * )&u2 + 16B]; *)
mov vect__74649260_0 u2_16;
mov vect__74649260_1 u2_24;
(* vect__302.650_266 = vect__74.648_257 + { 18014381329608892, 18014398509481980 }; *)
uadd vect__302650266_0 vect__74648257_0 0x3ffffbfffff0bc@uint64;
uadd vect__302650266_1 vect__74648257_1 0x3ffffffffffffc@uint64;
(* vect__302.650_268 = vect__74.649_260 + { 18014398509481980, 18014398509481980 }; *)
uadd vect__302650268_0 vect__74649260_0 0x3ffffffffffffc@uint64;
uadd vect__302650268_1 vect__74649260_1 0x3ffffffffffffc@uint64;
(* vect__75.655_273 = vect__302.650_266 - vect__84.653_269; *)
usub vect__75655273_0 vect__302650266_0 vect__84653269_0;
usub vect__75655273_1 vect__302650266_1 vect__84653269_1;
(* vect__75.655_274 = vect__302.650_268 - vect__84.654_271; *)
usub vect__75655274_0 vect__302650268_0 vect__84654271_0;
usub vect__75655274_1 vect__302650268_1 vect__84654271_1;
(* MEM[(long unsigned int * )&h] = vect__75.655_273; *)
mov h_0 vect__75655273_0;
mov h_8 vect__75655273_1;
(* MEM[(long unsigned int * )&h + 16B] = vect__75.655_274; *)
mov h_16 vect__75655274_0;
mov h_24 vect__75655274_1;
(* _82 = u2.n[4]; *)
mov v82 u2_32;
(* _298 = _82 + 1125899906842620; *)
uadd v298 v82 0x3fffffffffffc@uint64;
(* _83 = _298 - _92; *)
usub v83 v298 v92;
(* h.n[4] = _83; *)
mov h_32 v83;
(* vect__64.665_71 = MEM[(long unsigned int * )&s1]; *)
mov vect__6466571_0 s1_0;
mov vect__6466571_1 s1_8;
(* vect__64.666_255 = MEM[(long unsigned int * )&s1 + 16B]; *)
mov vect__64666255_0 s1_16;
mov vect__64666255_1 s1_24;
(* _72 = s1.n[4]; *)
mov v72 s1_32;
(* vect__54.660_85 = MEM[(long unsigned int * )&s2]; *)
mov vect__5466085_0 s2_0;
mov vect__5466085_1 s2_8;
(* vect__54.661_89 = MEM[(long unsigned int * )&s2 + 16B]; *)
mov vect__5466189_0 s2_16;
mov vect__5466189_1 s2_24;
(* vect__297.662_67 = vect__54.660_85 + { 18014381329608892, 18014398509481980 }; *)
uadd vect__29766267_0 vect__5466085_0 0x3ffffbfffff0bc@uint64;
uadd vect__29766267_1 vect__5466085_1 0x3ffffffffffffc@uint64;
(* vect__297.662_69 = vect__54.661_89 + { 18014398509481980, 18014398509481980 }; *)
uadd vect__29766269_0 vect__5466189_0 0x3ffffffffffffc@uint64;
uadd vect__29766269_1 vect__5466189_1 0x3ffffffffffffc@uint64;
(* vect__55.667_258 = vect__297.662_67 - vect__64.665_71; *)
usub vect__55667258_0 vect__29766267_0 vect__6466571_0;
usub vect__55667258_1 vect__29766267_1 vect__6466571_1;
(* vect__55.667_153 = vect__297.662_69 - vect__64.666_255; *)
usub vect__55667153_0 vect__29766269_0 vect__64666255_0;
usub vect__55667153_1 vect__29766269_1 vect__64666255_1;
(* MEM[(long unsigned int * )&i] = vect__55.667_258; *)
mov i_0 vect__55667258_0;
mov i_8 vect__55667258_1;
(* MEM[(long unsigned int * )&i + 16B] = vect__55.667_153; *)
mov i_16 vect__55667153_0;
mov i_24 vect__55667153_1;
(* _62 = s2.n[4]; *)
mov v62 s2_32;
(* _293 = _62 + 1125899906842620; *)
uadd v293 v62 0x3fffffffffffc@uint64;
(* _63 = _293 - _72; *)
usub v63 v293 v72;
(* i.n[4] = _63; *)
mov i_32 v63;
(* _3 = secp256k1_fe_normalizes_to_zero_var (&h); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (_3 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 7>, False label: <bb 11> *)

(* BB's index is 7 *)

(* _4 = secp256k1_fe_normalizes_to_zero_var (&i); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* if (_4 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 8>, False label: <bb 10> *)

(* BB's index is 8 *)

(* _98 = a_11(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v98 a11_120;
(* r_10(D)->infinity = _98; *)
mov r10_120 v98;
(* if (_98 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 12>, False label: <bb 9> *)

(* BB's index is 9 *)

(* secp256k1_gej_double_var.part.14 (r_10(D), a_11(D), 0B); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 10 *)

(* r_10(D)->infinity = 1; *)
mov r10_120 0x1@int32;
(* goto <bb 12> *)
(* TODO: unconditional jump *)

(* BB's index is 11 *)

(* secp256k1_fe_sqr_inner (&i2.n, &i.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_sqr_inner (&h2.n, &h.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&h3.n, &h.n, &h2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* r_10(D)->z = a_11(D)->z; *)
(* lhs field z's offset is 80 *)
(* rhs field z's offset is 80 *)
mov r10_80 a11_80;
(* _170 = &MEM[(const struct secp256k1_fe * )r_10(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_170, _170, &h.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&t.n, &u1.n, &h2.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* r_10(D)->x = t; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _160 = MEM[(struct secp256k1_fe * )r_10(D)].n[0]; *)
mov v160 r10_0;
(* _161 = _160 * 2; *)
umul v161 v160 0x2@uint64;
(* _162 = MEM[(struct secp256k1_fe * )r_10(D)].n[1]; *)
mov v162 r10_8;
(* _163 = _162 * 2; *)
umul v163 v162 0x2@uint64;
(* _164 = MEM[(struct secp256k1_fe * )r_10(D)].n[2]; *)
mov v164 r10_16;
(* _165 = _164 * 2; *)
umul v165 v164 0x2@uint64;
(* _166 = MEM[(struct secp256k1_fe * )r_10(D)].n[3]; *)
mov v166 r10_24;
(* _167 = _166 * 2; *)
umul v167 v166 0x2@uint64;
(* _168 = MEM[(struct secp256k1_fe * )r_10(D)].n[4]; *)
mov v168 r10_32;
(* _169 = _168 * 2; *)
umul v169 v168 0x2@uint64;
(* _150 = h3.n[0]; *)
mov v150 h3_0;
(* _152 = h3.n[1]; *)
mov v152 h3_8;
(* _154 = h3.n[2]; *)
mov v154 h3_16;
(* _156 = h3.n[3]; *)
mov v156 h3_24;
(* _158 = h3.n[4]; *)
mov v158 h3_32;
(* _135 = i2.n[0]; *)
mov v135 i2_0;
(* _291 = _135 + 36028762659217784; *)
uadd v291 v135 0x7ffff7ffffe178@uint64;
(* _292 = _291 - _150; *)
usub v292 v291 v150;
(* _136 = _292 - _161; *)
usub v136 v292 v161;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[0] = _136; *)
mov r10_0 v136;
(* _137 = i2.n[1]; *)
mov v137 i2_8;
(* _289 = _137 + 36028797018963960; *)
uadd v289 v137 0x7ffffffffffff8@uint64;
(* _290 = _289 - _152; *)
usub v290 v289 v152;
(* _138 = _290 - _163; *)
usub v138 v290 v163;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[1] = _138; *)
mov r10_8 v138;
(* _139 = i2.n[2]; *)
mov v139 i2_16;
(* _287 = _139 + 36028797018963960; *)
uadd v287 v139 0x7ffffffffffff8@uint64;
(* _288 = _287 - _154; *)
usub v288 v287 v154;
(* _140 = _288 - _165; *)
usub v140 v288 v165;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[2] = _140; *)
mov r10_16 v140;
(* _141 = i2.n[3]; *)
mov v141 i2_24;
(* _285 = _141 + 36028797018963960; *)
uadd v285 v141 0x7ffffffffffff8@uint64;
(* _286 = _285 - _156; *)
usub v286 v285 v156;
(* _142 = _286 - _167; *)
usub v142 v286 v167;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[3] = _142; *)
mov r10_24 v142;
(* _143 = i2.n[4]; *)
mov v143 i2_32;
(* _283 = _143 + 2251799813685240; *)
uadd v283 v143 0x7fffffffffff8@uint64;
(* _284 = _283 - _158; *)
usub v284 v283 v158;
(* _144 = _284 - _169; *)
usub v144 v284 v169;
(* MEM[(struct secp256k1_fe * )r_10(D)].n[4] = _144; *)
mov r10_32 v144;
(* _120 = t.n[0]; *)
mov v120 t_0;
(* _346 = _120 + _150; *)
uadd v346 v120 v150;
(* _347 = _346 + 54043143988826676; *)
uadd v347 v346 0xbffff3ffffd234@uint64;
(* _348 = _347 - _291; *)
usub v348 v347 v291;
(* _121 = _161 + _348; *)
uadd v121 v161 v348;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[0] = _121; *)
mov r10_40 v121;
(* _122 = t.n[1]; *)
mov v122 t_8;
(* _342 = _122 + _152; *)
uadd v342 v122 v152;
(* _343 = _342 + 54043195528445940; *)
uadd v343 v342 0xbffffffffffff4@uint64;
(* _344 = _343 - _289; *)
usub v344 v343 v289;
(* _123 = _163 + _344; *)
uadd v123 v163 v344;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[1] = _123; *)
mov r10_48 v123;
(* _124 = t.n[2]; *)
mov v124 t_16;
(* _338 = _124 + _154; *)
uadd v338 v124 v154;
(* _339 = _338 + 54043195528445940; *)
uadd v339 v338 0xbffffffffffff4@uint64;
(* _340 = _339 - _287; *)
usub v340 v339 v287;
(* _125 = _165 + _340; *)
uadd v125 v165 v340;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[2] = _125; *)
mov r10_56 v125;
(* _126 = t.n[3]; *)
mov v126 t_24;
(* _334 = _126 + _156; *)
uadd v334 v126 v156;
(* _335 = _334 + 54043195528445940; *)
uadd v335 v334 0xbffffffffffff4@uint64;
(* _336 = _335 - _285; *)
usub v336 v335 v285;
(* _127 = _167 + _336; *)
uadd v127 v167 v336;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[3] = _127; *)
mov r10_64 v127;
(* _128 = t.n[4]; *)
mov v128 t_32;
(* _330 = _128 + _158; *)
uadd v330 v128 v158;
(* _331 = _330 + 3377699720527860; *)
uadd v331 v330 0xbfffffffffff4@uint64;
(* _332 = _331 - _283; *)
usub v332 v331 v283;
(* _129 = _169 + _332; *)
uadd v129 v169 v332;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[4] = _129; *)
mov r10_72 v129;
(* _119 = &MEM[(const struct secp256k1_fe * )r_10(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_119, _119, &i.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&h3.n, &h3.n, &s1.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__109.676_147 = MEM[(long unsigned int * )&h3]; *)
mov vect__109676147_0 h3_0;
mov vect__109676147_1 h3_8;
(* vect__109.677_149 = MEM[(long unsigned int * )&h3 + 16B]; *)
mov vect__109677149_0 h3_16;
mov vect__109677149_1 h3_24;
(* vect__110.678_133 = { 18014381329608892, 18014398509481980 } - vect__109.676_147; *)
usub vect__110678133_0 0x3ffffbfffff0bc@uint64 vect__109676147_0;
usub vect__110678133_1 0x3ffffffffffffc@uint64 vect__109676147_1;
(* vect__110.678_134 = { 18014398509481980, 18014398509481980 } - vect__109.677_149; *)
usub vect__110678134_0 0x3ffffffffffffc@uint64 vect__109677149_0;
usub vect__110678134_1 0x3ffffffffffffc@uint64 vect__109677149_1;
(* _117 = h3.n[4]; *)
mov v117 h3_32;
(* _118 = 1125899906842620 - _117; *)
usub v118 0x3fffffffffffc@uint64 v117;
(* vect__99.672_267 = MEM[(long unsigned int * )r_10(D) + 40B]; *)
mov vect__99672267_0 r10_40;
mov vect__99672267_1 r10_48;
(* vect__99.673_145 = MEM[(long unsigned int * )r_10(D) + 56B]; *)
mov vect__99673145_0 r10_56;
mov vect__99673145_1 r10_64;
(* vect__100.679_303 = vect__110.678_133 + vect__99.672_267; *)
uadd vect__100679303_0 vect__110678133_0 vect__99672267_0;
uadd vect__100679303_1 vect__110678133_1 vect__99672267_1;
(* vect__100.679_304 = vect__110.678_134 + vect__99.673_145; *)
uadd vect__100679304_0 vect__110678134_0 vect__99673145_0;
uadd vect__100679304_1 vect__110678134_1 vect__99673145_1;
(* MEM[(long unsigned int * )r_10(D) + 40B] = vect__100.679_303; *)
mov r10_40 vect__100679303_0;
mov r10_48 vect__100679303_1;
(* MEM[(long unsigned int * )r_10(D) + 56B] = vect__100.679_304; *)
mov r10_56 vect__100679304_0;
mov r10_64 vect__100679304_1;
(* _107 = MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[4]; *)
mov v107 r10_72;
(* _108 = _107 + _118; *)
uadd v108 v107 v118;
(* MEM[(struct secp256k1_fe * )r_10(D) + 40B].n[4] = _108; *)
mov r10_72 v108;
(* az ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
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
(* goto <bb 13> *)
(* TODO: unconditional jump *)

(* BB's index is 12 *)

(* .MEM_6 = PHI <.MEM_12(3), .MEM_16(5), .MEM_22(10), .MEM_218(9), .MEM_217(8)> *)
(* az ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
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
(* goto <bb 13> *)
(* TODO: unconditional jump *)

(* BB's index is 13 *)

(* .MEM_7 = PHI <.MEM_36(11), .MEM_48(12)> *)
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
mov _ r10_0@uint64;
mov _ r10_8@uint64;
mov _ r10_16@uint64;
mov _ r10_24@uint64;
mov _ r10_32@uint64;
mov _ r10_40@uint64;
mov _ r10_48@uint64;
mov _ r10_56@uint64;
mov _ r10_64@uint64;
mov _ r10_72@uint64;
mov _ r10_80@uint64;
mov _ r10_88@uint64;
mov _ r10_96@uint64;
mov _ r10_104@uint64;
mov _ r10_112@uint64;
mov _ r10_120@int32;
mov _ v1@int32;
mov _ v2@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

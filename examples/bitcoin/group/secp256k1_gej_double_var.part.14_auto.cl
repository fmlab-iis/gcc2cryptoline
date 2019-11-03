proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a2_40@uint64 _;
mov r15_0@uint64 _;
mov r15_8@uint64 _;
mov r15_16@uint64 _;
mov r15_24@uint64 _;
mov r15_32@uint64 _;
mov r15_40@uint64 _;
mov r15_48@uint64 _;
mov r15_56@uint64 _;
mov r15_64@uint64 _;
mov r15_72@uint64 _;
mov r15_80@uint64 _;
mov r15_88@uint64 _;
mov r15_96@uint64 _;
mov r15_104@uint64 _;
mov r15_112@uint64 _;
mov rzr1_8@uint64 _;
mov rzr1_16@uint64 _;
mov rzr1_24@uint64 _;
mov rzr1_32@uint64 _;
mov t1_0@uint64 _;
mov t1_8@uint64 _;
mov t1_16@uint64 _;
mov t1_24@uint64 _;
mov t1_32@uint64 _;
mov t3_0@uint64 _;
mov t3_8@uint64 _;
mov t3_16@uint64 _;
mov t3_24@uint64 _;
mov t3_32@uint64 _;
mov t4_0@uint64 _;
mov t4_8@uint64 _;
mov t4_16@uint64 _;
mov t4_24@uint64 _;
mov t4_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* if (rzr_1(D) != 0B) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 3 *)

(* *rzr_1(D) = a_2(D)->y; *)
(* rhs field y's offset is 40 *)
mov rzr1_0 a2_40;
(* secp256k1_fe_normalize_weak (rzr_1(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _3 = rzr_1(D)->n[0]; *)
mov v3 rzr1_0;
(* _4 = _3 * 2; *)
umul v4 v3 0x2@uint64;
(* rzr_1(D)->n[0] = _4; *)
mov rzr1_0 v4;
(* _5 = rzr_1(D)->n[1]; *)
mov v5 rzr1_8;
(* _6 = _5 * 2; *)
umul v6 v5 0x2@uint64;
(* rzr_1(D)->n[1] = _6; *)
mov rzr1_8 v6;
(* _7 = rzr_1(D)->n[2]; *)
mov v7 rzr1_16;
(* _8 = _7 * 2; *)
umul v8 v7 0x2@uint64;
(* rzr_1(D)->n[2] = _8; *)
mov rzr1_16 v8;
(* _9 = rzr_1(D)->n[3]; *)
mov v9 rzr1_24;
(* _10 = _9 * 2; *)
umul v10 v9 0x2@uint64;
(* rzr_1(D)->n[3] = _10; *)
mov rzr1_24 v10;
(* _11 = rzr_1(D)->n[4]; *)
mov v11 rzr1_32;
(* _12 = _11 * 2; *)
umul v12 v11 0x2@uint64;
(* rzr_1(D)->n[4] = _12; *)
mov rzr1_32 v12;
(* goto <bb 4> *)
(* TODO: unconditional jump *)

(* BB's index is 4 *)

(* .MEM_124 = PHI <.MEM_132(3), .MEM_125(D)(2)> *)
(* _13 = &MEM[(const struct secp256k1_fe * )a_2(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* _14 = &MEM[(const struct secp256k1_fe * )a_2(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* _16 = &MEM[(struct secp256k1_fe * )r_15(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_16, _14, _13); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _17 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[0]; *)
mov v17 r15_80;
(* _18 = _17 * 2; *)
umul v18 v17 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[0] = _18; *)
mov r15_80 v18;
(* _19 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[1]; *)
mov v19 r15_88;
(* _20 = _19 * 2; *)
umul v20 v19 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[1] = _20; *)
mov r15_88 v20;
(* _21 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[2]; *)
mov v21 r15_96;
(* _22 = _21 * 2; *)
umul v22 v21 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[2] = _22; *)
mov r15_96 v22;
(* _23 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[3]; *)
mov v23 r15_104;
(* _24 = _23 * 2; *)
umul v24 v23 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[3] = _24; *)
mov r15_104 v24;
(* _25 = MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[4]; *)
mov v25 r15_112;
(* _26 = _25 * 2; *)
umul v26 v25 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_15(D) + 80B].n[4] = _26; *)
mov r15_112 v26;
(* _27 = &MEM[(const struct secp256k1_fe * )a_2(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_sqr_inner (&t1.n, _27); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _28 = t1.n[0]; *)
mov v28 t1_0;
(* _29 = _28 * 3; *)
umul v29 v28 0x3@uint64;
(* t1.n[0] = _29; *)
mov t1_0 v29;
(* _30 = t1.n[1]; *)
mov v30 t1_8;
(* _31 = _30 * 3; *)
umul v31 v30 0x3@uint64;
(* t1.n[1] = _31; *)
mov t1_8 v31;
(* _32 = t1.n[2]; *)
mov v32 t1_16;
(* _33 = _32 * 3; *)
umul v33 v32 0x3@uint64;
(* t1.n[2] = _33; *)
mov t1_16 v33;
(* _34 = t1.n[3]; *)
mov v34 t1_24;
(* _35 = _34 * 3; *)
umul v35 v34 0x3@uint64;
(* t1.n[3] = _35; *)
mov t1_24 v35;
(* _36 = t1.n[4]; *)
mov v36 t1_32;
(* _37 = _36 * 3; *)
umul v37 v36 0x3@uint64;
(* t1.n[4] = _37; *)
mov t1_32 v37;
(* _190 = _28 * 6; *)
umul v190 v28 0x6@uint64;
(* _193 = _190 w* _35; *)
umulj v193 v190 v35;
(* _194 = _30 * 6; *)
umul v194 v30 0x6@uint64;
(* _197 = _194 w* _33; *)
umulj v197 v194 v33;
(* d_198 = _193 + _197; *)
uadd d198 v193 v197;
(* c_200 = _37 w* _37; *)
umulj c200 v37 v37;
(* _201 = c_200 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v201 c200 value;
(* _202 = _201 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v202 v201 value;
(* d_203 = d_198 + _202; *)
uadd d203 d198 v202;
(* c_204 = c_200 >> 52; *)
usplit c204 tmp_to_use c200 52;
(* _205 = (long int) d_203; *)
cast v205@int64 d203@uint128;
(* t3_206 = _205 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff@int64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@int64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and int64 t3206 v205 0xfffffffffffff@int64;
(* d_207 = d_203 >> 52; *)
usplit d207 tmp_to_use d203 52;
(* a4_208 = _36 * 6; *)
umul a4208 v36 0x6@uint64;
(* _211 = _29 w* a4_208; *)
umulj v211 v29 a4208;
(* _212 = _35 w* _194; *)
umulj v212 v35 v194;
(* _213 = _211 + _212; *)
uadd v213 v211 v212;
(* _214 = _33 w* _33; *)
umulj v214 v33 v33;
(* _215 = _213 + _214; *)
uadd v215 v213 v214;
(* _217 = c_204 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v217 c204 value;
(* _285 = _215 + _217; *)
uadd v285 v215 v217;
(* d_218 = d_207 + _285; *)
uadd d218 d207 v285;
(* _219 = (long int) d_218; *)
cast v219@int64 d218@uint128;
(* d_220 = d_218 >> 52; *)
usplit d220 tmp_to_use d218 52;
(* _221 = _219 >> 48; *)
(* TODO: signed operation, need check *)
ssplit v221 tmp_to_use v219 48;
(* tx_222 = _221 & 15; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xf@int64 = 0x0000000000000f *)
(* Note: 0xf@int64 = 0b00000000000000000000000000000000000000000000000000000000001111 *)
and int64 tx222 v221 0xf@int64;
(* t4_223 = _219 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xffffffffffff@int64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@int64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and int64 t4223 v219 0xffffffffffff@int64;
(* c_224 = _29 w* _29; *)
umulj c224 v29 v29;
(* _226 = a4_208 w* _31; *)
umulj v226 a4208 v31;
(* _227 = _32 * 6; *)
umul v227 v32 0x6@uint64;
(* _229 = _35 w* _227; *)
umulj v229 v35 v227;
(* _230 = _226 + _229; *)
uadd v230 v226 v229;
(* d_231 = d_220 + _230; *)
uadd d231 d220 v230;
(* _232 = (long int) d_231; *)
cast v232@int64 d231@uint128;
(* d_233 = d_231 >> 52; *)
usplit d233 tmp_to_use d231 52;
(* _234 = _232 << 4; *)
ssplit tmp1 tmp2 v232 60;
shl v234 tmp2 4;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _235 = _234 & 72057594037927920; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff0@int64 = 0xfffffffffffff0 *)
(* Note: 0xfffffffffffff0@int64 = 0b00000011111111111111111111111111111111111111111111111111110000 *)
and int64 v235 v234 0xfffffffffffff0@int64;
(* u0_236 = tx_222 | _235; *)
(* Bitwise or , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
or int64 u0236 tx222 v235;
(* _238 = u0_236 w* 4294968273; *)
umulj v238 u0236 0x1000003d1@int64;
(* c_239 = c_224 + _238; *)
uadd c239 c224 v238;
(* _240 = (long unsigned int) c_239; *)
cast v240@uint64 c239@uint128;
(* _241 = _240 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v241 v240 0xfffffffffffff@uint64;
(* c_242 = c_239 >> 52; *)
usplit c242 tmp_to_use c239 52;
(* _243 = _190 w* _31; *)
umulj v243 v190 v31;
(* _245 = _33 w* a4_208; *)
umulj v245 v33 a4208;
(* _246 = _35 w* _35; *)
umulj v246 v35 v35;
(* _247 = _245 + _246; *)
uadd v247 v245 v246;
(* d_248 = d_233 + _247; *)
uadd d248 d233 v247;
(* _249 = d_248 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v249 d248 value;
(* _250 = _249 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v250 v249 value;
(* _284 = _243 + _250; *)
uadd v284 v243 v250;
(* c_251 = c_242 + _284; *)
uadd c251 c242 v284;
(* d_252 = d_248 >> 52; *)
usplit d252 tmp_to_use d248 52;
(* _253 = (long unsigned int) c_251; *)
cast v253@uint64 c251@uint128;
(* _254 = _253 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v254 v253 0xfffffffffffff@uint64;
(* c_255 = c_251 >> 52; *)
usplit c255 tmp_to_use c251 52;
(* _256 = _190 w* _33; *)
umulj v256 v190 v33;
(* _257 = _31 w* _31; *)
umulj v257 v31 v31;
(* _258 = _256 + _257; *)
uadd v258 v256 v257;
(* _260 = _35 w* a4_208; *)
umulj v260 v35 a4208;
(* d_261 = d_252 + _260; *)
uadd d261 d252 v260;
(* _262 = d_261 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v262 d261 value;
(* _263 = _262 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v263 v262 value;
(* _145 = _258 + _263; *)
uadd v145 v258 v263;
(* c_264 = _145 + c_255; *)
uadd c264 v145 c255;
(* d_265 = d_261 >> 52; *)
usplit d265 tmp_to_use d261 52;
(* _266 = (long unsigned int) c_264; *)
cast v266@uint64 c264@uint128;
(* _267 = _266 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v267 v266 0xfffffffffffff@uint64;
(* c_268 = c_264 >> 52; *)
usplit c268 tmp_to_use c264 52;
(* _269 = d_265 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v269 d265 value;
(* _270 = (__int128 unsigned) t3_206; *)
cast v270@uint128 t3206@int64;
(* _271 = _269 + _270; *)
uadd v271 v269 v270;
(* c_272 = c_268 + _271; *)
uadd c272 c268 v271;
(* _273 = (long unsigned int) c_272; *)
cast v273@uint64 c272@uint128;
(* _274 = _273 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v274 v273 0xfffffffffffff@uint64;
(* c_275 = c_272 >> 52; *)
usplit c275 tmp_to_use c272 52;
(* _276 = (__int128 unsigned) t4_223; *)
cast v276@uint128 t4223@int64;
(* c_277 = c_275 + _276; *)
uadd c277 c275 v276;
(* _278 = (long unsigned int) c_277; *)
cast v278@uint64 c277@uint128;
(* secp256k1_fe_sqr_inner (&t3.n, _13); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _38 = t3.n[0]; *)
mov v38 t3_0;
(* _39 = _38 * 2; *)
umul v39 v38 0x2@uint64;
(* t3.n[0] = _39; *)
mov t3_0 v39;
(* _40 = t3.n[1]; *)
mov v40 t3_8;
(* _41 = _40 * 2; *)
umul v41 v40 0x2@uint64;
(* t3.n[1] = _41; *)
mov t3_8 v41;
(* _42 = t3.n[2]; *)
mov v42 t3_16;
(* _43 = _42 * 2; *)
umul v43 v42 0x2@uint64;
(* t3.n[2] = _43; *)
mov t3_16 v43;
(* _44 = t3.n[3]; *)
mov v44 t3_24;
(* _45 = _44 * 2; *)
umul v45 v44 0x2@uint64;
(* t3.n[3] = _45; *)
mov t3_24 v45;
(* _46 = t3.n[4]; *)
mov v46 t3_32;
(* _47 = _46 * 2; *)
umul v47 v46 0x2@uint64;
(* t3.n[4] = _47; *)
mov t3_32 v47;
(* secp256k1_fe_sqr_inner (&t4.n, &t3.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _48 = t4.n[0]; *)
mov v48 t4_0;
(* _49 = _48 * 2; *)
umul v49 v48 0x2@uint64;
(* t4.n[0] = _49; *)
mov t4_0 v49;
(* _50 = t4.n[1]; *)
mov v50 t4_8;
(* _51 = _50 * 2; *)
umul v51 v50 0x2@uint64;
(* t4.n[1] = _51; *)
mov t4_8 v51;
(* _52 = t4.n[2]; *)
mov v52 t4_16;
(* _53 = _52 * 2; *)
umul v53 v52 0x2@uint64;
(* t4.n[2] = _53; *)
mov t4_16 v53;
(* _54 = t4.n[3]; *)
mov v54 t4_24;
(* _55 = _54 * 2; *)
umul v55 v54 0x2@uint64;
(* t4.n[3] = _55; *)
mov t4_24 v55;
(* _56 = t4.n[4]; *)
mov v56 t4_32;
(* _57 = _56 * 2; *)
umul v57 v56 0x2@uint64;
(* t4.n[4] = _57; *)
mov t4_32 v57;
(* secp256k1_fe_mul_inner (&t3.n, &t3.n, _27); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* r_15(D)->x = t3; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _58 = MEM[(struct secp256k1_fe * )r_15(D)].n[0]; *)
mov v58 r15_0;
(* _59 = _58 * 4; *)
umul v59 v58 0x4@uint64;
(* _60 = MEM[(struct secp256k1_fe * )r_15(D)].n[1]; *)
mov v60 r15_8;
(* _61 = _60 * 4; *)
umul v61 v60 0x4@uint64;
(* _62 = MEM[(struct secp256k1_fe * )r_15(D)].n[2]; *)
mov v62 r15_16;
(* _63 = _62 * 4; *)
umul v63 v62 0x4@uint64;
(* _64 = MEM[(struct secp256k1_fe * )r_15(D)].n[3]; *)
mov v64 r15_24;
(* _65 = _64 * 4; *)
umul v65 v64 0x4@uint64;
(* _66 = MEM[(struct secp256k1_fe * )r_15(D)].n[4]; *)
mov v66 r15_32;
(* _67 = _66 * 4; *)
umul v67 v66 0x4@uint64;
(* _68 = 45035953324022230 - _59; *)
usub v68 0x9ffff5ffffd9d6@uint64 v59;
(* _69 = 45035996273704950 - _61; *)
usub v69 0x9ffffffffffff6@uint64 v61;
(* _70 = 45035996273704950 - _63; *)
usub v70 0x9ffffffffffff6@uint64 v63;
(* _71 = 45035996273704950 - _65; *)
usub v71 0x9ffffffffffff6@uint64 v65;
(* _72 = 2814749767106550 - _67; *)
usub v72 0x9fffffffffff6@uint64 v67;
(* _74 = _68 + _241; *)
uadd v74 v68 v241;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[0] = _74; *)
mov r15_0 v74;
(* _76 = _69 + _254; *)
uadd v76 v69 v254;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[1] = _76; *)
mov r15_8 v76;
(* _78 = _70 + _267; *)
uadd v78 v70 v267;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[2] = _78; *)
mov r15_16 v78;
(* _80 = _71 + _274; *)
uadd v80 v71 v274;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[3] = _80; *)
mov r15_24 v80;
(* _82 = _72 + _278; *)
uadd v82 v72 v278;
(* MEM[(struct secp256k1_fe * )r_15(D)].n[4] = _82; *)
mov r15_32 v82;
(* _88 = t3.n[0]; *)
mov v88 t3_0;
(* _89 = _88 * 6; *)
umul v89 v88 0x6@uint64;
(* _81 = _89 + 18014381329608892; *)
uadd v81 v89 0x3ffffbfffff0bc@uint64;
(* _90 = t3.n[1]; *)
mov v90 t3_8;
(* _91 = _90 * 6; *)
umul v91 v90 0x6@uint64;
(* _79 = _91 + 18014398509481980; *)
uadd v79 v91 0x3ffffffffffffc@uint64;
(* _92 = t3.n[2]; *)
mov v92 t3_16;
(* _93 = _92 * 6; *)
umul v93 v92 0x6@uint64;
(* _77 = _93 + 18014398509481980; *)
uadd v77 v93 0x3ffffffffffffc@uint64;
(* _94 = t3.n[3]; *)
mov v94 t3_24;
(* _95 = _94 * 6; *)
umul v95 v94 0x6@uint64;
(* _75 = _95 + 18014398509481980; *)
uadd v75 v95 0x3ffffffffffffc@uint64;
(* _96 = t3.n[4]; *)
mov v96 t3_32;
(* _97 = _96 * 6; *)
umul v97 v96 0x6@uint64;
(* _73 = _97 + 1125899906842620; *)
uadd v73 v97 0x3fffffffffffc@uint64;
(* _98 = _81 - _241; *)
usub v98 v81 v241;
(* t3.n[0] = _98; *)
mov t3_0 v98;
(* _99 = _79 - _254; *)
usub v99 v79 v254;
(* t3.n[1] = _99; *)
mov t3_8 v99;
(* _100 = _77 - _267; *)
usub v100 v77 v267;
(* t3.n[2] = _100; *)
mov t3_16 v100;
(* _101 = _75 - _274; *)
usub v101 v75 v274;
(* t3.n[3] = _101; *)
mov t3_24 v101;
(* _102 = _73 - _278; *)
usub v102 v73 v278;
(* t3.n[4] = _102; *)
mov t3_32 v102;
(* _103 = &MEM[(struct secp256k1_fe * )r_15(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_103, &t1.n, &t3.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__104.343_279 = MEM[(long unsigned int * )&t4]; *)
mov vect__104343279_0 t4_0;
mov vect__104343279_1 t4_8;
(* vect__104.344_281 = MEM[(long unsigned int * )&t4 + 16B]; *)
mov vect__104344281_0 t4_16;
mov vect__104344281_1 t4_24;
(* vect__105.345_166 = { 27021571994413338, 27021597764222970 } - vect__104.343_279; *)
usub vect__105345166_0 0x5ffff9ffffe91a@uint64 vect__104343279_0;
usub vect__105345166_1 0x5ffffffffffffa@uint64 vect__104343279_1;
(* vect__105.345_167 = { 27021597764222970, 27021597764222970 } - vect__104.344_281; *)
usub vect__105345167_0 0x5ffffffffffffa@uint64 vect__104344281_0;
usub vect__105345167_1 0x5ffffffffffffa@uint64 vect__104344281_1;
(* _112 = t4.n[4]; *)
mov v112 t4_32;
(* _113 = 1688849860263930 - _112; *)
usub v113 0x5fffffffffffa@uint64 v112;
(* vect__114.348_169 = MEM[(long unsigned int * )r_15(D) + 40B]; *)
mov vect__114348169_0 r15_40;
mov vect__114348169_1 r15_48;
(* vect__114.349_186 = MEM[(long unsigned int * )r_15(D) + 56B]; *)
mov vect__114349186_0 r15_56;
mov vect__114349186_1 r15_64;
(* vect__115.350_188 = vect__105.345_166 + vect__114.348_169; *)
uadd vect__115350188_0 vect__105345166_0 vect__114348169_0;
uadd vect__115350188_1 vect__105345166_1 vect__114348169_1;
(* vect__115.350_189 = vect__105.345_167 + vect__114.349_186; *)
uadd vect__115350189_0 vect__105345167_0 vect__114349186_0;
uadd vect__115350189_1 vect__105345167_1 vect__114349186_1;
(* MEM[(long unsigned int * )r_15(D) + 40B] = vect__115.350_188; *)
mov r15_40 vect__115350188_0;
mov r15_48 vect__115350188_1;
(* MEM[(long unsigned int * )r_15(D) + 56B] = vect__115.350_189; *)
mov r15_56 vect__115350189_0;
mov r15_64 vect__115350189_1;
(* _122 = MEM[(struct secp256k1_fe * )r_15(D) + 40B].n[4]; *)
mov v122 r15_72;
(* _123 = _113 + _122; *)
uadd v123 v113 v122;
(* MEM[(struct secp256k1_fe * )r_15(D) + 40B].n[4] = _123; *)
mov r15_72 v123;
(* t1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t4 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ r15_0@uint64;
mov _ r15_8@uint64;
mov _ r15_16@uint64;
mov _ r15_24@uint64;
mov _ r15_32@uint64;
mov _ r15_40@uint64;
mov _ r15_48@uint64;
mov _ r15_56@uint64;
mov _ r15_64@uint64;
mov _ r15_72@uint64;
mov _ r15_80@uint64;
mov _ r15_88@uint64;
mov _ r15_96@uint64;
mov _ r15_104@uint64;
mov _ r15_112@uint64;
mov _ rzr1_0@uint64;
mov _ rzr1_8@uint64;
mov _ rzr1_16@uint64;
mov _ rzr1_24@uint64;
mov _ rzr1_32@uint64;
mov _ t1_0@uint64;
mov _ t1_8@uint64;
mov _ t1_16@uint64;
mov _ t1_24@uint64;
mov _ t1_32@uint64;
mov _ t3_0@uint64;
mov _ t3_8@uint64;
mov _ t3_16@uint64;
mov _ t3_24@uint64;
mov _ t3_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

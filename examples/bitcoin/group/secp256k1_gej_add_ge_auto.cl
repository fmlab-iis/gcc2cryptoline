proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a18_0@uint64 _;
mov a18_40@uint64 _;
mov a18_120@int32 _;
mov b17_0@uint64 _;
mov b17_8@uint64 _;
mov b17_16@uint64 _;
mov b17_24@uint64 _;
mov b17_32@uint64 _;
mov b17_40@uint64 _;
mov b17_48@uint64 _;
mov b17_56@uint64 _;
mov b17_64@uint64 _;
mov b17_72@uint64 _;
mov m_0@uint64 _;
mov m_8@uint64 _;
mov m_16@uint64 _;
mov m_24@uint64 _;
mov m_32@uint64 _;
mov n_0@uint64 _;
mov n_8@uint64 _;
mov n_16@uint64 _;
mov n_24@uint64 _;
mov n_32@uint64 _;
mov q_0@uint64 _;
mov q_8@uint64 _;
mov q_16@uint64 _;
mov q_24@uint64 _;
mov q_32@uint64 _;
mov r31_0@uint64 _;
mov r31_8@uint64 _;
mov r31_16@uint64 _;
mov r31_24@uint64 _;
mov r31_32@uint64 _;
mov r31_80@uint64 _;
mov r31_88@uint64 _;
mov r31_96@uint64 _;
mov r31_104@uint64 _;
mov r31_112@uint64 _;
mov rr_0@uint64 _;
mov rr_8@uint64 _;
mov rr_16@uint64 _;
mov rr_24@uint64 _;
mov rr_32@uint64 _;
mov rr_alt_0@uint64 _;
mov rr_alt_8@uint64 _;
mov rr_alt_16@uint64 _;
mov rr_alt_24@uint64 _;
mov rr_alt_32@uint64 _;
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
mov tt_0@uint64 _;
mov tt_8@uint64 _;
mov tt_16@uint64 _;
mov tt_24@uint64 _;
mov tt_32@uint64 _;
mov u1_8@uint64 _;
mov u1_16@uint64 _;
mov u1_24@uint64 _;
mov u1_32@uint64 _;
mov u2_0@uint64 _;
mov u2_8@uint64 _;
mov u2_16@uint64 _;
mov u2_24@uint64 _;
mov u2_32@uint64 _;
mov v1@int32 _;
mov v2@int32 _;
mov v6@int32 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _225 = &MEM[(const struct secp256k1_fe * )a_18(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_sqr_inner (&zz.n, _225); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* u1 = a_18(D)->x; *)
(* rhs field x's offset is 0 *)
mov u1_0 a18_0;
(* secp256k1_fe_normalize_weak (&u1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _224 = &MEM[(const struct secp256k1_fe * )b_17(D)].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (&u2.n, _224, &zz.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* s1 = a_18(D)->y; *)
(* rhs field y's offset is 40 *)
mov s1_0 a18_40;
(* secp256k1_fe_normalize_weak (&s1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _223 = &MEM[(const struct secp256k1_fe * )b_17(D) + 40B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (&s2.n, _223, &zz.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&s2.n, &s2.n, _225); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* t = u1; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _208 = t.n[0]; *)
mov v208 t_0;
(* _209 = u2.n[0]; *)
mov v209 u2_0;
(* _210 = _208 + _209; *)
uadd v210 v208 v209;
(* t.n[0] = _210; *)
mov t_0 v210;
(* _211 = t.n[1]; *)
mov v211 t_8;
(* _212 = u2.n[1]; *)
mov v212 u2_8;
(* _213 = _211 + _212; *)
uadd v213 v211 v212;
(* t.n[1] = _213; *)
mov t_8 v213;
(* _214 = t.n[2]; *)
mov v214 t_16;
(* _215 = u2.n[2]; *)
mov v215 u2_16;
(* _216 = _214 + _215; *)
uadd v216 v214 v215;
(* t.n[2] = _216; *)
mov t_16 v216;
(* _217 = t.n[3]; *)
mov v217 t_24;
(* _218 = u2.n[3]; *)
mov v218 u2_24;
(* _219 = _217 + _218; *)
uadd v219 v217 v218;
(* t.n[3] = _219; *)
mov t_24 v219;
(* _220 = t.n[4]; *)
mov v220 t_32;
(* _221 = u2.n[4]; *)
mov v221 u2_32;
(* _222 = _220 + _221; *)
uadd v222 v220 v221;
(* t.n[4] = _222; *)
mov t_32 v222;
(* m = s1; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _193 = m.n[0]; *)
mov v193 m_0;
(* _194 = s2.n[0]; *)
mov v194 s2_0;
(* _195 = _193 + _194; *)
uadd v195 v193 v194;
(* m.n[0] = _195; *)
mov m_0 v195;
(* _196 = m.n[1]; *)
mov v196 m_8;
(* _197 = s2.n[1]; *)
mov v197 s2_8;
(* _198 = _196 + _197; *)
uadd v198 v196 v197;
(* m.n[1] = _198; *)
mov m_8 v198;
(* _199 = m.n[2]; *)
mov v199 m_16;
(* _200 = s2.n[2]; *)
mov v200 s2_16;
(* _201 = _199 + _200; *)
uadd v201 v199 v200;
(* m.n[2] = _201; *)
mov m_16 v201;
(* _202 = m.n[3]; *)
mov v202 m_24;
(* _203 = s2.n[3]; *)
mov v203 s2_24;
(* _204 = _202 + _203; *)
uadd v204 v202 v203;
(* m.n[3] = _204; *)
mov m_24 v204;
(* _205 = m.n[4]; *)
mov v205 m_32;
(* _206 = s2.n[4]; *)
mov v206 s2_32;
(* _207 = _205 + _206; *)
uadd v207 v205 v206;
(* m.n[4] = _207; *)
mov m_32 v207;
(* secp256k1_fe_sqr_inner (&rr.n, &t.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__183.355_252 = MEM[(long unsigned int * )&u2]; *)
mov vect__183355252_0 u2_0;
mov vect__183355252_1 u2_8;
(* vect__183.356_254 = MEM[(long unsigned int * )&u2 + 16B]; *)
mov vect__183356254_0 u2_16;
mov vect__183356254_1 u2_24;
(* vect__184.357_258 = { 18014381329608892, 18014398509481980 } - vect__183.355_252; *)
usub vect__184357258_0 0x3ffffbfffff0bc@uint64 vect__183355252_0;
usub vect__184357258_1 0x3ffffffffffffc@uint64 vect__183355252_1;
(* vect__184.357_259 = { 18014398509481980, 18014398509481980 } - vect__183.356_254; *)
usub vect__184357259_0 0x3ffffffffffffc@uint64 vect__183356254_0;
usub vect__184357259_1 0x3ffffffffffffc@uint64 vect__183356254_1;
(* MEM[(long unsigned int * )&m_alt] = vect__184.357_258; *)
mov m_alt_0 vect__184357258_0;
mov m_alt_8 vect__184357258_1;
(* MEM[(long unsigned int * )&m_alt + 16B] = vect__184.357_259; *)
mov m_alt_16 vect__184357259_0;
mov m_alt_24 vect__184357259_1;
(* _191 = u2.n[4]; *)
mov v191 u2_32;
(* _192 = 1125899906842620 - _191; *)
usub v192 0x3fffffffffffc@uint64 v191;
(* m_alt.n[4] = _192; *)
mov m_alt_32 v192;
(* secp256k1_fe_mul_inner (&tt.n, &u1.n, &m_alt.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _168 = rr.n[0]; *)
mov v168 rr_0;
(* _169 = tt.n[0]; *)
mov v169 tt_0;
(* _170 = _168 + _169; *)
uadd v170 v168 v169;
(* rr.n[0] = _170; *)
mov rr_0 v170;
(* _171 = rr.n[1]; *)
mov v171 rr_8;
(* _172 = tt.n[1]; *)
mov v172 tt_8;
(* _173 = _171 + _172; *)
uadd v173 v171 v172;
(* rr.n[1] = _173; *)
mov rr_8 v173;
(* _174 = rr.n[2]; *)
mov v174 rr_16;
(* _175 = tt.n[2]; *)
mov v175 tt_16;
(* _176 = _174 + _175; *)
uadd v176 v174 v175;
(* rr.n[2] = _176; *)
mov rr_16 v176;
(* _177 = rr.n[3]; *)
mov v177 rr_24;
(* _178 = tt.n[3]; *)
mov v178 tt_24;
(* _179 = _177 + _178; *)
uadd v179 v177 v178;
(* rr.n[3] = _179; *)
mov rr_24 v179;
(* _180 = rr.n[4]; *)
mov v180 rr_32;
(* _181 = tt.n[4]; *)
mov v181 tt_32;
(* _182 = _180 + _181; *)
uadd v182 v180 v181;
(* rr.n[4] = _182; *)
mov rr_32 v182;
(* _1 = secp256k1_fe_normalizes_to_zero (&m); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _2 = secp256k1_fe_normalizes_to_zero (&rr); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* degenerate_26 = _1 & _2; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
and int32 degenerate26 v1 v2;
(* rr_alt = s1; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _158 = rr_alt.n[0]; *)
mov v158 rr_alt_0;
(* _159 = _158 * 2; *)
umul v159 v158 0x2@uint64;
(* _160 = rr_alt.n[1]; *)
mov v160 rr_alt_8;
(* _161 = _160 * 2; *)
umul v161 v160 0x2@uint64;
(* _162 = rr_alt.n[2]; *)
mov v162 rr_alt_16;
(* _163 = _162 * 2; *)
umul v163 v162 0x2@uint64;
(* _164 = rr_alt.n[3]; *)
mov v164 rr_alt_24;
(* _165 = _164 * 2; *)
umul v165 v164 0x2@uint64;
(* _166 = rr_alt.n[4]; *)
mov v166 rr_alt_32;
(* _167 = _166 * 2; *)
umul v167 v166 0x2@uint64;
(* _143 = m_alt.n[0]; *)
mov v143 m_alt_0;
(* _144 = u1.n[0]; *)
mov v144 u1_0;
(* _145 = _143 + _144; *)
uadd v145 v143 v144;
(* _146 = m_alt.n[1]; *)
mov v146 m_alt_8;
(* _147 = u1.n[1]; *)
mov v147 u1_8;
(* _148 = _146 + _147; *)
uadd v148 v146 v147;
(* _149 = m_alt.n[2]; *)
mov v149 m_alt_16;
(* _150 = u1.n[2]; *)
mov v150 u1_16;
(* _151 = _149 + _150; *)
uadd v151 v149 v150;
(* _152 = m_alt.n[3]; *)
mov v152 m_alt_24;
(* _153 = u1.n[3]; *)
mov v153 u1_24;
(* _154 = _152 + _153; *)
uadd v154 v152 v153;
(* _155 = m_alt.n[4]; *)
mov v155 m_alt_32;
(* _156 = u1.n[4]; *)
mov v156 u1_32;
(* _157 = _155 + _156; *)
uadd v157 v155 v156;
(* _3 = degenerate_26 == 0; *)
subb lt_value dontcare degenerate26 0x0@int32;
subb gt_value dontcare 0x0@int32 degenerate26;
or uint1 v3 lt_value gt_value;
not uint1 v3 v3;
vpc v3@uint8 v3@uint1;
(* _448 = (long unsigned int) _3; *)
vpc v448@uint64 v3@uint8;
(* mask0_449 = _448 + 18446744073709551615; *)
uadd mask0449 v448 0xffffffffffffffff@uint64;
(* _450 = -_448; *)
(* TODO: check negation semantics *)
usubb carry v450 0@uint64 v448;
(* _452 = _159 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v452 v159 mask0449;
(* _454 = _170 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v454 v170 v450;
(* _455 = _452 | _454; *)
(* Bitwise or , may need assert and assume *)
or uint64 v455 v452 v454;
(* rr_alt.n[0] = _455; *)
mov rr_alt_0 v455;
(* _457 = _161 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v457 v161 mask0449;
(* _459 = _173 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v459 v173 v450;
(* _460 = _457 | _459; *)
(* Bitwise or , may need assert and assume *)
or uint64 v460 v457 v459;
(* rr_alt.n[1] = _460; *)
mov rr_alt_8 v460;
(* _462 = _163 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v462 v163 mask0449;
(* _464 = _176 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v464 v176 v450;
(* _465 = _462 | _464; *)
(* Bitwise or , may need assert and assume *)
or uint64 v465 v462 v464;
(* rr_alt.n[2] = _465; *)
mov rr_alt_16 v465;
(* _467 = _165 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v467 v165 mask0449;
(* _469 = _179 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v469 v179 v450;
(* _470 = _467 | _469; *)
(* Bitwise or , may need assert and assume *)
or uint64 v470 v467 v469;
(* rr_alt.n[3] = _470; *)
mov rr_alt_24 v470;
(* _472 = _167 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v472 v167 mask0449;
(* _474 = _182 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v474 v182 v450;
(* _475 = _472 | _474; *)
(* Bitwise or , may need assert and assume *)
or uint64 v475 v472 v474;
(* rr_alt.n[4] = _475; *)
mov rr_alt_32 v475;
(* _424 = _145 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v424 v145 mask0449;
(* _425 = m.n[0]; *)
mov v425 m_0;
(* _426 = _425 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v426 v425 v450;
(* _427 = _424 | _426; *)
(* Bitwise or , may need assert and assume *)
or uint64 v427 v424 v426;
(* m_alt.n[0] = _427; *)
mov m_alt_0 v427;
(* _429 = _148 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v429 v148 mask0449;
(* _430 = m.n[1]; *)
mov v430 m_8;
(* _431 = _430 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v431 v430 v450;
(* _432 = _429 | _431; *)
(* Bitwise or , may need assert and assume *)
or uint64 v432 v429 v431;
(* m_alt.n[1] = _432; *)
mov m_alt_8 v432;
(* _434 = _151 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v434 v151 mask0449;
(* _435 = m.n[2]; *)
mov v435 m_16;
(* _436 = _435 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v436 v435 v450;
(* _437 = _434 | _436; *)
(* Bitwise or , may need assert and assume *)
or uint64 v437 v434 v436;
(* m_alt.n[2] = _437; *)
mov m_alt_16 v437;
(* _439 = _154 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v439 v154 mask0449;
(* _440 = m.n[3]; *)
mov v440 m_24;
(* _441 = _440 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v441 v440 v450;
(* _442 = _439 | _441; *)
(* Bitwise or , may need assert and assume *)
or uint64 v442 v439 v441;
(* m_alt.n[3] = _442; *)
mov m_alt_24 v442;
(* _444 = _157 & mask0_449; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v444 v157 mask0449;
(* _445 = m.n[4]; *)
mov v445 m_32;
(* _446 = _445 & _450; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v446 v445 v450;
(* _447 = _444 | _446; *)
(* Bitwise or , may need assert and assume *)
or uint64 v447 v444 v446;
(* m_alt.n[4] = _447; *)
mov m_alt_32 v447;
(* secp256k1_fe_sqr_inner (&n.n, &m_alt.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_mul_inner (&q.n, &n.n, &t.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* secp256k1_fe_sqr_inner (&n.n, &n.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _10 = {degenerate_26, degenerate_26, degenerate_26, degenerate_26}; *)
mov v10_0 degenerate26;
mov v10_1 degenerate26;
mov v10_2 degenerate26;
mov v10_3 degenerate26;
(* vect__392.360_456 = [vec_unpack_lo_expr] _10; *)
mov vect__392360456_0 v10_0;
mov vect__392360456_1 v10_1;
(* vect__392.360_453 = [vec_unpack_hi_expr] _10; *)
mov vect__392360453_0 v10_2;
mov vect__392360453_1 v10_3;
(* _392 = (long unsigned int) degenerate_26; *)
cast v392@uint64 degenerate26@int32;
(* vect_mask0_393.361_463 = vect__392.360_456 + { 18446744073709551615, 18446744073709551615 }; *)
uadd vect_mask0_393361463_0 vect__392360456_0 0xffffffffffffffff@uint64;
uadd vect_mask0_393361463_1 vect__392360456_1 0xffffffffffffffff@uint64;
(* vect_mask0_393.361_466 = vect__392.360_453 + { 18446744073709551615, 18446744073709551615 }; *)
uadd vect_mask0_393361466_0 vect__392360453_0 0xffffffffffffffff@uint64;
uadd vect_mask0_393361466_1 vect__392360453_1 0xffffffffffffffff@uint64;
(* mask0_393 = _392 + 18446744073709551615; *)
uadd mask0393 v392 0xffffffffffffffff@uint64;
(* vect__394.367_423 = -vect__392.360_456; *)
(* TODO: check negation semantics *)
usubb carry_0 vect__394367423_0 0@uint64 vect__392360456_0;
usubb carry_1 vect__394367423_1 0@uint64 vect__392360456_1;
(* vect__394.367_428 = -vect__392.360_453; *)
(* TODO: check negation semantics *)
usubb carry_0 vect__394367428_0 0@uint64 vect__392360453_0;
usubb carry_1 vect__394367428_1 0@uint64 vect__392360453_1;
(* _394 = -_392; *)
(* TODO: check negation semantics *)
usubb carry v394 0@uint64 v392;
(* vect__395.364_468 = MEM[(long unsigned int * )&n]; *)
mov vect__395364468_0 n_0;
mov vect__395364468_1 n_8;
(* vect__395.365_473 = MEM[(long unsigned int * )&n + 16B]; *)
mov vect__395365473_0 n_16;
mov vect__395365473_1 n_24;
(* vect__396.366_421 = vect_mask0_393.361_463 & vect__395.364_468; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__396366421_0 vect_mask0_393361463_0 vect__395364468_0;
and uint64 vect__396366421_1 vect_mask0_393361463_1 vect__395364468_1;
(* vect__396.366_422 = vect_mask0_393.361_466 & vect__395.365_473; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__396366422_0 vect_mask0_393361466_0 vect__395365473_0;
and uint64 vect__396366422_1 vect_mask0_393361466_1 vect__395365473_1;
(* vect__397.370_433 = MEM[(long unsigned int * )&m]; *)
mov vect__397370433_0 m_0;
mov vect__397370433_1 m_8;
(* vect__397.371_443 = MEM[(long unsigned int * )&m + 16B]; *)
mov vect__397371443_0 m_16;
mov vect__397371443_1 m_24;
(* vect__398.372_367 = vect__394.367_423 & vect__397.370_433; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__398372367_0 vect__394367423_0 vect__397370433_0;
and uint64 vect__398372367_1 vect__394367423_1 vect__397370433_1;
(* vect__398.372_372 = vect__394.367_428 & vect__397.371_443; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__398372372_0 vect__394367428_0 vect__397371443_0;
and uint64 vect__398372372_1 vect__394367428_1 vect__397371443_1;
(* vect__399.373_377 = vect__398.372_367 | vect__396.366_421; *)
(* Bitwise or , may need assert and assume *)
or uint64 vect__399373377_0 vect__398372367_0 vect__396366421_0;
or uint64 vect__399373377_1 vect__398372367_1 vect__396366421_1;
(* vect__399.373_382 = vect__398.372_372 | vect__396.366_422; *)
(* Bitwise or , may need assert and assume *)
or uint64 vect__399373382_0 vect__398372372_0 vect__396366422_0;
or uint64 vect__399373382_1 vect__398372372_1 vect__396366422_1;
(* MEM[(long unsigned int * )&n] = vect__399.373_377; *)
mov n_0 vect__399373377_0;
mov n_8 vect__399373377_1;
(* MEM[(long unsigned int * )&n + 16B] = vect__399.373_382; *)
mov n_16 vect__399373382_0;
mov n_24 vect__399373382_1;
(* _415 = n.n[4]; *)
mov v415 n_32;
(* _416 = mask0_393 & _415; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v416 mask0393 v415;
(* _417 = m.n[4]; *)
mov v417 m_32;
(* _418 = _394 & _417; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v418 v394 v417;
(* _419 = _416 | _418; *)
(* Bitwise or , may need assert and assume *)
or uint64 v419 v416 v418;
(* n.n[4] = _419; *)
mov n_32 v419;
(* secp256k1_fe_sqr_inner (&t.n, &rr_alt.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _142 = &MEM[(struct secp256k1_fe * )r_31(D) + 80B].n; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* secp256k1_fe_mul_inner (_142, _225, &m_alt.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _6 = secp256k1_fe_normalizes_to_zero (_142); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _7 = a_18(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v7 a18_120;
(* _8 = 1 - _7; *)
ssub v8 0x1@int32 v7;
(* infinity_33 = _6 * _8; *)
smul infinity33 v6 v8;
(* _132 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[0]; *)
mov v132 r31_80;
(* _133 = _132 * 2; *)
umul v133 v132 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[0] = _133; *)
mov r31_80 v133;
(* _134 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[1]; *)
mov v134 r31_88;
(* _135 = _134 * 2; *)
umul v135 v134 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[1] = _135; *)
mov r31_88 v135;
(* _136 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[2]; *)
mov v136 r31_96;
(* _137 = _136 * 2; *)
umul v137 v136 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[2] = _137; *)
mov r31_96 v137;
(* _138 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[3]; *)
mov v138 r31_104;
(* _139 = _138 * 2; *)
umul v139 v138 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[3] = _139; *)
mov r31_104 v139;
(* _140 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[4]; *)
mov v140 r31_112;
(* _141 = _140 * 2; *)
umul v141 v140 0x2@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[4] = _141; *)
mov r31_112 v141;
(* _122 = q.n[0]; *)
mov v122 q_0;
(* _123 = 18014381329608892 - _122; *)
usub v123 0x3ffffbfffff0bc@uint64 v122;
(* q.n[0] = _123; *)
mov q_0 v123;
(* _124 = q.n[1]; *)
mov v124 q_8;
(* _125 = 18014398509481980 - _124; *)
usub v125 0x3ffffffffffffc@uint64 v124;
(* q.n[1] = _125; *)
mov q_8 v125;
(* _126 = q.n[2]; *)
mov v126 q_16;
(* _127 = 18014398509481980 - _126; *)
usub v127 0x3ffffffffffffc@uint64 v126;
(* q.n[2] = _127; *)
mov q_16 v127;
(* _128 = q.n[3]; *)
mov v128 q_24;
(* _129 = 18014398509481980 - _128; *)
usub v129 0x3ffffffffffffc@uint64 v128;
(* q.n[3] = _129; *)
mov q_24 v129;
(* _130 = q.n[4]; *)
mov v130 q_32;
(* _131 = 1125899906842620 - _130; *)
usub v131 0x3fffffffffffc@uint64 v130;
(* q.n[4] = _131; *)
mov q_32 v131;
(* _112 = t.n[0]; *)
mov v112 t_0;
(* _113 = _112 + _123; *)
uadd v113 v112 v123;
(* t.n[0] = _113; *)
mov t_0 v113;
(* _114 = t.n[1]; *)
mov v114 t_8;
(* _115 = _114 + _125; *)
uadd v115 v114 v125;
(* t.n[1] = _115; *)
mov t_8 v115;
(* _116 = t.n[2]; *)
mov v116 t_16;
(* _117 = _116 + _127; *)
uadd v117 v116 v127;
(* t.n[2] = _117; *)
mov t_16 v117;
(* _118 = t.n[3]; *)
mov v118 t_24;
(* _119 = _118 + _129; *)
uadd v119 v118 v129;
(* t.n[3] = _119; *)
mov t_24 v119;
(* _120 = t.n[4]; *)
mov v120 t_32;
(* _121 = _120 + _131; *)
uadd v121 v120 v131;
(* t.n[4] = _121; *)
mov t_32 v121;
(* secp256k1_fe_normalize_weak (&t); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* r_31(D)->x = t; *)
(* TODO: Skip VAR_DECL, need self translate, maybe need read output gimple *)
(* _102 = t.n[0]; *)
mov v102 t_0;
(* _103 = _102 * 2; *)
umul v103 v102 0x2@uint64;
(* _104 = t.n[1]; *)
mov v104 t_8;
(* _105 = _104 * 2; *)
umul v105 v104 0x2@uint64;
(* _106 = t.n[2]; *)
mov v106 t_16;
(* _107 = _106 * 2; *)
umul v107 v106 0x2@uint64;
(* _108 = t.n[3]; *)
mov v108 t_24;
(* _109 = _108 * 2; *)
umul v109 v108 0x2@uint64;
(* _110 = t.n[4]; *)
mov v110 t_32;
(* _111 = _110 * 2; *)
umul v111 v110 0x2@uint64;
(* _92 = q.n[0]; *)
mov v92 q_0;
(* _93 = _92 + _103; *)
uadd v93 v92 v103;
(* t.n[0] = _93; *)
mov t_0 v93;
(* _94 = q.n[1]; *)
mov v94 q_8;
(* _95 = _94 + _105; *)
uadd v95 v94 v105;
(* t.n[1] = _95; *)
mov t_8 v95;
(* _96 = q.n[2]; *)
mov v96 q_16;
(* _97 = _96 + _107; *)
uadd v97 v96 v107;
(* t.n[2] = _97; *)
mov t_16 v97;
(* _98 = q.n[3]; *)
mov v98 q_24;
(* _99 = _98 + _109; *)
uadd v99 v98 v109;
(* t.n[3] = _99; *)
mov t_24 v99;
(* _100 = q.n[4]; *)
mov v100 q_32;
(* _101 = _100 + _111; *)
uadd v101 v100 v111;
(* t.n[4] = _101; *)
mov t_32 v101;
(* secp256k1_fe_mul_inner (&t.n, &t.n, &rr_alt.n); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _77 = t.n[0]; *)
mov v77 t_0;
(* _78 = n.n[0]; *)
mov v78 n_0;
(* _79 = _77 + _78; *)
uadd v79 v77 v78;
(* t.n[0] = _79; *)
mov t_0 v79;
(* _80 = t.n[1]; *)
mov v80 t_8;
(* _81 = n.n[1]; *)
mov v81 n_8;
(* _82 = _80 + _81; *)
uadd v82 v80 v81;
(* t.n[1] = _82; *)
mov t_8 v82;
(* _83 = t.n[2]; *)
mov v83 t_16;
(* _84 = n.n[2]; *)
mov v84 n_16;
(* _85 = _83 + _84; *)
uadd v85 v83 v84;
(* t.n[2] = _85; *)
mov t_16 v85;
(* _86 = t.n[3]; *)
mov v86 t_24;
(* _87 = n.n[3]; *)
mov v87 n_24;
(* _88 = _86 + _87; *)
uadd v88 v86 v87;
(* t.n[3] = _88; *)
mov t_24 v88;
(* _89 = t.n[4]; *)
mov v89 t_32;
(* _90 = n.n[4]; *)
mov v90 n_32;
(* _91 = _89 + _90; *)
uadd v91 v89 v90;
(* t.n[4] = _91; *)
mov t_32 v91;
(* _9 = &r_31(D)->y; *)
(* TODO: Skipped, ADDR_EXPR, maybe need self translate *)
(* _72 = 36028762659217784 - _79; *)
usub v72 0x7ffff7ffffe178@uint64 v79;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[0] = _72; *)
mov r31_40 v72;
(* _73 = 36028797018963960 - _82; *)
usub v73 0x7ffffffffffff8@uint64 v82;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[1] = _73; *)
mov r31_48 v73;
(* _74 = 36028797018963960 - _85; *)
usub v74 0x7ffffffffffff8@uint64 v85;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[2] = _74; *)
mov r31_56 v74;
(* _75 = 36028797018963960 - _88; *)
usub v75 0x7ffffffffffff8@uint64 v88;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[3] = _75; *)
mov r31_64 v75;
(* _76 = 2251799813685240 - _91; *)
usub v76 0x7fffffffffff8@uint64 v91;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[4] = _76; *)
mov r31_72 v76;
(* secp256k1_fe_normalize_weak (_9); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _62 = MEM[(struct secp256k1_fe * )r_31(D)].n[0]; *)
mov v62 r31_0;
(* _63 = _62 * 4; *)
umul v63 v62 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[0] = _63; *)
mov r31_0 v63;
(* _64 = MEM[(struct secp256k1_fe * )r_31(D)].n[1]; *)
mov v64 r31_8;
(* _65 = _64 * 4; *)
umul v65 v64 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[1] = _65; *)
mov r31_8 v65;
(* _66 = MEM[(struct secp256k1_fe * )r_31(D)].n[2]; *)
mov v66 r31_16;
(* _67 = _66 * 4; *)
umul v67 v66 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[2] = _67; *)
mov r31_16 v67;
(* _68 = MEM[(struct secp256k1_fe * )r_31(D)].n[3]; *)
mov v68 r31_24;
(* _69 = _68 * 4; *)
umul v69 v68 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[3] = _69; *)
mov r31_24 v69;
(* _70 = MEM[(struct secp256k1_fe * )r_31(D)].n[4]; *)
mov v70 r31_32;
(* _71 = _70 * 4; *)
umul v71 v70 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[4] = _71; *)
mov r31_32 v71;
(* _32 = MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[0]; *)
mov v32 r31_40;
(* _25 = _32 * 4; *)
umul v25 v32 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[0] = _25; *)
mov r31_40 v25;
(* _54 = MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[1]; *)
mov v54 r31_48;
(* _55 = _54 * 4; *)
umul v55 v54 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[1] = _55; *)
mov r31_48 v55;
(* _56 = MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[2]; *)
mov v56 r31_56;
(* _57 = _56 * 4; *)
umul v57 v56 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[2] = _57; *)
mov r31_56 v57;
(* _58 = MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[3]; *)
mov v58 r31_64;
(* _59 = _58 * 4; *)
umul v59 v58 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[3] = _59; *)
mov r31_64 v59;
(* _60 = MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[4]; *)
mov v60 r31_72;
(* _61 = _60 * 4; *)
umul v61 v60 0x4@uint64;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[4] = _61; *)
mov r31_72 v61;
(* _11 = a_18(D)->infinity; *)
(* rhs field infinity's offset is 120 *)
mov v11 a18_120;
(* _364 = (long unsigned int) _11; *)
cast v364@uint64 v11@int32;
(* mask0_365 = _364 + 18446744073709551615; *)
uadd mask0365 v364 0xffffffffffffffff@uint64;
(* _366 = -_364; *)
(* TODO: check negation semantics *)
usubb carry v366 0@uint64 v364;
(* _368 = _63 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v368 v63 mask0365;
(* _369 = MEM[(const struct secp256k1_fe * )b_17(D)].n[0]; *)
mov v369 b17_0;
(* _370 = _366 & _369; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v370 v366 v369;
(* _371 = _368 | _370; *)
(* Bitwise or , may need assert and assume *)
or uint64 v371 v368 v370;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[0] = _371; *)
mov r31_0 v371;
(* _373 = _65 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v373 v65 mask0365;
(* _374 = MEM[(const struct secp256k1_fe * )b_17(D)].n[1]; *)
mov v374 b17_8;
(* _375 = _366 & _374; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v375 v366 v374;
(* _376 = _373 | _375; *)
(* Bitwise or , may need assert and assume *)
or uint64 v376 v373 v375;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[1] = _376; *)
mov r31_8 v376;
(* _378 = _67 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v378 v67 mask0365;
(* _379 = MEM[(const struct secp256k1_fe * )b_17(D)].n[2]; *)
mov v379 b17_16;
(* _380 = _366 & _379; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v380 v366 v379;
(* _381 = _378 | _380; *)
(* Bitwise or , may need assert and assume *)
or uint64 v381 v378 v380;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[2] = _381; *)
mov r31_16 v381;
(* _383 = _69 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v383 v69 mask0365;
(* _384 = MEM[(const struct secp256k1_fe * )b_17(D)].n[3]; *)
mov v384 b17_24;
(* _385 = _366 & _384; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v385 v366 v384;
(* _386 = _383 | _385; *)
(* Bitwise or , may need assert and assume *)
or uint64 v386 v383 v385;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[3] = _386; *)
mov r31_24 v386;
(* _388 = _71 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v388 v71 mask0365;
(* _389 = MEM[(const struct secp256k1_fe * )b_17(D)].n[4]; *)
mov v389 b17_32;
(* _390 = _366 & _389; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v390 v366 v389;
(* _391 = _388 | _390; *)
(* Bitwise or , may need assert and assume *)
or uint64 v391 v388 v390;
(* MEM[(struct secp256k1_fe * )r_31(D)].n[4] = _391; *)
mov r31_32 v391;
(* _340 = _25 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v340 v25 mask0365;
(* _341 = MEM[(const struct secp256k1_fe * )b_17(D) + 40B].n[0]; *)
mov v341 b17_40;
(* _342 = _341 & _366; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v342 v341 v366;
(* _343 = _340 | _342; *)
(* Bitwise or , may need assert and assume *)
or uint64 v343 v340 v342;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[0] = _343; *)
mov r31_40 v343;
(* _345 = _55 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v345 v55 mask0365;
(* _346 = MEM[(const struct secp256k1_fe * )b_17(D) + 40B].n[1]; *)
mov v346 b17_48;
(* _347 = _346 & _366; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v347 v346 v366;
(* _348 = _345 | _347; *)
(* Bitwise or , may need assert and assume *)
or uint64 v348 v345 v347;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[1] = _348; *)
mov r31_48 v348;
(* _350 = _57 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v350 v57 mask0365;
(* _351 = MEM[(const struct secp256k1_fe * )b_17(D) + 40B].n[2]; *)
mov v351 b17_56;
(* _352 = _351 & _366; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v352 v351 v366;
(* _353 = _350 | _352; *)
(* Bitwise or , may need assert and assume *)
or uint64 v353 v350 v352;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[2] = _353; *)
mov r31_56 v353;
(* _355 = _59 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v355 v59 mask0365;
(* _356 = MEM[(const struct secp256k1_fe * )b_17(D) + 40B].n[3]; *)
mov v356 b17_64;
(* _357 = _356 & _366; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v357 v356 v366;
(* _358 = _355 | _357; *)
(* Bitwise or , may need assert and assume *)
or uint64 v358 v355 v357;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[3] = _358; *)
mov r31_64 v358;
(* _360 = _61 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v360 v61 mask0365;
(* _361 = MEM[(const struct secp256k1_fe * )b_17(D) + 40B].n[4]; *)
mov v361 b17_72;
(* _362 = _361 & _366; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v362 v361 v366;
(* _363 = _360 | _362; *)
(* Bitwise or , may need assert and assume *)
or uint64 v363 v360 v362;
(* MEM[(struct secp256k1_fe * )r_31(D) + 40B].n[4] = _363; *)
mov r31_72 v363;
(* _311 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[0]; *)
mov v311 r31_80;
(* _312 = _311 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v312 v311 mask0365;
(* _314 = _366 & 1; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0x1@uint64 = 0x00000000000001 *)
(* Note: 0x1@uint64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and uint64 v314 v366 0x1@uint64;
(* _315 = _312 | _314; *)
(* Bitwise or , may need assert and assume *)
or uint64 v315 v312 v314;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[0] = _315; *)
mov r31_80 v315;
(* _316 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[1]; *)
mov v316 r31_88;
(* _317 = _316 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v317 v316 mask0365;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[1] = _317; *)
mov r31_88 v317;
(* _321 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[2]; *)
mov v321 r31_96;
(* _322 = _321 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v322 v321 mask0365;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[2] = _322; *)
mov r31_96 v322;
(* _326 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[3]; *)
mov v326 r31_104;
(* _327 = _326 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v327 v326 mask0365;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[3] = _327; *)
mov r31_104 v327;
(* _331 = MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[4]; *)
mov v331 r31_112;
(* _332 = _331 & mask0_365; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v332 v331 mask0365;
(* MEM[(struct secp256k1_fe * )r_31(D) + 80B].n[4] = _332; *)
mov r31_112 v332;
(* r_31(D)->infinity = infinity_33; *)
mov r31_120 infinity33;
(* zz ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* u2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* s2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tt ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* m ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* n ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* q ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* rr ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* m_alt ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* rr_alt ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ m_alt_0@uint64;
mov _ m_alt_8@uint64;
mov _ m_alt_16@uint64;
mov _ m_alt_24@uint64;
mov _ m_alt_32@uint64;
mov _ r31_0@uint64;
mov _ r31_8@uint64;
mov _ r31_16@uint64;
mov _ r31_24@uint64;
mov _ r31_32@uint64;
mov _ r31_40@uint64;
mov _ r31_48@uint64;
mov _ r31_56@uint64;
mov _ r31_64@uint64;
mov _ r31_72@uint64;
mov _ r31_80@uint64;
mov _ r31_88@uint64;
mov _ r31_96@uint64;
mov _ r31_104@uint64;
mov _ r31_112@uint64;
mov _ r31_120@int32;
mov _ rr_0@uint64;
mov _ rr_8@uint64;
mov _ rr_16@uint64;
mov _ rr_24@uint64;
mov _ rr_32@uint64;
mov _ rr_alt_0@uint64;
mov _ rr_alt_8@uint64;
mov _ rr_alt_16@uint64;
mov _ rr_alt_24@uint64;
mov _ rr_alt_32@uint64;
mov _ s1_0;
mov _ t_0@uint64;
mov _ t_8@uint64;
mov _ t_16@uint64;
mov _ t_24@uint64;
mov _ t_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

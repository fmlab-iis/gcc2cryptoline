proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov x2_0@uint64 _;
mov x2_8@uint64 _;
mov x2_16@uint64 _;
mov x2_24@uint64 _;
mov x2_32@uint64 _;
mov x3_0@uint64 _;
mov x3_8@uint64 _;
mov x3_16@uint64 _;
mov x3_24@uint64 _;
mov x3_32@uint64 _;
mov z2_0@uint64 _;
mov z2_8@uint64 _;
mov z2_16@uint64 _;
mov z2_24@uint64 _;
mov z2_32@uint64 _;
mov z3_0@uint64 _;
mov z3_8@uint64 _;
mov z3_16@uint64 _;
mov z3_24@uint64 _;
mov z3_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* vect__111.467_232 = MEM[(const uint64_t * )&x3]; *)
mov vect__111467232_0 x3_0;
mov vect__111467232_1 x3_8;
(* vect__111.468_234 = MEM[(const uint64_t * )&x3 + 16B]; *)
mov vect__111468234_0 x3_16;
mov vect__111468234_1 x3_24;
(* vect__112.471_236 = MEM[(const uint64_t * )&z3]; *)
mov vect__112471236_0 z3_0;
mov vect__112471236_1 z3_8;
(* vect__112.472_238 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect__112472238_0 z3_16;
mov vect__112472238_1 z3_24;
(* vect__258.476_105 = vect__111.467_232 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__258476105_0 vect__111467232_0 0xfffffffffffda@uint64;
uadd vect__258476105_1 vect__111467232_1 0xffffffffffffe@uint64;
(* vect__258.476_109 = vect__111.468_234 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__258476109_0 vect__111468234_0 0xffffffffffffe@uint64;
uadd vect__258476109_1 vect__111468234_1 0xffffffffffffe@uint64;
(* vect__114.477_56 = vect__258.476_105 - vect__112.471_236; *)
usub vect__11447756_0 vect__258476105_0 vect__112471236_0;
usub vect__11447756_1 vect__258476105_1 vect__112471236_1;
(* vect__114.477_58 = vect__258.476_109 - vect__112.472_238; *)
usub vect__11447758_0 vect__258476109_0 vect__112472238_0;
usub vect__11447758_1 vect__258476109_1 vect__112472238_1;
(* MEM[(uint64_t * )&tmp0] = vect__114.477_56; *)
mov tmp0_0 vect__11447756_0;
mov tmp0_8 vect__11447756_1;
(* MEM[(uint64_t * )&tmp0 + 16B] = vect__114.477_58; *)
mov tmp0_16 vect__11447758_0;
mov tmp0_24 vect__11447758_1;
(* _127 = MEM[(const uint64_t * )&x3 + 32B]; *)
mov v127 x3_32;
(* _128 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov v128 z3_32;
(* _254 = _127 + 4503599627370494; *)
uadd v254 v127 0xffffffffffffe@uint64;
(* _130 = _254 - _128; *)
usub v130 v254 v128;
(* MEM[(uint64_t * )&tmp0 + 32B] = _130; *)
mov tmp0_32 v130;
(* vect__91.456_187 = MEM[(const uint64_t * )&x2]; *)
mov vect__91456187_0 x2_0;
mov vect__91456187_1 x2_8;
(* vect__91.457_197 = MEM[(const uint64_t * )&x2 + 16B]; *)
mov vect__91457197_0 x2_16;
mov vect__91457197_1 x2_24;
(* vect__92.460_223 = MEM[(const uint64_t * )&z2]; *)
mov vect__92460223_0 z2_0;
mov vect__92460223_1 z2_8;
(* vect__92.461_225 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect__92461225_0 z2_16;
mov vect__92461225_1 z2_24;
(* vect__253.480_46 = vect__91.456_187 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__25348046_0 vect__91456187_0 0xfffffffffffda@uint64;
uadd vect__25348046_1 vect__91456187_1 0xffffffffffffe@uint64;
(* vect__253.480_50 = vect__91.457_197 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__25348050_0 vect__91457197_0 0xffffffffffffe@uint64;
uadd vect__25348050_1 vect__91457197_1 0xffffffffffffe@uint64;
(* vect__94.481_54 = vect__253.480_46 - vect__92.460_223; *)
usub vect__9448154_0 vect__25348046_0 vect__92460223_0;
usub vect__9448154_1 vect__25348046_1 vect__92460223_1;
(* vect__94.481_259 = vect__253.480_50 - vect__92.461_225; *)
usub vect__94481259_0 vect__25348050_0 vect__92461225_0;
usub vect__94481259_1 vect__25348050_1 vect__92461225_1;
(* MEM[(uint64_t * )&tmp1] = vect__94.481_54; *)
mov tmp1_0 vect__9448154_0;
mov tmp1_8 vect__9448154_1;
(* MEM[(uint64_t * )&tmp1 + 16B] = vect__94.481_259; *)
mov tmp1_16 vect__94481259_0;
mov tmp1_24 vect__94481259_1;
(* _107 = MEM[(const uint64_t * )&x2 + 32B]; *)
mov v107 x2_32;
(* _108 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov v108 z2_32;
(* _249 = _107 + 4503599627370494; *)
uadd v249 v107 0xffffffffffffe@uint64;
(* _110 = _249 - _108; *)
usub v110 v249 v108;
(* MEM[(uint64_t * )&tmp1 + 32B] = _110; *)
mov tmp1_32 v110;
(* vect__86.462_227 = vect__91.456_187 + vect__92.460_223; *)
uadd vect__86462227_0 vect__91456187_0 vect__92460223_0;
uadd vect__86462227_1 vect__91456187_1 vect__92460223_1;
(* vect__86.462_228 = vect__91.457_197 + vect__92.461_225; *)
uadd vect__86462228_0 vect__91457197_0 vect__92461225_0;
uadd vect__86462228_1 vect__91457197_1 vect__92461225_1;
(* MEM[(uint64_t * )&x2] = vect__86.462_227; *)
mov x2_0 vect__86462227_0;
mov x2_8 vect__86462227_1;
(* MEM[(uint64_t * )&x2 + 16B] = vect__86.462_228; *)
mov x2_16 vect__86462228_0;
mov x2_24 vect__86462228_1;
(* _90 = _107 + _108; *)
uadd v90 v107 v108;
(* MEM[(uint64_t * )&x2 + 32B] = _90; *)
mov x2_32 v90;
(* vect__81.473_117 = vect__111.467_232 + vect__112.471_236; *)
uadd vect__81473117_0 vect__111467232_0 vect__112471236_0;
uadd vect__81473117_1 vect__111467232_1 vect__112471236_1;
(* vect__81.473_121 = vect__111.468_234 + vect__112.472_238; *)
uadd vect__81473121_0 vect__111468234_0 vect__112472238_0;
uadd vect__81473121_1 vect__111468234_1 vect__112472238_1;
(* MEM[(uint64_t * )&z2] = vect__81.473_117; *)
mov z2_0 vect__81473117_0;
mov z2_8 vect__81473117_1;
(* MEM[(uint64_t * )&z2 + 16B] = vect__81.473_121; *)
mov z2_16 vect__81473121_0;
mov z2_24 vect__81473121_1;
(* _85 = _127 + _128; *)
uadd v85 v127 v128;
(* MEM[(uint64_t * )&z2 + 32B] = _85; *)
mov z2_32 v85;
(* fe51_mul (&z3, &tmp0, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe51_mul (&z2, &z2, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe51_sq (&tmp0, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe51_sq (&tmp1, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__66.486_263 = MEM[(const uint64_t * )&z3]; *)
mov vect__66486263_0 z3_0;
mov vect__66486263_1 z3_8;
(* vect__66.487_265 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect__66487265_0 z3_16;
mov vect__66487265_1 z3_24;
(* vect__67.491_271 = MEM[(const uint64_t * )&z2]; *)
mov vect__67491271_0 z2_0;
mov vect__67491271_1 z2_8;
(* vect__67.492_273 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect__67492273_0 z2_16;
mov vect__67492273_1 z2_24;
(* vect__68.496_280 = vect__66.486_263 + vect__67.491_271; *)
uadd vect__68496280_0 vect__66486263_0 vect__67491271_0;
uadd vect__68496280_1 vect__66486263_1 vect__67491271_1;
(* vect__68.496_281 = vect__66.487_265 + vect__67.492_273; *)
uadd vect__68496281_0 vect__66487265_0 vect__67492273_0;
uadd vect__68496281_1 vect__66487265_1 vect__67492273_1;
(* MEM[(uint64_t * )&x3] = vect__68.496_280; *)
mov x3_0 vect__68496280_0;
mov x3_8 vect__68496280_1;
(* MEM[(uint64_t * )&x3 + 16B] = vect__68.496_281; *)
mov x3_16 vect__68496281_0;
mov x3_24 vect__68496281_1;
(* _78 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov v78 z3_32;
(* _79 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov v79 z2_32;
(* _80 = _78 + _79; *)
uadd v80 v78 v79;
(* MEM[(uint64_t * )&x3 + 32B] = _80; *)
mov x3_32 v80;
(* vect__248.488_269 = vect__66.486_263 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__248488269_0 vect__66486263_0 0xfffffffffffda@uint64;
uadd vect__248488269_1 vect__66486263_1 0xffffffffffffe@uint64;
(* vect__248.488_270 = vect__66.487_265 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__248488270_0 vect__66487265_0 0xffffffffffffe@uint64;
uadd vect__248488270_1 vect__66487265_1 0xffffffffffffe@uint64;
(* vect__57.493_275 = vect__248.488_269 - vect__67.491_271; *)
usub vect__57493275_0 vect__248488269_0 vect__67491271_0;
usub vect__57493275_1 vect__248488269_1 vect__67491271_1;
(* vect__57.493_276 = vect__248.488_270 - vect__67.492_273; *)
usub vect__57493276_0 vect__248488270_0 vect__67492273_0;
usub vect__57493276_1 vect__248488270_1 vect__67492273_1;
(* MEM[(uint64_t * )&z2] = vect__57.493_275; *)
mov z2_0 vect__57493275_0;
mov z2_8 vect__57493275_1;
(* MEM[(uint64_t * )&z2 + 16B] = vect__57.493_276; *)
mov z2_16 vect__57493276_0;
mov z2_24 vect__57493276_1;
(* _244 = _78 + 4503599627370494; *)
uadd v244 v78 0xffffffffffffe@uint64;
(* _65 = _244 - _79; *)
usub v65 v244 v79;
(* MEM[(uint64_t * )&z2 + 32B] = _65; *)
mov z2_32 v65;
(* fe51_mul (&x2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__36.501_285 = MEM[(const uint64_t * )&tmp1]; *)
mov vect__36501285_0 tmp1_0;
mov vect__36501285_1 tmp1_8;
(* vect__36.502_287 = MEM[(const uint64_t * )&tmp1 + 16B]; *)
mov vect__36502287_0 tmp1_16;
mov vect__36502287_1 tmp1_24;
(* vect__37.506_293 = MEM[(const uint64_t * )&tmp0]; *)
mov vect__37506293_0 tmp0_0;
mov vect__37506293_1 tmp0_8;
(* vect__37.507_295 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect__37507295_0 tmp0_16;
mov vect__37507295_1 tmp0_24;
(* vect__243.503_291 = vect__36.501_285 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__243503291_0 vect__36501285_0 0xfffffffffffda@uint64;
uadd vect__243503291_1 vect__36501285_1 0xffffffffffffe@uint64;
(* vect__243.503_292 = vect__36.502_287 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__243503292_0 vect__36502287_0 0xffffffffffffe@uint64;
uadd vect__243503292_1 vect__36502287_1 0xffffffffffffe@uint64;
(* vect__39.508_297 = vect__243.503_291 - vect__37.506_293; *)
usub vect__39508297_0 vect__243503291_0 vect__37506293_0;
usub vect__39508297_1 vect__243503291_1 vect__37506293_1;
(* vect__39.508_298 = vect__243.503_292 - vect__37.507_295; *)
usub vect__39508298_0 vect__243503292_0 vect__37507295_0;
usub vect__39508298_1 vect__243503292_1 vect__37507295_1;
(* MEM[(uint64_t * )&tmp1] = vect__39.508_297; *)
mov tmp1_0 vect__39508297_0;
mov tmp1_8 vect__39508297_1;
(* MEM[(uint64_t * )&tmp1 + 16B] = vect__39.508_298; *)
mov tmp1_16 vect__39508298_0;
mov tmp1_24 vect__39508298_1;
(* _52 = MEM[(const uint64_t * )&tmp1 + 32B]; *)
mov v52 tmp1_32;
(* _53 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov v53 tmp0_32;
(* _239 = _52 + 4503599627370494; *)
uadd v239 v52 0xffffffffffffe@uint64;
(* _55 = _239 - _53; *)
usub v55 v239 v53;
(* MEM[(uint64_t * )&tmp1 + 32B] = _55; *)
mov tmp1_32 v55;
(* fe51_sq (&z2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _171 = MEM[(uint64_t * )&tmp1]; *)
mov v171 tmp1_0;
(* h0_173 = _171 w* 121666; *)
umulj h0173 v171 0x1db42@uint64;
(* _174 = MEM[(uint64_t * )&tmp1 + 8B]; *)
mov v174 tmp1_8;
(* h1_176 = _174 w* 121666; *)
umulj h1176 v174 0x1db42@uint64;
(* _177 = MEM[(uint64_t * )&tmp1 + 16B]; *)
mov v177 tmp1_16;
(* h2_179 = _177 w* 121666; *)
umulj h2179 v177 0x1db42@uint64;
(* _180 = MEM[(uint64_t * )&tmp1 + 24B]; *)
mov v180 tmp1_24;
(* h3_182 = _180 w* 121666; *)
umulj h3182 v180 0x1db42@uint64;
(* _183 = MEM[(uint64_t * )&tmp1 + 32B]; *)
mov v183 tmp1_32;
(* h4_185 = _183 w* 121666; *)
umulj h4185 v183 0x1db42@uint64;
(* _186 = h2_179 >> 51; *)
usplit v186 tmp_to_use h2179 51;
(* h3_188 = h3_182 + _186; *)
uadd h3188 h3182 v186;
(* _189 = (long unsigned int) h2_179; *)
cast v189@uint64 h2179@uint128;
(* g2_190 = _189 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g2190 v189 0x7ffffffffffff@uint64;
(* _191 = h0_173 >> 51; *)
usplit v191 tmp_to_use h0173 51;
(* h1_193 = h1_176 + _191; *)
uadd h1193 h1176 v191;
(* _194 = (long unsigned int) h0_173; *)
cast v194@uint64 h0173@uint128;
(* g0_195 = _194 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g0195 v194 0x7ffffffffffff@uint64;
(* _196 = h3_188 >> 51; *)
usplit v196 tmp_to_use h3188 51;
(* h4_198 = h4_185 + _196; *)
uadd h4198 h4185 v196;
(* _199 = (long unsigned int) h3_188; *)
cast v199@uint64 h3188@uint128;
(* g3_200 = _199 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g3200 v199 0x7ffffffffffff@uint64;
(* _201 = h1_193 >> 51; *)
usplit v201 tmp_to_use h1193 51;
(* _202 = (long unsigned int) _201; *)
cast v202@uint64 v201@uint128;
(* g2_203 = g2_190 + _202; *)
uadd g2203 g2190 v202;
(* _204 = (long unsigned int) h1_193; *)
cast v204@uint64 h1193@uint128;
(* g1_205 = _204 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g1205 v204 0x7ffffffffffff@uint64;
(* _206 = h4_198 >> 51; *)
usplit v206 tmp_to_use h4198 51;
(* _207 = (long unsigned int) _206; *)
cast v207@uint64 v206@uint128;
(* _208 = _207 * 19; *)
umul v208 v207 0x13@uint64;
(* g0_209 = g0_195 + _208; *)
uadd g0209 g0195 v208;
(* _210 = (long unsigned int) h4_198; *)
cast v210@uint64 h4198@uint128;
(* g4_211 = _210 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g4211 v210 0x7ffffffffffff@uint64;
(* _212 = g2_203 >> 51; *)
usplit v212 tmp_to_use g2203 51;
(* g3_213 = g3_200 + _212; *)
uadd g3213 g3200 v212;
(* g2_214 = g2_203 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g2214 g2203 0x7ffffffffffff@uint64;
(* _215 = g0_209 >> 51; *)
usplit v215 tmp_to_use g0209 51;
(* g1_216 = g1_205 + _215; *)
uadd g1216 g1205 v215;
(* g0_217 = g0_209 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g0217 g0209 0x7ffffffffffff@uint64;
(* MEM[(uint64_t * )&z3] = g0_217; *)
mov z3_0 g0217;
(* MEM[(uint64_t * )&z3 + 8B] = g1_216; *)
mov z3_8 g1216;
(* MEM[(uint64_t * )&z3 + 16B] = g2_214; *)
mov z3_16 g2214;
(* MEM[(uint64_t * )&z3 + 24B] = g3_213; *)
mov z3_24 g3213;
(* MEM[(uint64_t * )&z3 + 32B] = g4_211; *)
mov z3_32 g4211;
(* fe51_sq (&x3, &x3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__21.513_302 = MEM[(const uint64_t * )&tmp0]; *)
mov vect__21513302_0 tmp0_0;
mov vect__21513302_1 tmp0_8;
(* vect__21.514_304 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect__21514304_0 tmp0_16;
mov vect__21514304_1 tmp0_24;
(* vect__22.517_306 = MEM[(const uint64_t * )&z3]; *)
mov vect__22517306_0 z3_0;
mov vect__22517306_1 z3_8;
(* vect__22.518_308 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect__22518308_0 z3_16;
mov vect__22518308_1 z3_24;
(* vect__23.519_310 = vect__21.513_302 + vect__22.517_306; *)
uadd vect__23519310_0 vect__21513302_0 vect__22517306_0;
uadd vect__23519310_1 vect__21513302_1 vect__22517306_1;
(* vect__23.519_311 = vect__21.514_304 + vect__22.518_308; *)
uadd vect__23519311_0 vect__21514304_0 vect__22518308_0;
uadd vect__23519311_1 vect__21514304_1 vect__22518308_1;
(* MEM[(uint64_t * )&tmp0] = vect__23.519_310; *)
mov tmp0_0 vect__23519310_0;
mov tmp0_8 vect__23519310_1;
(* MEM[(uint64_t * )&tmp0 + 16B] = vect__23.519_311; *)
mov tmp0_16 vect__23519311_0;
mov tmp0_24 vect__23519311_1;
(* _33 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov v33 tmp0_32;
(* _34 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov v34 z3_32;
(* _35 = _33 + _34; *)
uadd v35 v33 v34;
(* MEM[(uint64_t * )&tmp0 + 32B] = _35; *)
mov tmp0_32 v35;
(* fe51_mul (&z3, &x1, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe51_mul (&z2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe51_tobytes (out_12(D), &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ tmp0_0@uint64;
mov _ tmp0_8@uint64;
mov _ tmp0_16@uint64;
mov _ tmp0_24@uint64;
mov _ tmp0_32@uint64;
mov _ x2_0@uint64;
mov _ x2_8@uint64;
mov _ x2_16@uint64;
mov _ x2_24@uint64;
mov _ x2_32@uint64;
mov _ x3_0@uint64;
mov _ x3_8@uint64;
mov _ x3_16@uint64;
mov _ x3_24@uint64;
mov _ x3_32@uint64;
mov _ z2_0@uint64;
mov _ z2_8@uint64;
mov _ z2_16@uint64;
mov _ z2_24@uint64;
mov _ z2_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

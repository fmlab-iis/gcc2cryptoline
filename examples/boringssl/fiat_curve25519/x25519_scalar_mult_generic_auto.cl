proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov tmp0_0@uint64 _;
mov tmp0_8@uint64 _;
mov tmp0_16@uint64 _;
mov tmp0_24@uint64 _;
mov tmp0_32@uint64 _;
mov tmp1_0@uint64 _;
mov tmp1_8@uint64 _;
mov tmp1_16@uint64 _;
mov tmp1_24@uint64 _;
mov tmp1_32@uint64 _;
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

(* x10_106 = MEM[(const uint64_t * )&x3 + 32B]; *)
mov x10106 x3_32;
(* vect_x5_110.986_236 = MEM[(const uint64_t * )&x3]; *)
mov vect_x5_110986236_0 x3_0;
mov vect_x5_110986236_1 x3_8;
(* vect_x5_110.987_238 = MEM[(const uint64_t * )&x3 + 16B]; *)
mov vect_x5_110987238_0 x3_16;
mov vect_x5_110987238_1 x3_24;
(* x18_111 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov x18111 z3_32;
(* vect_x13_115.990_240 = MEM[(const uint64_t * )&z3]; *)
mov vect_x13_115990240_0 z3_0;
mov vect_x13_115990240_1 z3_8;
(* vect_x13_115.991_242 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect_x13_115991242_0 z3_16;
mov vect_x13_115991242_1 z3_24;
(* vect__262.995_102 = vect_x5_110.986_236 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__262995102_0 vect_x5_110986236_0 0xfffffffffffda@uint64;
uadd vect__262995102_1 vect_x5_110986236_1 0xffffffffffffe@uint64;
(* vect__262.995_104 = vect_x5_110.987_238 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__262995104_0 vect_x5_110987238_0 0xffffffffffffe@uint64;
uadd vect__262995104_1 vect_x5_110987238_1 0xffffffffffffe@uint64;
(* vect__117.996_51 = vect__262.995_102 - vect_x13_115.990_240; *)
usub vect__11799651_0 vect__262995102_0 vect_x13_115990240_0;
usub vect__11799651_1 vect__262995102_1 vect_x13_115990240_1;
(* vect__117.996_53 = vect__262.995_104 - vect_x13_115.991_242; *)
usub vect__11799653_0 vect__262995104_0 vect_x13_115991242_0;
usub vect__11799653_1 vect__262995104_1 vect_x13_115991242_1;
(* MEM[(uint64_t * )&tmp0l] = vect__117.996_51; *)
mov tmp0l_0 vect__11799651_0;
mov tmp0l_8 vect__11799651_1;
(* MEM[(uint64_t * )&tmp0l + 16B] = vect__117.996_53; *)
mov tmp0l_16 vect__11799653_0;
mov tmp0l_24 vect__11799653_1;
(* _258 = x10_106 + 4503599627370494; *)
uadd v258 x10106 0xffffffffffffe@uint64;
(* _125 = _258 - x18_111; *)
usub v125 v258 x18111;
(* MEM[(uint64_t * )&tmp0l + 32B] = _125; *)
mov tmp0l_32 v125;
(* x10_86 = MEM[(const uint64_t * )&x2 + 32B]; *)
mov x1086 x2_32;
(* vect_x5_90.975_194 = MEM[(const uint64_t * )&x2]; *)
mov vect_x5_90975194_0 x2_0;
mov vect_x5_90975194_1 x2_8;
(* vect_x5_90.976_204 = MEM[(const uint64_t * )&x2 + 16B]; *)
mov vect_x5_90976204_0 x2_16;
mov vect_x5_90976204_1 x2_24;
(* x18_91 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov x1891 z2_32;
(* vect_x13_95.979_167 = MEM[(const uint64_t * )&z2]; *)
mov vect_x13_95979167_0 z2_0;
mov vect_x13_95979167_1 z2_8;
(* vect_x13_95.980_229 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect_x13_95980229_0 z2_16;
mov vect_x13_95980229_1 z2_24;
(* vect__257.999_45 = vect_x5_90.975_194 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__25799945_0 vect_x5_90975194_0 0xfffffffffffda@uint64;
uadd vect__25799945_1 vect_x5_90975194_1 0xffffffffffffe@uint64;
(* vect__257.999_47 = vect_x5_90.976_204 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__25799947_0 vect_x5_90976204_0 0xffffffffffffe@uint64;
uadd vect__25799947_1 vect_x5_90976204_1 0xffffffffffffe@uint64;
(* vect__97.1000_49 = vect__257.999_45 - vect_x13_95.979_167; *)
usub vect__97100049_0 vect__25799945_0 vect_x13_95979167_0;
usub vect__97100049_1 vect__25799945_1 vect_x13_95979167_1;
(* vect__97.1000_263 = vect__257.999_47 - vect_x13_95.980_229; *)
usub vect__971000263_0 vect__25799947_0 vect_x13_95980229_0;
usub vect__971000263_1 vect__25799947_1 vect_x13_95980229_1;
(* MEM[(uint64_t * )&tmp1l] = vect__97.1000_49; *)
mov tmp1l_0 vect__97100049_0;
mov tmp1l_8 vect__97100049_1;
(* MEM[(uint64_t * )&tmp1l + 16B] = vect__97.1000_263; *)
mov tmp1l_16 vect__971000263_0;
mov tmp1l_24 vect__971000263_1;
(* _253 = x10_86 + 4503599627370494; *)
uadd v253 x1086 0xffffffffffffe@uint64;
(* _105 = _253 - x18_91; *)
usub v105 v253 x1891;
(* MEM[(uint64_t * )&tmp1l + 32B] = _105; *)
mov tmp1l_32 v105;
(* vect__81.981_231 = vect_x13_95.979_167 + vect_x5_90.975_194; *)
uadd vect__81981231_0 vect_x13_95979167_0 vect_x5_90975194_0;
uadd vect__81981231_1 vect_x13_95979167_1 vect_x5_90975194_1;
(* vect__81.981_232 = vect_x5_90.976_204 + vect_x13_95.980_229; *)
uadd vect__81981232_0 vect_x5_90976204_0 vect_x13_95980229_0;
uadd vect__81981232_1 vect_x5_90976204_1 vect_x13_95980229_1;
(* MEM[(uint64_t * )&x2l] = vect__81.981_231; *)
mov x2l_0 vect__81981231_0;
mov x2l_8 vect__81981231_1;
(* MEM[(uint64_t * )&x2l + 16B] = vect__81.981_232; *)
mov x2l_16 vect__81981232_0;
mov x2l_24 vect__81981232_1;
(* _85 = x10_86 + x18_91; *)
uadd v85 x1086 x1891;
(* MEM[(uint64_t * )&x2l + 32B] = _85; *)
mov x2l_32 v85;
(* vect__76.992_118 = vect_x5_110.986_236 + vect_x13_115.990_240; *)
uadd vect__76992118_0 vect_x5_110986236_0 vect_x13_115990240_0;
uadd vect__76992118_1 vect_x5_110986236_1 vect_x13_115990240_1;
(* vect__76.992_120 = vect_x5_110.987_238 + vect_x13_115.991_242; *)
uadd vect__76992120_0 vect_x5_110987238_0 vect_x13_115991242_0;
uadd vect__76992120_1 vect_x5_110987238_1 vect_x13_115991242_1;
(* MEM[(uint64_t * )&z2l] = vect__76.992_118; *)
mov z2l_0 vect__76992118_0;
mov z2l_8 vect__76992118_1;
(* MEM[(uint64_t * )&z2l + 16B] = vect__76.992_120; *)
mov z2l_16 vect__76992120_0;
mov z2l_24 vect__76992120_1;
(* _80 = x10_106 + x18_111; *)
uadd v80 x10106 x18111;
(* MEM[(uint64_t * )&z2l + 32B] = _80; *)
mov z2l_32 v80;
(* fe_mul_impl (&z3.v, &tmp0l.v, &x2l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul_impl (&z2.v, &z2l.v, &tmp1l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sqr_impl (&tmp0.v, &tmp1l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_sqr_impl (&tmp1.v, &x2l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x10_61 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov x1061 z3_32;
(* vect_x5_65.1005_267 = MEM[(const uint64_t * )&z3]; *)
mov vect_x5_651005267_0 z3_0;
mov vect_x5_651005267_1 z3_8;
(* vect_x5_65.1006_269 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect_x5_651006269_0 z3_16;
mov vect_x5_651006269_1 z3_24;
(* x18_66 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov x1866 z2_32;
(* vect_x13_70.1010_275 = MEM[(const uint64_t * )&z2]; *)
mov vect_x13_701010275_0 z2_0;
mov vect_x13_701010275_1 z2_8;
(* vect_x13_70.1011_277 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect_x13_701011277_0 z2_16;
mov vect_x13_701011277_1 z2_24;
(* vect__71.1015_284 = vect_x5_65.1005_267 + vect_x13_70.1010_275; *)
uadd vect__711015284_0 vect_x5_651005267_0 vect_x13_701010275_0;
uadd vect__711015284_1 vect_x5_651005267_1 vect_x13_701010275_1;
(* vect__71.1015_285 = vect_x5_65.1006_269 + vect_x13_70.1011_277; *)
uadd vect__711015285_0 vect_x5_651006269_0 vect_x13_701011277_0;
uadd vect__711015285_1 vect_x5_651006269_1 vect_x13_701011277_1;
(* MEM[(uint64_t * )&x3l] = vect__71.1015_284; *)
mov x3l_0 vect__711015284_0;
mov x3l_8 vect__711015284_1;
(* MEM[(uint64_t * )&x3l + 16B] = vect__71.1015_285; *)
mov x3l_16 vect__711015285_0;
mov x3l_24 vect__711015285_1;
(* _75 = x10_61 + x18_66; *)
uadd v75 x1061 x1866;
(* MEM[(uint64_t * )&x3l + 32B] = _75; *)
mov x3l_32 v75;
(* vect__252.1007_273 = vect_x5_65.1005_267 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__2521007273_0 vect_x5_651005267_0 0xfffffffffffda@uint64;
uadd vect__2521007273_1 vect_x5_651005267_1 0xffffffffffffe@uint64;
(* vect__252.1007_274 = vect_x5_65.1006_269 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__2521007274_0 vect_x5_651006269_0 0xffffffffffffe@uint64;
uadd vect__2521007274_1 vect_x5_651006269_1 0xffffffffffffe@uint64;
(* vect__52.1012_279 = vect__252.1007_273 - vect_x13_70.1010_275; *)
usub vect__521012279_0 vect__2521007273_0 vect_x13_701010275_0;
usub vect__521012279_1 vect__2521007273_1 vect_x13_701010275_1;
(* vect__52.1012_280 = vect__252.1007_274 - vect_x13_70.1011_277; *)
usub vect__521012280_0 vect__2521007274_0 vect_x13_701011277_0;
usub vect__521012280_1 vect__2521007274_1 vect_x13_701011277_1;
(* MEM[(uint64_t * )&z2l] = vect__52.1012_279; *)
mov z2l_0 vect__521012279_0;
mov z2l_8 vect__521012279_1;
(* MEM[(uint64_t * )&z2l + 16B] = vect__52.1012_280; *)
mov z2l_16 vect__521012280_0;
mov z2l_24 vect__521012280_1;
(* _248 = x10_61 + 4503599627370494; *)
uadd v248 x1061 0xffffffffffffe@uint64;
(* _60 = _248 - x18_66; *)
usub v60 v248 x1866;
(* MEM[(uint64_t * )&z2l + 32B] = _60; *)
mov z2l_32 v60;
(* fe_mul_impl (&x2.v, &tmp1.v, &tmp0.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x10_31 = MEM[(const uint64_t * )&tmp1 + 32B]; *)
mov x1031 tmp1_32;
(* vect_x5_35.1020_289 = MEM[(const uint64_t * )&tmp1]; *)
mov vect_x5_351020289_0 tmp1_0;
mov vect_x5_351020289_1 tmp1_8;
(* vect_x5_35.1021_291 = MEM[(const uint64_t * )&tmp1 + 16B]; *)
mov vect_x5_351021291_0 tmp1_16;
mov vect_x5_351021291_1 tmp1_24;
(* x18_36 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov x1836 tmp0_32;
(* vect_x13_40.1025_297 = MEM[(const uint64_t * )&tmp0]; *)
mov vect_x13_401025297_0 tmp0_0;
mov vect_x13_401025297_1 tmp0_8;
(* vect_x13_40.1026_299 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect_x13_401026299_0 tmp0_16;
mov vect_x13_401026299_1 tmp0_24;
(* vect__247.1022_295 = vect_x5_35.1020_289 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__2471022295_0 vect_x5_351020289_0 0xfffffffffffda@uint64;
uadd vect__2471022295_1 vect_x5_351020289_1 0xffffffffffffe@uint64;
(* vect__247.1022_296 = vect_x5_35.1021_291 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__2471022296_0 vect_x5_351021291_0 0xffffffffffffe@uint64;
uadd vect__2471022296_1 vect_x5_351021291_1 0xffffffffffffe@uint64;
(* vect__42.1027_301 = vect__247.1022_295 - vect_x13_40.1025_297; *)
usub vect__421027301_0 vect__2471022295_0 vect_x13_401025297_0;
usub vect__421027301_1 vect__2471022295_1 vect_x13_401025297_1;
(* vect__42.1027_302 = vect__247.1022_296 - vect_x13_40.1026_299; *)
usub vect__421027302_0 vect__2471022296_0 vect_x13_401026299_0;
usub vect__421027302_1 vect__2471022296_1 vect_x13_401026299_1;
(* MEM[(uint64_t * )&tmp1l] = vect__42.1027_301; *)
mov tmp1l_0 vect__421027301_0;
mov tmp1l_8 vect__421027301_1;
(* MEM[(uint64_t * )&tmp1l + 16B] = vect__42.1027_302; *)
mov tmp1l_16 vect__421027302_0;
mov tmp1l_24 vect__421027302_1;
(* _243 = x10_31 + 4503599627370494; *)
uadd v243 x1031 0xffffffffffffe@uint64;
(* _50 = _243 - x18_36; *)
usub v50 v243 x1836;
(* MEM[(uint64_t * )&tmp1l + 32B] = _50; *)
mov tmp1l_32 v50;
(* fe_sqr_impl (&z2.v, &z2l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x10_176 = MEM[(const uint64_t * )&tmp1l + 32B]; *)
mov x10176 tmp1l_32;
(* x11_177 = MEM[(const uint64_t * )&tmp1l + 24B]; *)
mov x11177 tmp1l_24;
(* x9_178 = MEM[(const uint64_t * )&tmp1l + 16B]; *)
mov x9178 tmp1l_16;
(* x7_179 = MEM[(const uint64_t * )&tmp1l + 8B]; *)
mov x7179 tmp1l_8;
(* x5_180 = MEM[(const uint64_t * )&tmp1l]; *)
mov x5180 tmp1l_0;
(* x20_182 = x5_180 w* 121666; *)
umulj x20182 x5180 0x1db42@uint64;
(* x21_184 = x7_179 w* 121666; *)
umulj x21184 x7179 0x1db42@uint64;
(* x22_186 = x9_178 w* 121666; *)
umulj x22186 x9178 0x1db42@uint64;
(* x23_188 = x11_177 w* 121666; *)
umulj x23188 x11177 0x1db42@uint64;
(* x24_190 = x10_176 w* 121666; *)
umulj x24190 x10176 0x1db42@uint64;
(* _191 = x20_182 >> 51; *)
usplit v191 tmp_to_use x20182 51;
(* _192 = (long unsigned int) x20_182; *)
cast v192@uint64 x20182@uint128;
(* x34_193 = _192 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x34193 v192 0x7ffffffffffff@uint64;
(* x35_195 = x21_184 + _191; *)
uadd x35195 x21184 v191;
(* _196 = x35_195 >> 51; *)
usplit v196 tmp_to_use x35195 51;
(* _197 = (long unsigned int) x35_195; *)
cast v197@uint64 x35195@uint128;
(* x37_198 = _197 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x37198 v197 0x7ffffffffffff@uint64;
(* x38_200 = x22_186 + _196; *)
uadd x38200 x22186 v196;
(* _201 = x38_200 >> 51; *)
usplit v201 tmp_to_use x38200 51;
(* _202 = (long unsigned int) x38_200; *)
cast v202@uint64 x38200@uint128;
(* x40_203 = _202 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x40203 v202 0x7ffffffffffff@uint64;
(* x41_205 = x23_188 + _201; *)
uadd x41205 x23188 v201;
(* _206 = x41_205 >> 51; *)
usplit v206 tmp_to_use x41205 51;
(* _207 = (long unsigned int) x41_205; *)
cast v207@uint64 x41205@uint128;
(* x43_208 = _207 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x43208 v207 0x7ffffffffffff@uint64;
(* x44_210 = x24_190 + _206; *)
uadd x44210 x24190 v206;
(* _211 = x44_210 >> 51; *)
usplit v211 tmp_to_use x44210 51;
(* x45_212 = (uint64_t) _211; *)
cast x45212@uint64 v211@uint128;
(* _213 = (long unsigned int) x44_210; *)
cast v213@uint64 x44210@uint128;
(* x46_214 = _213 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x46214 v213 0x7ffffffffffff@uint64;
(* _215 = x45_212 * 19; *)
umul v215 x45212 0x13@uint64;
(* x47_216 = x34_193 + _215; *)
uadd x47216 x34193 v215;
(* x48_217 = x47_216 >> 51; *)
usplit x48217 tmp_to_use x47216 51;
(* x49_218 = x47_216 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x49218 x47216 0x7ffffffffffff@uint64;
(* x50_219 = x37_198 + x48_217; *)
uadd x50219 x37198 x48217;
(* x51_220 = x50_219 >> 51; *)
usplit x51220 tmp_to_use x50219 51;
(* x52_221 = x50_219 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x52221 x50219 0x7ffffffffffff@uint64;
(* MEM[(uint64_t * )&z3] = x49_218; *)
mov z3_0 x49218;
(* MEM[(uint64_t * )&z3 + 8B] = x52_221; *)
mov z3_8 x52221;
(* _222 = x40_203 + x51_220; *)
uadd v222 x40203 x51220;
(* MEM[(uint64_t * )&z3 + 16B] = _222; *)
mov z3_16 v222;
(* MEM[(uint64_t * )&z3 + 24B] = x43_208; *)
mov z3_24 x43208;
(* MEM[(uint64_t * )&z3 + 32B] = x46_214; *)
mov z3_32 x46214;
(* fe_sqr_impl (&x3.v, &x3l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x10_16 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov x1016 tmp0_32;
(* vect_x5_20.1032_306 = MEM[(const uint64_t * )&tmp0]; *)
mov vect_x5_201032306_0 tmp0_0;
mov vect_x5_201032306_1 tmp0_8;
(* vect_x5_20.1033_308 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect_x5_201033308_0 tmp0_16;
mov vect_x5_201033308_1 tmp0_24;
(* x18_21 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov x1821 z3_32;
(* vect_x13_25.1036_310 = MEM[(const uint64_t * )&z3]; *)
mov vect_x13_251036310_0 z3_0;
mov vect_x13_251036310_1 z3_8;
(* vect_x13_25.1037_312 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect_x13_251037312_0 z3_16;
mov vect_x13_251037312_1 z3_24;
(* vect__26.1038_314 = vect_x5_20.1032_306 + vect_x13_25.1036_310; *)
uadd vect__261038314_0 vect_x5_201032306_0 vect_x13_251036310_0;
uadd vect__261038314_1 vect_x5_201032306_1 vect_x13_251036310_1;
(* vect__26.1038_315 = vect_x5_20.1033_308 + vect_x13_25.1037_312; *)
uadd vect__261038315_0 vect_x5_201033308_0 vect_x13_251037312_0;
uadd vect__261038315_1 vect_x5_201033308_1 vect_x13_251037312_1;
(* MEM[(uint64_t * )&tmp0l] = vect__26.1038_314; *)
mov tmp0l_0 vect__261038314_0;
mov tmp0l_8 vect__261038314_1;
(* MEM[(uint64_t * )&tmp0l + 16B] = vect__26.1038_315; *)
mov tmp0l_16 vect__261038315_0;
mov tmp0l_24 vect__261038315_1;
(* _30 = x10_16 + x18_21; *)
uadd v30 x1016 x1821;
(* MEM[(uint64_t * )&tmp0l + 32B] = _30; *)
mov tmp0l_32 v30;
(* fe_mul_impl (&z3.v, &x1.v, &z2.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_mul_impl (&z2.v, &tmp1l.v, &tmp0l.v); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fe_tobytes (out_2(D), &x2); *)
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
(* x2l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ tmp0l_0@uint64;
mov _ tmp0l_8@uint64;
mov _ tmp0l_16@uint64;
mov _ tmp0l_24@uint64;
mov _ tmp0l_32@uint64;
mov _ x2l_0@uint64;
mov _ x2l_8@uint64;
mov _ x2l_16@uint64;
mov _ x2l_24@uint64;
mov _ x2l_32@uint64;
mov _ x3l_0@uint64;
mov _ x3l_8@uint64;
mov _ x3l_16@uint64;
mov _ x3l_24@uint64;
mov _ x3l_32@uint64;
mov _ z2l_0@uint64;
mov _ z2l_8@uint64;
mov _ z2l_16@uint64;
mov _ z2l_24@uint64;
mov _ z2l_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

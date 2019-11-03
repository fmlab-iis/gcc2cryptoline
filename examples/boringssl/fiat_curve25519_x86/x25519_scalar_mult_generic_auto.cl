proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov tmp0_0@uint32 _;
mov tmp0_4@uint32 _;
mov tmp0_8@uint32 _;
mov tmp0_12@uint32 _;
mov tmp0_16@uint32 _;
mov tmp0_20@uint32 _;
mov tmp0_24@uint32 _;
mov tmp0_28@uint32 _;
mov tmp0_32@uint32 _;
mov tmp0_36@uint32 _;
mov x2_0@uint32 _;
mov x2_4@uint32 _;
mov x2_8@uint32 _;
mov x2_12@uint32 _;
mov x2_16@uint32 _;
mov x2_20@uint32 _;
mov x2_24@uint32 _;
mov x2_28@uint32 _;
mov x2_32@uint32 _;
mov x2_36@uint32 _;
mov x3_0@uint32 _;
mov x3_4@uint32 _;
mov x3_8@uint32 _;
mov x3_12@uint32 _;
mov x3_16@uint32 _;
mov x3_20@uint32 _;
mov x3_24@uint32 _;
mov x3_28@uint32 _;
mov x3_32@uint32 _;
mov x3_36@uint32 _;
mov z2_0@uint32 _;
mov z2_4@uint32 _;
mov z2_8@uint32 _;
mov z2_12@uint32 _;
mov z2_16@uint32 _;
mov z2_20@uint32 _;
mov z2_24@uint32 _;
mov z2_28@uint32 _;
mov z2_32@uint32 _;
mov z2_36@uint32 _;
mov z3_0@uint32 _;
mov z3_4@uint32 _;
mov z3_8@uint32 _;
mov z3_12@uint32 _;
mov z3_16@uint32 _;
mov z3_20@uint32 _;
mov z3_24@uint32 _;
mov z3_28@uint32 _;
mov z3_32@uint32 _;
mov z3_36@uint32 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* fe_sub_impl (&tmp0lv, &x3v, &z3v); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_sub_impl (&tmp1lv, &x2v, &z2v); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* x20_124 = MEM[(const uint32_t *)&x2 + 36B]; */
mov x20124 x2_36;
/* x21_125 = MEM[(const uint32_t *)&x2 + 32B]; */
mov x21125 x2_32;
/* vect_x5_1331012_18 = MEM[(const uint32_t *)&x2]; */
mov vect_x5_133101218_0 x2_0;
mov vect_x5_133101218_4 x2_4;
mov vect_x5_133101218_8 x2_8;
mov vect_x5_133101218_12 x2_12;
/* vect_x5_1331013_24 = MEM[(const uint32_t *)&x2 + 16B]; */
mov vect_x5_133101324_0 x2_16;
mov vect_x5_133101324_4 x2_20;
mov vect_x5_133101324_8 x2_24;
mov vect_x5_133101324_12 x2_28;
/* x38_134 = MEM[(const uint32_t *)&z2 + 36B]; */
mov x38134 z2_36;
/* x39_135 = MEM[(const uint32_t *)&z2 + 32B]; */
mov x39135 z2_32;
/* vect_x23_1431016_194 = MEM[(const uint32_t *)&z2]; */
mov vect_x23_1431016194_0 z2_0;
mov vect_x23_1431016194_4 z2_4;
mov vect_x23_1431016194_8 z2_8;
mov vect_x23_1431016194_12 z2_12;
/* vect_x23_1431017_196 = MEM[(const uint32_t *)&z2 + 16B]; */
mov vect_x23_1431017196_0 z2_16;
mov vect_x23_1431017196_4 z2_20;
mov vect_x23_1431017196_8 z2_24;
mov vect_x23_1431017196_12 z2_28;
/* vect__1441018_198 = vect_x5_1331012_18 + vect_x23_1431016_194; */
uadd vect__1441018198_0 vect_x5_133101218_0 vect_x23_1431016194_0;
uadd vect__1441018198_4 vect_x5_133101218_4 vect_x23_1431016194_4;
uadd vect__1441018198_8 vect_x5_133101218_8 vect_x23_1431016194_8;
uadd vect__1441018198_12 vect_x5_133101218_12 vect_x23_1431016194_12;
/* vect__1441018_199 = vect_x5_1331013_24 + vect_x23_1431017_196; */
uadd vect__1441018199_0 vect_x5_133101324_0 vect_x23_1431017196_0;
uadd vect__1441018199_4 vect_x5_133101324_4 vect_x23_1431017196_4;
uadd vect__1441018199_8 vect_x5_133101324_8 vect_x23_1431017196_8;
uadd vect__1441018199_12 vect_x5_133101324_12 vect_x23_1431017196_12;
/* MEM[(uint32_t *)&x2l] = vect__1441018_198; */
mov x2l_0 vect__1441018198_0;
mov x2l_4 vect__1441018198_4;
mov x2l_8 vect__1441018198_8;
mov x2l_12 vect__1441018198_12;
/* MEM[(uint32_t *)&x2l + 16B] = vect__1441018_199; */
mov x2l_16 vect__1441018199_0;
mov x2l_20 vect__1441018199_4;
mov x2l_24 vect__1441018199_8;
mov x2l_28 vect__1441018199_12;
/* _152 = x21_125 + x39_135; */
uadd v152 x21125 x39135;
/* MEM[(uint32_t *)&x2l + 32B] = _152; */
mov x2l_32 v152;
/* _153 = x20_124 + x38_134; */
uadd v153 x20124 x38134;
/* MEM[(uint32_t *)&x2l + 36B] = _153; */
mov x2l_36 v153;
/* x20_94 = MEM[(const uint32_t *)&x3 + 36B]; */
mov x2094 x3_36;
/* x21_95 = MEM[(const uint32_t *)&x3 + 32B]; */
mov x2195 x3_32;
/* vect_x5_1031023_203 = MEM[(const uint32_t *)&x3]; */
mov vect_x5_1031023203_0 x3_0;
mov vect_x5_1031023203_4 x3_4;
mov vect_x5_1031023203_8 x3_8;
mov vect_x5_1031023203_12 x3_12;
/* vect_x5_1031024_205 = MEM[(const uint32_t *)&x3 + 16B]; */
mov vect_x5_1031024205_0 x3_16;
mov vect_x5_1031024205_4 x3_20;
mov vect_x5_1031024205_8 x3_24;
mov vect_x5_1031024205_12 x3_28;
/* x38_104 = MEM[(const uint32_t *)&z3 + 36B]; */
mov x38104 z3_36;
/* x39_105 = MEM[(const uint32_t *)&z3 + 32B]; */
mov x39105 z3_32;
/* vect_x23_1131027_207 = MEM[(const uint32_t *)&z3]; */
mov vect_x23_1131027207_0 z3_0;
mov vect_x23_1131027207_4 z3_4;
mov vect_x23_1131027207_8 z3_8;
mov vect_x23_1131027207_12 z3_12;
/* vect_x23_1131028_209 = MEM[(const uint32_t *)&z3 + 16B]; */
mov vect_x23_1131028209_0 z3_16;
mov vect_x23_1131028209_4 z3_20;
mov vect_x23_1131028209_8 z3_24;
mov vect_x23_1131028209_12 z3_28;
/* vect__1141029_211 = vect_x5_1031023_203 + vect_x23_1131027_207; */
uadd vect__1141029211_0 vect_x5_1031023203_0 vect_x23_1131027207_0;
uadd vect__1141029211_4 vect_x5_1031023203_4 vect_x23_1131027207_4;
uadd vect__1141029211_8 vect_x5_1031023203_8 vect_x23_1131027207_8;
uadd vect__1141029211_12 vect_x5_1031023203_12 vect_x23_1131027207_12;
/* vect__1141029_212 = vect_x5_1031024_205 + vect_x23_1131028_209; */
uadd vect__1141029212_0 vect_x5_1031024205_0 vect_x23_1131028209_0;
uadd vect__1141029212_4 vect_x5_1031024205_4 vect_x23_1131028209_4;
uadd vect__1141029212_8 vect_x5_1031024205_8 vect_x23_1131028209_8;
uadd vect__1141029212_12 vect_x5_1031024205_12 vect_x23_1131028209_12;
/* MEM[(uint32_t *)&z2l] = vect__1141029_211; */
mov z2l_0 vect__1141029211_0;
mov z2l_4 vect__1141029211_4;
mov z2l_8 vect__1141029211_8;
mov z2l_12 vect__1141029211_12;
/* MEM[(uint32_t *)&z2l + 16B] = vect__1141029_212; */
mov z2l_16 vect__1141029212_0;
mov z2l_20 vect__1141029212_4;
mov z2l_24 vect__1141029212_8;
mov z2l_28 vect__1141029212_12;
/* _122 = x21_95 + x39_105; */
uadd v122 x2195 x39105;
/* MEM[(uint32_t *)&z2l + 32B] = _122; */
mov z2l_32 v122;
/* _123 = x20_94 + x38_104; */
uadd v123 x2094 x38104;
/* MEM[(uint32_t *)&z2l + 36B] = _123; */
mov z2l_36 v123;
/* fe_mul_impl (&z3v, &tmp0lv, &x2lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_mul_impl (&z2v, &z2lv, &tmp1lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_sqr_impl (&tmp0v, &tmp1lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_sqr_impl (&tmp1v, &x2lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* x20_64 = MEM[(const uint32_t *)&z3 + 36B]; */
mov x2064 z3_36;
/* x21_65 = MEM[(const uint32_t *)&z3 + 32B]; */
mov x2165 z3_32;
/* vect_x5_731034_216 = MEM[(const uint32_t *)&z3]; */
mov vect_x5_731034216_0 z3_0;
mov vect_x5_731034216_4 z3_4;
mov vect_x5_731034216_8 z3_8;
mov vect_x5_731034216_12 z3_12;
/* vect_x5_731035_218 = MEM[(const uint32_t *)&z3 + 16B]; */
mov vect_x5_731035218_0 z3_16;
mov vect_x5_731035218_4 z3_20;
mov vect_x5_731035218_8 z3_24;
mov vect_x5_731035218_12 z3_28;
/* x38_74 = MEM[(const uint32_t *)&z2 + 36B]; */
mov x3874 z2_36;
/* x39_75 = MEM[(const uint32_t *)&z2 + 32B]; */
mov x3975 z2_32;
/* vect_x23_831038_220 = MEM[(const uint32_t *)&z2]; */
mov vect_x23_831038220_0 z2_0;
mov vect_x23_831038220_4 z2_4;
mov vect_x23_831038220_8 z2_8;
mov vect_x23_831038220_12 z2_12;
/* vect_x23_831039_222 = MEM[(const uint32_t *)&z2 + 16B]; */
mov vect_x23_831039222_0 z2_16;
mov vect_x23_831039222_4 z2_20;
mov vect_x23_831039222_8 z2_24;
mov vect_x23_831039222_12 z2_28;
/* vect__841040_224 = vect_x5_731034_216 + vect_x23_831038_220; */
uadd vect__841040224_0 vect_x5_731034216_0 vect_x23_831038220_0;
uadd vect__841040224_4 vect_x5_731034216_4 vect_x23_831038220_4;
uadd vect__841040224_8 vect_x5_731034216_8 vect_x23_831038220_8;
uadd vect__841040224_12 vect_x5_731034216_12 vect_x23_831038220_12;
/* vect__841040_225 = vect_x5_731035_218 + vect_x23_831039_222; */
uadd vect__841040225_0 vect_x5_731035218_0 vect_x23_831039222_0;
uadd vect__841040225_4 vect_x5_731035218_4 vect_x23_831039222_4;
uadd vect__841040225_8 vect_x5_731035218_8 vect_x23_831039222_8;
uadd vect__841040225_12 vect_x5_731035218_12 vect_x23_831039222_12;
/* MEM[(uint32_t *)&x3l] = vect__841040_224; */
mov x3l_0 vect__841040224_0;
mov x3l_4 vect__841040224_4;
mov x3l_8 vect__841040224_8;
mov x3l_12 vect__841040224_12;
/* MEM[(uint32_t *)&x3l + 16B] = vect__841040_225; */
mov x3l_16 vect__841040225_0;
mov x3l_20 vect__841040225_4;
mov x3l_24 vect__841040225_8;
mov x3l_28 vect__841040225_12;
/* _92 = x21_65 + x39_75; */
uadd v92 x2165 x3975;
/* MEM[(uint32_t *)&x3l + 32B] = _92; */
mov x3l_32 v92;
/* _93 = x20_64 + x38_74; */
uadd v93 x2064 x3874;
/* MEM[(uint32_t *)&x3l + 36B] = _93; */
mov x3l_36 v93;
/* fe_sub_impl (&z2lv, &z3v, &z2v); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_mul_impl (&x2v, &tmp1v, &tmp0v); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_sub_impl (&tmp1lv, &tmp1v, &tmp0v); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_sqr_impl (&z2v, &z2lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_mul_121666_impl (&z3v, &tmp1lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_sqr_impl (&x3v, &x3lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* x20_34 = MEM[(const uint32_t *)&tmp0 + 36B]; */
mov x2034 tmp0_36;
/* x21_35 = MEM[(const uint32_t *)&tmp0 + 32B]; */
mov x2135 tmp0_32;
/* vect_x5_431045_229 = MEM[(const uint32_t *)&tmp0]; */
mov vect_x5_431045229_0 tmp0_0;
mov vect_x5_431045229_4 tmp0_4;
mov vect_x5_431045229_8 tmp0_8;
mov vect_x5_431045229_12 tmp0_12;
/* vect_x5_431046_231 = MEM[(const uint32_t *)&tmp0 + 16B]; */
mov vect_x5_431046231_0 tmp0_16;
mov vect_x5_431046231_4 tmp0_20;
mov vect_x5_431046231_8 tmp0_24;
mov vect_x5_431046231_12 tmp0_28;
/* x38_44 = MEM[(const uint32_t *)&z3 + 36B]; */
mov x3844 z3_36;
/* x39_45 = MEM[(const uint32_t *)&z3 + 32B]; */
mov x3945 z3_32;
/* vect_x23_531049_233 = MEM[(const uint32_t *)&z3]; */
mov vect_x23_531049233_0 z3_0;
mov vect_x23_531049233_4 z3_4;
mov vect_x23_531049233_8 z3_8;
mov vect_x23_531049233_12 z3_12;
/* vect_x23_531050_235 = MEM[(const uint32_t *)&z3 + 16B]; */
mov vect_x23_531050235_0 z3_16;
mov vect_x23_531050235_4 z3_20;
mov vect_x23_531050235_8 z3_24;
mov vect_x23_531050235_12 z3_28;
/* vect__541051_237 = vect_x5_431045_229 + vect_x23_531049_233; */
uadd vect__541051237_0 vect_x5_431045229_0 vect_x23_531049233_0;
uadd vect__541051237_4 vect_x5_431045229_4 vect_x23_531049233_4;
uadd vect__541051237_8 vect_x5_431045229_8 vect_x23_531049233_8;
uadd vect__541051237_12 vect_x5_431045229_12 vect_x23_531049233_12;
/* vect__541051_238 = vect_x5_431046_231 + vect_x23_531050_235; */
uadd vect__541051238_0 vect_x5_431046231_0 vect_x23_531050235_0;
uadd vect__541051238_4 vect_x5_431046231_4 vect_x23_531050235_4;
uadd vect__541051238_8 vect_x5_431046231_8 vect_x23_531050235_8;
uadd vect__541051238_12 vect_x5_431046231_12 vect_x23_531050235_12;
/* MEM[(uint32_t *)&tmp0l] = vect__541051_237; */
mov tmp0l_0 vect__541051237_0;
mov tmp0l_4 vect__541051237_4;
mov tmp0l_8 vect__541051237_8;
mov tmp0l_12 vect__541051237_12;
/* MEM[(uint32_t *)&tmp0l + 16B] = vect__541051_238; */
mov tmp0l_16 vect__541051238_0;
mov tmp0l_20 vect__541051238_4;
mov tmp0l_24 vect__541051238_8;
mov tmp0l_28 vect__541051238_12;
/* _62 = x21_35 + x39_45; */
uadd v62 x2135 x3945;
/* MEM[(uint32_t *)&tmp0l + 32B] = _62; */
mov tmp0l_32 v62;
/* _63 = x20_34 + x38_44; */
uadd v63 x2034 x3844;
/* MEM[(uint32_t *)&tmp0l + 36B] = _63; */
mov tmp0l_36 v63;
/* fe_mul_impl (&z3v, &x1v, &z2v); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_mul_impl (&z2v, &tmp1lv, &tmp0lv); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* fe_tobytes (out_2(D), &x2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* x1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp0 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x2l ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z2l ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x3l ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp0l ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp1l ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* return; */


/* Start with unused lhs */
mov _ tmp0l_0@uint32;
mov _ tmp0l_4@uint32;
mov _ tmp0l_8@uint32;
mov _ tmp0l_12@uint32;
mov _ tmp0l_16@uint32;
mov _ tmp0l_20@uint32;
mov _ tmp0l_24@uint32;
mov _ tmp0l_28@uint32;
mov _ tmp0l_32@uint32;
mov _ tmp0l_36@uint32;
mov _ x2l_0@uint32;
mov _ x2l_4@uint32;
mov _ x2l_8@uint32;
mov _ x2l_12@uint32;
mov _ x2l_16@uint32;
mov _ x2l_20@uint32;
mov _ x2l_24@uint32;
mov _ x2l_28@uint32;
mov _ x2l_32@uint32;
mov _ x2l_36@uint32;
mov _ x3l_0@uint32;
mov _ x3l_4@uint32;
mov _ x3l_8@uint32;
mov _ x3l_12@uint32;
mov _ x3l_16@uint32;
mov _ x3l_20@uint32;
mov _ x3l_24@uint32;
mov _ x3l_28@uint32;
mov _ x3l_32@uint32;
mov _ x3l_36@uint32;
mov _ z2l_0@uint32;
mov _ z2l_4@uint32;
mov _ z2l_8@uint32;
mov _ z2l_12@uint32;
mov _ z2l_16@uint32;
mov _ z2l_20@uint32;
mov _ z2l_24@uint32;
mov _ z2l_28@uint32;
mov _ z2l_32@uint32;
mov _ z2l_36@uint32;
/* End with unsed lhs */


{
  true
  &&
  true
}

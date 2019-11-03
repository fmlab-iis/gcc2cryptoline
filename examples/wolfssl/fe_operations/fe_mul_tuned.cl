(* @frege
Verification result:                    [OK]            13364.225757 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -btor -isafety -slicing -isafety_timeout 99999999 -v ./fe_mul_tuned.cl"
        User time (seconds): 259761.26
        System time (seconds): 975.29
        Percent of CPU this job got: 1950%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 3:42:44
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 883384
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 486540616
        Voluntary context switches: 7888
        Involuntary context switches: 21016006
        Swaps: 0
        File system inputs: 0
        File system outputs: 10504
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0

*)


(*
/*
h = f * g
Can overlap h with f or g.

Preconditions:
   |f| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.
   |g| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.

Postconditions:
   |h| bounded by 1.01*2^25,1.01*2^24,1.01*2^25,1.01*2^24,etc.
*/
*)

proc main (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9, int32 b0, int32 b1, int32 b2, int32 b3, int32 b4, int32 b5, int32 b6, int32 b7, int32 b8, int32 b9) =
{
  true
  &&
  and
  [
    a0 <=s (110729625)@32,
    a0 >=s (-110729625)@32,
    a1 <=s (55364812)@32,
    a1 >=s (-55364812)@32,
    a2 <=s (110729625)@32,
    a2 >=s (-110729625)@32,
    a3 <=s (55364812)@32,
    a3 >=s (-55364812)@32,
    a4 <=s (110729625)@32,
    a4 >=s (-110729625)@32,
    a5 <=s (55364812)@32,
    a5 >=s (-55364812)@32,
    a6 <=s (110729625)@32,
    a6 >=s (-110729625)@32,
    a7 <=s (55364812)@32,
    a7 >=s (-55364812)@32,
    a8 <=s (110729625)@32,
    a8 >=s (-110729625)@32,
    a9 <=s (55364812)@32,
    a9 >=s (-55364812)@32,
    b0 <=s (110729625)@32,
    b0 >=s (-110729625)@32,
    b1 <=s (55364812)@32,
    b1 >=s (-55364812)@32,
    b2 <=s (110729625)@32,
    b2 >=s (-110729625)@32,
    b3 <=s (55364812)@32,
    b3 >=s (-55364812)@32,
    b4 <=s (110729625)@32,
    b4 >=s (-110729625)@32,
    b5 <=s (55364812)@32,
    b5 >=s (-55364812)@32,
    b6 <=s (110729625)@32,
    b6 >=s (-110729625)@32,
    b7 <=s (55364812)@32,
    b7 >=s (-55364812)@32,
    b8 <=s (110729625)@32,
    b8 >=s (-110729625)@32,
    b9 <=s (55364812)@32,
    b9 >=s (-55364812)@32
  ]
}


(* Start with undefined rhs *)
mov f151_0@int32 a0;
mov f151_4@int32 a1;
mov f151_8@int32 a2;
mov f151_12@int32 a3;
mov f151_16@int32 a4;
mov f151_20@int32 a5;
mov f151_24@int32 a6;
mov f151_28@int32 a7;
mov f151_32@int32 a8;
mov f151_36@int32 a9;
mov g162_0@int32 b0;
mov g162_4@int32 b1;
mov g162_8@int32 b2;
mov g162_12@int32 b3;
mov g162_16@int32 b4;
mov g162_20@int32 b5;
mov g162_24@int32 b6;
mov g162_28@int32 b7;
mov g162_32@int32 b8;
mov g162_36@int32 b9;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f0_152 = *f_151(D); *)
mov f0152 f151_0;
(* f1_153 = MEM[(const int32_t * )f_151(D) + 4B]; *)
mov f1153 f151_4;
(* f2_154 = MEM[(const int32_t * )f_151(D) + 8B]; *)
mov f2154 f151_8;
(* f3_155 = MEM[(const int32_t * )f_151(D) + 12B]; *)
mov f3155 f151_12;
(* f4_156 = MEM[(const int32_t * )f_151(D) + 16B]; *)
mov f4156 f151_16;
(* f5_157 = MEM[(const int32_t * )f_151(D) + 20B]; *)
mov f5157 f151_20;
(* f6_158 = MEM[(const int32_t * )f_151(D) + 24B]; *)
mov f6158 f151_24;
(* f7_159 = MEM[(const int32_t * )f_151(D) + 28B]; *)
mov f7159 f151_28;
(* f8_160 = MEM[(const int32_t * )f_151(D) + 32B]; *)
mov f8160 f151_32;
(* f9_161 = MEM[(const int32_t * )f_151(D) + 36B]; *)
mov f9161 f151_36;
(* g0_163 = *g_162(D); *)
mov g0163 g162_0;
(* g1_164 = MEM[(const int32_t * )g_162(D) + 4B]; *)
mov g1164 g162_4;
(* g2_165 = MEM[(const int32_t * )g_162(D) + 8B]; *)
mov g2165 g162_8;
(* g3_166 = MEM[(const int32_t * )g_162(D) + 12B]; *)
mov g3166 g162_12;
(* g4_167 = MEM[(const int32_t * )g_162(D) + 16B]; *)
mov g4167 g162_16;
(* g5_168 = MEM[(const int32_t * )g_162(D) + 20B]; *)
mov g5168 g162_20;
(* g6_169 = MEM[(const int32_t * )g_162(D) + 24B]; *)
mov g6169 g162_24;
(* g7_170 = MEM[(const int32_t * )g_162(D) + 28B]; *)
mov g7170 g162_28;
(* g8_171 = MEM[(const int32_t * )g_162(D) + 32B]; *)
mov g8171 g162_32;
(* g9_172 = MEM[(const int32_t * )g_162(D) + 36B]; *)
mov g9172 g162_36;
(* g1_19_173 = g1_164 * 19; *)
smul g1_19173 g1164 0x13@int32;
(* g2_19_174 = g2_165 * 19; *)
smul g2_19174 g2165 0x13@int32;
(* g3_19_175 = g3_166 * 19; *)
smul g3_19175 g3166 0x13@int32;
(* g4_19_176 = g4_167 * 19; *)
smul g4_19176 g4167 0x13@int32;
(* g5_19_177 = g5_168 * 19; *)
smul g5_19177 g5168 0x13@int32;
(* g6_19_178 = g6_169 * 19; *)
smul g6_19178 g6169 0x13@int32;
(* g7_19_179 = g7_170 * 19; *)
smul g7_19179 g7170 0x13@int32;
(* g8_19_180 = g8_171 * 19; *)
smul g8_19180 g8171 0x13@int32;
(* g9_19_181 = g9_172 * 19; *)
smul g9_19181 g9172 0x13@int32;
(* f1_2_182 = f1_153 * 2; *)
smul f1_2182 f1153 0x2@int32;
(* f3_2_183 = f3_155 * 2; *)
smul f3_2183 f3155 0x2@int32;
(* f5_2_184 = f5_157 * 2; *)
smul f5_2184 f5157 0x2@int32;
(* f7_2_185 = f7_159 * 2; *)
smul f7_2185 f7159 0x2@int32;
(* f9_2_186 = f9_161 * 2; *)
smul f9_2186 f9161 0x2@int32;
(* f0g0_187 = f0_152 w* g0_163; *)
smulj f0g0187 f0152 g0163;
(* f0g1_188 = f0_152 w* g1_164; *)
smulj f0g1188 f0152 g1164;
(* f0g2_189 = f0_152 w* g2_165; *)
smulj f0g2189 f0152 g2165;
(* f0g3_190 = f0_152 w* g3_166; *)
smulj f0g3190 f0152 g3166;
(* f0g4_191 = f0_152 w* g4_167; *)
smulj f0g4191 f0152 g4167;
(* f0g5_192 = f0_152 w* g5_168; *)
smulj f0g5192 f0152 g5168;
(* f0g6_193 = f0_152 w* g6_169; *)
smulj f0g6193 f0152 g6169;
(* f0g7_194 = f0_152 w* g7_170; *)
smulj f0g7194 f0152 g7170;
(* f0g8_195 = f0_152 w* g8_171; *)
smulj f0g8195 f0152 g8171;
(* f0g9_196 = f0_152 w* g9_172; *)
smulj f0g9196 f0152 g9172;
(* f1g0_197 = g0_163 w* f1_153; *)
smulj f1g0197 g0163 f1153;
(* f1g1_2_198 = g1_164 w* f1_2_182; *)
smulj f1g1_2198 g1164 f1_2182;
(* f1g2_199 = g2_165 w* f1_153; *)
smulj f1g2199 g2165 f1153;
(* f1g3_2_200 = g3_166 w* f1_2_182; *)
smulj f1g3_2200 g3166 f1_2182;
(* f1g4_201 = g4_167 w* f1_153; *)
smulj f1g4201 g4167 f1153;
(* f1g5_2_202 = g5_168 w* f1_2_182; *)
smulj f1g5_2202 g5168 f1_2182;
(* f1g6_203 = g6_169 w* f1_153; *)
smulj f1g6203 g6169 f1153;
(* f1g7_2_204 = g7_170 w* f1_2_182; *)
smulj f1g7_2204 g7170 f1_2182;
(* f1g8_205 = g8_171 w* f1_153; *)
smulj f1g8205 g8171 f1153;
(* f1g9_38_206 = f1_2_182 w* g9_19_181; *)
smulj f1g9_38206 f1_2182 g9_19181;
(* f2g0_207 = g0_163 w* f2_154; *)
smulj f2g0207 g0163 f2154;
(* f2g1_208 = g1_164 w* f2_154; *)
smulj f2g1208 g1164 f2154;
(* f2g2_209 = g2_165 w* f2_154; *)
smulj f2g2209 g2165 f2154;
(* f2g3_210 = g3_166 w* f2_154; *)
smulj f2g3210 g3166 f2154;
(* f2g4_211 = g4_167 w* f2_154; *)
smulj f2g4211 g4167 f2154;
(* f2g5_212 = g5_168 w* f2_154; *)
smulj f2g5212 g5168 f2154;
(* f2g6_213 = g6_169 w* f2_154; *)
smulj f2g6213 g6169 f2154;
(* f2g7_214 = g7_170 w* f2_154; *)
smulj f2g7214 g7170 f2154;
(* f2g8_19_215 = f2_154 w* g8_19_180; *)
smulj f2g8_19215 f2154 g8_19180;
(* f2g9_19_216 = g9_19_181 w* f2_154; *)
smulj f2g9_19216 g9_19181 f2154;
(* f3g0_217 = g0_163 w* f3_155; *)
smulj f3g0217 g0163 f3155;
(* f3g1_2_218 = g1_164 w* f3_2_183; *)
smulj f3g1_2218 g1164 f3_2183;
(* f3g2_219 = g2_165 w* f3_155; *)
smulj f3g2219 g2165 f3155;
(* f3g3_2_220 = g3_166 w* f3_2_183; *)
smulj f3g3_2220 g3166 f3_2183;
(* f3g4_221 = g4_167 w* f3_155; *)
smulj f3g4221 g4167 f3155;
(* f3g5_2_222 = g5_168 w* f3_2_183; *)
smulj f3g5_2222 g5168 f3_2183;
(* f3g6_223 = g6_169 w* f3_155; *)
smulj f3g6223 g6169 f3155;
(* f3g7_38_224 = f3_2_183 w* g7_19_179; *)
smulj f3g7_38224 f3_2183 g7_19179;
(* f3g8_19_225 = g8_19_180 w* f3_155; *)
smulj f3g8_19225 g8_19180 f3155;
(* f3g9_38_226 = g9_19_181 w* f3_2_183; *)
smulj f3g9_38226 g9_19181 f3_2183;
(* f4g0_227 = g0_163 w* f4_156; *)
smulj f4g0227 g0163 f4156;
(* f4g1_228 = g1_164 w* f4_156; *)
smulj f4g1228 g1164 f4156;
(* f4g2_229 = g2_165 w* f4_156; *)
smulj f4g2229 g2165 f4156;
(* f4g3_230 = g3_166 w* f4_156; *)
smulj f4g3230 g3166 f4156;
(* f4g4_231 = g4_167 w* f4_156; *)
smulj f4g4231 g4167 f4156;
(* f4g5_232 = g5_168 w* f4_156; *)
smulj f4g5232 g5168 f4156;
(* f4g6_19_233 = f4_156 w* g6_19_178; *)
smulj f4g6_19233 f4156 g6_19178;
(* f4g7_19_234 = g7_19_179 w* f4_156; *)
smulj f4g7_19234 g7_19179 f4156;
(* f4g8_19_235 = g8_19_180 w* f4_156; *)
smulj f4g8_19235 g8_19180 f4156;
(* f4g9_19_236 = g9_19_181 w* f4_156; *)
smulj f4g9_19236 g9_19181 f4156;
(* f5g0_237 = g0_163 w* f5_157; *)
smulj f5g0237 g0163 f5157;
(* f5g1_2_238 = g1_164 w* f5_2_184; *)
smulj f5g1_2238 g1164 f5_2184;
(* f5g2_239 = g2_165 w* f5_157; *)
smulj f5g2239 g2165 f5157;
(* f5g3_2_240 = g3_166 w* f5_2_184; *)
smulj f5g3_2240 g3166 f5_2184;
(* f5g4_241 = g4_167 w* f5_157; *)
smulj f5g4241 g4167 f5157;
(* f5g5_38_242 = f5_2_184 w* g5_19_177; *)
smulj f5g5_38242 f5_2184 g5_19177;
(* f5g6_19_243 = g6_19_178 w* f5_157; *)
smulj f5g6_19243 g6_19178 f5157;
(* f5g7_38_244 = g7_19_179 w* f5_2_184; *)
smulj f5g7_38244 g7_19179 f5_2184;
(* f5g8_19_245 = g8_19_180 w* f5_157; *)
smulj f5g8_19245 g8_19180 f5157;
(* f5g9_38_246 = g9_19_181 w* f5_2_184; *)
smulj f5g9_38246 g9_19181 f5_2184;
(* f6g0_247 = g0_163 w* f6_158; *)
smulj f6g0247 g0163 f6158;
(* f6g1_248 = g1_164 w* f6_158; *)
smulj f6g1248 g1164 f6158;
(* f6g2_249 = g2_165 w* f6_158; *)
smulj f6g2249 g2165 f6158;
(* f6g3_250 = g3_166 w* f6_158; *)
smulj f6g3250 g3166 f6158;
(* f6g4_19_251 = f6_158 w* g4_19_176; *)
smulj f6g4_19251 f6158 g4_19176;
(* f6g5_19_252 = g5_19_177 w* f6_158; *)
smulj f6g5_19252 g5_19177 f6158;
(* f6g6_19_253 = g6_19_178 w* f6_158; *)
smulj f6g6_19253 g6_19178 f6158;
(* f6g7_19_254 = g7_19_179 w* f6_158; *)
smulj f6g7_19254 g7_19179 f6158;
(* f6g8_19_255 = g8_19_180 w* f6_158; *)
smulj f6g8_19255 g8_19180 f6158;
(* f6g9_19_256 = g9_19_181 w* f6_158; *)
smulj f6g9_19256 g9_19181 f6158;
(* f7g0_257 = g0_163 w* f7_159; *)
smulj f7g0257 g0163 f7159;
(* f7g1_2_258 = g1_164 w* f7_2_185; *)
smulj f7g1_2258 g1164 f7_2185;
(* f7g2_259 = g2_165 w* f7_159; *)
smulj f7g2259 g2165 f7159;
(* f7g3_38_260 = f7_2_185 w* g3_19_175; *)
smulj f7g3_38260 f7_2185 g3_19175;
(* f7g4_19_261 = g4_19_176 w* f7_159; *)
smulj f7g4_19261 g4_19176 f7159;
(* f7g5_38_262 = g5_19_177 w* f7_2_185; *)
smulj f7g5_38262 g5_19177 f7_2185;
(* f7g6_19_263 = g6_19_178 w* f7_159; *)
smulj f7g6_19263 g6_19178 f7159;
(* f7g7_38_264 = g7_19_179 w* f7_2_185; *)
smulj f7g7_38264 g7_19179 f7_2185;
(* f7g8_19_265 = g8_19_180 w* f7_159; *)
smulj f7g8_19265 g8_19180 f7159;
(* f7g9_38_266 = g9_19_181 w* f7_2_185; *)
smulj f7g9_38266 g9_19181 f7_2185;
(* f8g0_267 = g0_163 w* f8_160; *)
smulj f8g0267 g0163 f8160;
(* f8g1_268 = g1_164 w* f8_160; *)
smulj f8g1268 g1164 f8160;
(* f8g2_19_269 = f8_160 w* g2_19_174; *)
smulj f8g2_19269 f8160 g2_19174;
(* f8g3_19_270 = g3_19_175 w* f8_160; *)
smulj f8g3_19270 g3_19175 f8160;
(* f8g4_19_271 = g4_19_176 w* f8_160; *)
smulj f8g4_19271 g4_19176 f8160;
(* f8g5_19_272 = g5_19_177 w* f8_160; *)
smulj f8g5_19272 g5_19177 f8160;
(* f8g6_19_273 = g6_19_178 w* f8_160; *)
smulj f8g6_19273 g6_19178 f8160;
(* f8g7_19_274 = g7_19_179 w* f8_160; *)
smulj f8g7_19274 g7_19179 f8160;
(* f8g8_19_275 = g8_19_180 w* f8_160; *)
smulj f8g8_19275 g8_19180 f8160;
(* f8g9_19_276 = g9_19_181 w* f8_160; *)
smulj f8g9_19276 g9_19181 f8160;
(* f9g0_277 = g0_163 w* f9_161; *)
smulj f9g0277 g0163 f9161;
(* f9g1_38_278 = f9_2_186 w* g1_19_173; *)
smulj f9g1_38278 f9_2186 g1_19173;
(* f9g2_19_279 = g2_19_174 w* f9_161; *)
smulj f9g2_19279 g2_19174 f9161;
(* f9g3_38_280 = g3_19_175 w* f9_2_186; *)
smulj f9g3_38280 g3_19175 f9_2186;
(* f9g4_19_281 = g4_19_176 w* f9_161; *)
smulj f9g4_19281 g4_19176 f9161;
(* f9g5_38_282 = g5_19_177 w* f9_2_186; *)
smulj f9g5_38282 g5_19177 f9_2186;
(* f9g6_19_283 = g6_19_178 w* f9_161; *)
smulj f9g6_19283 g6_19178 f9161;
(* f9g7_38_284 = g7_19_179 w* f9_2_186; *)
smulj f9g7_38284 g7_19179 f9_2186;
(* f9g8_19_285 = g8_19_180 w* f9_161; *)
smulj f9g8_19285 g8_19180 f9161;
(* f9g9_38_286 = g9_19_181 w* f9_2_186; *)
smulj f9g9_38286 g9_19181 f9_2186;
(* _376 = f0g0_187 + f2g8_19_215; *)
sadd v376 f0g0187 f2g8_19215;
(* _377 = f4g6_19_233 + _376; *)
sadd v377 f4g6_19233 v376;
(* _378 = f6g4_19_251 + _377; *)
sadd v378 f6g4_19251 v377;
(* _379 = f8g2_19_269 + _378; *)
sadd v379 f8g2_19269 v378;
(* _380 = f1g9_38_206 + _379; *)
sadd v380 f1g9_38206 v379;
(* _381 = f3g7_38_224 + _380; *)
sadd v381 f3g7_38224 v380;
(* _382 = f5g5_38_242 + _381; *)
sadd v382 f5g5_38242 v381;
(* _42 = f7g3_38_260 + _382; *)
sadd v42 f7g3_38260 v382;
(* h0_287 = _42 + f9g1_38_278; *)
sadd h0287 v42 f9g1_38278;
(* _43 = f0g1_188 + f1g0_197; *)
sadd v43 f0g1188 f1g0197;
(* _44 = _43 + f2g9_19_216; *)
sadd v44 v43 f2g9_19216;
(* _45 = _44 + f3g8_19_225; *)
sadd v45 v44 f3g8_19225;
(* _46 = _45 + f4g7_19_234; *)
sadd v46 v45 f4g7_19234;
(* _47 = _46 + f5g6_19_243; *)
sadd v47 v46 f5g6_19243;
(* _48 = _47 + f6g5_19_252; *)
sadd v48 v47 f6g5_19252;
(* _49 = _48 + f7g4_19_261; *)
sadd v49 v48 f7g4_19261;
(* _50 = _49 + f8g3_19_270; *)
sadd v50 v49 f8g3_19270;
(* h1_288 = _50 + f9g2_19_279; *)
sadd h1288 v50 f9g2_19279;
(* _362 = f0g2_189 + f2g0_207; *)
sadd v362 f0g2189 f2g0207;
(* _363 = f4g8_19_235 + _362; *)
sadd v363 f4g8_19235 v362;
(* _364 = f6g6_19_253 + _363; *)
sadd v364 f6g6_19253 v363;
(* _365 = f8g4_19_271 + _364; *)
sadd v365 f8g4_19271 v364;
(* _366 = f1g1_2_198 + _365; *)
sadd v366 f1g1_2198 v365;
(* _367 = f3g9_38_226 + _366; *)
sadd v367 f3g9_38226 v366;
(* _368 = f5g7_38_244 + _367; *)
sadd v368 f5g7_38244 v367;
(* _58 = f7g5_38_262 + _368; *)
sadd v58 f7g5_38262 v368;
(* h2_289 = _58 + f9g3_38_280; *)
sadd h2289 v58 f9g3_38280;
(* _59 = f0g3_190 + f1g2_199; *)
sadd v59 f0g3190 f1g2199;
(* _60 = _59 + f2g1_208; *)
sadd v60 v59 f2g1208;
(* _61 = _60 + f3g0_217; *)
sadd v61 v60 f3g0217;
(* _62 = _61 + f4g9_19_236; *)
sadd v62 v61 f4g9_19236;
(* _63 = _62 + f5g8_19_245; *)
sadd v63 v62 f5g8_19245;
(* _64 = _63 + f6g7_19_254; *)
sadd v64 v63 f6g7_19254;
(* _65 = _64 + f7g6_19_263; *)
sadd v65 v64 f7g6_19263;
(* _66 = _65 + f8g5_19_272; *)
sadd v66 v65 f8g5_19272;
(* h3_290 = _66 + f9g4_19_281; *)
sadd h3290 v66 f9g4_19281;
(* _369 = f0g4_191 + f2g2_209; *)
sadd v369 f0g4191 f2g2209;
(* _370 = f4g0_227 + _369; *)
sadd v370 f4g0227 v369;
(* _371 = f6g8_19_255 + _370; *)
sadd v371 f6g8_19255 v370;
(* _372 = f8g6_19_273 + _371; *)
sadd v372 f8g6_19273 v371;
(* _373 = f1g3_2_200 + _372; *)
sadd v373 f1g3_2200 v372;
(* _374 = f3g1_2_218 + _373; *)
sadd v374 f3g1_2218 v373;
(* _375 = f5g9_38_246 + _374; *)
sadd v375 f5g9_38246 v374;
(* _74 = f7g7_38_264 + _375; *)
sadd v74 f7g7_38264 v375;
(* h4_291 = _74 + f9g5_38_282; *)
sadd h4291 v74 f9g5_38282;
(* _75 = f0g5_192 + f1g4_201; *)
sadd v75 f0g5192 f1g4201;
(* _76 = _75 + f2g3_210; *)
sadd v76 v75 f2g3210;
(* _77 = _76 + f3g2_219; *)
sadd v77 v76 f3g2219;
(* _78 = _77 + f4g1_228; *)
sadd v78 v77 f4g1228;
(* _79 = _78 + f5g0_237; *)
sadd v79 v78 f5g0237;
(* _80 = _79 + f6g9_19_256; *)
sadd v80 v79 f6g9_19256;
(* _81 = _80 + f7g8_19_265; *)
sadd v81 v80 f7g8_19265;
(* _82 = _81 + f8g7_19_274; *)
sadd v82 v81 f8g7_19274;
(* h5_292 = _82 + f9g6_19_283; *)
sadd h5292 v82 f9g6_19283;
(* _355 = f0g6_193 + f2g4_211; *)
sadd v355 f0g6193 f2g4211;
(* _356 = f4g2_229 + _355; *)
sadd v356 f4g2229 v355;
(* _357 = f6g0_247 + _356; *)
sadd v357 f6g0247 v356;
(* _358 = f8g8_19_275 + _357; *)
sadd v358 f8g8_19275 v357;
(* _359 = f1g5_2_202 + _358; *)
sadd v359 f1g5_2202 v358;
(* _360 = f3g3_2_220 + _359; *)
sadd v360 f3g3_2220 v359;
(* _361 = f5g1_2_238 + _360; *)
sadd v361 f5g1_2238 v360;
(* _90 = f7g9_38_266 + _361; *)
sadd v90 f7g9_38266 v361;
(* h6_293 = _90 + f9g7_38_284; *)
sadd h6293 v90 f9g7_38284;
(* _91 = f0g7_194 + f1g6_203; *)
sadd v91 f0g7194 f1g6203;
(* _92 = _91 + f2g5_212; *)
sadd v92 v91 f2g5212;
(* _93 = _92 + f3g4_221; *)
sadd v93 v92 f3g4221;
(* _94 = _93 + f4g3_230; *)
sadd v94 v93 f4g3230;
(* _95 = _94 + f5g2_239; *)
sadd v95 v94 f5g2239;
(* _96 = _95 + f6g1_248; *)
sadd v96 v95 f6g1248;
(* _97 = _96 + f7g0_257; *)
sadd v97 v96 f7g0257;
(* _98 = _97 + f8g9_19_276; *)
sadd v98 v97 f8g9_19276;
(* h7_294 = _98 + f9g8_19_285; *)
sadd h7294 v98 f9g8_19285;
(* _348 = f0g8_195 + f2g6_213; *)
sadd v348 f0g8195 f2g6213;
(* _349 = f4g4_231 + _348; *)
sadd v349 f4g4231 v348;
(* _350 = f6g2_249 + _349; *)
sadd v350 f6g2249 v349;
(* _351 = f8g0_267 + _350; *)
sadd v351 f8g0267 v350;
(* _352 = f1g7_2_204 + _351; *)
sadd v352 f1g7_2204 v351;
(* _353 = f3g5_2_222 + _352; *)
sadd v353 f3g5_2222 v352;
(* _354 = f5g3_2_240 + _353; *)
sadd v354 f5g3_2240 v353;
(* _106 = f7g1_2_258 + _354; *)
sadd v106 f7g1_2258 v354;
(* h8_295 = _106 + f9g9_38_286; *)
sadd h8295 v106 f9g9_38286;
(* _107 = f0g9_196 + f1g8_205; *)
sadd v107 f0g9196 f1g8205;
(* _108 = _107 + f2g7_214; *)
sadd v108 v107 f2g7214;
(* _109 = _108 + f3g6_223; *)
sadd v109 v108 f3g6223;
(* _110 = _109 + f4g5_232; *)
sadd v110 v109 f4g5232;
(* _111 = _110 + f5g4_241; *)
sadd v111 v110 f5g4241;
(* _112 = _111 + f6g3_250; *)
sadd v112 v111 f6g3250;
(* _113 = _112 + f7g2_259; *)
sadd v113 v112 f7g2259;
(* _114 = _113 + f8g1_268; *)
sadd v114 v113 f8g1268;
(* h9_296 = _114 + f9g0_277; *)
sadd h9296 v114 f9g0277;
(* _115 = h0_287 + 33554432; *)
sadd v115 h0287 0x2000000@int64;
(* carry0_297 = _115 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry0297 tmp_to_use v115 26;
(* h1_298 = h1_288 + carry0_297; *)
sadd h1298 h1288 carry0297;
(* _116 = _115 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v116 v115 (-0x4000000)@int64;

(* added *)
assert true && v116 = carry0297 * (2**26)@64;
assume v116 = carry0297 * (2**26) && true;

(* h0_299 = h0_287 - _116; *)
ssub h0299 h0287 v116;
(* _117 = h4_291 + 33554432; *)
sadd v117 h4291 0x2000000@int64;
(* carry4_300 = _117 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry4300 tmp_to_use v117 26;
(* h5_301 = h5_292 + carry4_300; *)
sadd h5301 h5292 carry4300;
(* _118 = _117 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v118 v117 (-0x4000000)@int64;

(* added *)
assert true && v118 = carry4300 * (2**26)@64;
assume v118 = carry4300 * (2**26) && true;


(* h4_302 = h4_291 - _118; *)
ssub h4302 h4291 v118;
(* _119 = h1_298 + 16777216; *)
sadd v119 h1298 0x1000000@int64;
(* carry1_303 = _119 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry1303 tmp_to_use v119 25;
(* h2_304 = h2_289 + carry1_303; *)
sadd h2304 h2289 carry1303;
(* _120 = _119 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v120 v119 (-0x2000000)@int64;

(* added *)
assert true && v120 = carry1303 * (2**25)@64;
assume v120 = carry1303 * (2**25) && true;

(* h1_305 = h1_298 - _120; *)
ssub h1305 h1298 v120;
(* _121 = h5_301 + 16777216; *)
sadd v121 h5301 0x1000000@int64;
(* carry5_306 = _121 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry5306 tmp_to_use v121 25;
(* h6_307 = h6_293 + carry5_306; *)
sadd h6307 h6293 carry5306;
(* _122 = _121 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v122 v121 (-0x2000000)@int64;

(* added *)
assert true && v122 = carry5306 * (2**25)@64;
assume v122 = carry5306 * (2**25) && true;


(* h5_308 = h5_301 - _122; *)
ssub h5308 h5301 v122;
(* _123 = h2_304 + 33554432; *)
sadd v123 h2304 0x2000000@int64;
(* carry2_309 = _123 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry2309 tmp_to_use v123 26;
(* h3_310 = h3_290 + carry2_309; *)
sadd h3310 h3290 carry2309;
(* _124 = _123 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v124 v123 (-0x4000000)@int64;

(* added *)
assert true && v124 = carry2309 * (2**26)@64;
assume v124 = carry2309 * (2**26) && true;

(* h2_311 = h2_304 - _124; *)
ssub h2311 h2304 v124;
(* _125 = h6_307 + 33554432; *)
sadd v125 h6307 0x2000000@int64;
(* carry6_312 = _125 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry6312 tmp_to_use v125 26;
(* h7_313 = h7_294 + carry6_312; *)
sadd h7313 h7294 carry6312;
(* _126 = _125 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v126 v125 (-0x4000000)@int64;

(* added *)
assert true && v126 = carry6312 * (2**26)@64;
assume v126 = carry6312 * (2**26) && true;


(* h6_314 = h6_307 - _126; *)
ssub h6314 h6307 v126;
(* _127 = h3_310 + 16777216; *)
sadd v127 h3310 0x1000000@int64;
(* carry3_315 = _127 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry3315 tmp_to_use v127 25;
(* h4_316 = h4_302 + carry3_315; *)
sadd h4316 h4302 carry3315;
(* _128 = _127 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v128 v127 (-0x2000000)@int64;

(* added *)
assert true && v128 = carry3315 * (2**25)@64;
assume v128 = carry3315 * (2**25) && true;

(* h3_317 = h3_310 - _128; *)
ssub h3317 h3310 v128;
(* _129 = h7_313 + 16777216; *)
sadd v129 h7313 0x1000000@int64;
(* carry7_318 = _129 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry7318 tmp_to_use v129 25;
(* h8_319 = h8_295 + carry7_318; *)
sadd h8319 h8295 carry7318;
(* _130 = _129 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v130 v129 (-0x2000000)@int64;

(* added *)
assert true && v130 = carry7318 * (2**25)@64;
assume v130 = carry7318 * (2**25) && true;

(* h7_320 = h7_313 - _130; *)
ssub h7320 h7313 v130;
(* _131 = h4_316 + 33554432; *)
sadd v131 h4316 0x2000000@int64;
(* carry4_321 = _131 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry4321 tmp_to_use v131 26;
(* h5_322 = h5_308 + carry4_321; *)
sadd h5322 h5308 carry4321;
(* _132 = _131 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v132 v131 (-0x4000000)@int64;

(* added *)
assert true && v132 = carry4321 * (2**26)@64;
assume v132 = carry4321 * (2**26) && true;

(* h4_323 = h4_316 - _132; *)
ssub h4323 h4316 v132;
(* _133 = h8_319 + 33554432; *)
sadd v133 h8319 0x2000000@int64;
(* carry8_324 = _133 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry8324 tmp_to_use v133 26;
(* h9_325 = h9_296 + carry8_324; *)
sadd h9325 h9296 carry8324;
(* _134 = _133 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v134 v133 (-0x4000000)@int64;

(* added *)
assert true && v134 = carry8324 * (2**26)@64;
assume v134 = carry8324 * (2**26) && true;

(* h8_326 = h8_319 - _134; *)
ssub h8326 h8319 v134;
(* _135 = h9_325 + 16777216; *)
sadd v135 h9325 0x1000000@int64;
(* carry9_327 = _135 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry9327 tmp_to_use v135 25;
(* _136 = carry9_327 * 19; *)
smul v136 carry9327 0x13@int64;
(* h0_328 = _136 + h0_299; *)
sadd h0328 v136 h0299;
(* _137 = _135 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v137 v135 (-0x2000000)@int64;

(* added *)
assert true && v137 = carry9327 * (2**25)@64;
assume v137 = carry9327 * (2**25) && true;

(* h9_329 = h9_325 - _137; *)
ssub h9329 h9325 v137;
(* _138 = h0_328 + 33554432; *)
sadd v138 h0328 0x2000000@int64;
(* carry0_330 = _138 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry0330 tmp_to_use v138 26;
(* h1_331 = h1_305 + carry0_330; *)
sadd h1331 h1305 carry0330;
(* _139 = _138 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v139 v138 (-0x4000000)@int64;

(* added *)
assert true && v139 = carry0330 * (2**26)@64;
assume v139 = carry0330 * (2**26) && true;

(* h0_332 = h0_328 - _139; *)
ssub h0332 h0328 v139;
(* _140 = (int) h0_332; *)
(* cast v140@int32 h0332@int64; *)
(* added: cast -> vpc *)
vpc v140@int32 h0332@int64;
(* *h_333(D) = _140; *)
mov h333_0 v140;
(* _141 = (int) h1_331; *)
(* cast v141@int32 h1331@int64; *)
(* added: cast -> vpc *)
vpc v141@int32 h1331@int64;
(* MEM[(int32_t * )h_333(D) + 4B] = _141; *)
mov h333_4 v141;
(* _142 = (int) h2_311; *)
(* cast v142@int32 h2311@int64; *)
(* added: cast -> vpc *)
vpc v142@int32 h2311@int64;
(* MEM[(int32_t * )h_333(D) + 8B] = _142; *)
mov h333_8 v142;
(* _143 = (int) h3_317; *)
(* cast v143@int32 h3317@int64; *)
(* added: cast -> vpc *)
vpc v143@int32 h3317@int64;
(* MEM[(int32_t * )h_333(D) + 12B] = _143; *)
mov h333_12 v143;
(* _144 = (int) h4_323; *)
(* cast v144@int32 h4323@int64; *)
(* added: cast -> vpc *)
vpc v144@int32 h4323@int64;
(* MEM[(int32_t * )h_333(D) + 16B] = _144; *)
mov h333_16 v144;
(* _145 = (int) h5_322; *)
(* cast v145@int32 h5322@int64; *)
(* added: cast -> vpc *)
vpc v145@int32 h5322@int64;
(* MEM[(int32_t * )h_333(D) + 20B] = _145; *)
mov h333_20 v145;
(* _146 = (int) h6_314; *)
(* cast v146@int32 h6314@int64; *)
(* added: cast -> vpc *)
vpc v146@int32 h6314@int64;
(* MEM[(int32_t * )h_333(D) + 24B] = _146; *)
mov h333_24 v146;
(* _147 = (int) h7_320; *)
(* cast v147@int32 h7320@int64; *)
(* added: cast -> vpc *)
vpc v147@int32 h7320@int64;
(* MEM[(int32_t * )h_333(D) + 28B] = _147; *)
mov h333_28 v147;
(* _148 = (int) h8_326; *)
(* cast v148@int32 h8326@int64; *)
(* added: cast -> vpc *)
vpc v148@int32 h8326@int64;
(* MEM[(int32_t * )h_333(D) + 32B] = _148; *)
mov h333_32 v148;
(* _149 = (int) h9_329; *)
(* cast v149@int32 h9329@int64; *)
(* added: cast -> vpc *)
vpc v149@int32 h9329@int64;
(* MEM[(int32_t * )h_333(D) + 36B] = _149; *)
mov h333_36 v149;
(* return; *)


(* Start with unused lhs *)
mov c0 h333_0@int32;
mov c1 h333_4@int32;
mov c2 h333_8@int32;
mov c3 h333_12@int32;
mov c4 h333_16@int32;
mov c5 h333_20@int32;
mov c6 h333_24@int32;
mov c7 h333_28@int32;
mov c8 h333_32@int32;
mov c9 h333_36@int32;
(* End with unsed lhs *)


{
  (
    c0 +
    c1 * (2**26) +
    c2 * (2**51) +
    c3 * (2**77) +
    c4 * (2**102) +
    c5 * (2**128) +
    c6 * (2**153) +
    c7 * (2**179) +
    c8 * (2**204) +
    c9 * (2**230)
  )
  =
  (
    (
      a0 +
      a1 * (2**26) +
      a2 * (2**51) +
      a3 * (2**77) +
      a4 * (2**102) +
      a5 * (2**128) +
      a6 * (2**153) +
      a7 * (2**179) +
      a8 * (2**204) +
      a9 * (2**230)
    )
    *
    (
      b0 +
      b1 * (2**26) +
      b2 * (2**51) +
      b3 * (2**77) +
      b4 * (2**102) +
      b5 * (2**128) +
      b6 * (2**153) +
      b7 * (2**179) +
      b8 * (2**204) +
      b9 * (2**230)
    )
  )
  (mod (2**255 - 19))
  &&
  and
  [
    c0 <=s (33889976)@32,
    c0 >=s (-33889976)@32,
    c1 <=s (16944988)@32,
    c1 >=s (-16944988)@32,
    c2 <=s (33889976)@32,
    c2 >=s (-33889976)@32,
    c3 <=s (16944988)@32,
    c3 >=s (-16944988)@32,
    c4 <=s (33889976)@32,
    c4 >=s (-33889976)@32,
    c5 <=s (16944988)@32,
    c5 >=s (-16944988)@32,
    c6 <=s (33889976)@32,
    c6 >=s (-33889976)@32,
    c7 <=s (16944988)@32,
    c7 >=s (-16944988)@32,
    c8 <=s (33889976)@32,
    c8 >=s (-33889976)@32,
    c9 <=s (16944988)@32,
    c9 >=s (-16944988)@32
  ]
}

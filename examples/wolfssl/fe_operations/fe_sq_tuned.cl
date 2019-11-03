(* @frege
Verification result:                    [OK]            1971.977780 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -btor -isafety -slicing -isafety_timeout 99999999 -v ./fe_sq_tuned.cl"
        User time (seconds): 31493.75
        System time (seconds): 81.43
        Percent of CPU this job got: 1601%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 32:52.06
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 355628
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 40448897
        Voluntary context switches: 6006
        Involuntary context switches: 2553942
        Swaps: 0
        File system inputs: 0
        File system outputs: 6304
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0

*)

(*
h = f * f
Can overlap h with f.

Preconditions:
   |f| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.

Postconditions:
   |h| bounded by 1.01*2^25,1.01*2^24,1.01*2^25,1.01*2^24,etc.

1.65*2^26 = 110729625
1.65*2^25 = 55364812
1.01*2^25 = 33889976
1.01*2^24 = 16944988


*)


proc main (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9) =
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
    a9 >=s (-55364812)@32
  ]
}

(* Start with undefined rhs *)
mov f95_0 a0;
mov f95_4 a1;
mov f95_8 a2;
mov f95_12 a3;
mov f95_16 a4;
mov f95_20 a5;
mov f95_24 a6;
mov f95_28 a7;
mov f95_32 a8;
mov f95_36 a9;
(* End with undefined rhs *)


(* f0_96 = *f_95(D); *)
mov f096 f95_0;
(* f1_97 = MEM[(const int32_t * )f_95(D) + 4B]; *)
mov f197 f95_4;
(* f2_98 = MEM[(const int32_t * )f_95(D) + 8B]; *)
mov f298 f95_8;
(* f3_99 = MEM[(const int32_t * )f_95(D) + 12B]; *)
mov f399 f95_12;
(* f4_100 = MEM[(const int32_t * )f_95(D) + 16B]; *)
mov f4100 f95_16;
(* f5_101 = MEM[(const int32_t * )f_95(D) + 20B]; *)
mov f5101 f95_20;
(* f6_102 = MEM[(const int32_t * )f_95(D) + 24B]; *)
mov f6102 f95_24;
(* f7_103 = MEM[(const int32_t * )f_95(D) + 28B]; *)
mov f7103 f95_28;
(* f8_104 = MEM[(const int32_t * )f_95(D) + 32B]; *)
mov f8104 f95_32;
(* f9_105 = MEM[(const int32_t * )f_95(D) + 36B]; *)
mov f9105 f95_36;
(* f0_2_106 = f0_96 * 2; *)
smul f0_2106 f096 2@int32;
(* f1_2_107 = f1_97 * 2; *)
smul f1_2107 f197 2@int32;
(* f2_2_108 = f2_98 * 2; *)
smul f2_2108 f298 2@int32;
(* f3_2_109 = f3_99 * 2; *)
smul f3_2109 f399 2@int32;
(* f4_2_110 = f4_100 * 2; *)
smul f4_2110 f4100 2@int32;
(* f5_2_111 = f5_101 * 2; *)
smul f5_2111 f5101 2@int32;
(* f6_2_112 = f6_102 * 2; *)
smul f6_2112 f6102 2@int32;
(* f7_2_113 = f7_103 * 2; *)
smul f7_2113 f7103 2@int32;
(* f5_38_114 = f5_101 * 38; *)
smul f5_38114 f5101 38@int32;
(* f6_19_115 = f6_102 * 19; *)
smul f6_19115 f6102 19@int32;
(* f7_38_116 = f7_103 * 38; *)
smul f7_38116 f7103 38@int32;
(* f8_19_117 = f8_104 * 19; *)
smul f8_19117 f8104 19@int32;
(* f9_38_118 = f9_105 * 38; *)
smul f9_38118 f9105 38@int32;
(* f0f0_119 = f0_96 w* f0_96; *)
smulj f0f0119 f096 f096;
(* f0f1_2_120 = f0_2_106 w* f1_97; *)
smulj f0f1_2120 f0_2106 f197;
(* f0f2_2_121 = f0_2_106 w* f2_98; *)
smulj f0f2_2121 f0_2106 f298;
(* f0f3_2_122 = f0_2_106 w* f3_99; *)
smulj f0f3_2122 f0_2106 f399;
(* f0f4_2_123 = f0_2_106 w* f4_100; *)
smulj f0f4_2123 f0_2106 f4100;
(* f0f5_2_124 = f0_2_106 w* f5_101; *)
smulj f0f5_2124 f0_2106 f5101;
(* f0f6_2_125 = f0_2_106 w* f6_102; *)
smulj f0f6_2125 f0_2106 f6102;
(* f0f7_2_126 = f0_2_106 w* f7_103; *)
smulj f0f7_2126 f0_2106 f7103;
(* f0f8_2_127 = f0_2_106 w* f8_104; *)
smulj f0f8_2127 f0_2106 f8104;
(* f0f9_2_128 = f0_2_106 w* f9_105; *)
smulj f0f9_2128 f0_2106 f9105;
(* f1f1_2_129 = f1_97 w* f1_2_107; *)
smulj f1f1_2129 f197 f1_2107;
(* f1f2_2_130 = f2_98 w* f1_2_107; *)
smulj f1f2_2130 f298 f1_2107;
(* f1f3_4_131 = f1_2_107 w* f3_2_109; *)
smulj f1f3_4131 f1_2107 f3_2109;
(* f1f4_2_132 = f4_100 w* f1_2_107; *)
smulj f1f4_2132 f4100 f1_2107;
(* f1f5_4_133 = f1_2_107 w* f5_2_111; *)
smulj f1f5_4133 f1_2107 f5_2111;
(* f1f6_2_134 = f6_102 w* f1_2_107; *)
smulj f1f6_2134 f6102 f1_2107;
(* f1f7_4_135 = f1_2_107 w* f7_2_113; *)
smulj f1f7_4135 f1_2107 f7_2113;
(* f1f8_2_136 = f8_104 w* f1_2_107; *)
smulj f1f8_2136 f8104 f1_2107;
(* f1f9_76_137 = f1_2_107 w* f9_38_118; *)
smulj f1f9_76137 f1_2107 f9_38118;
(* f2f2_138 = f2_98 w* f2_98; *)
smulj f2f2138 f298 f298;
(* f2f3_2_139 = f3_99 w* f2_2_108; *)
smulj f2f3_2139 f399 f2_2108;
(* f2f4_2_140 = f4_100 w* f2_2_108; *)
smulj f2f4_2140 f4100 f2_2108;
(* f2f5_2_141 = f5_101 w* f2_2_108; *)
smulj f2f5_2141 f5101 f2_2108;
(* f2f6_2_142 = f6_102 w* f2_2_108; *)
smulj f2f6_2142 f6102 f2_2108;
(* f2f7_2_143 = f7_103 w* f2_2_108; *)
smulj f2f7_2143 f7103 f2_2108;
(* f2f8_38_144 = f2_2_108 w* f8_19_117; *)
smulj f2f8_38144 f2_2108 f8_19117;
(* f2f9_38_145 = f2_98 w* f9_38_118; *)
smulj f2f9_38145 f298 f9_38118;
(* f3f3_2_146 = f3_99 w* f3_2_109; *)
smulj f3f3_2146 f399 f3_2109;
(* f3f4_2_147 = f4_100 w* f3_2_109; *)
smulj f3f4_2147 f4100 f3_2109;
(* f3f5_4_148 = f3_2_109 w* f5_2_111; *)
smulj f3f5_4148 f3_2109 f5_2111;
(* f3f6_2_149 = f6_102 w* f3_2_109; *)
smulj f3f6_2149 f6102 f3_2109;
(* f3f7_76_150 = f3_2_109 w* f7_38_116; *)
smulj f3f7_76150 f3_2109 f7_38116;
(* f3f8_38_151 = f3_2_109 w* f8_19_117; *)
smulj f3f8_38151 f3_2109 f8_19117;
(* f3f9_76_152 = f3_2_109 w* f9_38_118; *)
smulj f3f9_76152 f3_2109 f9_38118;
(* f4f4_153 = f4_100 w* f4_100; *)
smulj f4f4153 f4100 f4100;
(* f4f5_2_154 = f5_101 w* f4_2_110; *)
smulj f4f5_2154 f5101 f4_2110;
(* f4f6_38_155 = f4_2_110 w* f6_19_115; *)
smulj f4f6_38155 f4_2110 f6_19115;
(* f4f7_38_156 = f4_100 w* f7_38_116; *)
smulj f4f7_38156 f4100 f7_38116;
(* f4f8_38_157 = f8_19_117 w* f4_2_110; *)
smulj f4f8_38157 f8_19117 f4_2110;
(* f4f9_38_158 = f4_100 w* f9_38_118; *)
smulj f4f9_38158 f4100 f9_38118;
(* f5f5_38_159 = f5_101 w* f5_38_114; *)
smulj f5f5_38159 f5101 f5_38114;
(* f5f6_38_160 = f5_2_111 w* f6_19_115; *)
smulj f5f6_38160 f5_2111 f6_19115;
(* f5f7_76_161 = f5_2_111 w* f7_38_116; *)
smulj f5f7_76161 f5_2111 f7_38116;
(* f5f8_38_162 = f5_2_111 w* f8_19_117; *)
smulj f5f8_38162 f5_2111 f8_19117;
(* f5f9_76_163 = f5_2_111 w* f9_38_118; *)
smulj f5f9_76163 f5_2111 f9_38118;
(* f6f6_19_164 = f6_102 w* f6_19_115; *)
smulj f6f6_19164 f6102 f6_19115;
(* f6f7_38_165 = f6_102 w* f7_38_116; *)
smulj f6f7_38165 f6102 f7_38116;
(* f6f8_38_166 = f8_19_117 w* f6_2_112; *)
smulj f6f8_38166 f8_19117 f6_2112;
(* f6f9_38_167 = f6_102 w* f9_38_118; *)
smulj f6f9_38167 f6102 f9_38118;
(* f7f7_38_168 = f7_103 w* f7_38_116; *)
smulj f7f7_38168 f7103 f7_38116;
(* f7f8_38_169 = f7_2_113 w* f8_19_117; *)
smulj f7f8_38169 f7_2113 f8_19117;
(* f7f9_76_170 = f7_2_113 w* f9_38_118; *)
smulj f7f9_76170 f7_2113 f9_38118;
(* f8f8_19_171 = f8_104 w* f8_19_117; *)
smulj f8f8_19171 f8104 f8_19117;
(* f8f9_38_172 = f8_104 w* f9_38_118; *)
smulj f8f9_38172 f8104 f9_38118;
(* f9f9_38_173 = f9_105 w* f9_38_118; *)
smulj f9f9_38173 f9105 f9_38118;
(* _237 = f1f9_76_137 + f2f8_38_144; *)
sadd v237 f1f9_76137 f2f8_38144;
(* _25 = f0f0_119 + _237; *)
sadd v25 f0f0119 v237;
(* _26 = _25 + f3f7_76_150; *)
sadd v26 v25 f3f7_76150;
(* _27 = _26 + f4f6_38_155; *)
sadd v27 v26 f4f6_38155;
(* h0_174 = _27 + f5f5_38_159; *)
sadd h0174 v27 f5f5_38159;
(* _28 = f0f1_2_120 + f2f9_38_145; *)
sadd v28 f0f1_2120 f2f9_38145;
(* _29 = _28 + f3f8_38_151; *)
sadd v29 v28 f3f8_38151;
(* _30 = _29 + f4f7_38_156; *)
sadd v30 v29 f4f7_38156;
(* h1_175 = _30 + f5f6_38_160; *)
sadd h1175 v30 f5f6_38160;
(* _31 = f0f2_2_121 + f1f1_2_129; *)
sadd v31 f0f2_2121 f1f1_2129;
(* _32 = _31 + f3f9_76_152; *)
sadd v32 v31 f3f9_76152;
(* _33 = _32 + f4f8_38_157; *)
sadd v33 v32 f4f8_38157;
(* _34 = _33 + f5f7_76_161; *)
sadd v34 v33 f5f7_76161;
(* h2_176 = _34 + f6f6_19_164; *)
sadd h2176 v34 f6f6_19164;
(* _35 = f0f3_2_122 + f1f2_2_130; *)
sadd v35 f0f3_2122 f1f2_2130;
(* _36 = _35 + f4f9_38_158; *)
sadd v36 v35 f4f9_38158;
(* _37 = _36 + f5f8_38_162; *)
sadd v37 v36 f5f8_38162;
(* h3_177 = _37 + f6f7_38_165; *)
sadd h3177 v37 f6f7_38165;
(* _38 = f0f4_2_123 + f1f3_4_131; *)
sadd v38 f0f4_2123 f1f3_4131;
(* _39 = _38 + f2f2_138; *)
sadd v39 v38 f2f2138;
(* _40 = _39 + f5f9_76_163; *)
sadd v40 v39 f5f9_76163;
(* _41 = _40 + f6f8_38_166; *)
sadd v41 v40 f6f8_38166;
(* h4_178 = _41 + f7f7_38_168; *)
sadd h4178 v41 f7f7_38168;
(* _42 = f0f5_2_124 + f1f4_2_132; *)
sadd v42 f0f5_2124 f1f4_2132;
(* _43 = _42 + f2f3_2_139; *)
sadd v43 v42 f2f3_2139;
(* _44 = _43 + f6f9_38_167; *)
sadd v44 v43 f6f9_38167;
(* h5_179 = _44 + f7f8_38_169; *)
sadd h5179 v44 f7f8_38169;
(* _45 = f0f6_2_125 + f1f5_4_133; *)
sadd v45 f0f6_2125 f1f5_4133;
(* _46 = _45 + f2f4_2_140; *)
sadd v46 v45 f2f4_2140;
(* _47 = _46 + f3f3_2_146; *)
sadd v47 v46 f3f3_2146;
(* _48 = _47 + f7f9_76_170; *)
sadd v48 v47 f7f9_76170;
(* h6_180 = _48 + f8f8_19_171; *)
sadd h6180 v48 f8f8_19171;
(* _49 = f0f7_2_126 + f1f6_2_134; *)
sadd v49 f0f7_2126 f1f6_2134;
(* _50 = _49 + f2f5_2_141; *)
sadd v50 v49 f2f5_2141;
(* _51 = _50 + f3f4_2_147; *)
sadd v51 v50 f3f4_2147;
(* h7_181 = _51 + f8f9_38_172; *)
sadd h7181 v51 f8f9_38172;
(* _52 = f0f8_2_127 + f1f7_4_135; *)
sadd v52 f0f8_2127 f1f7_4135;
(* _235 = _52 + f4f4_153; *)
sadd v235 v52 f4f4153;
(* _236 = f2f6_2_142 + _235; *)
sadd v236 f2f6_2142 v235;
(* _55 = f3f5_4_148 + _236; *)
sadd v55 f3f5_4148 v236;
(* h8_182 = _55 + f9f9_38_173; *)
sadd h8182 v55 f9f9_38173;
(* _56 = f0f9_2_128 + f1f8_2_136; *)
sadd v56 f0f9_2128 f1f8_2136;
(* _57 = _56 + f2f7_2_143; *)
sadd v57 v56 f2f7_2143;
(* _58 = _57 + f3f6_2_149; *)
sadd v58 v57 f3f6_2149;
(* h9_183 = _58 + f4f5_2_154; *)
sadd h9183 v58 f4f5_2154;
(* _59 = h0_174 + 33554432; *)
sadd v59 h0174 33554432@int64;
(* carry0_184 = _59 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry0184 tmp_to_use v59 26;
(* h1_185 = h1_175 + carry0_184; *)
sadd h1185 h1175 carry0184;
(* _60 = _59 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v60 v59 (-67108864)@int64;
assert true && v60 = carry0184 * (2**26)@64;
assume v60 = carry0184 * (2**26) && true;
(* h0_186 = h0_174 - _60; *)
ssub h0186 h0174 v60;
(* _61 = h4_178 + 33554432; *)
sadd v61 h4178 33554432@int64;
(* carry4_187 = _61 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry4187 tmp_to_use v61 26;
(* h5_188 = h5_179 + carry4_187; *)
sadd h5188 h5179 carry4187;
(* _62 = _61 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v62 v61 (-67108864)@int64;
assert true && v62 = carry4187 * (2**26)@64;
assume v62 = carry4187 * (2**26) && true;
(* h4_189 = h4_178 - _62; *)
ssub h4189 h4178 v62;
(* _63 = h1_185 + 16777216; *)
sadd v63 h1185 16777216@int64;
(* carry1_190 = _63 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry1190 tmp_to_use v63 25;
(* h2_191 = h2_176 + carry1_190; *)
sadd h2191 h2176 carry1190;
(* _64 = _63 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v64 v63 (-33554432)@int64;
assert true && v64 = carry1190 * (2**25)@64;
assume v64 = carry1190 * (2**25) && true;
(* h1_192 = h1_185 - _64; *)
ssub h1192 h1185 v64;
(* _65 = h5_188 + 16777216; *)
sadd v65 h5188 16777216@int64;
(* carry5_193 = _65 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry5193 tmp_to_use v65 25;
(* h6_194 = h6_180 + carry5_193; *)
sadd h6194 h6180 carry5193;
(* _66 = _65 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v66 v65 (-33554432)@int64;
assert true && v66 = carry5193 * (2**25)@64;
assume v66 = carry5193 * (2**25) && true;
(* h5_195 = h5_188 - _66; *)
ssub h5195 h5188 v66;
(* _67 = h2_191 + 33554432; *)
sadd v67 h2191 33554432@int64;
(* carry2_196 = _67 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry2196 tmp_to_use v67 26;
(* h3_197 = h3_177 + carry2_196; *)
sadd h3197 h3177 carry2196;
(* _68 = _67 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v68 v67 (-67108864)@int64;
assert true && v68 = carry2196 * (2**26)@64;
assume v68 = carry2196 * (2**26) && true;
(* h2_198 = h2_191 - _68; *)
ssub h2198 h2191 v68;
(* _69 = h6_194 + 33554432; *)
sadd v69 h6194 33554432@int64;
(* carry6_199 = _69 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry6199 tmp_to_use v69 26;
(* h7_200 = h7_181 + carry6_199; *)
sadd h7200 h7181 carry6199;
(* _70 = _69 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v70 v69 (-67108864)@int64;
assert true && v70 = carry6199 * (2**26)@64;
assume v70 = carry6199 * (2**26) && true;
(* h6_201 = h6_194 - _70; *)
ssub h6201 h6194 v70;
(* _71 = h3_197 + 16777216; *)
sadd v71 h3197 16777216@int64;
(* carry3_202 = _71 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry3202 tmp_to_use v71 25;
(* h4_203 = h4_189 + carry3_202; *)
sadd h4203 h4189 carry3202;
(* _72 = _71 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v72 v71 (-33554432)@int64;
assert true && v72 = carry3202 * (2**25)@64;
assume v72 = carry3202 * (2**25) && true;
(* h3_204 = h3_197 - _72; *)
ssub h3204 h3197 v72;
(* _73 = h7_200 + 16777216; *)
sadd v73 h7200 16777216@int64;
(* carry7_205 = _73 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry7205 tmp_to_use v73 25;
(* h8_206 = h8_182 + carry7_205; *)
sadd h8206 h8182 carry7205;
(* _74 = _73 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v74 v73 (-33554432)@int64;
assert true && v74 = carry7205 * (2**25)@64;
assume v74 = carry7205 * (2**25) && true;
(* h7_207 = h7_200 - _74; *)
ssub h7207 h7200 v74;
(* _75 = h4_203 + 33554432; *)
sadd v75 h4203 33554432@int64;
(* carry4_208 = _75 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry4208 tmp_to_use v75 26;
(* h5_209 = h5_195 + carry4_208; *)
sadd h5209 h5195 carry4208;
(* _76 = _75 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v76 v75 (-67108864)@int64;
assert true && v76 = carry4208 * (2**26)@64;
assume v76 = carry4208 * (2**26) && true;
(* h4_210 = h4_203 - _76; *)
ssub h4210 h4203 v76;
(* _77 = h8_206 + 33554432; *)
sadd v77 h8206 33554432@int64;
(* carry8_211 = _77 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry8211 tmp_to_use v77 26;
(* h9_212 = h9_183 + carry8_211; *)
sadd h9212 h9183 carry8211;
(* _78 = _77 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v78 v77 (-67108864)@int64;
assert true && v78 = carry8211 * (2**26)@64;
assume v78 = carry8211 * (2**26) && true;
(* h8_213 = h8_206 - _78; *)
ssub h8213 h8206 v78;
(* _79 = h9_212 + 16777216; *)
sadd v79 h9212 16777216@int64;
(* carry9_214 = _79 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry9214 tmp_to_use v79 25;
(* _80 = carry9_214 * 19; *)
smul v80 carry9214 19@int64;
(* h0_215 = _80 + h0_186; *)
sadd h0215 v80 h0186;
(* _81 = _79 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v81 v79 (-33554432)@int64;
assert true && v81 = carry9214 * (2**25)@64;
assume v81 = carry9214 * (2**25) && true;
(* h9_216 = h9_212 - _81; *)
ssub h9216 h9212 v81;
(* _82 = h0_215 + 33554432; *)
sadd v82 h0215 33554432@int64;
(* carry0_217 = _82 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry0217 tmp_to_use v82 26;
(* h1_218 = h1_192 + carry0_217; *)
sadd h1218 h1192 carry0217;
(* _83 = _82 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v83 v82 (-67108864)@int64;
assert true && v83 = carry0217 * (2**26)@64;
assume v83 = carry0217 * (2**26) && true;
(* h0_219 = h0_215 - _83; *)
ssub h0219 h0215 v83;
(* _84 = (int) h0_219; *)
vpc int32 v84 h0219;
(* *h_220(D) = _84; *)
mov h220_0 v84;
(* _85 = (int) h1_218; *)
vpc int32 v85 h1218;
(* MEM[(int32_t * )h_220(D) + 4B] = _85; *)
mov h220_4 v85;
(* _86 = (int) h2_198; *)
vpc int32 v86 h2198;
(* MEM[(int32_t * )h_220(D) + 8B] = _86; *)
mov h220_8 v86;
(* _87 = (int) h3_204; *)
vpc int32 v87 h3204;
(* MEM[(int32_t * )h_220(D) + 12B] = _87; *)
mov h220_12 v87;
(* _88 = (int) h4_210; *)
vpc int32 v88 h4210;
(* MEM[(int32_t * )h_220(D) + 16B] = _88; *)
mov h220_16 v88;
(* _89 = (int) h5_209; *)
vpc int32 v89 h5209;
(* MEM[(int32_t * )h_220(D) + 20B] = _89; *)
mov h220_20 v89;
(* _90 = (int) h6_201; *)
vpc int32 v90 h6201;
(* MEM[(int32_t * )h_220(D) + 24B] = _90; *)
mov h220_24 v90;
(* _91 = (int) h7_207; *)
vpc int32 v91 h7207;
(* MEM[(int32_t * )h_220(D) + 28B] = _91; *)
mov h220_28 v91;
(* _92 = (int) h8_213; *)
vpc int32 v92 h8213;
(* MEM[(int32_t * )h_220(D) + 32B] = _92; *)
mov h220_32 v92;
(* _93 = (int) h9_216; *)
vpc int32 v93 h9216;
(* MEM[(int32_t * )h_220(D) + 36B] = _93; *)
mov h220_36 v93;
(* return; *)

(* Start with undefined lhs *)
mov c0 h220_0;
mov c1 h220_4;
mov c2 h220_8;
mov c3 h220_12;
mov c4 h220_16;
mov c5 h220_20;
mov c6 h220_24;
mov c7 h220_28;
mov c8 h220_32;
mov c9 h220_36;
(* End with undefined lhs *)

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

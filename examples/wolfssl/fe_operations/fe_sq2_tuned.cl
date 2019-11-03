(* @frege
Verification result:                    [OK]            2725.220087 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -qfbv_args -SE lingeling -btor -isafety -slicing -isafety_timeout 99999999 -re -v ./fe_sq2_tuned.cl"
        User time (seconds): 40509.56
        System time (seconds): 97.22
        Percent of CPU this job got: 1489%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 45:25.31
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 385420
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 50407705
        Voluntary context switches: 6396
        Involuntary context switches: 3302417
        Swaps: 0
        File system inputs: 0
        File system outputs: 6680
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)

(*

/*
h = 2 * f * f
Can overlap h with f.

Preconditions:
   |f| bounded by 1.65*2^26,1.65*2^25,1.65*2^26,1.65*2^25,etc.

Postconditions:
   |h| bounded by 1.01*2^25,1.01*2^24,1.01*2^25,1.01*2^24,etc.
*/

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
mov f95_0@int32 a0;
mov f95_4@int32 a1;
mov f95_8@int32 a2;
mov f95_12@int32 a3;
mov f95_16@int32 a4;
mov f95_20@int32 a5;
mov f95_24@int32 a6;
mov f95_28@int32 a7;
mov f95_32@int32 a8;
mov f95_36@int32 a9;
(* End with undefined rhs *)



(* BB's index is 2 *)

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
smul f0_2106 f096 0x2@int32;
(* f1_2_107 = f1_97 * 2; *)
smul f1_2107 f197 0x2@int32;
(* f2_2_108 = f2_98 * 2; *)
smul f2_2108 f298 0x2@int32;
(* f3_2_109 = f3_99 * 2; *)
smul f3_2109 f399 0x2@int32;
(* f4_2_110 = f4_100 * 2; *)
smul f4_2110 f4100 0x2@int32;
(* f5_2_111 = f5_101 * 2; *)
smul f5_2111 f5101 0x2@int32;
(* f6_2_112 = f6_102 * 2; *)
smul f6_2112 f6102 0x2@int32;
(* f7_2_113 = f7_103 * 2; *)
smul f7_2113 f7103 0x2@int32;
(* f5_38_114 = f5_101 * 38; *)
smul f5_38114 f5101 0x26@int32;
(* f6_19_115 = f6_102 * 19; *)
smul f6_19115 f6102 0x13@int32;
(* f7_38_116 = f7_103 * 38; *)
smul f7_38116 f7103 0x26@int32;
(* f8_19_117 = f8_104 * 19; *)
smul f8_19117 f8104 0x13@int32;
(* f9_38_118 = f9_105 * 38; *)
smul f9_38118 f9105 0x26@int32;
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
(* _247 = f1f9_76_137 + f2f8_38_144; *)
sadd v247 f1f9_76137 f2f8_38144;
(* _25 = f0f0_119 + _247; *)
sadd v25 f0f0119 v247;
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
(* _245 = _52 + f4f4_153; *)
sadd v245 v52 f4f4153;
(* _246 = f2f6_2_142 + _245; *)
sadd v246 f2f6_2142 v245;
(* _55 = f3f5_4_148 + _246; *)
sadd v55 f3f5_4148 v246;
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
(* h0_184 = h0_174 * 2; *)
smul h0184 h0174 0x2@int64;
(* h1_185 = h1_175 * 2; *)
smul h1185 h1175 0x2@int64;
(* h2_186 = h2_176 * 2; *)
smul h2186 h2176 0x2@int64;
(* h3_187 = h3_177 * 2; *)
smul h3187 h3177 0x2@int64;
(* h4_188 = h4_178 * 2; *)
smul h4188 h4178 0x2@int64;
(* h5_189 = h5_179 * 2; *)
smul h5189 h5179 0x2@int64;
(* h6_190 = h6_180 * 2; *)
smul h6190 h6180 0x2@int64;
(* h7_191 = h7_181 * 2; *)
smul h7191 h7181 0x2@int64;
(* h8_192 = h8_182 * 2; *)
smul h8192 h8182 0x2@int64;
(* h9_193 = h9_183 * 2; *)
smul h9193 h9183 0x2@int64;
(* _59 = h0_184 + 33554432; *)
sadd v59 h0184 0x2000000@int64;
(* carry0_194 = _59 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry0194 tmp_to_use v59 26;
(* h1_195 = h1_185 + carry0_194; *)
sadd h1195 h1185 carry0194;
(* _60 = _59 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v60 v59 (-0x4000000)@int64;

(* added *)
assert true && v60 = carry0194 * (2**26)@64;
assume v60 = carry0194 * (2**26) && true;

(* h0_196 = h0_184 - _60; *)
ssub h0196 h0184 v60;
(* _61 = h4_188 + 33554432; *)
sadd v61 h4188 0x2000000@int64;
(* carry4_197 = _61 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry4197 tmp_to_use v61 26;
(* h5_198 = h5_189 + carry4_197; *)
sadd h5198 h5189 carry4197;
(* _62 = _61 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v62 v61 (-0x4000000)@int64;

(* added *)
assert true && v62 = carry4197 * (2**26)@64;
assume v62 = carry4197 * (2**26) && true;

(* h4_199 = h4_188 - _62; *)
ssub h4199 h4188 v62;
(* _63 = h1_195 + 16777216; *)
sadd v63 h1195 0x1000000@int64;
(* carry1_200 = _63 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry1200 tmp_to_use v63 25;
(* h2_201 = h2_186 + carry1_200; *)
sadd h2201 h2186 carry1200;
(* _64 = _63 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v64 v63 (-0x2000000)@int64;

(* added *)
assert true && v64 = carry1200 * (2**25)@64;
assume v64 = carry1200 * (2**25) && true;

(* h1_202 = h1_195 - _64; *)
ssub h1202 h1195 v64;
(* _65 = h5_198 + 16777216; *)
sadd v65 h5198 0x1000000@int64;
(* carry5_203 = _65 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry5203 tmp_to_use v65 25;
(* h6_204 = h6_190 + carry5_203; *)
sadd h6204 h6190 carry5203;
(* _66 = _65 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v66 v65 (-0x2000000)@int64;

(* added *)
assert true && v66 = carry5203 * (2**25)@64;
assume v66 = carry5203 * (2**25) && true;

(* h5_205 = h5_198 - _66; *)
ssub h5205 h5198 v66;
(* _67 = h2_201 + 33554432; *)
sadd v67 h2201 0x2000000@int64;
(* carry2_206 = _67 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry2206 tmp_to_use v67 26;
(* h3_207 = h3_187 + carry2_206; *)
sadd h3207 h3187 carry2206;
(* _68 = _67 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v68 v67 (-0x4000000)@int64;

(* added *)
assert true && v68 = carry2206 * (2**26)@64;
assume v68 = carry2206 * (2**26) && true;

(* h2_208 = h2_201 - _68; *)
ssub h2208 h2201 v68;
(* _69 = h6_204 + 33554432; *)
sadd v69 h6204 0x2000000@int64;
(* carry6_209 = _69 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry6209 tmp_to_use v69 26;
(* h7_210 = h7_191 + carry6_209; *)
sadd h7210 h7191 carry6209;
(* _70 = _69 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v70 v69 (-0x4000000)@int64;

(* added *)
assert true && v70 = carry6209 * (2**26)@64;
assume v70 = carry6209 * (2**26) && true;

(* h6_211 = h6_204 - _70; *)
ssub h6211 h6204 v70;
(* _71 = h3_207 + 16777216; *)
sadd v71 h3207 0x1000000@int64;
(* carry3_212 = _71 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry3212 tmp_to_use v71 25;
(* h4_213 = h4_199 + carry3_212; *)
sadd h4213 h4199 carry3212;
(* _72 = _71 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v72 v71 (-0x2000000)@int64;

(* added *)
assert true && v72 = carry3212 * (2**25)@64;
assume v72 = carry3212 * (2**25) && true;

(* h3_214 = h3_207 - _72; *)
ssub h3214 h3207 v72;
(* _73 = h7_210 + 16777216; *)
sadd v73 h7210 0x1000000@int64;
(* carry7_215 = _73 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry7215 tmp_to_use v73 25;
(* h8_216 = h8_192 + carry7_215; *)
sadd h8216 h8192 carry7215;
(* _74 = _73 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v74 v73 (-0x2000000)@int64;

(* added *)
assert true && v74 = carry7215 * (2**25)@64;
assume v74 = carry7215 * (2**25) && true;

(* h7_217 = h7_210 - _74; *)
ssub h7217 h7210 v74;
(* _75 = h4_213 + 33554432; *)
sadd v75 h4213 0x2000000@int64;
(* carry4_218 = _75 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry4218 tmp_to_use v75 26;
(* h5_219 = h5_205 + carry4_218; *)
sadd h5219 h5205 carry4218;
(* _76 = _75 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v76 v75 (-0x4000000)@int64;

(* added *)
assert true && v76 = carry4218 * (2**26)@64;
assume v76 = carry4218 * (2**26) && true;

(* h4_220 = h4_213 - _76; *)
ssub h4220 h4213 v76;
(* _77 = h8_216 + 33554432; *)
sadd v77 h8216 0x2000000@int64;
(* carry8_221 = _77 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry8221 tmp_to_use v77 26;
(* h9_222 = h9_193 + carry8_221; *)
sadd h9222 h9193 carry8221;
(* _78 = _77 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v78 v77 (-0x4000000)@int64;

(* added *)
assert true && v78 = carry8221 * (2**26)@64;
assume v78 = carry8221 * (2**26) && true;

(* h8_223 = h8_216 - _78; *)
ssub h8223 h8216 v78;
(* _79 = h9_222 + 16777216; *)
sadd v79 h9222 0x1000000@int64;
(* carry9_224 = _79 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry9224 tmp_to_use v79 25;
(* _80 = carry9_224 * 19; *)
smul v80 carry9224 0x13@int64;
(* h0_225 = _80 + h0_196; *)
sadd h0225 v80 h0196;
(* _81 = _79 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v81 v79 (-0x2000000)@int64;

(* added *)
assert true && v81 = carry9224 * (2**25)@64;
assume v81 = carry9224 * (2**25) && true;

(* h9_226 = h9_222 - _81; *)
ssub h9226 h9222 v81;
(* _82 = h0_225 + 33554432; *)
sadd v82 h0225 0x2000000@int64;
(* carry0_227 = _82 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry0227 tmp_to_use v82 26;
(* h1_228 = h1_202 + carry0_227; *)
sadd h1228 h1202 carry0227;
(* _83 = _82 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v83 v82 (-0x4000000)@int64;

(* added *)
assert true && v83 = carry0227 * (2**26)@64;
assume v83 = carry0227 * (2**26) && true;

(* h0_229 = h0_225 - _83; *)
ssub h0229 h0225 v83;
(* _84 = (int) h0_229; *)
(* cast v84@int32 h0229@int64; *)
(* added: change cast to vpc *)
vpc v84@int32 h0229@int64;
(* *h_230(D) = _84; *)
mov h230_0 v84;
(* _85 = (int) h1_228; *)
(* cast v85@int32 h1228@int64; *)
(* added: change cast to vpc *)
vpc v85@int32 h1228@int64;
(* MEM[(int32_t * )h_230(D) + 4B] = _85; *)
mov h230_4 v85;
(* _86 = (int) h2_208; *)
(* cast v86@int32 h2208@int64; *)
(* added: change cast to vpc *)
vpc v86@int32 h2208@int64;
(* MEM[(int32_t * )h_230(D) + 8B] = _86; *)
mov h230_8 v86;
(* _87 = (int) h3_214; *)
(* cast v87@int32 h3214@int64; *)
(* added: change cast to vpc *)
vpc v87@int32 h3214@int64;
(* MEM[(int32_t * )h_230(D) + 12B] = _87; *)
mov h230_12 v87;
(* _88 = (int) h4_220; *)
(* cast v88@int32 h4220@int64; *)
(* added: change cast to vpc *)
vpc v88@int32 h4220@int64;
(* MEM[(int32_t * )h_230(D) + 16B] = _88; *)
mov h230_16 v88;
(* _89 = (int) h5_219; *)
(* cast v89@int32 h5219@int64; *)
(* added: change cast to vpc *)
vpc v89@int32 h5219@int64;
(* MEM[(int32_t * )h_230(D) + 20B] = _89; *)
mov h230_20 v89;
(* _90 = (int) h6_211; *)
(* cast v90@int32 h6211@int64; *)
(* added: change cast to vpc *)
vpc v90@int32 h6211@int64;
(* MEM[(int32_t * )h_230(D) + 24B] = _90; *)
mov h230_24 v90;
(* _91 = (int) h7_217; *)
(* cast v91@int32 h7217@int64; *)
(* added: change cast to vpc *)
vpc v91@int32 h7217@int64;
(* MEM[(int32_t * )h_230(D) + 28B] = _91; *)
mov h230_28 v91;
(* _92 = (int) h8_223; *)
(* cast v92@int32 h8223@int64; *)
(* added: change cast to vpc *)
vpc v92@int32 h8223@int64;
(* MEM[(int32_t * )h_230(D) + 32B] = _92; *)
mov h230_32 v92;
(* _93 = (int) h9_226; *)
(* cast v93@int32 h9226@int64; *)
(* added: change cast to vpc *)
vpc v93@int32 h9226@int64;
(* MEM[(int32_t * )h_230(D) + 36B] = _93; *)
mov h230_36 v93;
(* return; *)


(* Start with unused lhs *)
mov c0 h230_0@int32;
mov c1 h230_4@int32;
mov c2 h230_8@int32;
mov c3 h230_12@int32;
mov c4 h230_16@int32;
mov c5 h230_20@int32;
mov c6 h230_24@int32;
mov c7 h230_28@int32;
mov c8 h230_32@int32;
mov c9 h230_36@int32;
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
    *
    (2)
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

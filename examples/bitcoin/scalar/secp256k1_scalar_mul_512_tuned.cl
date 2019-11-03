(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_mul_512_tuned.cl
Verification result:                    [OK]            4.882118 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_mul_512_tuned.cl"
        User time (seconds): 19.62
        System time (seconds): 4.01
        Percent of CPU this job got: 476%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:04.96
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 280000
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 1742004
        Voluntary context switches: 5709
        Involuntary context switches: 2429
        Swaps: 0
        File system inputs: 0
        File system outputs: 8128
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_mul_512_tuned.cl
Verification result:                    [OK]            15.875543 seconds
       15.97 real        36.09 user         8.85 sys
 261947392  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   2341869  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        51  block output operations
         0  messages sent
         0  messages received
      1678  signals received
      2789  voluntary context switches
     54408  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a110_0@uint64 a0;
mov a110_8@uint64 a1;
mov a110_16@uint64 a2;
mov a110_24@uint64 a3;
mov b111_0@uint64 b0;
mov b111_8@uint64 b1;
mov b111_16@uint64 b2;
mov b111_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_110(D)->d[0]; *)
mov v1  a110_0;
(* _3 = b_111(D)->d[0]; *)
mov v3  b111_0;
(* t_112 = _1 w* _3; *)
umulj t112 v1 v3;
(* _5 = t_112 >> 64; *)
usplit v5 tmp_to_use t112 64;
(* th_113 = (uint64_t) _5; *)
vpc th113@uint64 v5@uint128;

(* tl_114 = (uint64_t) t_112; *)
cast tl114@uint64 t112@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl114 = tmp_to_use_p;
assume tl114 = tmp_to_use && true;

(* *l_115(D) = tl_114; *)
mov l115_0 tl114;
(* _6 = a_110(D)->d[0]; *)
mov v6  a110_0;
(* _8 = b_111(D)->d[1]; *)
mov v8  b111_8;
(* t_117 = _6 w* _8; *)
umulj t117 v6 v8;
(* _10 = t_117 >> 64; *)
usplit v10 tmp_to_use t117 64;
(* th_118 = (uint64_t) _10; *)
vpc th118@uint64 v10@uint128;
(* tl_119 = (uint64_t) t_117; *)
cast tl119@uint64 t117@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl119 = tmp_to_use_p;
assume tl119 = tmp_to_use && true;

(* _107 = ADD_OVERFLOW (th_113, tl_119); *)
adds carry v107_REAL th113 tl119;
adc v107_IMAGE 0@uint64 0@uint64 carry;
(* c0_120 = REALPART_EXPR <_107>; *)
mov c0120 v107_REAL;
(* _108 = IMAGPART_EXPR <_107>; *)
mov v108 v107_IMAGE;
(* _229 = _108 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v108 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v108;
(* or uint1 v229 lt_value gt_value; *)
mov v229 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v229@uint8 v229@uint1;

(* _230 = (long unsigned int) _229; *)
vpc v230@uint64 v229@uint8;
(* th_121 = th_118 + _230; *)
uadd th121 th118 v230;
(* _11 = a_110(D)->d[1]; *)
mov v11  a110_8;
(* _13 = b_111(D)->d[0]; *)
mov v13  b111_0;
(* t_122 = _11 w* _13; *)
umulj t122 v11 v13;
(* _15 = t_122 >> 64; *)
usplit v15 tmp_to_use t122 64;
(* th_123 = (uint64_t) _15; *)
vpc th123@uint64 v15@uint128;
(* tl_124 = (uint64_t) t_122; *)
cast tl124@uint64 t122@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl124 = tmp_to_use_p;
assume tl124 = tmp_to_use && true;

(* _234 = ADD_OVERFLOW (c0_120, tl_124); *)
adds carry v234_REAL c0120 tl124;
adc v234_IMAGE 0@uint64 0@uint64 carry;
(* c0_125 = REALPART_EXPR <_234>; *)
mov c0125 v234_REAL;
(* _106 = IMAGPART_EXPR <_234>; *)
mov v106 v234_IMAGE;
(* _231 = _106 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v106 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v106;
(* or uint1 v231 lt_value gt_value; *)
mov v231 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v231@uint8 v231@uint1;
(* _232 = (long unsigned int) _231; *)
vpc v232@uint64 v231@uint8;
(* th_126 = th_123 + _232; *)
uadd th126 th123 v232;
(* _105 = ADD_OVERFLOW (th_121, th_126); *)
adds carry v105_REAL th121 th126;
adc v105_IMAGE 0@uint64 0@uint64 carry;
(* c1_127 = REALPART_EXPR <_105>; *)
mov c1127 v105_REAL;
(* _104 = IMAGPART_EXPR <_105>; *)
mov v104 v105_IMAGE;
(* _233 = _104 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v104 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v104;
assert true && gt_value = carry;
assume gt_value = carry && true;
(* or uint1 v233 lt_value gt_value; *)
mov v233 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v233@uint8 v233@uint1;
(* MEM[(uint64_t * )l_115(D) + 8B] = c0_125; *)
mov l115_8 c0125;
(* c1_129 = (uint64_t) _233; *)
vpc c1129@uint64 v233@uint8;
(* _16 = a_110(D)->d[0]; *)
mov v16  a110_0;
(* _18 = b_111(D)->d[2]; *)
mov v18  b111_16;
(* t_130 = _16 w* _18; *)
umulj t130 v16 v18;
(* _20 = t_130 >> 64; *)
usplit v20 tmp_to_use t130 64;
(* th_131 = (uint64_t) _20; *)
vpc th131@uint64 v20@uint128;
(* tl_132 = (uint64_t) t_130; *)
cast tl132@uint64 t130@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl132 = tmp_to_use_p;
assume tl132 = tmp_to_use && true;

(* _103 = ADD_OVERFLOW (c1_127, tl_132); *)
adds carry v103_REAL c1127 tl132;
adc v103_IMAGE 0@uint64 0@uint64 carry;
(* c0_133 = REALPART_EXPR <_103>; *)
mov c0133 v103_REAL;
(* _102 = IMAGPART_EXPR <_103>; *)
mov v102 v103_IMAGE;
(* _235 = _102 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v102 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v102;
(* or uint1 v235 lt_value gt_value; *)
mov v235 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v235@uint8 v235@uint1;
(* _236 = (long unsigned int) _235; *)
vpc v236@uint64 v235@uint8;
(* th_134 = th_131 + _236; *)
uadd th134 th131 v236;
(* _101 = ADD_OVERFLOW (c1_129, th_134); *)
adds carry v101_REAL c1129 th134;
adc v101_IMAGE 0@uint64 0@uint64 carry;
(* c1_135 = REALPART_EXPR <_101>; *)
mov c1135 v101_REAL;
(* _100 = IMAGPART_EXPR <_101>; *)
mov v100 v101_IMAGE;
(* _237 = _100 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v100 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v100;
(* or uint1 v237 lt_value gt_value; *)
mov v237 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v237@uint8 v237@uint1;
(* _238 = (unsigned int) _237; *)
vpc v238@uint32 v237@uint8;
(* _21 = a_110(D)->d[1]; *)
mov v21  a110_8;
(* _23 = b_111(D)->d[1]; *)
mov v23  b111_8;
(* t_136 = _21 w* _23; *)
umulj t136 v21 v23;
(* _25 = t_136 >> 64; *)
usplit v25 tmp_to_use t136 64;
(* th_137 = (uint64_t) _25; *)
vpc th137@uint64 v25@uint128;
(* tl_138 = (uint64_t) t_136; *)
cast tl138@uint64 t136@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl138 = tmp_to_use_p;
assume tl138 = tmp_to_use && true;

(* _99 = ADD_OVERFLOW (c0_133, tl_138); *)
adds carry v99_REAL c0133 tl138;
adc v99_IMAGE 0@uint64 0@uint64 carry;
(* c0_139 = REALPART_EXPR <_99>; *)
mov c0139 v99_REAL;
(* _98 = IMAGPART_EXPR <_99>; *)
mov v98 v99_IMAGE;
(* _239 = _98 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v98 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v98;
(* or uint1 v239 lt_value gt_value; *)
mov v239 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v239@uint8 v239@uint1;
(* _240 = (long unsigned int) _239; *)
vpc v240@uint64 v239@uint8;
(* th_140 = th_137 + _240; *)
uadd th140 th137 v240;
(* _97 = ADD_OVERFLOW (c1_135, th_140); *)
adds carry v97_REAL c1135 th140;
adc v97_IMAGE 0@uint64 0@uint64 carry;
(* c1_141 = REALPART_EXPR <_97>; *)
mov c1141 v97_REAL;
(* _96 = IMAGPART_EXPR <_97>; *)
mov v96 v97_IMAGE;
(* _241 = _96 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v96 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v96;
(* or uint1 v241 lt_value gt_value; *)
mov v241 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v241@uint8 v241@uint1;
(* _242 = (unsigned int) _241; *)
vpc v242@uint32 v241@uint8;
(* c2_142 = _238 + _242; *)
uadd c2142 v238 v242;
(* _26 = a_110(D)->d[2]; *)
mov v26  a110_16;
(* _28 = b_111(D)->d[0]; *)
mov v28  b111_0;
(* t_143 = _26 w* _28; *)
umulj t143 v26 v28;
(* _30 = t_143 >> 64; *)
usplit v30 tmp_to_use t143 64;
(* th_144 = (uint64_t) _30; *)
vpc th144@uint64 v30@uint128;
(* tl_145 = (uint64_t) t_143; *)
cast tl145@uint64 t143@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl145 = tmp_to_use_p;
assume tl145 = tmp_to_use && true;

(* _95 = ADD_OVERFLOW (c0_139, tl_145); *)
adds carry v95_REAL c0139 tl145;
adc v95_IMAGE 0@uint64 0@uint64 carry;
(* c0_146 = REALPART_EXPR <_95>; *)
mov c0146 v95_REAL;
(* _94 = IMAGPART_EXPR <_95>; *)
mov v94 v95_IMAGE;
(* _243 = _94 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v94 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v94;
(* or uint1 v243 lt_value gt_value; *)
mov v243 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v243@uint8 v243@uint1;
(* _244 = (long unsigned int) _243; *)
vpc v244@uint64 v243@uint8;
(* th_147 = th_144 + _244; *)
uadd th147 th144 v244;
(* _93 = ADD_OVERFLOW (c1_141, th_147); *)
adds carry v93_REAL c1141 th147;
adc v93_IMAGE 0@uint64 0@uint64 carry;
(* c1_148 = REALPART_EXPR <_93>; *)
mov c1148 v93_REAL;
(* _92 = IMAGPART_EXPR <_93>; *)
mov v92 v93_IMAGE;
(* _245 = _92 != 0; *)
(* ======== modified: unsigned number >=0 ====== *)
(* subb lt_value dontcare v92 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v92;
(* or uint1 v245 lt_value gt_value; *)
mov v245 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v245@uint8 v245@uint1;
(* _246 = (unsigned int) _245; *)
vpc v246@uint32 v245@uint8;
(* c2_149 = c2_142 + _246; *)
uadd c2149 c2142 v246;
(* MEM[(uint64_t * )l_115(D) + 16B] = c0_146; *)
mov l115_16 c0146;
(* c1_151 = (uint64_t) c2_149; *)
vpc c1151@uint64 c2149@uint32;
(* _31 = a_110(D)->d[0]; *)
mov v31  a110_0;
(* _33 = b_111(D)->d[3]; *)
mov v33  b111_24;
(* t_152 = _31 w* _33; *)
umulj t152 v31 v33;
(* _35 = t_152 >> 64; *)
usplit v35 tmp_to_use t152 64;
(* th_153 = (uint64_t) _35; *)
vpc th153@uint64 v35@uint128;
(* tl_154 = (uint64_t) t_152; *)
cast tl154@uint64 t152@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl154 = tmp_to_use_p;
assume tl154 = tmp_to_use && true;

(* _91 = ADD_OVERFLOW (c1_148, tl_154); *)
adds carry v91_REAL c1148 tl154;
adc v91_IMAGE 0@uint64 0@uint64 carry;
(* c0_155 = REALPART_EXPR <_91>; *)
mov c0155 v91_REAL;
(* _90 = IMAGPART_EXPR <_91>; *)
mov v90 v91_IMAGE;
(* _247 = _90 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v90 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v90;
(* or uint1 v247 lt_value gt_value; *)
mov v247 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v247@uint8 v247@uint1;
(* _248 = (long unsigned int) _247; *)
vpc v248@uint64 v247@uint8;
(* th_156 = th_153 + _248; *)
uadd th156 th153 v248;
(* _89 = ADD_OVERFLOW (c1_151, th_156); *)
adds carry v89_REAL c1151 th156;
adc v89_IMAGE 0@uint64 0@uint64 carry;
(* c1_157 = REALPART_EXPR <_89>; *)
mov c1157 v89_REAL;
(* _88 = IMAGPART_EXPR <_89>; *)
mov v88 v89_IMAGE;
(* _249 = _88 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v88 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v88;
(* or uint1 v249 lt_value gt_value; *)
mov v249 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v249@uint8 v249@uint1;
(* _250 = (unsigned int) _249; *)
vpc v250@uint32 v249@uint8;
(* _36 = a_110(D)->d[1]; *)
mov v36  a110_8;
(* _38 = b_111(D)->d[2]; *)
mov v38  b111_16;
(* t_158 = _36 w* _38; *)
umulj t158 v36 v38;
(* _40 = t_158 >> 64; *)
usplit v40 tmp_to_use t158 64;
(* th_159 = (uint64_t) _40; *)
vpc th159@uint64 v40@uint128;
(* tl_160 = (uint64_t) t_158; *)
cast tl160@uint64 t158@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl160 = tmp_to_use_p;
assume tl160 = tmp_to_use && true;

(* _87 = ADD_OVERFLOW (c0_155, tl_160); *)
adds carry v87_REAL c0155 tl160;
adc v87_IMAGE 0@uint64 0@uint64 carry;
(* c0_161 = REALPART_EXPR <_87>; *)
mov c0161 v87_REAL;
(* _86 = IMAGPART_EXPR <_87>; *)
mov v86 v87_IMAGE;
(* _251 = _86 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v86 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v86;
(* or uint1 v251 lt_value gt_value; *)
mov v251 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v251@uint8 v251@uint1;
(* _252 = (long unsigned int) _251; *)
vpc v252@uint64 v251@uint8;
(* th_162 = th_159 + _252; *)
uadd th162 th159 v252;
(* _85 = ADD_OVERFLOW (c1_157, th_162); *)
adds carry v85_REAL c1157 th162;
adc v85_IMAGE 0@uint64 0@uint64 carry;
(* c1_163 = REALPART_EXPR <_85>; *)
mov c1163 v85_REAL;
(* _84 = IMAGPART_EXPR <_85>; *)
mov v84 v85_IMAGE;
(* _253 = _84 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v84 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v84;
(* or uint1 v253 lt_value gt_value; *)
mov v253 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v253@uint8 v253@uint1;
(* _254 = (unsigned int) _253; *)
vpc v254@uint32 v253@uint8;
(* c2_164 = _250 + _254; *)
uadd c2164 v250 v254;
(* _41 = a_110(D)->d[2]; *)
mov v41  a110_16;
(* _43 = b_111(D)->d[1]; *)
mov v43  b111_8;
(* t_165 = _41 w* _43; *)
umulj t165 v41 v43;
(* _45 = t_165 >> 64; *)
usplit v45 tmp_to_use t165 64;
(* th_166 = (uint64_t) _45; *)
vpc th166@uint64 v45@uint128;
(* tl_167 = (uint64_t) t_165; *)
cast tl167@uint64 t165@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl167 = tmp_to_use_p;
assume tl167 = tmp_to_use && true;

(* _83 = ADD_OVERFLOW (c0_161, tl_167); *)
adds carry v83_REAL c0161 tl167;
adc v83_IMAGE 0@uint64 0@uint64 carry;
(* c0_168 = REALPART_EXPR <_83>; *)
mov c0168 v83_REAL;
(* _82 = IMAGPART_EXPR <_83>; *)
mov v82 v83_IMAGE;
(* _255 = _82 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v82 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v82;
(* or uint1 v255 lt_value gt_value; *)
mov v255 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v255@uint8 v255@uint1;
(* _256 = (long unsigned int) _255; *)
vpc v256@uint64 v255@uint8;
(* th_169 = th_166 + _256; *)
uadd th169 th166 v256;
(* _81 = ADD_OVERFLOW (c1_163, th_169); *)
adds carry v81_REAL c1163 th169;
adc v81_IMAGE 0@uint64 0@uint64 carry;
(* c1_170 = REALPART_EXPR <_81>; *)
mov c1170 v81_REAL;
(* _228 = IMAGPART_EXPR <_81>; *)
mov v228 v81_IMAGE;
(* _257 = _228 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v228 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v228;
(* or uint1 v257 lt_value gt_value; *)
mov v257 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v257@uint8 v257@uint1;
(* _258 = (unsigned int) _257; *)
vpc v258@uint32 v257@uint8;
(* c2_171 = c2_164 + _258; *)
uadd c2171 c2164 v258;
(* _46 = a_110(D)->d[3]; *)
mov v46  a110_24;
(* _48 = b_111(D)->d[0]; *)
mov v48  b111_0;
(* t_172 = _46 w* _48; *)
umulj t172 v46 v48;
(* _50 = t_172 >> 64; *)
usplit v50 tmp_to_use t172 64;
(* th_173 = (uint64_t) _50; *)
vpc th173@uint64 v50@uint128;
(* tl_174 = (uint64_t) t_172; *)
cast tl174@uint64 t172@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl174 = tmp_to_use_p;
assume tl174 = tmp_to_use && true;

(* _227 = ADD_OVERFLOW (c0_168, tl_174); *)
adds carry v227_REAL c0168 tl174;
adc v227_IMAGE 0@uint64 0@uint64 carry;
(* c0_175 = REALPART_EXPR <_227>; *)
mov c0175 v227_REAL;
(* _226 = IMAGPART_EXPR <_227>; *)
mov v226 v227_IMAGE;
(* _259 = _226 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v226 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v226;
(* or uint1 v259 lt_value gt_value; *)
mov v259 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v259@uint8 v259@uint1;
(* _260 = (long unsigned int) _259; *)
vpc v260@uint64 v259@uint8;
(* th_176 = th_173 + _260; *)
uadd th176 th173 v260;
(* _285 = ADD_OVERFLOW (c1_170, th_176); *)
adds carry v285_REAL c1170 th176;
adc v285_IMAGE 0@uint64 0@uint64 carry;
(* c1_177 = REALPART_EXPR <_285>; *)
mov c1177 v285_REAL;
(* _286 = IMAGPART_EXPR <_285>; *)
mov v286 v285_IMAGE;
(* _261 = _286 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v286 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v286;
(* or uint1 v261 lt_value gt_value; *)
mov v261 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v261@uint8 v261@uint1;
(* _262 = (unsigned int) _261; *)
vpc v262@uint32 v261@uint8;
(* c2_178 = c2_171 + _262; *)
uadd c2178 c2171 v262;
(* MEM[(uint64_t * )l_115(D) + 24B] = c0_175; *)
mov l115_24 c0175;
(* c1_180 = (uint64_t) c2_178; *)
vpc c1180@uint64 c2178@uint32;
(* _51 = a_110(D)->d[1]; *)
mov v51  a110_8;
(* _53 = b_111(D)->d[3]; *)
mov v53  b111_24;
(* t_181 = _51 w* _53; *)
umulj t181 v51 v53;
(* _55 = t_181 >> 64; *)
usplit v55 tmp_to_use t181 64;
(* th_182 = (uint64_t) _55; *)
vpc th182@uint64 v55@uint128;
(* tl_183 = (uint64_t) t_181; *)
cast tl183@uint64 t181@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl183 = tmp_to_use_p;
assume tl183 = tmp_to_use && true;

(* _287 = ADD_OVERFLOW (c1_177, tl_183); *)
adds carry v287_REAL c1177 tl183;
adc v287_IMAGE 0@uint64 0@uint64 carry;
(* c0_184 = REALPART_EXPR <_287>; *)
mov c0184 v287_REAL;
(* _288 = IMAGPART_EXPR <_287>; *)
mov v288 v287_IMAGE;
(* _263 = _288 != 0; *)
(* subb lt_value dontcare v288 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v288;
(* or uint1 v263 lt_value gt_value; *)
mov v263 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v263@uint8 v263@uint1;
(* _264 = (long unsigned int) _263; *)
vpc v264@uint64 v263@uint8;
(* th_185 = th_182 + _264; *)
uadd th185 th182 v264;
(* _289 = ADD_OVERFLOW (c1_180, th_185); *)
adds carry v289_REAL c1180 th185;
adc v289_IMAGE 0@uint64 0@uint64 carry;
(* c1_186 = REALPART_EXPR <_289>; *)
mov c1186 v289_REAL;
(* _290 = IMAGPART_EXPR <_289>; *)
mov v290 v289_IMAGE;
(* _265 = _290 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v290 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v290;
(* or uint1 v265 lt_value gt_value; *)
mov v265 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v265@uint8 v265@uint1;
(* _266 = (unsigned int) _265; *)
vpc v266@uint32 v265@uint8;
(* _56 = a_110(D)->d[2]; *)
mov v56  a110_16;
(* _58 = b_111(D)->d[2]; *)
mov v58  b111_16;
(* t_187 = _56 w* _58; *)
umulj t187 v56 v58;
(* _60 = t_187 >> 64; *)
usplit v60 tmp_to_use t187 64;
(* th_188 = (uint64_t) _60; *)
vpc th188@uint64 v60@uint128;
(* tl_189 = (uint64_t) t_187; *)
cast tl189@uint64 t187@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl189 = tmp_to_use_p;
assume tl189 = tmp_to_use && true;

(* _291 = ADD_OVERFLOW (c0_184, tl_189); *)
adds carry v291_REAL c0184 tl189;
adc v291_IMAGE 0@uint64 0@uint64 carry;
(* c0_190 = REALPART_EXPR <_291>; *)
mov c0190 v291_REAL;
(* _292 = IMAGPART_EXPR <_291>; *)
mov v292 v291_IMAGE;
(* _267 = _292 != 0; *)
(* subb lt_value dontcare v292 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v292;
(* or uint1 v267 lt_value gt_value; *)
mov v267 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v267@uint8 v267@uint1;
(* _268 = (long unsigned int) _267; *)
vpc v268@uint64 v267@uint8;
(* th_191 = th_188 + _268; *)
uadd th191 th188 v268;
(* _293 = ADD_OVERFLOW (c1_186, th_191); *)
adds carry v293_REAL c1186 th191;
adc v293_IMAGE 0@uint64 0@uint64 carry;
(* c1_192 = REALPART_EXPR <_293>; *)
mov c1192 v293_REAL;
(* _294 = IMAGPART_EXPR <_293>; *)
mov v294 v293_IMAGE;
(* _269 = _294 != 0; *)
(* subb lt_value dontcare v294 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v294;
(* or uint1 v269 lt_value gt_value; *)
mov v269 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v269@uint8 v269@uint1;
(* _270 = (unsigned int) _269; *)
vpc v270@uint32 v269@uint8;
(* c2_193 = _266 + _270; *)
uadd c2193 v266 v270;
(* _61 = a_110(D)->d[3]; *)
mov v61  a110_24;
(* _63 = b_111(D)->d[1]; *)
mov v63  b111_8;
(* t_194 = _61 w* _63; *)
umulj t194 v61 v63;
(* _65 = t_194 >> 64; *)
usplit v65 tmp_to_use t194 64;
(* th_195 = (uint64_t) _65; *)
vpc th195@uint64 v65@uint128;
(* tl_196 = (uint64_t) t_194; *)
cast tl196@uint64 t194@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl196 = tmp_to_use_p;
assume tl196 = tmp_to_use && true;

(* _295 = ADD_OVERFLOW (c0_190, tl_196); *)
adds carry v295_REAL c0190 tl196;
adc v295_IMAGE 0@uint64 0@uint64 carry;
(* c0_197 = REALPART_EXPR <_295>; *)
mov c0197 v295_REAL;
(* _296 = IMAGPART_EXPR <_295>; *)
mov v296 v295_IMAGE;
(* _271 = _296 != 0; *)
(* ======== modified: unsigned number >=0 ======*)
(* subb lt_value dontcare v296 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v296;
(* or uint1 v271 lt_value gt_value; *)
mov v271 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v271@uint8 v271@uint1;
(* _272 = (long unsigned int) _271; *)
vpc v272@uint64 v271@uint8;
(* th_198 = th_195 + _272; *)
uadd th198 th195 v272;
(* _297 = ADD_OVERFLOW (c1_192, th_198); *)
adds carry v297_REAL c1192 th198;
adc v297_IMAGE 0@uint64 0@uint64 carry;
(* c1_199 = REALPART_EXPR <_297>; *)
mov c1199 v297_REAL;
(* _298 = IMAGPART_EXPR <_297>; *)
mov v298 v297_IMAGE;
(* _273 = _298 != 0; *)
(* subb lt_value dontcare v298 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v298;
(* or uint1 v273 lt_value gt_value; *)
mov v273 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v273@uint8 v273@uint1;
(* _274 = (unsigned int) _273; *)
vpc v274@uint32 v273@uint8;
(* c2_200 = c2_193 + _274; *)
uadd c2200 c2193 v274;
(* MEM[(uint64_t * )l_115(D) + 32B] = c0_197; *)
mov l115_32 c0197;
(* c1_202 = (uint64_t) c2_200; *)
vpc c1202@uint64 c2200@uint32;
(* _66 = a_110(D)->d[2]; *)
mov v66  a110_16;
(* _68 = b_111(D)->d[3]; *)
mov v68  b111_24;
(* t_203 = _66 w* _68; *)
umulj t203 v66 v68;
(* _70 = t_203 >> 64; *)
usplit v70 tmp_to_use t203 64;
(* th_204 = (uint64_t) _70; *)
vpc th204@uint64 v70@uint128;
(* tl_205 = (uint64_t) t_203; *)
cast tl205@uint64 t203@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl205 = tmp_to_use_p;
assume tl205 = tmp_to_use && true;

(* _299 = ADD_OVERFLOW (c1_199, tl_205); *)
adds carry v299_REAL c1199 tl205;
adc v299_IMAGE 0@uint64 0@uint64 carry;
(* c0_206 = REALPART_EXPR <_299>; *)
mov c0206 v299_REAL;
(* _300 = IMAGPART_EXPR <_299>; *)
mov v300 v299_IMAGE;
(* _275 = _300 != 0; *)
(* subb lt_value dontcare v300 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v300;
(* or uint1 v275 lt_value gt_value; *)
mov v275 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v275@uint8 v275@uint1;
(* _276 = (long unsigned int) _275; *)
vpc v276@uint64 v275@uint8;
(* th_207 = th_204 + _276; *)
uadd th207 th204 v276;
(* _301 = ADD_OVERFLOW (c1_202, th_207); *)
adds carry v301_REAL c1202 th207;
adc v301_IMAGE 0@uint64 0@uint64 carry;
(* c1_208 = REALPART_EXPR <_301>; *)
mov c1208 v301_REAL;
(* _302 = IMAGPART_EXPR <_301>; *)
mov v302 v301_IMAGE;
(* _277 = _302 != 0; *)
(* subb lt_value dontcare v302 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v302;
(* or uint1 v277 lt_value gt_value; *)
mov v277 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v277@uint8 v277@uint1;
(* _278 = (unsigned int) _277; *)
vpc v278@uint32 v277@uint8;
(* _71 = a_110(D)->d[3]; *)
mov v71  a110_24;
(* _73 = b_111(D)->d[2]; *)
mov v73  b111_16;
(* t_209 = _71 w* _73; *)
umulj t209 v71 v73;
(* _75 = t_209 >> 64; *)
usplit v75 tmp_to_use t209 64;
(* th_210 = (uint64_t) _75; *)
vpc th210@uint64 v75@uint128;
(* tl_211 = (uint64_t) t_209; *)
cast tl211@uint64 t209@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl211 = tmp_to_use_p;
assume tl211 = tmp_to_use && true;

(* _303 = ADD_OVERFLOW (c0_206, tl_211); *)
adds carry v303_REAL c0206 tl211;
adc v303_IMAGE 0@uint64 0@uint64 carry;
(* c0_212 = REALPART_EXPR <_303>; *)
mov c0212 v303_REAL;
(* _304 = IMAGPART_EXPR <_303>; *)
mov v304 v303_IMAGE;
(* _279 = _304 != 0; *)
(* subb lt_value dontcare v304 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v304;
(* or uint1 v279 lt_value gt_value; *)
mov v279 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v279@uint8 v279@uint1;
(* _280 = (long unsigned int) _279; *)
vpc v280@uint64 v279@uint8;
(* th_213 = th_210 + _280; *)
uadd th213 th210 v280;
(* _305 = ADD_OVERFLOW (c1_208, th_213); *)
adds carry v305_REAL c1208 th213;
adc v305_IMAGE 0@uint64 0@uint64 carry;
(* c1_214 = REALPART_EXPR <_305>; *)
mov c1214 v305_REAL;
(* _306 = IMAGPART_EXPR <_305>; *)
mov v306 v305_IMAGE;
(* _281 = _306 != 0; *)
(* subb lt_value dontcare v306 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v306;
(* or uint1 v281 lt_value gt_value; *)
mov v281 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v281@uint8 v281@uint1;
(* _282 = (unsigned int) _281; *)
vpc v282@uint32 v281@uint8;
(* c2_215 = _278 + _282; *)
uadd c2215 v278 v282;
(* MEM[(uint64_t * )l_115(D) + 40B] = c0_212; *)
mov l115_40 c0212;
(* c1_217 = (uint64_t) c2_215; *)
vpc c1217@uint64 c2215@uint32;
(* _76 = a_110(D)->d[3]; *)
mov v76  a110_24;
(* _78 = b_111(D)->d[3]; *)
mov v78  b111_24;
(* t_218 = _76 w* _78; *)
umulj t218 v76 v78;
(* _80 = t_218 >> 64; *)
usplit v80 tmp_to_use t218 64;
(* th_219 = (uint64_t) _80; *)
vpc th219@uint64 v80@uint128;
(* tl_220 = (uint64_t) t_218; *)
cast tl220@uint64 t218@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl220 = tmp_to_use_p;
assume tl220 = tmp_to_use && true;

(* _307 = ADD_OVERFLOW (c1_214, tl_220); *)
adds carry v307_REAL c1214 tl220;
adc v307_IMAGE 0@uint64 0@uint64 carry;
(* c0_221 = REALPART_EXPR <_307>; *)
mov c0221 v307_REAL;
(* _308 = IMAGPART_EXPR <_307>; *)
mov v308 v307_IMAGE;
(* _283 = _308 != 0; *)
(* subb lt_value dontcare v308 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v308;
(* or uint1 v283 lt_value gt_value; *)
mov v283 gt_value;
assert true && gt_value = carry;
assume gt_value = carry && true;
vpc v283@uint8 v283@uint1;
(* _284 = (long unsigned int) _283; *)
vpc v284@uint64 v283@uint8;
(* th_222 = th_219 + _284; *)
uadd th222 th219 v284;
(* c1_223 = c1_217 + th_222; *)
uadd c1223 c1217 th222;
(* MEM[(uint64_t * )l_115(D) + 48B] = c0_221; *)
mov l115_48 c0221;
(* MEM[(uint64_t * )l_115(D) + 56B] = c1_223; *)
mov l115_56 c1223;
(* return; *)


(* Start with unused lhs *)
mov c0 l115_0@uint64;
mov c1 l115_8@uint64;
mov c2 l115_16@uint64;
mov c3 l115_24@uint64;
mov c4 l115_32@uint64;
mov c5 l115_40@uint64;
mov c6 l115_48@uint64;
mov c7 l115_56@uint64;
(* End with unsed lhs *)


{
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7]
  =
  (
      limbs 64 [a0, a1, a2, a3]
      *
      limbs 64 [b0, b1, b2, b3]
  )
  &&
  true
}

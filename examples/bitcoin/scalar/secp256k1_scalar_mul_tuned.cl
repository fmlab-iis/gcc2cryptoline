(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_mul_tuned.cl
        Verification result:                    [OK]            751.821823 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_mul_tuned.cl"
        User time (seconds): 942.37
        System time (seconds): 44.40
        Percent of CPU this job got: 131%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 12:31.90
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 2219208
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 19407741
        Voluntary context switches: 15653
        Involuntary context switches: 84531
        Swaps: 0
        File system inputs: 0
        File system outputs: 68208
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_scalar_mul_tuned.cl
Verification result:                    [OK]            19.253829 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_scalar_mul_tuned.cl"
        User time (seconds): 59.53
        System time (seconds): 6.91
        Percent of CPU this job got: 343%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:19.32
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 375560
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 2323872
        Voluntary context switches: 14673
        Involuntary context switches: 6593
        Swaps: 0
        File system inputs: 0
        File system outputs: 68200
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver stp -qfbv_args --cryptominisat -isafety -slicing ./secp256k1_scalar_mul_tuned.cl
Verification result:                    [OK]            18.768422 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver stp -qfbv_args --cryptominisat -isafety -slicing ./secp256k1_scalar_mul_tuned.cl"
        User time (seconds): 58.90
        System time (seconds): 6.76
        Percent of CPU this job got: 348%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:18.84
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 375556
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 2307928
        Voluntary context switches: 14728
        Involuntary context switches: 6488
        Swaps: 0
        File system inputs: 0
        File system outputs: 68216
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac   TODO: something strange
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_mul_tuned.cl
Verification result:                    [OK]            143.711302 seconds
      143.81 real       433.87 user        65.26 sys
 453562368  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
  18834150  page reclaims
         0  page faults
         0  swaps
         0  block input operations
       160  block output operations
         0  messages sent
         0  messages received
      4386  signals received
      7297  voluntary context switches
    324103  involuntary context switches
*)
proc secp256k1_scalar_mul_512 (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4, uint64 c5, uint64 c6, uint64 c7) =
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


proc secp256k1_scalar_check_overflow (uint64 a0, uint64 a1, uint64 a2, uint64 a3; int32 c0) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a22_0@uint64 a0;
mov a22_8@uint64 a1;
mov a22_16@uint64 a2;
mov a22_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_22(D)->d[3]; *)
mov v1 a22_24;
(* _2 = _1 != 18446744073709551615; *)
subb lt_value dontcare v1 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v1; *)
mov v2 lt_value;
vpc v2@uint8 v2@uint1;
(* _3 = a_22(D)->d[2]; *)
mov v3 a22_16;
(* _4 = _3 <= 18446744073709551613; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xfffffffffffffffd@uint64 1@uint64;
subb v4 dontcare v3 tmp_for_compare;
vpc v4@uint8 v4@uint1;
(* _19 = _2 | _4; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v19 v2 v4; *)
vpc v2_p@uint1 v2;
cmov v19 v2_p 1@uint8 v4;
(* no_23 = (int) _19; *)
vpc v19_p@uint1 v19;
(* vpc no23@int32 v19@uint8; *)
mov no23 v19_p;
(* _5 = _3 == 18446744073709551615; *)
subb lt_value dontcare v3 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v3; *)
mov v5 lt_value;
not uint1 v5 v5;
vpc v5@uint8 v5@uint1;
(* _6 = (int) _5; *)
(* vpc v6@int32 v5@uint8; *)
vpc v6@uint1 v5@uint8;
(* _7 = ~no_23; *)
not uint1 v7 no23;
(* _8 = _6 & _7; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v8 v6 v7; *)
cmov v8@uint1 v6 v7 0@uint1;
(* _9 = a_22(D)->d[1]; *)
mov v9 a22_8;
(* _10 = _9 <= 13451932020343611450; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xbaaedce6af48a03a@uint64 1@uint64;
subb v10 dontcare v9 tmp_for_compare;
vpc v10@uint8 v10@uint1;
(* _20 = _10 | _19; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v20 v10 v19; *)
vpc v10_p@uint1 v10;
cmov v20@uint8 v10_p 1@uint8 v19;

(* no_24 = (int) _20; *)
(* cast no24@int32 v20@uint8; *)
vpc no24@uint1 v20;
(* _11 = _9 > 13451932020343611451; *)
subb v11 dontcare 0xbaaedce6af48a03b@uint64 v9;
vpc v11@uint8 v11@uint1;
(* _13 = ~no_24; *)
(* not int32 v13 no24; *)
not uint1 v13 no24;
(* _15 = a_22(D)->d[0]; *)
mov v15 a22_0;
(* _16 = _15 > 13822214165235122496; *)
subb v16 dontcare 0xbfd25e8cd0364140@uint64 v15;
vpc v16@uint8 v16@uint1;
(* _25 = _11 | _16; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v25 v11 v16; *)
vpc v11_p@uint1 v11;
cmov v25 v11_p 1@uint8 v16;

(* _28 = (int) _25; *)
(* cast v28@int32 v25@uint8; *)
vpc v28@uint8 v25@uint8;
(* _27 = _13 & _28; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v27 v13 v28; *)
vpc v13_p@uint1 v13;
cmov v27@uint8 v13_p v28 0@uint8;
(* yes_26 = _8 | _27; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or int32 yes26 v8 v27; *)
vpc v8_p@uint1 v8;
cmove yes26 v8_p 1@uint8 v27;
vpc yes26@int32 yes26; 
(* return yes_26; *)


(* Start with unused lhs *)
mov c0 yes26@int32;
(* End with unsed lhs *)

{
  true
  &&
  true
}


proc secp256k1_scalar_reduce_512 (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5, uint64 a6, uint64 a7; uint64 c0, uint64 c1, uint64 c2, uint64 c3) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* mov c1346@uint64 _; *)
mov l92_0@uint64 a0;
mov l92_8@uint64 a1;
mov l92_16@uint64 a2;
mov l92_24@uint64 a3;
mov l92_32@uint64 a4;
mov l92_40@uint64 a5;
mov l92_48@uint64 a6;
mov l92_56@uint64 a7;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* n0_93 = MEM[(const uint64_t * )l_92(D) + 32B]; *)
mov n093 l92_32;
(* n1_94 = MEM[(const uint64_t * )l_92(D) + 40B]; *)
mov n194 l92_40;
(* n2_95 = MEM[(const uint64_t * )l_92(D) + 48B]; *)
mov n295 l92_48;
(* n3_96 = MEM[(const uint64_t * )l_92(D) + 56B]; *)
mov n396 l92_56;
(* c0_97 = *l_92(D); *)
mov c097 l92_0;
(* t_98 = n0_93 w* 4624529908474429119; *)
umulj t98 n093 0x402da1732fc9bebf@uint64;
(* _2 = t_98 >> 64; *)
usplit v2 tmp_to_use t98 64;
(* th_99 = (uint64_t) _2; *)
vpc th99@uint64 v2@uint128;
(* tl_100 = (uint64_t) t_98; *)
cast tl100@uint64 t98@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl100 = tmp_to_use_p;
assume tl100 = tmp_to_use && true;

(* _455 = ADD_OVERFLOW (c0_97, tl_100); *)
adds carry v455_REAL c097 tl100;
adc v455_IMAGE 0@uint64 0@uint64 carry;
(* c0_101 = REALPART_EXPR <_455>; *)
mov c0101 v455_REAL;
(* _454 = IMAGPART_EXPR <_455>; *)
mov v454 v455_IMAGE;
(* _276 = _454 != 0; *)
(* subb lt_value dontcare v454 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v454;
(* or uint1 v276 lt_value gt_value; *)
mov v276 gt_value ;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v276@uint8 v276@uint1;
(* _243 = (long unsigned int) _276; *)
vpc v243@uint64 v276@uint8;
(* _3 = MEM[(const uint64_t * )l_92(D) + 8B]; *)
mov v3 l92_8;
(* _88 = _3 + th_99; *)
uadds carry1 v88 v3 th99;
(* c0_103 = _88 + _243; *)
uadds carry2 c0103 v88 v243;
(* _278 = _3 > c0_103; *)
subb v278 dontcare c0103 v3;

assert true && v278 = carry1 + carry2;
assume v278 = carry1 + carry2 && true;

vpc v278@uint8 v278@uint1;
(* _275 = (long unsigned int) _278; *)
vpc v275@uint64 v278@uint8;
(* t_104 = n1_94 w* 4624529908474429119; *)
umulj t104 n194 0x402da1732fc9bebf@uint64;
(* _5 = t_104 >> 64; *)
usplit v5 tmp_to_use t104 64;
(* th_105 = (uint64_t) _5; *)
vpc  th105@uint64 v5@uint128;
(* tl_106 = (uint64_t) t_104; *)
cast tl106@uint64 t104@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl106 = tmp_to_use_p;
assume tl106 = tmp_to_use && true;

(* _453 = ADD_OVERFLOW (c0_103, tl_106); *)
adds carry v453_REAL c0103 tl106;
adc v453_IMAGE 0@uint64 0@uint64 carry;
(* c0_107 = REALPART_EXPR <_453>; *)
mov c0107 v453_REAL;
(* _452 = IMAGPART_EXPR <_453>; *)
mov v452 v453_IMAGE;
(* _280 = _452 != 0; *)
(* subb lt_value dontcare v452 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v452;
(* or uint1 v280 lt_value gt_value; *)
mov v280 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v280@uint8 v280@uint1;
(* _277 = (long unsigned int) _280; *)
vpc v277@uint64 v280@uint8;
(* th_108 = th_105 + _277; *)
uadd th108 th105 v277;
(* _451 = ADD_OVERFLOW (th_108, _275); *)
adds carry v451_REAL th108 v275;
adc v451_IMAGE 0@uint64 0@uint64 carry;
(* c1_109 = REALPART_EXPR <_451>; *)
mov c1109 v451_REAL;
(* _450 = IMAGPART_EXPR <_451>; *)
mov v450 v451_IMAGE;
(* _282 = _450 != 0; *)
(* subb lt_value dontcare v450 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v450;
(* or uint1 v282 lt_value gt_value; *)
mov v282 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v282@uint8 v282@uint1;
(* _279 = (long unsigned int) _282; *)
vpc v279@uint64 v282@uint8;
(* t_110 = n0_93 w* 4994812053365940164; *)
umulj t110 n093 0x4551231950b75fc4@uint64;
(* _6 = t_110 >> 64; *)
usplit v6 tmp_to_use t110 64;
(* th_111 = (uint64_t) _6; *)
vpc th111@uint64 v6@uint128;
(* tl_112 = (uint64_t) t_110; *)
cast tl112@uint64 t110@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl112 = tmp_to_use_p;
assume tl112 = tmp_to_use && true;


(* _449 = ADD_OVERFLOW (c0_107, tl_112); *)
adds carry v449_REAL c0107 tl112;
adc v449_IMAGE 0@uint64 0@uint64 carry;
(* c0_113 = REALPART_EXPR <_449>; *)
mov c0113 v449_REAL;
(* _448 = IMAGPART_EXPR <_449>; *)
mov v448 v449_IMAGE;
(* _284 = _448 != 0; *)
(* subb lt_value dontcare v448 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v448;
(* or uint1 v284 lt_value gt_value; *)

mov v284 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v284@uint8 v284@uint1;
(* _281 = (long unsigned int) _284; *)
vpc v281@uint64 v284@uint8;
(* th_114 = th_111 + _281; *)
uadd th114 th111 v281;
(* _447 = ADD_OVERFLOW (c1_109, th_114); *)
adds carry v447_REAL c1109 th114;
adc v447_IMAGE 0@uint64 0@uint64 carry;
(* c1_115 = REALPART_EXPR <_447>; *)
mov c1115 v447_REAL;
(* _446 = IMAGPART_EXPR <_447>; *)
mov v446 v447_IMAGE;
(* _286 = _446 != 0; *)
(* subb lt_value dontcare v446 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v446;
(* or uint1 v286 lt_value gt_value; *)
mov v286 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v286@uint8 v286@uint1;
(* _283 = (long unsigned int) _286; *)
vpc v283@uint64 v286@uint8;
(* c2_116 = _279 + _283; *)
uadd c2116 v279 v283;
(* _7 = MEM[(const uint64_t * )l_92(D) + 16B]; *)
mov v7 l92_16;
(* _445 = ADD_OVERFLOW (_7, c1_115); *)
adds carry v445_REAL v7 c1115;
adc v445_IMAGE 0@uint64 0@uint64 carry;
(* c0_117 = REALPART_EXPR <_445>; *)
mov c0117 v445_REAL;
(* _444 = IMAGPART_EXPR <_445>; *)
mov v444 v445_IMAGE;
(* _8 = _444 != 0; *)
(* subb lt_value dontcare v444 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v444;
(* or uint1 v8 lt_value gt_value; *)
mov v8 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v8@uint8 v8@uint1;
(* _9 = (long unsigned int) _8; *)
vpc v9@uint64 v8@uint8;
(* _443 = ADD_OVERFLOW (_9, c2_116); *)
adds carry v443_REAL v9 c2116;
adc v443_IMAGE 0@uint64 0@uint64 carry;
(* c1_118 = REALPART_EXPR <_443>; *)
mov c1118 v443_REAL;
(* _442 = IMAGPART_EXPR <_443>; *)
mov v442 v443_IMAGE;
(* _288 = _442 != 0; *)
(* subb lt_value dontcare v442 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v442;
(* or uint1 v288 lt_value gt_value; *)
mov v288 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v288@uint8 v288@uint1;
(* _285 = (long unsigned int) _288; *)
vpc v285@uint64 v288@uint8;
(* t_119 = n2_95 w* 4624529908474429119; *)
umulj t119 n295 0x402da1732fc9bebf@uint64;
(* _11 = t_119 >> 64; *)
usplit v11 tmp_to_use t119 64;
(* th_120 = (uint64_t) _11; *)
vpc th120@uint64 v11@uint128;
(* tl_121 = (uint64_t) t_119; *)
cast tl121@uint64 t119@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl121 = tmp_to_use_p;
assume tl121 = tmp_to_use && true;

(* _441 = ADD_OVERFLOW (c0_117, tl_121); *)
adds carry v441_REAL c0117 tl121;
adc v441_IMAGE 0@uint64 0@uint64 carry;
(* c0_122 = REALPART_EXPR <_441>; *)
mov c0122 v441_REAL;
(* _440 = IMAGPART_EXPR <_441>; *)
mov v440 v441_IMAGE;
(* _290 = _440 != 0; *)
(* subb lt_value dontcare v440 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v440;
(* or uint1 v290 lt_value gt_value; *)
mov v290 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v290@uint8 v290@uint1;
(* _287 = (long unsigned int) _290; *)
vpc v287@uint64 v290@uint8;
(* th_123 = th_120 + _287; *)
uadd th123 th120 v287;
(* _439 = ADD_OVERFLOW (c1_118, th_123); *)
adds carry v439_REAL c1118 th123;
adc v439_IMAGE 0@uint64 0@uint64 carry;
(* c1_124 = REALPART_EXPR <_439>; *)
mov c1124 v439_REAL;
(* _438 = IMAGPART_EXPR <_439>; *)
mov v438 v439_IMAGE;
(* _292 = _438 != 0; *)
(* subb lt_value dontcare v438 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v438;
(* or uint1 v292 lt_value gt_value; *)
mov v292 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v292@uint8 v292@uint1;
(* _289 = (long unsigned int) _292; *)
vpc v289@uint64 v292@uint8;
(* c2_125 = _285 + _289; *)
uadd c2125 v285 v289;
(* t_126 = n1_94 w* 4994812053365940164; *)
umulj t126 n194 0x4551231950b75fc4@uint64;
(* _12 = t_126 >> 64; *)
usplit v12 tmp_to_use t126 64;
(* th_127 = (uint64_t) _12; *)
vpc th127@uint64 v12@uint128;
(* tl_128 = (uint64_t) t_126; *)
cast tl128@uint64 t126@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl128 = tmp_to_use_p;
assume tl128 = tmp_to_use && true;

(* _437 = ADD_OVERFLOW (c0_122, tl_128); *)
adds carry v437_REAL c0122 tl128;
adc v437_IMAGE 0@uint64 0@uint64 carry;
(* c0_129 = REALPART_EXPR <_437>; *)
mov c0129 v437_REAL;
(* _436 = IMAGPART_EXPR <_437>; *)
mov v436 v437_IMAGE;
(* _294 = _436 != 0; *)
(* subb lt_value dontcare v436 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v436;
(* or uint1 v294 lt_value gt_value; *)
mov v294 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v294@uint8 v294@uint1;
(* _291 = (long unsigned int) _294; *)
vpc v291@uint64 v294@uint8;
(* th_130 = th_127 + _291; *)
uadd th130 th127 v291;
(* _435 = ADD_OVERFLOW (c1_124, th_130); *)
adds carry v435_REAL c1124 th130;
adc v435_IMAGE 0@uint64 0@uint64 carry;
(* c1_131 = REALPART_EXPR <_435>; *)
mov c1131 v435_REAL;
(* _434 = IMAGPART_EXPR <_435>; *)
mov v434 v435_IMAGE;
(* _296 = _434 != 0; *)
(* subb lt_value dontcare v434 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v434;
(* or uint1 v296 lt_value gt_value; *)
mov v296 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v296@uint8 v296@uint1;
(* _293 = (long unsigned int) _296; *)
vpc v293@uint64 v296@uint8;
(* c2_132 = c2_125 + _293; *)
uadd c2132 c2125 v293;
(* _433 = ADD_OVERFLOW (n0_93, c0_129); *)
adds carry v433_REAL n093 c0129;
adc v433_IMAGE 0@uint64 0@uint64 carry;
(* c0_133 = REALPART_EXPR <_433>; *)
mov c0133 v433_REAL;
(* _432 = IMAGPART_EXPR <_433>; *)
mov v432 v433_IMAGE;
(* _13 = _432 != 0; *)
(* subb lt_value dontcare v432 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v432;
(* or uint1 v13 lt_value gt_value; *)
mov v13 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v13@uint8 v13@uint1;
(* _14 = (long unsigned int) _13; *)
vpc v14@uint64 v13@uint8;
(* _431 = ADD_OVERFLOW (_14, c1_131); *)
adds carry v431_REAL v14 c1131;
adc v431_IMAGE 0@uint64 0@uint64 carry;
(* c1_134 = REALPART_EXPR <_431>; *)
mov c1134 v431_REAL;
(* _430 = IMAGPART_EXPR <_431>; *)
mov v430 v431_IMAGE;
(* _298 = _430 != 0; *)
(* subb lt_value dontcare v430 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v430;
(* or uint1 v298 lt_value gt_value; *)
mov v298 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v298@uint8 v298@uint1;
(* _295 = (long unsigned int) _298; *)
vpc v295@uint64 v298@uint8;
(* c2_135 = c2_132 + _295; *)
uadd c2135 c2132 v295;
(* _15 = MEM[(const uint64_t * )l_92(D) + 24B]; *)
mov v15 l92_24;
(* _429 = ADD_OVERFLOW (_15, c1_134); *)
adds carry v429_REAL v15 c1134;
adc v429_IMAGE 0@uint64 0@uint64 carry;
(* c0_136 = REALPART_EXPR <_429>; *)
mov c0136 v429_REAL;
(* _428 = IMAGPART_EXPR <_429>; *)
mov v428 v429_IMAGE;
(* _16 = _428 != 0; *)
(* subb lt_value dontcare v428 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v428;
(* or uint1 v16 lt_value gt_value; *)
mov v16 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v16@uint8 v16@uint1;
(* _17 = (long unsigned int) _16; *)
vpc v17@uint64 v16@uint8;
(* _427 = ADD_OVERFLOW (_17, c2_135); *)
adds carry v427_REAL v17 c2135;
adc v427_IMAGE 0@uint64 0@uint64 carry;
(* c1_137 = REALPART_EXPR <_427>; *)
mov c1137 v427_REAL;
(* _426 = IMAGPART_EXPR <_427>; *)
mov v426 v427_IMAGE;
(* _300 = _426 != 0; *)
(* subb lt_value dontcare v426 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v426;
(* or uint1 v300 lt_value gt_value; *)
mov v300 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v300@uint8 v300@uint1;
(* _297 = (long unsigned int) _300; *)
vpc v297@uint64 v300@uint8;
(* t_138 = n3_96 w* 4624529908474429119; *)
umulj t138 n396 0x402da1732fc9bebf@uint64;
(* _19 = t_138 >> 64; *)
usplit v19 tmp_to_use t138 64;
(* th_139 = (uint64_t) _19; *)
vpc th139@uint64 v19@uint128;
(* tl_140 = (uint64_t) t_138; *)
cast tl140@uint64 t138@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl140 = tmp_to_use_p;
assume tl140 = tmp_to_use && true;


(* _425 = ADD_OVERFLOW (c0_136, tl_140); *)
adds carry v425_REAL c0136 tl140;
adc v425_IMAGE 0@uint64 0@uint64 carry;
(* c0_141 = REALPART_EXPR <_425>; *)
mov c0141 v425_REAL;
(* _424 = IMAGPART_EXPR <_425>; *)
mov v424 v425_IMAGE;
(* _302 = _424 != 0; *)
(* subb lt_value dontcare v424 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v424;
(* or uint1 v302 lt_value gt_value; *)
mov v302 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v302@uint8 v302@uint1;
(* _299 = (long unsigned int) _302; *)
vpc v299@uint64 v302@uint8;
(* th_142 = th_139 + _299; *)
uadd th142 th139 v299;
(* _423 = ADD_OVERFLOW (c1_137, th_142); *)
adds carry v423_REAL c1137 th142;
adc v423_IMAGE 0@uint64 0@uint64 carry;
(* c1_143 = REALPART_EXPR <_423>; *)
mov c1143 v423_REAL;
(* _422 = IMAGPART_EXPR <_423>; *)
mov v422 v423_IMAGE;
(* _304 = _422 != 0; *)
(* subb lt_value dontcare v422 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v422;
(* or uint1 v304 lt_value gt_value; *)
mov v304 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v304@uint8 v304@uint1;
(* _301 = (long unsigned int) _304; *)
vpc v301@uint64 v304@uint8;
(* c2_144 = _297 + _301; *)
uadd c2144 v297 v301;
(* t_145 = n2_95 w* 4994812053365940164; *)
umulj t145 n295 0x4551231950b75fc4@uint64;
(* _20 = t_145 >> 64; *)
usplit v20 tmp_to_use t145 64;
(* th_146 = (uint64_t) _20; *)
vpc th146@uint64 v20@uint128;
(* tl_147 = (uint64_t) t_145; *)
cast tl147@uint64 t145@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl147 = tmp_to_use_p;
assume tl147 = tmp_to_use && true;

(* _421 = ADD_OVERFLOW (c0_141, tl_147); *)
adds carry v421_REAL c0141 tl147;
adc v421_IMAGE 0@uint64 0@uint64 carry;
(* c0_148 = REALPART_EXPR <_421>; *)
mov c0148 v421_REAL;
(* _420 = IMAGPART_EXPR <_421>; *)
mov v420 v421_IMAGE;
(* _306 = _420 != 0; *)
(* subb lt_value dontcare v420 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v420;
(* or uint1 v306 lt_value gt_value; *)
mov v306 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v306@uint8 v306@uint1;
(* _303 = (long unsigned int) _306; *)
vpc v303@uint64 v306@uint8;
(* th_149 = th_146 + _303; *)
uadd th149 th146 v303;
(* _419 = ADD_OVERFLOW (c1_143, th_149); *)
adds carry v419_REAL c1143 th149;
adc v419_IMAGE 0@uint64 0@uint64 carry;
(* c1_150 = REALPART_EXPR <_419>; *)
mov c1150 v419_REAL;
(* _418 = IMAGPART_EXPR <_419>; *)
mov v418 v419_IMAGE;
(* _308 = _418 != 0; *)
(* subb lt_value dontcare v418 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v418;
(* or uint1 v308 lt_value gt_value; *)
mov v308 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v308@uint8 v308@uint1;
(* _305 = (long unsigned int) _308; *)
vpc v305@uint64 v308@uint8;
(* c2_151 = c2_144 + _305; *)
uadd c2151 c2144 v305;
(* _417 = ADD_OVERFLOW (n1_94, c0_148); *)
adds carry v417_REAL n194 c0148;
adc v417_IMAGE 0@uint64 0@uint64 carry;
(* c0_152 = REALPART_EXPR <_417>; *)
mov c0152 v417_REAL;
(* _416 = IMAGPART_EXPR <_417>; *)
mov v416 v417_IMAGE;
(* _21 = _416 != 0; *)
(* subb lt_value dontcare v416 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v416;
(* or uint1 v21 lt_value gt_value; *)
mov v21 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v21@uint8 v21@uint1;
(* _22 = (long unsigned int) _21; *)
vpc v22@uint64 v21@uint8;
(* _415 = ADD_OVERFLOW (_22, c1_150); *)
adds carry v415_REAL v22 c1150;
adc v415_IMAGE 0@uint64 0@uint64 carry;
(* c1_153 = REALPART_EXPR <_415>; *)
mov c1153 v415_REAL;
(* _414 = IMAGPART_EXPR <_415>; *)
mov v414 v415_IMAGE;
(* _310 = _414 != 0; *)
(* subb lt_value dontcare v414 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v414;
(* or uint1 v310 lt_value gt_value; *)
mov v310 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v310@uint8 v310@uint1;
(* _307 = (long unsigned int) _310; *)
vpc v307@uint64 v310@uint8;
(* c2_154 = c2_151 + _307; *)
uadd c2154 c2151 v307;
(* t_155 = n3_96 w* 4994812053365940164; *)
umulj t155 n396 0x4551231950b75fc4@uint64;
(* _23 = t_155 >> 64; *)
usplit v23 tmp_to_use t155 64;
(* th_156 = (uint64_t) _23; *)
vpc th156@uint64 v23@uint128;
(* tl_157 = (uint64_t) t_155; *)
cast tl157@uint64 t155@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl157 = tmp_to_use_p;
assume tl157 = tmp_to_use && true;

(* _413 = ADD_OVERFLOW (c1_153, tl_157); *)
adds carry v413_REAL c1153 tl157;
adc v413_IMAGE 0@uint64 0@uint64 carry;
(* c0_158 = REALPART_EXPR <_413>; *)
mov c0158 v413_REAL;
(* _412 = IMAGPART_EXPR <_413>; *)
mov v412 v413_IMAGE;
(* _312 = _412 != 0; *)
(* subb lt_value dontcare v412 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v412;
(* or uint1 v312 lt_value gt_value; *)
mov v312 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v312@uint8 v312@uint1;
(* _309 = (long unsigned int) _312; *)
vpc v309@uint64 v312@uint8;
(* th_159 = th_156 + _309; *)
uadd th159 th156 v309;
(* _411 = ADD_OVERFLOW (c2_154, th_159); *)
adds carry v411_REAL c2154 th159;
adc v411_IMAGE 0@uint64 0@uint64 carry;
(* c1_160 = REALPART_EXPR <_411>; *)
mov c1160 v411_REAL;
(* _410 = IMAGPART_EXPR <_411>; *)
mov v410 v411_IMAGE;
(* _314 = _410 != 0; *)
(* subb lt_value dontcare v410 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v410;
(* or uint1 v314 lt_value gt_value; *)
mov v314 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v314@uint8 v314@uint1;
(* _311 = (long unsigned int) _314; *)
vpc v311@uint64 v314@uint8;
(* _409 = ADD_OVERFLOW (n2_95, c0_158); *)
adds carry v409_REAL n295 c0158;
adc v409_IMAGE 0@uint64 0@uint64 carry;
(* c0_161 = REALPART_EXPR <_409>; *)
mov c0161 v409_REAL;
(* _408 = IMAGPART_EXPR <_409>; *)
mov v408 v409_IMAGE;
(* _24 = _408 != 0; *)
(* subb lt_value dontcare v408 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v408;
(* or uint1 v24 lt_value gt_value; *)
mov v24 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v24@uint8 v24@uint1;
(* _25 = (long unsigned int) _24; *)
vpc v25@uint64 v24@uint8;
(* _407 = ADD_OVERFLOW (_25, c1_160); *)
adds carry v407_REAL v25 c1160;
adc v407_IMAGE 0@uint64 0@uint64 carry;
(* c1_162 = REALPART_EXPR <_407>; *)
mov c1162 v407_REAL;
(* _406 = IMAGPART_EXPR <_407>; *)
mov v406 v407_IMAGE;
(* _316 = _406 != 0; *)
(* subb lt_value dontcare v406 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v406;
(* or uint1 v316 lt_value gt_value; *)
mov v316 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v316@uint8 v316@uint1;
(* _313 = (long unsigned int) _316; *)
vpc v313@uint64 v316@uint8;
(* c2_163 = _311 + _313; *)
uadd c2163 v311 v313;
(* _405 = ADD_OVERFLOW (n3_96, c1_162); *)
adds carry v405_REAL n396 c1162;
adc v405_IMAGE 0@uint64 0@uint64 carry;
(* c0_164 = REALPART_EXPR <_405>; *)
mov c0164 v405_REAL;
(* _404 = IMAGPART_EXPR <_405>; *)
mov v404 v405_IMAGE;
(* _318 = _404 != 0; *)
(* subb lt_value dontcare v404 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v404;
(* or uint1 v318 lt_value gt_value; *)
mov v318 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v318@uint8 v318@uint1;
(* _315 = (long unsigned int) _318; *)
vpc v315@uint64 v318@uint8;
(* c1_165 = c2_163 + _315; *)
uadd c1165 c2163 v315;
(* m6_166 = (uint32_t) c1_165; *)
vpc m6166@uint32 c1165@uint64;
(* t_167 = c0_161 w* 4624529908474429119; *)
umulj t167 c0161 0x402da1732fc9bebf@uint64;
(* _27 = t_167 >> 64; *)
usplit v27 tmp_to_use t167 64;
(* th_168 = (uint64_t) _27; *)
vpc th168@uint64 v27@uint128;
(* tl_169 = (uint64_t) t_167; *)
cast tl169@uint64 t167@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl169 = tmp_to_use_p;
assume tl169 = tmp_to_use && true;

(* _403 = ADD_OVERFLOW (c0_101, tl_169); *)
adds carry v403_REAL c0101 tl169;
adc v403_IMAGE 0@uint64 0@uint64 carry;
(* c0_170 = REALPART_EXPR <_403>; *)
mov c0170 v403_REAL;
(* _402 = IMAGPART_EXPR <_403>; *)
mov v402 v403_IMAGE;
(* _320 = _402 != 0; *)
(* subb lt_value dontcare v402 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v402;
(* or uint1 v320 lt_value gt_value; *)
mov v320 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v320@uint8 v320@uint1;
(* _317 = (long unsigned int) _320; *)
vpc v317@uint64 v320@uint8;
(* _89 = c0_113 + th_168; *)
uadds carry1 v89 c0113 th168;
(* c0_172 = _89 + _317; *)
uadds carry2 c0172 v89 v317;
(* _322 = c0_113 > c0_172; *)
subb v322 dontcare c0172 c0113;

assert true && v322 = carry1 + carry2;
assume v322 = carry1 + carry2 && true;

vpc v322@uint8 v322@uint1;
(* _319 = (long unsigned int) _322; *)
vpc v319@uint64 v322@uint8;
(* t_173 = c0_164 w* 4624529908474429119; *)
umulj t173 c0164 0x402da1732fc9bebf@uint64;
(* _29 = t_173 >> 64; *)
usplit v29 tmp_to_use t173 64;
(* th_174 = (uint64_t) _29; *)
vpc th174@uint64 v29@uint128;
(* tl_175 = (uint64_t) t_173; *)
cast tl175@uint64 t173@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl175 = tmp_to_use_p;
assume tl175 = tmp_to_use && true;

(* _401 = ADD_OVERFLOW (c0_172, tl_175); *)
adds carry v401_REAL c0172 tl175;
adc v401_IMAGE 0@uint64 0@uint64 carry;
(* c0_176 = REALPART_EXPR <_401>; *)
mov c0176 v401_REAL;
(* _400 = IMAGPART_EXPR <_401>; *)
mov v400 v401_IMAGE;
(* _324 = _400 != 0; *)
(* subb lt_value dontcare v400 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v400;
(* or uint1 v324 lt_value gt_value; *)
mov v324 gt_value;


assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v324@uint8 v324@uint1;
(* _321 = (long unsigned int) _324; *)
vpc v321@uint64 v324@uint8;
(* th_177 = th_174 + _321; *)
uadd th177 th174 v321;
(* _399 = ADD_OVERFLOW (th_177, _319); *)
adds carry v399_REAL th177 v319;
adc v399_IMAGE 0@uint64 0@uint64 carry;
(* c1_178 = REALPART_EXPR <_399>; *)
mov c1178 v399_REAL;
(* _398 = IMAGPART_EXPR <_399>; *)
mov v398 v399_IMAGE;
(* _326 = _398 != 0; *)
(* subb lt_value dontcare v398 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v398;
(* or uint1 v326 lt_value gt_value; *)
mov v326 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v326@uint8 v326@uint1;
(* _323 = (long unsigned int) _326; *)
vpc v323@uint64 v326@uint8;
(* t_179 = c0_161 w* 4994812053365940164; *)
umulj t179 c0161 0x4551231950b75fc4@uint64;
(* _30 = t_179 >> 64; *)
usplit v30 tmp_to_use t179 64;
(* th_180 = (uint64_t) _30; *)
vpc th180@uint64 v30@uint128;
(* tl_181 = (uint64_t) t_179; *)
cast tl181@uint64 t179@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl181 = tmp_to_use_p;
assume tl181 = tmp_to_use && true;

(* _397 = ADD_OVERFLOW (c0_176, tl_181); *)
adds carry v397_REAL c0176 tl181;
adc v397_IMAGE 0@uint64 0@uint64 carry;
(* c0_182 = REALPART_EXPR <_397>; *)
mov c0182 v397_REAL;
(* _396 = IMAGPART_EXPR <_397>; *)
mov v396 v397_IMAGE;
(* _328 = _396 != 0; *)
(* subb lt_value dontcare v396 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v396;
(* or uint1 v328 lt_value gt_value; *)
mov v328 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v328@uint8 v328@uint1;
(* _325 = (long unsigned int) _328; *)
vpc v325@uint64 v328@uint8;
(* th_183 = th_180 + _325; *)
uadd th183 th180 v325;
(* _395 = ADD_OVERFLOW (c1_178, th_183); *)
adds carry v395_REAL c1178 th183;
adc v395_IMAGE 0@uint64 0@uint64 carry;
(* c1_184 = REALPART_EXPR <_395>; *)
mov c1184 v395_REAL;
(* _394 = IMAGPART_EXPR <_395>; *)
mov v394 v395_IMAGE;
(* _330 = _394 != 0; *)
(* subb lt_value dontcare v394 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v394;
(* or uint1 v330 lt_value gt_value; *)
mov v330 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v330@uint8 v330@uint1;
(* _327 = (long unsigned int) _330; *)
vpc v327@uint64 v330@uint8;
(* c2_185 = _323 + _327; *)
uadd c2185 v323 v327;
(* _393 = ADD_OVERFLOW (c0_133, c1_184); *)
adds carry v393_REAL c0133 c1184;
adc v393_IMAGE 0@uint64 0@uint64 carry;
(* c0_186 = REALPART_EXPR <_393>; *)
mov c0186 v393_REAL;
(* _392 = IMAGPART_EXPR <_393>; *)
mov v392 v393_IMAGE;
(* _31 = _392 != 0; *)
(* subb lt_value dontcare v392 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v392;
(* or uint1 v31 lt_value gt_value; *)
mov v31 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v31@uint8 v31@uint1;
(* _32 = (long unsigned int) _31; *)
vpc v32@uint64 v31@uint8;
(* _391 = ADD_OVERFLOW (_32, c2_185); *)
adds carry v391_REAL v32 c2185;
adc v391_IMAGE 0@uint64 0@uint64 carry;
(* c1_187 = REALPART_EXPR <_391>; *)
mov c1187 v391_REAL;
(* _390 = IMAGPART_EXPR <_391>; *)
mov v390 v391_IMAGE;
(* _332 = _390 != 0; *)
(* subb lt_value dontcare v390 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v390;
(* or uint1 v332 lt_value gt_value; *)
mov v332 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v332@uint8 v332@uint1;
(* _329 = (long unsigned int) _332; *)
vpc v329@uint64 v332@uint8;
(* t_188 = c1_165 w* 4624529908474429119; *)
umulj t188 c1165 0x402da1732fc9bebf@uint64;
(* tl_189 = (uint64_t) t_188; *)
vpc tl189@uint64 t188@uint128;
(* _389 = ADD_OVERFLOW (c0_186, tl_189); *)
adds carry v389_REAL c0186 tl189;
adc v389_IMAGE 0@uint64 0@uint64 carry;
(* c0_190 = REALPART_EXPR <_389>; *)
mov c0190 v389_REAL;
(* _388 = IMAGPART_EXPR <_389>; *)
mov v388 v389_IMAGE;
(* if (_388 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

subb gt_value dontcare 0x0@uint64 v388;
(* or uint1 v332 lt_value gt_value; *)
mov br gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

(* BB's index is 3 *)

(* c1_192 = c1_187 + 1; *)
uadd c1192 c1187 0x1@uint64;

(* BB's index is 4 *)

(* c1_346 = PHI <c1_192(3), c1_187(2)> *)
cmove c1346 br c1192 c1187;


(* t_194 = c0_164 w* 4994812053365940164; *)
umulj t194 c0164 0x4551231950b75fc4@uint64;
(* _34 = t_194 >> 64; *)
usplit v34 tmp_to_use t194 64;
(* th_195 = (uint64_t) _34; *)
vpc th195@uint64 v34@uint128;
(* tl_196 = (uint64_t) t_194; *)
cast tl196@uint64 t194@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl196 = tmp_to_use_p;
assume tl196 = tmp_to_use && true;

(* _466 = ADD_OVERFLOW (c0_190, tl_196); *)
adds carry v466_REAL c0190 tl196;
adc v466_IMAGE 0@uint64 0@uint64 carry;
(* c0_197 = REALPART_EXPR <_466>; *)
mov c0197 v466_REAL;
(* _264 = IMAGPART_EXPR <_466>; *)
mov v264 v466_IMAGE;
(* _336 = _264 != 0; *)
(* subb lt_value dontcare v264 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v264;
(* or uint1 v336 lt_value gt_value; *)
mov v336 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v336@uint8 v336@uint1;
(* _333 = (long unsigned int) _336; *)
vpc v333@uint64 v336@uint8;
(* th_198 = th_195 + _333; *)
uadd th198 th195 v333;
(* _467 = ADD_OVERFLOW (th_198, c1_346); *)
adds carry v467_REAL th198 c1346;
adc v467_IMAGE 0@uint64 0@uint64 carry;
(* c1_199 = REALPART_EXPR <_467>; *)
mov c1199 v467_REAL;
(* _263 = IMAGPART_EXPR <_467>; *)
mov v263 v467_IMAGE;
(* _338 = _263 != 0; *)
(* subb lt_value dontcare v263 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v263;
(* or uint1 v338 lt_value gt_value; *)
mov v338 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v338@uint8 v338@uint1;
(* _335 = (long unsigned int) _338; *)
vpc v335@uint64 v338@uint8;
(* c2_200 = _329 + _335; *)
uadd c2200 v329 v335;
(* _465 = ADD_OVERFLOW (c0_161, c0_197); *)
adds carry v465_REAL c0161 c0197;
adc v465_IMAGE 0@uint64 0@uint64 carry;
(* c0_201 = REALPART_EXPR <_465>; *)
mov c0201 v465_REAL;
(* _464 = IMAGPART_EXPR <_465>; *)
mov v464 v465_IMAGE;
(* _35 = _464 != 0; *)
(* subb lt_value dontcare v464 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v464;
(* or uint1 v35 lt_value gt_value; *)
mov v35 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v35@uint8 v35@uint1;
(* _36 = (long unsigned int) _35; *)
vpc v36@uint64 v35@uint8;
(* _463 = ADD_OVERFLOW (_36, c1_199); *)
adds carry v463_REAL v36 c1199;
adc v463_IMAGE 0@uint64 0@uint64 carry;
(* c1_202 = REALPART_EXPR <_463>; *)
mov c1202 v463_REAL;
(* _462 = IMAGPART_EXPR <_463>; *)
mov v462 v463_IMAGE;
(* _340 = _462 != 0; *)
(* subb lt_value dontcare v462 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v462;
(* or uint1 v340 lt_value gt_value; *)
mov v340 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v340@uint8 v340@uint1;
(* _337 = (long unsigned int) _340; *)
vpc v337@uint64 v340@uint8;
(* c2_203 = c2_200 + _337; *)
uadd c2203 c2200 v337;
(* _461 = ADD_OVERFLOW (c0_152, c1_202); *)
adds carry v461_REAL c0152 c1202;
adc v461_IMAGE 0@uint64 0@uint64 carry;
(* c0_204 = REALPART_EXPR <_461>; *)
mov c0204 v461_REAL;
(* _460 = IMAGPART_EXPR <_461>; *)
mov v460 v461_IMAGE;
(* _342 = _460 != 0; *)
(* subb lt_value dontcare v460 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v460;
(* or uint1 v342 lt_value gt_value; *)
mov v342 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v342@uint8 v342@uint1;
(* _339 = (long unsigned int) _342; *)
vpc v339@uint64 v342@uint8;
(* c1_205 = c2_203 + _339; *)
uadd c1205 c2203 v339;
(* t_206 = c1_165 w* 4994812053365940164; *)
umulj t206 c1165 0x4551231950b75fc4@uint64;
(* tl_207 = (uint64_t) t_206; *)
vpc tl207@uint64 t206@uint128;
(* _459 = ADD_OVERFLOW (c0_204, tl_207); *)
adds carry v459_REAL c0204 tl207;
adc v459_IMAGE 0@uint64 0@uint64 carry;
(* c0_208 = REALPART_EXPR <_459>; *)
mov c0208 v459_REAL;
(* _458 = IMAGPART_EXPR <_459>; *)
mov v458 v459_IMAGE;
(* _343 = _458 != 0; *)
(* subb lt_value dontcare v458 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v458;
(* or uint1 v343 lt_value gt_value; *)
mov v343 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v343@uint8 v343@uint1;
(* _341 = (long unsigned int) _343; *)
vpc v341@uint64 v343@uint8;
(* c1_210 = c1_205 + _341; *)
uadd c1210 c1205 v341;
(* _457 = ADD_OVERFLOW (c0_164, c0_208); *)
adds carry v457_REAL c0164 c0208;
adc v457_IMAGE 0@uint64 0@uint64 carry;
(* c0_211 = REALPART_EXPR <_457>; *)
mov c0211 v457_REAL;
(* _456 = IMAGPART_EXPR <_457>; *)
mov v456 v457_IMAGE;
(* _344 = _456 != 0; *)
(* subb lt_value dontcare v456 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v456;
(* or uint1 v344 lt_value gt_value; *)
mov v344 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v344@uint8 v344@uint1;
(* _83 = (long unsigned int) _344; *)
vpc v83@uint64 v344@uint8;
(* c1_212 = _83 + c1_210; *)
uadd c1212 v83 c1210;
(* _37 = (unsigned int) c1_212; *)
vpc v37@uint32 c1212@uint64;
(* p4_213 = _37 + m6_166; *)
uadd p4213 v37 m6166;
(* _38 = (__int128 unsigned) c0_170; *)
vpc v38@uint128 c0170@uint64;
(* _39 = (__int128 unsigned) p4_213; *)
vpc v39@uint128 p4213@uint32;
(* _40 = _39 * 4624529908474429119; *)
mov value_lo 0x402da1732fc9bebf@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v40 v39 value;
(* c_214 = _38 + _40; *)
uadd c214 v38 v40;
(* _41 = (long unsigned int) c_214; *)
cast v41@uint64 c214@uint128;
(* v41 = r-> d[0] *)
(* c_216 = c_214 >> 64; *)
usplit c216 tmp_to_use c214 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v41 = tmp_to_use_p;
assume v41 = tmp_to_use && true;


(* _42 = (__int128 unsigned) c0_182; *)
vpc v42@uint128 c0182@uint64;
(* _43 = _39 * 4994812053365940164; *)
mov value_lo 0x4551231950b75fc4@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v43 v39 value;
(* _44 = _42 + _43; *)
uadd v44 v42 v43;
(* c_217 = _44 + c_216; *)
uadd c217 v44 c216;
(* _45 = (long unsigned int) c_217; *)
cast v45@uint64 c217@uint128;
(* v45 = r-> d[1] *)
(* c_218 = c_217 >> 64; *)
usplit c218 tmp_to_use c217 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v45 = tmp_to_use_p;
assume v45 = tmp_to_use && true;

(* _46 = (__int128 unsigned) c0_201; *)
vpc v46@uint128 c0201@uint64;


(* _47 = _39 + _46; *)
uadd v47 v39 v46;
(* c_219 = _47 + c_218; *)
uadd c219 v47 c218;
(* _48 = (long unsigned int) c_219; *)
cast v48@uint64 c219@uint128;
(* v48 = r-> d[2] *)
(* c_220 = c_219 >> 64; *)
usplit c220 tmp_to_use c219 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v48 = tmp_to_use_p;
assume v48 = tmp_to_use && true;

(* _49 = (__int128 unsigned) c0_211; *)
vpc v49@uint128 c0211@uint64;
(* c_221 = _49 + c_220; *)
uadd c221 v49 c220;
(* _50 = (long unsigned int) c_221; *)
cast v50@uint64 c221@uint128;
(* v50 = r-> d[3] *)
(* c_222 = c_221 >> 64; *)
usplit c222 tmp_to_use c221 64;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v50 = tmp_to_use_p;
assume v50 = tmp_to_use && true;

(* TODO: self added *)
(* assume true && v50 < (2**64-1)@64; *)

(* assert true && c222 = v39; *)
(* assume c222 = v39 && true; *)


(* _246 = _50 != 18446744073709551615; *)
subb lt_value dontcare v50 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v50; *)
(* or uint1 v246 lt_value gt_value; *)
mov v246 lt_value;
vpc v246@uint8 v246@uint1;

(* _247 = _48 <= 18446744073709551613; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xfffffffffffffffd@uint64 1@uint64;
subb v247 dontcare v48 tmp_for_compare;
vpc v247@uint8 v247@uint1;
(* _248 = _246 | _247; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v248 v246 v247; *)
vpc v246_p@uint1 v246;
cmove v248 v246_p 1@uint8 v247;
(* no_249 = (int) _248; *)
vpc no249@int32 v248@uint8;
(* _250 = _48 == 18446744073709551615; *)
subb lt_value dontcare v48 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v48; *)
(* or uint1 v250 lt_value gt_value; *)
mov v250 lt_value;
not uint1 v250 v250;
vpc v250@uint8 v250@uint1;
(* _251 = (int) _250; *)
vpc v251@int32 v250@uint8;
(* _252 = ~no_249; *)
(* not int32 v252 no249; *)
vpc no249@uint1 no249;
not uint1 v252 no249;
(* _253 = _251 & _252; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v253 v251 v252; *)
vpc v251_p@uint1 v251;
vpc v252_p@uint1 v252;

cmove v253 v251_p v252_p 0@uint1;

(* _254 = _45 <= 13451932020343611450; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xbaaedce6af48a03a@uint64 1@uint64;
subb v254 dontcare v45 tmp_for_compare;
vpc v254@uint8 v254@uint1;
(* _255 = _248 | _254; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v255 v248 v254; *)
(* or uint8 v255 v248 v254; *)
vpc v248_p@uint1 v248;
vpc v254_p@uint1 v254;

cmove v255 v248_p 1@uint1 v254_p;


(* no_256 = (int) _255; *)
(* vpc no256@int32 v255@uint8; *)
vpc no256@uint1 v255;
(* _257 = _45 > 13451932020343611451; *)
subb v257 dontcare 0xbaaedce6af48a03b@uint64 v45;
vpc v257@uint8 v257@uint1;
(* _259 = ~no_256; *)
(* not int32 v259 no256; *)
not uint1 v259 no256;
(* _262 = _41 > 13822214165235122496; *)
subb v262 dontcare 0xbfd25e8cd0364140@uint64 v41;
vpc v262@uint8 v262@uint1;
(* _345 = _257 | _262; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v345 v257 v262; *)
(* or uint8 v345 v257 v262; *)
vpc v257_p@uint1 v257;
vpc v262_p@uint1 v262;
cmove v345 v257_p 1@uint1 v262_p;

vpc v345@uint8 v345;

(* _102 = (int) _345; *)
vpc v102@int32 v345@uint8;
(* _90 = _102 & _259; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v90 v102 v259; *)
vpc v102_p@uint1 v102;
vpc v259_p@uint1 v259;

cmov v90 v102_p v259_p 0@uint1;


(* yes_265 = _90 | _253; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or int32 yes265 v90 v253; *)

vpc v253@int32 v253;
cmove yes265 v90 1@int32 v253;


(* _51 = (unsigned int) yes_265; *)
vpc v51@uint32 yes265@int32;
(* _52 = (unsigned int) c_222; *)
vpc v52@uint32 c222@uint128;
(* _53 = _51 + _52; *)
uadd v53 v51 v52;

assert true && v53 <= 1@32;

(* _270 = c_214 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v270 c214 value;

vpc v270_p@uint64 v270;
assert true && v270_p = v41;
assume v270 = v41 && true;

(* _224 = (long unsigned int) _53; *)
vpc v224@uint64 v53@uint32;
(* _225 = _224 * 4624529908474429119; *)
umul v225 v224 0x402da1732fc9bebf@uint64;
(* _226 = (__int128 unsigned) _225; *)
vpc v226@uint128 v225@uint64;
(* t_227 = _226 + _270; *)
uadd t227 v226 v270;
(* _228 = _41 + _225; *)
uadds carry v228 v41 v225;

(* r_215(D)->d[0] = _228; *)
mov r215_0 v228;
(* t_229 = t_227 >> 64; *)
usplit t229 tmp_to_use t227 64;

vpc t229_p@uint1 t229;
assert true && t229_p = carry;
assume t229_p = carry && true;

(* _271 = c_217 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v271 c217 value;

vpc v271_p@uint64 v271;
assert true && v271_p = v45;
assume v271 = v45 && true;

(* _231 = _224 * 4994812053365940164; *)
umul v231 v224 0x4551231950b75fc4@uint64;


(* _232 = (__int128 unsigned) _231; *)
vpc v232@uint128 v231@uint64;
(* _233 = _232 + _271; *)
uadd v233 v232 v271;
(* t_234 = t_229 + _233; *)
uadd t234 t229 v233;
(* _235 = (long unsigned int) t_234; *)
cast v235@uint64 t234@uint128;
(* r_215(D)->d[1] = _235; *)
mov r215_8 v235;
(* t_236 = t_234 >> 64; *)
usplit t236 tmp_to_use t234 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v235 = tmp_to_use_p;
assume v235 = tmp_to_use && true;

(* _272 = c_219 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v272 c219 value;

vpc v272_p@uint64 v272;
assert true && v272_p = v48;
assume v272 = v48 && true;

(* _238 = (__int128 unsigned) _53; *)
vpc v238@uint128 v53@uint32;
(* _239 = _238 + _272; *)
uadd v239 v238 v272;
(* t_240 = t_236 + _239; *)
uadd t240 t236 v239;
(* _241 = (long unsigned int) t_240; *)
cast v241@uint64 t240@uint128;
(* r_215(D)->d[2] = _241; *)
mov r215_16 v241;
(* t_242 = t_240 >> 64; *)
usplit t242 tmp_to_use t240 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v241 = tmp_to_use_p;
assume v241 = tmp_to_use && true;

(* _273 = c_221 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v273 c221 value;

vpc v273_p@uint64 v273;
assert true && v273_p = v50;
assume v273 = v50 && true;

(* t_244 = t_242 + _273; *)
uadd t244 t242 v273;
(* _245 = (long unsigned int) t_244; *)
(* cast v245@uint64 t244@uint128; *)
(* vpc v245@uint64 v245; *)
split tmp v245 t244 64;
vpc v245@uint64 v245;
vpc tmp@int32 tmp;

assert true && yes265 = tmp;
assume tmp = yes265 && true; 


(* r_215(D)->d[3] = _245; *)
mov r215_24 v245;
(* return; *)


(* Start with unused lhs *)
(* mov _ c1192@uint64; *)
mov c0 r215_0@uint64;
mov c1 r215_8@uint64;
mov c2 r215_16@uint64;
mov c3 r215_24@uint64;
(* mov _ v388@uint64; *)
(* End with unsed lhs *)

mov is_overflow 0@int32;
call secp256k1_scalar_check_overflow(c0, c1, c2, c3, is_overflow);

{
    (
        (limbs 64 [c0,c1,c2,c3])
    )
    =
    (
       (limbs 64 [a0, a1, a2, a3 ,a4 ,a5 ,a6, a7])
    ) 
    ( 
        mod (limbs 64 [
                            0xBFD25E8CD0364141,
                            0xBAAEDCE6AF48A03B,
                            0xFFFFFFFFFFFFFFFE,
                            0xFFFFFFFFFFFFFFFF
                            ])
    )
    &&
    is_overflow = 0@32
}



proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* secp256k1_scalar_mul_512 (&l, a_2(D), b_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call secp256k1_scalar_mul_512(a0, a1, a2, a3, b0, b1, b2, b3, l0, l1, l2, l3, l4, l5, l6, l7);
(* secp256k1_scalar_reduce_512 (r_5(D), &l); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call secp256k1_scalar_reduce_512(l0, l1, l2, l3, l4, l5, l6, l7, c0, c1, c2, c3);
(* l ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)

(* Start with unused lhs *)
(* End with unsed lhs *)


{
  limbs 64 [c0, c1, c2, c3]
  =
  (
      limbs 64 [a0, a1, a2, a3]
      *
      limbs 64 [b0, b1, b2, b3]
  )
    ( 
        mod (limbs 64 [
                            0xBFD25E8CD0364141,
                            0xBAAEDCE6AF48A03B,
                            0xFFFFFFFFFFFFFFFE,
                            0xFFFFFFFFFFFFFFFF
                            ])
    )
  &&
  true
}

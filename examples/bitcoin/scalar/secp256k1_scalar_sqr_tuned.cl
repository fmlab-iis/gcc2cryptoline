(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_sqr_tuned.cl
Verification result:                    [OK]            26.617962 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_sqr_tuned.cl"
        User time (seconds): 326.36
        System time (seconds): 59.79
        Percent of CPU this job got: 1446%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:26.69
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 341532
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 28285148
        Voluntary context switches: 16053
        Involuntary context switches: 34504
        Swaps: 0
        File system inputs: 0
        File system outputs: 68624
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_sqr_tuned.cl
Verification result:                    [OK]            269.369268 seconds
      269.45 real       718.91 user        85.13 sys
 348708864  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
  26438358  page reclaims
         0  page faults
         0  swaps
         0  block input operations
       168  block output operations
         0  messages sent
         0  messages received
      4304  signals received
      7346  voluntary context switches
    625281  involuntary context switches
*)

proc secp256k1_scalar_sqr_512 (uint64 a0, uint64 a1, uint64 a2, uint64 a3; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4, uint64 c5, uint64 c6, uint64 c7) =
{
  true
  &&
  true
}



(* Start with undefined rhs *)
mov a96_0@uint64 a0;
mov a96_8@uint64 a1;
mov a96_16@uint64 a2;
mov a96_24@uint64 a3;
(* End with undefined rhs *)




(* BB's index is 2 *)

(* _1 = a_96(D)->d[0]; *)
mov v1  a96_0;
(* t_97 = _1 w* _1; *)
umulj t97 v1 v1;
(* _3 = t_97 >> 64; *)
usplit v3 tmp_to_use t97 64;
(* th_98 = (uint64_t) _3; *)
vpc th98@uint64 v3@uint128;
(* tl_99 = (uint64_t) t_97; *)
cast tl99@uint64 t97@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl99 = tmp_to_use_p;
assume tl99 = tmp_to_use && true;

(* *l_100(D) = tl_99; *)
mov l100_0 tl99;
(* _4 = a_96(D)->d[0]; *)
mov v4  a96_0;
(* _6 = a_96(D)->d[1]; *)
mov v6  a96_8;
(* t_102 = _4 w* _6; *)
umulj t102 v4 v6;
(* _8 = t_102 >> 64; *)
usplit v8 tmp_to_use t102 64;
(* th_103 = (uint64_t) _8; *)
vpc th103@uint64 v8@uint128;
(* tl_104 = (uint64_t) t_102; *)
cast tl104@uint64 t102@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl104 = tmp_to_use_p;
assume tl104 = tmp_to_use && true;

(* th2_105 = th_103 * 2; *)
umull discarded th2105 th103 0x2@uint64;
(* _216 = th_103 > th2_105; *)
subb v216 dontcare th2105 th103;


vpc discarded@uint1 discarded;
assert true && discarded = v216;
assume discarded = v216 && true;

vpc v216@uint8 v216@uint1;
(* _214 = (unsigned int) _216; *)
vpc v214@uint32 v216@uint8;
(* tl2_106 = tl_104 * 2; *)
(* may overflow *)
umull discarded tl2106 tl104 0x2@uint64;
(* _215 = tl_104 > tl2_106; *)
subb v215 dontcare tl2106 tl104;


vpc discarded@uint1 discarded;
assert true && discarded = v215;
assume discarded = v215 && true;

vpc v215@uint8 v215@uint1;
(* _213 = (long unsigned int) _215; *)
vpc v213@uint64 v215@uint8;
(* th2_107 = th2_105 + _213; *)
uadd th2107 th2105 v213;
(* _18 = ADD_OVERFLOW (th_98, tl2_106); *)
adds carry v18_REAL th98 tl2106;
adc v18_IMAGE 0@uint64 0@uint64 carry;
(* c0_108 = REALPART_EXPR <_18>; *)
mov c0108 v18_REAL;
(* _9 = IMAGPART_EXPR <_18>; *)
mov v9 v18_IMAGE;
(* _217 = _9 != 0; *)
(* subb lt_value dontcare v9 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v9;
(* or uint1 v217 lt_value gt_value; *)
mov v217 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v217@uint8 v217@uint1;
(* _218 = (long unsigned int) _217; *)
vpc v218@uint64 v217@uint8;
(* th2_109 = th2_107 + _218; *)
uadds carry th2109 th2107 v218;
(* _10 = th2_109 == 0; *)
(* subb lt_value dontcare th2109 0x0@uint64; *)
subb gt_value2 dontcare 0x0@uint64 th2109;
(* or uint1 v10 lt_value gt_value; *)
mov v10 gt_value2;
not uint1 v10 v10;

assert true && v10 * gt_value = carry;
assume v10 * gt_value = carry && true;

vpc v10@uint8 v10@uint1;
(* _11 = _10 & _217; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint8 v11 v10 v217; *)
vpc v10@uint1 v10;
cmove v11 v10 v217 0@uint8;


(* _12 = (unsigned int) _11; *)
vpc v12@uint32 v11@uint8;
(* c2_110 = _12 + _214; *)
uadd c2110 v12 v214;
(* MEM[(uint64_t * )l_100(D) + 8B] = c0_108; *)
mov l100_8 c0108;
(* c1_112 = (uint64_t) c2_110; *)
vpc c1112@uint64 c2110@uint32;
(* _13 = a_96(D)->d[0]; *)
mov v13  a96_0;
(* _15 = a_96(D)->d[2]; *)
mov v15  a96_16;
(* t_113 = _13 w* _15; *)
umulj t113 v13 v15;
(* _17 = t_113 >> 64; *)
usplit v17 tmp_to_use t113 64;
(* th_114 = (uint64_t) _17; *)
vpc th114@uint64 v17@uint128;
(* tl_115 = (uint64_t) t_113; *)
cast tl115@uint64 t113@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl115 = tmp_to_use_p;
assume tl115 = tmp_to_use && true;

(* th2_116 = th_114 * 2; *)
umull discarded th2116 th114 0x2@uint64;
(* _219 = th_114 > th2_116; *)
subb v219 dontcare th2116 th114;

vpc discarded@uint1 discarded;
assert true && discarded = v219;
assume discarded = v219 && true;

vpc v219@uint8 v219@uint1;
(* _220 = (unsigned int) _219; *)
vpc v220@uint32 v219@uint8;
(* tl2_117 = tl_115 * 2; *)
umull discarded tl2117 tl115 0x2@uint64;
(* _221 = tl_115 > tl2_117; *)
subb v221 dontcare tl2117 tl115;

vpc discarded@uint1 discarded;
assert true && discarded = v221;
assume discarded = v221 && true;

vpc v221@uint8 v221@uint1;
(* _222 = (long unsigned int) _221; *)
vpc v222@uint64 v221@uint8;
(* th2_118 = th2_116 + _222; *)
uadd th2118 th2116 v222;
(* _30 = ADD_OVERFLOW (th2_109, tl2_117); *)
adds carry v30_REAL th2109 tl2117;
adc v30_IMAGE 0@uint64 0@uint64 carry;
(* c0_119 = REALPART_EXPR <_30>; *)
mov c0119 v30_REAL;
(* _39 = IMAGPART_EXPR <_30>; *)
mov v39 v30_IMAGE;
(* _223 = _39 != 0; *)
(* subb lt_value dontcare v39 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v39;
(* or uint1 v223 lt_value gt_value; *)
mov v223 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v223@uint8 v223@uint1;
(* _224 = (long unsigned int) _223; *)
vpc v224@uint64 v223@uint8;
(* th2_120 = th2_118 + _224; *)
uadds carry th2120 th2118 v224;
(* _19 = th2_120 == 0; *)
(* subb lt_value dontcare th2120 0x0@uint64; *)
subb gt_value2 dontcare 0x0@uint64 th2120;
(* or uint1 v19 lt_value gt_value; *)
mov v19 gt_value2;
not uint1 v19 v19;

assert true && v19 * gt_value = carry;
assume v19 * gt_value = carry && true;

vpc v19@uint8 v19@uint1;
(* _20 = _19 & _223; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint8 v20 v19 v223; *)

vpc v19@uint1 v19;
cmove v20 v19 v223 0@uint8;

(* _21 = (unsigned int) _20; *)
vpc v21@uint32 v20@uint8;
(* c2_121 = _21 + _220; *)
uadd c2121 v21 v220;
(* _48 = ADD_OVERFLOW (c1_112, th2_120); *)
adds carry v48_REAL c1112 th2120;
adc v48_IMAGE 0@uint64 0@uint64 carry;
(* c1_122 = REALPART_EXPR <_48>; *)
mov c1122 v48_REAL;
(* _60 = IMAGPART_EXPR <_48>; *)
mov v60 v48_IMAGE;
(* _225 = _60 != 0; *)
(* subb lt_value dontcare v60 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v60;
(* or uint1 v225 lt_value gt_value; *)
mov v225 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v225@uint8 v225@uint1;
(* _226 = (unsigned int) _225; *)
vpc v226@uint32 v225@uint8;
(* c2_123 = c2_121 + _226; *)
uadd c2123 c2121 v226;
(* _22 = a_96(D)->d[1]; *)
mov v22  a96_8;
(* t_124 = _22 w* _22; *)
umulj t124 v22 v22;
(* _24 = t_124 >> 64; *)
usplit v24 tmp_to_use t124 64;
(* th_125 = (uint64_t) _24; *)
vpc th125@uint64 v24@uint128;
(* tl_126 = (uint64_t) t_124; *)
cast tl126@uint64 t124@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl126 = tmp_to_use_p;
assume tl126 = tmp_to_use && true;

(* _141 = ADD_OVERFLOW (c0_119, tl_126); *)
adds carry v141_REAL c0119 tl126;
adc v141_IMAGE 0@uint64 0@uint64 carry;
(* c0_127 = REALPART_EXPR <_141>; *)
mov c0127 v141_REAL;
(* _143 = IMAGPART_EXPR <_141>; *)
mov v143 v141_IMAGE;
(* _230 = _143 != 0; *)
(* subb lt_value dontcare v143 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v143;
(* or uint1 v230 lt_value gt_value; *)
mov v230 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v230@uint8 v230@uint1;
(* _228 = (long unsigned int) _230; *)
vpc v228@uint64 v230@uint8;
(* th_128 = th_125 + _228; *)
uadd th128 th125 v228;
(* _186 = ADD_OVERFLOW (c1_122, th_128); *)
adds carry v186_REAL c1122 th128;
adc v186_IMAGE 0@uint64 0@uint64 carry;
(* c1_129 = REALPART_EXPR <_186>; *)
mov c1129 v186_REAL;
(* _91 = IMAGPART_EXPR <_186>; *)
mov v91 v186_IMAGE;
(* _229 = _91 != 0; *)
(* subb lt_value dontcare v91 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v91;
(* or uint1 v229 lt_value gt_value; *)
mov v229 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v229@uint8 v229@uint1;
(* _227 = (unsigned int) _229; *)
vpc v227@uint32 v229@uint8;
(* c2_130 = c2_123 + _227; *)
uadd c2130 c2123 v227;
(* MEM[(uint64_t * )l_100(D) + 16B] = c0_127; *)
mov l100_16 c0127;
(* c1_132 = (uint64_t) c2_130; *)
vpc c1132@uint64 c2130@uint32;
(* _25 = a_96(D)->d[0]; *)
mov v25  a96_0;
(* _27 = a_96(D)->d[3]; *)
mov v27  a96_24;
(* t_133 = _25 w* _27; *)
umulj t133 v25 v27;
(* _29 = t_133 >> 64; *)
usplit v29 tmp_to_use t133 64;
(* th_134 = (uint64_t) _29; *)
vpc th134@uint64 v29@uint128;
(* tl_135 = (uint64_t) t_133; *)
cast tl135@uint64 t133@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl135 = tmp_to_use_p;
assume tl135 = tmp_to_use && true;

(* th2_136 = th_134 * 2; *)
umull discarded th2136 th134 0x2@uint64;
(* _231 = th_134 > th2_136; *)
subb v231 dontcare th2136 th134;

vpc discarded@uint1 discarded;
assert true && discarded = v231;
assume discarded = v231 && true;

vpc v231@uint8 v231@uint1;
(* _232 = (unsigned int) _231; *)
vpc v232@uint32 v231@uint8;
(* tl2_137 = tl_135 * 2; *)
umull discarded tl2137 tl135 0x2@uint64;
(* _233 = tl_135 > tl2_137; *)
subb v233 dontcare tl2137 tl135;

vpc discarded@uint1 discarded;
assert true && discarded = v233;
assume discarded = v233 && true;

vpc v233@uint8 v233@uint1;
(* _234 = (long unsigned int) _233; *)
vpc v234@uint64 v233@uint8;
(* th2_138 = th2_136 + _234; *)
uadd th2138 th2136 v234;
(* _90 = ADD_OVERFLOW (c1_129, tl2_137); *)
adds carry v90_REAL c1129 tl2137;
adc v90_IMAGE 0@uint64 0@uint64 carry;
(* c0_139 = REALPART_EXPR <_90>; *)
mov c0139 v90_REAL;
(* _89 = IMAGPART_EXPR <_90>; *)
mov v89 v90_IMAGE;
(* _235 = _89 != 0; *)
(* subb lt_value dontcare v89 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v89;
(* or uint1 v235 lt_value gt_value; *)
mov v235 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v235@uint8 v235@uint1;
(* _236 = (long unsigned int) _235; *)
vpc v236@uint64 v235@uint8;
(* th2_140 = th2_138 + _236; *)
uadds carry th2140 th2138 v236;
(* _31 = th2_140 == 0; *)
(* subb lt_value dontcare th2140 0x0@uint64; *)
subb gt_value2 dontcare 0x0@uint64 th2140;
(* or uint1 v31 lt_value gt_value; *)
mov v31 gt_value2;
not uint1 v31 v31;

assert true && v31 * gt_value = carry;
assume v31 * gt_value = carry && true;

vpc v31@uint8 v31@uint1;
(* _32 = _31 & _235; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint8 v32 v31 v235; *)

vpc v31@uint1 v31;
cmov v32 v31 v235 0@uint8;


(* _33 = (unsigned int) _32; *)
vpc v33@uint32 v32@uint8;
(* _88 = ADD_OVERFLOW (c1_132, th2_140); *)
adds carry v88_REAL c1132 th2140;
adc v88_IMAGE 0@uint64 0@uint64 carry;
(* c1_142 = REALPART_EXPR <_88>; *)
mov c1142 v88_REAL;
(* _87 = IMAGPART_EXPR <_88>; *)
mov v87 v88_IMAGE;
(* _240 = _87 != 0; *)
(* subb lt_value dontcare v87 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v87;
(* or uint1 v240 lt_value gt_value; *)
mov v240 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v240@uint8 v240@uint1;
(* _238 = (unsigned int) _240; *)
vpc v238@uint32 v240@uint8;
(* _34 = a_96(D)->d[1]; *)
mov v34  a96_8;
(* _36 = a_96(D)->d[2]; *)
mov v36  a96_16;
(* t_144 = _34 w* _36; *)
umulj t144 v34 v36;
(* _38 = t_144 >> 64; *)
usplit v38 tmp_to_use t144 64;
(* th_145 = (uint64_t) _38; *)
vpc th145@uint64 v38@uint128;
(* tl_146 = (uint64_t) t_144; *)
cast tl146@uint64 t144@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl146 = tmp_to_use_p;
assume tl146 = tmp_to_use && true;

(* th2_147 = th_145 * 2; *)
umull discarded th2147 th145 0x2@uint64;
(* _239 = th_145 > th2_147; *)
subb v239 dontcare th2147 th145;

vpc discarded@uint1 discarded;
assert true && discarded = v239;
assume discarded = v239 && true;

vpc v239@uint8 v239@uint1;
(* _237 = (unsigned int) _239; *)
vpc v237@uint32 v239@uint8;
(* _93 = _232 + _237; *)
uadd v93 v232 v237;
(* _92 = _33 + _93; *)
uadd v92 v33 v93;
(* c2_148 = _92 + _238; *)
uadd c2148 v92 v238;
(* tl2_149 = tl_146 * 2; *)
umull discarded tl2149 tl146 0x2@uint64;
(* _241 = tl_146 > tl2_149; *)
subb v241 dontcare tl2149 tl146;

vpc discarded@uint1 discarded;
assert true && discarded = v241;
assume discarded = v241 && true;

vpc v241@uint8 v241@uint1;
(* _242 = (long unsigned int) _241; *)
vpc v242@uint64 v241@uint8;
(* th2_150 = th2_147 + _242; *)
uadd th2150 th2147 v242;
(* _86 = ADD_OVERFLOW (c0_139, tl2_149); *)
adds carry v86_REAL c0139 tl2149;
adc v86_IMAGE 0@uint64 0@uint64 carry;
(* c0_151 = REALPART_EXPR <_86>; *)
mov c0151 v86_REAL;
(* _85 = IMAGPART_EXPR <_86>; *)
mov v85 v86_IMAGE;
(* _243 = _85 != 0; *)
(* subb lt_value dontcare v85 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v85;
(* or uint1 v243 lt_value gt_value; *)
mov v243 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v243@uint8 v243@uint1;
(* _244 = (long unsigned int) _243; *)
vpc v244@uint64 v243@uint8;
(* th2_152 = th2_150 + _244; *)
uadds carry th2152 th2150 v244;
(* _40 = th2_152 == 0; *)
(* subb lt_value dontcare th2152 0x0@uint64; *)
subb gt_value2 dontcare 0x0@uint64 th2152;
(* or uint1 v40 lt_value gt_value; *)
mov v40 gt_value2;
not uint1 v40 v40;
assert true && v40 * gt_value = carry;
assume v40 * gt_value = carry && true;
vpc v40@uint8 v40@uint1;
(* _41 = _40 & _243; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint8 v41 v40 v243; *)
vpc v40@uint1 v40;
cmov v41 v40 v243 0@uint8;
(* _42 = (unsigned int) _41; *)
vpc v42@uint32 v41@uint8;
(* c2_153 = _42 + c2_148; *)
uadd c2153 v42 c2148;
(* _84 = ADD_OVERFLOW (c1_142, th2_152); *)
adds carry v84_REAL c1142 th2152;
adc v84_IMAGE 0@uint64 0@uint64 carry;
(* c1_154 = REALPART_EXPR <_84>; *)
mov c1154 v84_REAL;
(* _83 = IMAGPART_EXPR <_84>; *)
mov v83 v84_IMAGE;
(* _245 = _83 != 0; *)
(* subb lt_value dontcare v83 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v83;
(* or uint1 v245 lt_value gt_value; *)
mov v245 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v245@uint8 v245@uint1;
(* _246 = (unsigned int) _245; *)
vpc v246@uint32 v245@uint8;
(* c2_155 = c2_153 + _246; *)
uadd c2155 c2153 v246;
(* MEM[(uint64_t * )l_100(D) + 24B] = c0_151; *)
mov l100_24 c0151;
(* c1_157 = (uint64_t) c2_155; *)
vpc c1157@uint64 c2155@uint32;
(* _43 = a_96(D)->d[1]; *)
mov v43  a96_8;
(* _45 = a_96(D)->d[3]; *)
mov v45  a96_24;
(* t_158 = _43 w* _45; *)
umulj t158 v43 v45;
(* _47 = t_158 >> 64; *)
usplit v47 tmp_to_use t158 64;
(* th_159 = (uint64_t) _47; *)
vpc th159@uint64 v47@uint128;
(* tl_160 = (uint64_t) t_158; *)
cast tl160@uint64 t158@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl160 = tmp_to_use_p;
assume tl160 = tmp_to_use && true;

(* th2_161 = th_159 * 2; *)
umull discarded th2161 th159 0x2@uint64;
(* _250 = th_159 > th2_161; *)
subb v250 dontcare th2161 th159;

vpc discarded@uint1 discarded;
assert true && discarded = v250;
assume discarded = v250 && true;

vpc v250@uint8 v250@uint1;
(* _248 = (unsigned int) _250; *)
vpc v248@uint32 v250@uint8;
(* tl2_162 = tl_160 * 2; *)
umull discarded tl2162 tl160 0x2@uint64;
(* _249 = tl_160 > tl2_162; *)
subb v249 dontcare tl2162 tl160;

vpc discarded@uint1 discarded;
assert true && discarded = v249;
assume discarded = v249 && true;

vpc v249@uint8 v249@uint1;
(* _247 = (long unsigned int) _249; *)
vpc v247@uint64 v249@uint8;
(* th2_163 = th2_161 + _247; *)
uadd th2163 th2161 v247;
(* _82 = ADD_OVERFLOW (c1_154, tl2_162); *)
adds carry v82_REAL c1154 tl2162;
adc v82_IMAGE 0@uint64 0@uint64 carry;
(* c0_164 = REALPART_EXPR <_82>; *)
mov c0164 v82_REAL;
(* _81 = IMAGPART_EXPR <_82>; *)
mov v81 v82_IMAGE;
(* _251 = _81 != 0; *)
(* subb lt_value dontcare v81 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v81;
(* or uint1 v251 lt_value gt_value; *)
mov v251 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v251@uint8 v251@uint1;
(* _252 = (long unsigned int) _251; *)
vpc v252@uint64 v251@uint8;
(* th2_165 = th2_163 + _252; *)
uadds carry th2165 th2163 v252;
(* _49 = th2_165 == 0; *)
(* subb lt_value dontcare th2165 0x0@uint64; *)
subb gt_value2 dontcare 0x0@uint64 th2165;
(* or uint1 v49 lt_value gt_value; *)
mov v49 gt_value2;
not uint1 v49 v49;

assert true && v49 * gt_value = carry;
assume v49 * gt_value = carry && true;

vpc v49@uint8 v49@uint1;
(* _50 = _49 & _251; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint8 v50 v49 v251; *)
vpc v49@uint1 v49;
cmove v50 v49 v251 0@uint8;
(* _51 = (unsigned int) _50; *)
vpc v51@uint32 v50@uint8;
(* c2_166 = _51 + _248; *)
uadd c2166 v51 v248;
(* _80 = ADD_OVERFLOW (c1_157, th2_165); *)
adds carry v80_REAL c1157 th2165;
adc v80_IMAGE 0@uint64 0@uint64 carry;
(* c1_167 = REALPART_EXPR <_80>; *)
mov c1167 v80_REAL;
(* _79 = IMAGPART_EXPR <_80>; *)
mov v79 v80_IMAGE;
(* _253 = _79 != 0; *)
(* subb lt_value dontcare v79 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v79;
(* or uint1 v253 lt_value gt_value; *)
mov v253 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v253@uint8 v253@uint1;
(* _254 = (unsigned int) _253; *)
vpc v254@uint32 v253@uint8;
(* c2_168 = c2_166 + _254; *)
uadd c2168 c2166 v254;
(* _52 = a_96(D)->d[2]; *)
mov v52  a96_16;
(* t_169 = _52 w* _52; *)
umulj t169 v52 v52;
(* _54 = t_169 >> 64; *)
usplit v54 tmp_to_use t169 64;
(* th_170 = (uint64_t) _54; *)
vpc th170@uint64 v54@uint128;
(* tl_171 = (uint64_t) t_169; *)
cast tl171@uint64 t169@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl171 = tmp_to_use_p;
assume tl171 = tmp_to_use && true;

(* _78 = ADD_OVERFLOW (c0_164, tl_171); *)
adds carry v78_REAL c0164 tl171;
adc v78_IMAGE 0@uint64 0@uint64 carry;
(* c0_172 = REALPART_EXPR <_78>; *)
mov c0172 v78_REAL;
(* _77 = IMAGPART_EXPR <_78>; *)
mov v77 v78_IMAGE;
(* _255 = _77 != 0; *)
(* subb lt_value dontcare v77 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v77;
(* or uint1 v255 lt_value gt_value; *)
mov v255 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v255@uint8 v255@uint1;
(* _256 = (long unsigned int) _255; *)
vpc v256@uint64 v255@uint8;
(* th_173 = th_170 + _256; *)
uadd th173 th170 v256;
(* _76 = ADD_OVERFLOW (c1_167, th_173); *)
adds carry v76_REAL c1167 th173;
adc v76_IMAGE 0@uint64 0@uint64 carry;
(* c1_174 = REALPART_EXPR <_76>; *)
mov c1174 v76_REAL;
(* _75 = IMAGPART_EXPR <_76>; *)
mov v75 v76_IMAGE;
(* _257 = _75 != 0; *)
(* subb lt_value dontcare v75 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v75;
(* or uint1 v257 lt_value gt_value; *)
mov v257 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v257@uint8 v257@uint1;
(* _258 = (unsigned int) _257; *)
vpc v258@uint32 v257@uint8;
(* c2_175 = c2_168 + _258; *)
uadd c2175 c2168 v258;
(* MEM[(uint64_t * )l_100(D) + 32B] = c0_172; *)
mov l100_32 c0172;
(* c1_177 = (uint64_t) c2_175; *)
vpc c1177@uint64 c2175@uint32;
(* _55 = a_96(D)->d[2]; *)
mov v55  a96_16;
(* _57 = a_96(D)->d[3]; *)
mov v57  a96_24;
(* t_178 = _55 w* _57; *)
umulj t178 v55 v57;
(* _59 = t_178 >> 64; *)
usplit v59 tmp_to_use t178 64;
(* th_179 = (uint64_t) _59; *)
vpc th179@uint64 v59@uint128;
(* tl_180 = (uint64_t) t_178; *)
cast tl180@uint64 t178@uint128; 

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl180 = tmp_to_use_p;
assume tl180 = tmp_to_use && true;

(* th2_181 = th_179 * 2; *)
umull discarded th2181 th179 0x2@uint64;
(* _259 = th_179 > th2_181; *)
subb v259 dontcare th2181 th179;

vpc discarded@uint1 discarded;
assert true && discarded = v259;
assume discarded = v259 && true;

vpc v259@uint8 v259@uint1;
(* _260 = (unsigned int) _259; *)
vpc v260@uint32 v259@uint8;
(* tl2_182 = tl_180 * 2; *)
umull discarded tl2182 tl180 0x2@uint64;
(* _264 = tl_180 > tl2_182; *)
subb v264 dontcare tl2182 tl180;

vpc discarded@uint1 discarded;
assert true && discarded = v264;
assume discarded = v264 && true;

vpc v264@uint8 v264@uint1;
(* _262 = (long unsigned int) _264; *)
vpc v262@uint64 v264@uint8;
(* th2_183 = th2_181 + _262; *)
uadd th2183 th2181 v262;
(* _74 = ADD_OVERFLOW (c1_174, tl2_182); *)
adds carry v74_REAL c1174 tl2182;
adc v74_IMAGE 0@uint64 0@uint64 carry;
(* c0_184 = REALPART_EXPR <_74>; *)
mov c0184 v74_REAL;
(* _73 = IMAGPART_EXPR <_74>; *)
mov v73 v74_IMAGE;
(* _263 = _73 != 0; *)
(* subb lt_value dontcare v73 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v73;
(* or uint1 v263 lt_value gt_value; *)
mov v263 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v263@uint8 v263@uint1;
(* _261 = (long unsigned int) _263; *)
vpc v261@uint64 v263@uint8;
(* th2_185 = th2_183 + _261; *)
uadds carry th2185 th2183 v261;
(* _61 = th2_185 == 0; *)
(* subb lt_value dontcare th2185 0x0@uint64; *)
subb gt_value2 dontcare 0x0@uint64 th2185;
(* or uint1 v61 lt_value gt_value; *)
mov v61 gt_value2;
not uint1 v61 v61;

assert true && v61 * gt_value = carry;
assume v61 * gt_value = carry && true;

vpc v61@uint8 v61@uint1;
(* _62 = _61 & _263; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint8 v62 v61 v263; *)

vpc v61@uint1 v61;
cmov v62 v61 v263 0@uint8;


(* _63 = (unsigned int) _62; *)
vpc v63@uint32 v62@uint8;
(* _72 = ADD_OVERFLOW (c1_177, th2_185); *)
adds carry v72_REAL c1177 th2185;
adc v72_IMAGE 0@uint64 0@uint64 carry;
(* c1_187 = REALPART_EXPR <_72>; *)
mov c1187 v72_REAL;
(* _71 = IMAGPART_EXPR <_72>; *)
mov v71 v72_IMAGE;
(* _265 = _71 != 0; *)
(* subb lt_value dontcare v71 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v71;
(* or uint1 v265 lt_value gt_value; *)
mov v265 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v265@uint8 v265@uint1;
(* _266 = (unsigned int) _265; *)
vpc v266@uint32 v265@uint8;
(* _94 = _63 + _266; *)
uadd v94 v63 v266;
(* c2_188 = _94 + _260; *)
uadd c2188 v94 v260;
(* MEM[(uint64_t * )l_100(D) + 40B] = c0_184; *)
mov l100_40 c0184;
(* c1_190 = (uint64_t) c2_188; *)
vpc c1190@uint64 c2188@uint32;
(* _64 = a_96(D)->d[3]; *)
mov v64  a96_24;
(* t_191 = _64 w* _64; *)
umulj t191 v64 v64;
(* _66 = t_191 >> 64; *)
usplit v66 tmp_to_use t191 64;
(* th_192 = (uint64_t) _66; *)
vpc th192@uint64 v66@uint128;
(* tl_193 = (uint64_t) t_191; *)
cast tl193@uint64 t191@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tl193 = tmp_to_use_p;
assume tl193 = tmp_to_use && true;

(* _70 = ADD_OVERFLOW (c1_187, tl_193); *)
adds carry v70_REAL c1187 tl193;
adc v70_IMAGE 0@uint64 0@uint64 carry;
(* c0_194 = REALPART_EXPR <_70>; *)
mov c0194 v70_REAL;
(* _69 = IMAGPART_EXPR <_70>; *)
mov v69 v70_IMAGE;
(* _267 = _69 != 0; *)
(* subb lt_value dontcare v69 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v69;
(* or uint1 v267 lt_value gt_value; *)
mov v267 gt_value;

assert true && gt_value = carry;
assume gt_value = carry && true;

vpc v267@uint8 v267@uint1;
(* _268 = (long unsigned int) _267; *)
vpc v268@uint64 v267@uint8;
(* th_195 = th_192 + _268; *)
uadd th195 th192 v268;
(* c1_196 = c1_190 + th_195; *)
uadd c1196 c1190 th195;
(* MEM[(uint64_t * )l_100(D) + 48B] = c0_194; *)
mov l100_48 c0194;
(* MEM[(uint64_t * )l_100(D) + 56B] = c1_196; *)
mov l100_56 c1196;
(* return; *)


(* Start with unused lhs *)
mov c0 l100_0@uint64;
mov c1 l100_8@uint64;
mov c2 l100_16@uint64;
mov c3 l100_24@uint64;
mov c4 l100_32@uint64;
mov c5 l100_40@uint64;
mov c6 l100_48@uint64;
mov c7 l100_56@uint64;
(* End with unsed lhs *)


{
  limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7]
  =
  (
      sq
      (limbs 64 [a0, a1, a2, a3])
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


proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* secp256k1_scalar_sqr_512 (&l, a_2(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call secp256k1_scalar_sqr_512(a0, a1, a2, a3, l0, l1, l2, l3, l4, l5, l6, l7);
(* secp256k1_scalar_reduce_512 (r_4(D), &l); *)
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
      sq
      limbs 64 [a0, a1, a2, a3]
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

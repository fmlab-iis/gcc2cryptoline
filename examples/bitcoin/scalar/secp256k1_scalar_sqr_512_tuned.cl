(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_sqr_512_tuned.cl

Verification result:                    [OK]            7.322204 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_sqr_512_tuned.cl"
        User time (seconds): 27.33
        System time (seconds): 6.49
        Percent of CPU this job got: 457%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:07.39
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 204848
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 2990180
        Voluntary context switches: 5470
        Involuntary context switches: 3236
        Swaps: 0
        File system inputs: 0
        File system outputs: 7152
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_sqr_512_tuned.cl
Verification result:                    [OK]            28.274881 seconds
       28.37 real        64.16 user        11.38 sys
 211238912  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   3192719  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        53  block output operations
         0  messages sent
         0  messages received
      1590  signals received
      2689  voluntary context switches
     73885  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
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

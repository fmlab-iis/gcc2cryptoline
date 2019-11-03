proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov i239@uint32 _;
mov output6_0@uint64 _;
mov output6_8@uint64 _;
mov output6_16@uint64 _;
mov output6_24@uint64 _;
mov output6_32@uint64 _;
mov output__lsm17073@uint64 _;
mov output__lsm17189@uint64 _;
mov output__lsm172163@uint64 _;
mov output__lsm173179@uint64 _;
mov output__lsm17411@uint64 _;
mov v379_8 _;
mov v381_8 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* __builtin_memcpy (output_6(D), input_7(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* r0_58 = *output_6(D); *)
mov r058 output6_0;
(* r1_59 = MEM[(uint64_t * )output_6(D) + 8B]; *)
mov r159 output6_8;
(* r2_60 = MEM[(uint64_t * )output_6(D) + 16B]; *)
mov r260 output6_16;
(* r3_61 = MEM[(uint64_t * )output_6(D) + 24B]; *)
mov r361 output6_24;
(* r4_62 = MEM[(uint64_t * )output_6(D) + 32B]; *)
mov r462 output6_32;
(* d0_63 = r0_58 * 2; *)
umul d063 r058 0x2@uint64;
(* d1_64 = r1_59 * 2; *)
umul d164 r159 0x2@uint64;
(* d2_65 = r2_60 * 38; *)
umul d265 r260 0x26@uint64;
(* d419_66 = r4_62 * 19; *)
umul d41966 r462 0x13@uint64;
(* d4_67 = r4_62 * 38; *)
umul d467 r462 0x26@uint64;
(* _69 = r0_58 w* r0_58; *)
umulj v69 r058 r058;
(* _72 = d4_67 w* r1_59; *)
umulj v72 d467 r159;
(* _76 = d2_65 w* r3_61; *)
umulj v76 d265 r361;
(* _231 = _72 + _76; *)
uadd v231 v72 v76;
(* s0_77 = _69 + _231; *)
uadd s077 v69 v231;
(* _79 = r1_59 w* d0_63; *)
umulj v79 r159 d063;
(* _81 = d4_67 w* r2_60; *)
umulj v81 d467 r260;
(* _82 = _79 + _81; *)
uadd v82 v79 v81;
(* _83 = r3_61 * 19; *)
umul v83 r361 0x13@uint64;
(* _85 = r3_61 w* _83; *)
umulj v85 r361 v83;
(* s1_86 = _82 + _85; *)
uadd s186 v82 v85;
(* _87 = d0_63 w* r2_60; *)
umulj v87 d063 r260;
(* _88 = r1_59 w* r1_59; *)
umulj v88 r159 r159;
(* _90 = d4_67 w* r3_61; *)
umulj v90 d467 r361;
(* _235 = _87 + _90; *)
uadd v235 v87 v90;
(* s2_91 = _88 + _235; *)
uadd s291 v88 v235;
(* _92 = r3_61 w* d0_63; *)
umulj v92 r361 d063;
(* _94 = r2_60 w* d1_64; *)
umulj v94 r260 d164;
(* _95 = _92 + _94; *)
uadd v95 v92 v94;
(* _98 = r4_62 w* d419_66; *)
umulj v98 r462 d41966;
(* s3_99 = _95 + _98; *)
uadd s399 v95 v98;
(* _100 = d0_63 w* r4_62; *)
umulj v100 d063 r462;
(* _101 = r3_61 w* d1_64; *)
umulj v101 r361 d164;
(* _102 = _100 + _101; *)
uadd v102 v100 v101;
(* _103 = r2_60 w* r2_60; *)
umulj v103 r260 r260;
(* s4_104 = _102 + _103; *)
uadd s4104 v102 v103;
(* _35 = (long unsigned int) s0_77; *)
cast v35@uint64 s077@uint128;
(* r0_36 = _35 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r036 v35 0x7ffffffffffff@uint64;
(* c_37 = s0_77 >> 51; *)
usplit c37 tmp_to_use s077 51;
(* _38 = (__int128 unsigned) r0_36; *)
vpc v38@uint128 r036@uint64;
(* _39 = c_37 + s1_86; *)
uadd v39 c37 s186;
(* _41 = (long unsigned int) _39; *)
cast v41@uint64 v39@uint128;
(* r0_42 = _41 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r042 v41 0x7ffffffffffff@uint64;
(* c_43 = _39 >> 51; *)
usplit c43 tmp_to_use v39 51;
(* _45 = c_43 + s2_91; *)
uadd v45 c43 s291;
(* _47 = (long unsigned int) _45; *)
cast v47@uint64 v45@uint128;
(* r0_48 = _47 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r048 v47 0x7ffffffffffff@uint64;
(* c_49 = _45 >> 51; *)
usplit c49 tmp_to_use v45 51;
(* _51 = c_49 + s3_99; *)
uadd v51 c49 s399;
(* _53 = (long unsigned int) _51; *)
cast v53@uint64 v51@uint128;
(* r0_54 = _53 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r054 v53 0x7ffffffffffff@uint64;
(* c_55 = _51 >> 51; *)
usplit c55 tmp_to_use v51 51;
(* _57 = c_55 + s4_104; *)
uadd v57 c55 s4104;
(* b4__17 = _57 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_17 v57 0x7ffffffffffff@uint128;
(* _18 = _57 >> 51; *)
usplit v18 tmp_to_use v57 51;
(* _19 = _18 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v19 v18 0xffffffffffffffff@uint128;
(* _20 = _19 * 19; *)
umul v20 v19 0x13@uint128;
(* b0__21 = _20 + _38; *)
uadd b0_21 v20 v38;
(* _22 = (long unsigned int) b0__21; *)
cast v22@uint64 b0_21@uint128;
(* MEM[(uint64_t * )output_6(D) + 16B] = r0_48; *)
mov output6_16 r048;
(* MEM[(uint64_t * )output_6(D) + 24B] = r0_54; *)
mov output6_24 r054;
(* _29 = (long unsigned int) b4__17; *)
cast v29@uint64 b4_17@uint128;
(* MEM[(uint64_t * )output_6(D) + 32B] = _29; *)
mov output6_32 v29;
(* i0__30 = _22 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_30 v22 0x7ffffffffffff@uint64;
(* _31 = _22 >> 51; *)
usplit v31 tmp_to_use v22 51;
(* i1__32 = _31 + r0_42; *)
uadd i1_32 v31 r042;
(* *output_6(D) = i0__30; *)
mov output6_0 i0_30;
(* MEM[(uint64_t * )output_6(D) + 8B] = i1__32; *)
mov output6_8 i1_32;
(* if (count1_8(D) > 1) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 5> *)

(* BB's index is 3 *)

(* i_239 = PHI <1(2), i_14(3)> *)
(* output__lsm.170_73 = PHI <i0__30(2), i0__120(3)> *)
(* output__lsm.171_89 = PHI <i1__32(2), i1__122(3)> *)
(* output__lsm.172_163 = PHI <r0_48(2), r0_138(3)> *)
(* output__lsm.173_179 = PHI <r0_54(2), r0_144(3)> *)
(* output__lsm.174_11 = PHI <_29(2), _119(3)> *)
(* d0_153 = output__lsm.170_73 * 2; *)
umul d0153 output__lsm17073 0x2@uint64;
(* d1_154 = output__lsm.171_89 * 2; *)
umul d1154 output__lsm17189 0x2@uint64;
(* d2_155 = output__lsm.172_163 * 38; *)
umul d2155 output__lsm172163 0x26@uint64;
(* d419_156 = output__lsm.174_11 * 19; *)
umul d419156 output__lsm17411 0x13@uint64;
(* d4_157 = output__lsm.174_11 * 38; *)
umul d4157 output__lsm17411 0x26@uint64;
(* _159 = output__lsm.170_73 w* output__lsm.170_73; *)
umulj v159 output__lsm17073 output__lsm17073;
(* _162 = d4_157 w* output__lsm.171_89; *)
umulj v162 d4157 output__lsm17189;
(* _166 = d2_155 w* output__lsm.173_179; *)
umulj v166 d2155 output__lsm173179;
(* _13 = _162 + _166; *)
uadd v13 v162 v166;
(* s0_167 = _13 + _159; *)
uadd s0167 v13 v159;
(* _169 = output__lsm.171_89 w* d0_153; *)
umulj v169 output__lsm17189 d0153;
(* _171 = d4_157 w* output__lsm.172_163; *)
umulj v171 d4157 output__lsm172163;
(* _172 = _169 + _171; *)
uadd v172 v169 v171;
(* _173 = output__lsm.173_179 * 19; *)
umul v173 output__lsm173179 0x13@uint64;
(* _175 = output__lsm.173_179 w* _173; *)
umulj v175 output__lsm173179 v173;
(* s1_176 = _172 + _175; *)
uadd s1176 v172 v175;
(* _177 = d0_153 w* output__lsm.172_163; *)
umulj v177 d0153 output__lsm172163;
(* _178 = output__lsm.171_89 w* output__lsm.171_89; *)
umulj v178 output__lsm17189 output__lsm17189;
(* _180 = d4_157 w* output__lsm.173_179; *)
umulj v180 d4157 output__lsm173179;
(* _195 = _177 + _180; *)
uadd v195 v177 v180;
(* s2_181 = _178 + _195; *)
uadd s2181 v178 v195;
(* _182 = output__lsm.173_179 w* d0_153; *)
umulj v182 output__lsm173179 d0153;
(* _184 = output__lsm.172_163 w* d1_154; *)
umulj v184 output__lsm172163 d1154;
(* _185 = _182 + _184; *)
uadd v185 v182 v184;
(* _188 = output__lsm.174_11 w* d419_156; *)
umulj v188 output__lsm17411 d419156;
(* s3_189 = _185 + _188; *)
uadd s3189 v185 v188;
(* _190 = d0_153 w* output__lsm.174_11; *)
umulj v190 d0153 output__lsm17411;
(* _191 = output__lsm.173_179 w* d1_154; *)
umulj v191 output__lsm173179 d1154;
(* _192 = _190 + _191; *)
uadd v192 v190 v191;
(* _193 = output__lsm.172_163 w* output__lsm.172_163; *)
umulj v193 output__lsm172163 output__lsm172163;
(* s4_194 = _192 + _193; *)
uadd s4194 v192 v193;
(* _125 = (long unsigned int) s0_167; *)
cast v125@uint64 s0167@uint128;
(* r0_126 = _125 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0126 v125 0x7ffffffffffff@uint64;
(* c_127 = s0_167 >> 51; *)
usplit c127 tmp_to_use s0167 51;
(* _128 = (__int128 unsigned) r0_126; *)
vpc v128@uint128 r0126@uint64;
(* _129 = c_127 + s1_176; *)
uadd v129 c127 s1176;
(* _131 = (long unsigned int) _129; *)
cast v131@uint64 v129@uint128;
(* r0_132 = _131 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0132 v131 0x7ffffffffffff@uint64;
(* c_133 = _129 >> 51; *)
usplit c133 tmp_to_use v129 51;
(* _135 = c_133 + s2_181; *)
uadd v135 c133 s2181;
(* _137 = (long unsigned int) _135; *)
cast v137@uint64 v135@uint128;
(* r0_138 = _137 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0138 v137 0x7ffffffffffff@uint64;
(* c_139 = _135 >> 51; *)
usplit c139 tmp_to_use v135 51;
(* _141 = c_139 + s3_189; *)
uadd v141 c139 s3189;
(* _143 = (long unsigned int) _141; *)
cast v143@uint64 v141@uint128;
(* r0_144 = _143 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0144 v143 0x7ffffffffffff@uint64;
(* c_145 = _141 >> 51; *)
usplit c145 tmp_to_use v141 51;
(* _147 = c_145 + s4_194; *)
uadd v147 c145 s4194;
(* b4__107 = _147 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_107 v147 0x7ffffffffffff@uint128;
(* _108 = _147 >> 51; *)
usplit v108 tmp_to_use v147 51;
(* _110 = _108 * 19; *)
umul v110 v108 0x13@uint128;
(* b0__111 = _110 + _128; *)
uadd b0_111 v110 v128;
(* _112 = (long unsigned int) b0__111; *)
cast v112@uint64 b0_111@uint128;
(* _119 = (long unsigned int) b4__107; *)
cast v119@uint64 b4_107@uint128;
(* i0__120 = _112 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_120 v112 0x7ffffffffffff@uint64;
(* _121 = _112 >> 51; *)
usplit v121 tmp_to_use v112 51;
(* i1__122 = _121 + r0_132; *)
uadd i1_122 v121 r0132;
(* i_14 = i_239 + 1; *)
uadd i14 i239 0x1@uint32;
(* if (count1_8(D) != i_14) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 4 *)

(* _381 = {r0_138, r0_144}; *)
mov v381_0 r0138;
mov v381_1 r0144;
(* _379 = {i0__120, i1__122}; *)
mov v379_0 i0_120;
mov v379_1 i1_122;
(* MEM[(uint64_t * )output_6(D)] = _379; *)
mov output6_0 v379_0;
mov output6_8 v379_8;
(* MEM[(uint64_t * )output_6(D) + 16B] = _381; *)
mov output6_16 v381_0;
mov output6_24 v381_8;
(* MEM[(uint64_t * )output_6(D) + 32B] = _119; *)
mov output6_32 v119;
(* goto <bb 5> *)
(* TODO: unconditional jump *)

(* BB's index is 5 *)

(* .MEM_247 = PHI <.MEM_207(4), .MEM_212(2)> *)
(* return; *)


(* Start with unused lhs *)
mov _ i14@uint32;
mov _ output6_0@uint64;
mov _ output6_8@uint64;
mov _ output6_16@uint64;
mov _ output6_24@uint64;
mov _ output6_32@uint64;
mov _ v379_1;
mov _ v381_1;
(* End with unsed lhs *)


{
  true
  &&
  true
}

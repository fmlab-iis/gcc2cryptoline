proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov output6_0@uint64 _;
mov output6_8@uint64 _;
mov output6_16@uint64 _;
mov output6_24@uint64 _;
mov output6_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* r0_56 = *output_6(D); *)
mov r056 output6_0;
(* r1_57 = MEM[(uint64_t * )output_6(D) + 8B]; *)
mov r157 output6_8;
(* r2_58 = MEM[(uint64_t * )output_6(D) + 16B]; *)
mov r258 output6_16;
(* r3_59 = MEM[(uint64_t * )output_6(D) + 24B]; *)
mov r359 output6_24;
(* r4_60 = MEM[(uint64_t * )output_6(D) + 32B]; *)
mov r460 output6_32;
(* d0_61 = r0_56 * 2; *)
umul d061 r056 0x2@uint64;
(* d1_62 = r1_57 * 2; *)
umul d162 r157 0x2@uint64;
(* d2_63 = r2_58 * 38; *)
umul d263 r258 0x26@uint64;
(* d419_64 = r4_60 * 19; *)
umul d41964 r460 0x13@uint64;
(* d4_65 = r4_60 * 38; *)
umul d465 r460 0x26@uint64;
(* _67 = r0_56 w* r0_56; *)
umulj v67 r056 r056;
(* _70 = d4_65 w* r1_57; *)
umulj v70 d465 r157;
(* _74 = d2_63 w* r3_59; *)
umulj v74 d263 r359;
(* _104 = _70 + _74; *)
uadd v104 v70 v74;
(* s0_75 = _67 + _104; *)
uadd s075 v67 v104;
(* _77 = r1_57 w* d0_61; *)
umulj v77 r157 d061;
(* _79 = d4_65 w* r2_58; *)
umulj v79 d465 r258;
(* _80 = _77 + _79; *)
uadd v80 v77 v79;
(* _81 = r3_59 * 19; *)
umul v81 r359 0x13@uint64;
(* _83 = r3_59 w* _81; *)
umulj v83 r359 v81;
(* s1_84 = _80 + _83; *)
uadd s184 v80 v83;
(* _85 = d0_61 w* r2_58; *)
umulj v85 d061 r258;
(* _86 = r1_57 w* r1_57; *)
umulj v86 r157 r157;
(* _88 = d4_65 w* r3_59; *)
umulj v88 d465 r359;
(* _103 = _85 + _88; *)
uadd v103 v85 v88;
(* s2_89 = _86 + _103; *)
uadd s289 v86 v103;
(* _90 = r3_59 w* d0_61; *)
umulj v90 r359 d061;
(* _92 = r2_58 w* d1_62; *)
umulj v92 r258 d162;
(* _93 = _90 + _92; *)
uadd v93 v90 v92;
(* _96 = r4_60 w* d419_64; *)
umulj v96 r460 d41964;
(* s3_97 = _93 + _96; *)
uadd s397 v93 v96;
(* _98 = d0_61 w* r4_60; *)
umulj v98 d061 r460;
(* _99 = r3_59 w* d1_62; *)
umulj v99 r359 d162;
(* _100 = _98 + _99; *)
uadd v100 v98 v99;
(* _101 = r2_58 w* r2_58; *)
umulj v101 r258 r258;
(* s4_102 = _100 + _101; *)
uadd s4102 v100 v101;
(* _33 = (long unsigned int) s0_75; *)
cast v33@uint64 s075@uint128;
(* r0_34 = _33 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r034 v33 0x7ffffffffffff@uint64;
(* c_35 = s0_75 >> 51; *)
usplit c35 tmp_to_use s075 51;
(* _36 = (__int128 unsigned) r0_34; *)
vpc v36@uint128 r034@uint64;
(* _37 = c_35 + s1_84; *)
uadd v37 c35 s184;
(* _39 = (long unsigned int) _37; *)
cast v39@uint64 v37@uint128;
(* r0_40 = _39 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r040 v39 0x7ffffffffffff@uint64;
(* c_41 = _37 >> 51; *)
usplit c41 tmp_to_use v37 51;
(* _42 = (__int128 unsigned) r0_40; *)
vpc v42@uint128 r040@uint64;
(* MEM[(FStar_UInt128_t * )tmp_5(D) + 16B] = _42; *)
mov tmp5_16 v42;
(* _43 = c_41 + s2_89; *)
uadd v43 c41 s289;
(* _45 = (long unsigned int) _43; *)
cast v45@uint64 v43@uint128;
(* r0_46 = _45 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r046 v45 0x7ffffffffffff@uint64;
(* c_47 = _43 >> 51; *)
usplit c47 tmp_to_use v43 51;
(* _48 = (__int128 unsigned) r0_46; *)
vpc v48@uint128 r046@uint64;
(* MEM[(FStar_UInt128_t * )tmp_5(D) + 32B] = _48; *)
mov tmp5_32 v48;
(* _49 = c_47 + s3_97; *)
uadd v49 c47 s397;
(* _51 = (long unsigned int) _49; *)
cast v51@uint64 v49@uint128;
(* r0_52 = _51 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r052 v51 0x7ffffffffffff@uint64;
(* c_53 = _49 >> 51; *)
usplit c53 tmp_to_use v49 51;
(* _54 = (__int128 unsigned) r0_52; *)
vpc v54@uint128 r052@uint64;
(* MEM[(FStar_UInt128_t * )tmp_5(D) + 48B] = _54; *)
mov tmp5_48 v54;
(* _55 = c_53 + s4_102; *)
uadd v55 c53 s4102;
(* b4__11 = _55 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_11 v55 0x7ffffffffffff@uint128;
(* _1 = _55 >> 51; *)
usplit v1 tmp_to_use v55 51;
(* _15 = _1 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v15 v1 0xffffffffffffffff@uint128;
(* _2 = _15 * 19; *)
umul v2 v15 0x13@uint128;
(* b0__12 = _2 + _36; *)
uadd b0_12 v2 v36;
(* MEM[(FStar_UInt128_t * )tmp_5(D) + 64B] = b4__11; *)
mov tmp5_64 b4_11;
(* *tmp_5(D) = b0__12; *)
mov tmp5_0 b0_12;
(* _20 = (long unsigned int) b0__12; *)
cast v20@uint64 b0_12@uint128;
(* MEM[(uint64_t * )output_6(D) + 16B] = r0_46; *)
mov output6_16 r046;
(* MEM[(uint64_t * )output_6(D) + 24B] = r0_52; *)
mov output6_24 r052;
(* _27 = (long unsigned int) b4__11; *)
cast v27@uint64 b4_11@uint128;
(* MEM[(uint64_t * )output_6(D) + 32B] = _27; *)
mov output6_32 v27;
(* i0__16 = _20 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_16 v20 0x7ffffffffffff@uint64;
(* _3 = _20 >> 51; *)
usplit v3 tmp_to_use v20 51;
(* i1__17 = _3 + r0_40; *)
uadd i1_17 v3 r040;
(* *output_6(D) = i0__16; *)
mov output6_0 i0_16;
(* MEM[(uint64_t * )output_6(D) + 8B] = i1__17; *)
mov output6_8 i1_17;
(* return; *)


(* Start with unused lhs *)
mov _ output6_0@uint64;
mov _ output6_8@uint64;
mov _ output6_16@uint64;
mov _ output6_24@uint64;
mov _ output6_32@uint64;
mov _ tmp5_0@uint128;
mov _ tmp5_16@uint128;
mov _ tmp5_32@uint128;
mov _ tmp5_48@uint128;
mov _ tmp5_64@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

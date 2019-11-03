proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov b20_0@uint64 _;
mov b20_8@uint64 _;
mov b20_16@uint64 _;
mov b20_24@uint64 _;
mov b20_32@uint64 _;
mov s22@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* xi_21 = *b_20(D); *)
mov xi21 b20_0;
(* _3 = xi_21 w* s_22(D); *)
umulj v3 xi21 s22;
(* xi_24 = MEM[(uint64_t * )b_20(D) + 8B]; *)
mov xi24 b20_8;
(* _5 = s_22(D) w* xi_24; *)
umulj v5 s22 xi24;
(* xi_26 = MEM[(uint64_t * )b_20(D) + 16B]; *)
mov xi26 b20_16;
(* _7 = s_22(D) w* xi_26; *)
umulj v7 s22 xi26;
(* xi_28 = MEM[(uint64_t * )b_20(D) + 24B]; *)
mov xi28 b20_24;
(* _9 = s_22(D) w* xi_28; *)
umulj v9 s22 xi28;
(* xi_30 = MEM[(uint64_t * )b_20(D) + 32B]; *)
mov xi30 b20_32;
(* _11 = s_22(D) w* xi_30; *)
umulj v11 s22 xi30;
(* _54 = (long unsigned int) _3; *)
cast v54@uint64 v3@uint128;
(* r0_55 = _54 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r055 v54 0x7ffffffffffff@uint64;
(* c_56 = _3 >> 51; *)
usplit c56 tmp_to_use v3 51;
(* _57 = (__int128 unsigned) r0_55; *)
vpc v57@uint128 r055@uint64;
(* _58 = _5 + c_56; *)
uadd v58 v5 c56;
(* _60 = (long unsigned int) _58; *)
cast v60@uint64 v58@uint128;
(* r0_61 = _60 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r061 v60 0x7ffffffffffff@uint64;
(* c_62 = _58 >> 51; *)
usplit c62 tmp_to_use v58 51;
(* _64 = _7 + c_62; *)
uadd v64 v7 c62;
(* _66 = (long unsigned int) _64; *)
cast v66@uint64 v64@uint128;
(* r0_67 = _66 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r067 v66 0x7ffffffffffff@uint64;
(* c_68 = _64 >> 51; *)
usplit c68 tmp_to_use v64 51;
(* _70 = _9 + c_68; *)
uadd v70 v9 c68;
(* _72 = (long unsigned int) _70; *)
cast v72@uint64 v70@uint128;
(* r0_73 = _72 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r073 v72 0x7ffffffffffff@uint64;
(* c_74 = _70 >> 51; *)
usplit c74 tmp_to_use v70 51;
(* _76 = _11 + c_74; *)
uadd v76 v11 c74;
(* b4__35 = _76 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_35 v76 0x7ffffffffffff@uint128;
(* _12 = _76 >> 51; *)
usplit v12 tmp_to_use v76 51;
(* _16 = _12 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v16 v12 0xffffffffffffffff@uint128;
(* _13 = _16 * 19; *)
umul v13 v16 0x13@uint128;
(* b0__36 = _13 + _57; *)
uadd b0_36 v13 v57;
(* _39 = (long unsigned int) b0__36; *)
cast v39@uint64 b0_36@uint128;
(* *output_37(D) = _39; *)
mov output37_0 v39;
(* MEM[(uint64_t * )output_37(D) + 8B] = r0_61; *)
mov output37_8 r061;
(* MEM[(uint64_t * )output_37(D) + 16B] = r0_67; *)
mov output37_16 r067;
(* MEM[(uint64_t * )output_37(D) + 24B] = r0_73; *)
mov output37_24 r073;
(* _46 = (long unsigned int) b4__35; *)
cast v46@uint64 b4_35@uint128;
(* MEM[(uint64_t * )output_37(D) + 32B] = _46; *)
mov output37_32 v46;
(* return; *)


(* Start with unused lhs *)
mov _ output37_0@uint64;
mov _ output37_8@uint64;
mov _ output37_16@uint64;
mov _ output37_24@uint64;
mov _ output37_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

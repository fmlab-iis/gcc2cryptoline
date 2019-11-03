proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* __builtin_memcpy (&tmp, a_3(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* t[0] = 0; *)
mov t_0 0x0@uint128;
(* t[1] = 0; *)
mov t_16 0x0@uint128;
(* t[2] = 0; *)
mov t_32 0x0@uint128;
(* t[3] = 0; *)
mov t_48 0x0@uint128;
(* t[4] = 0; *)
mov t_64 0x0@uint128;
(* Hacl_Bignum_Fmul_mul_shift_reduce_ (&t, &tmp, b_4(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* tctr_26 = MEM[(FStar_UInt128_t * )&t]; *)
mov tctr26 t_0;
(* tctrp1_27 = MEM[(FStar_UInt128_t * )&t + 16B]; *)
mov tctrp127 t_16;
(* _28 = (long unsigned int) tctr_26; *)
cast v28@uint64 tctr26@uint128;
(* r0_29 = _28 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r029 v28 0x7ffffffffffff@uint64;
(* c_30 = tctr_26 >> 51; *)
usplit c30 tmp_to_use tctr26 51;
(* _31 = (__int128 unsigned) r0_29; *)
vpc v31@uint128 r029@uint64;
(* _32 = tctrp1_27 + c_30; *)
uadd v32 tctrp127 c30;
(* tctrp1_33 = MEM[(FStar_UInt128_t * )&t + 32B]; *)
mov tctrp133 t_32;
(* _34 = (long unsigned int) _32; *)
cast v34@uint64 v32@uint128;
(* r0_35 = _34 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r035 v34 0x7ffffffffffff@uint64;
(* c_36 = _32 >> 51; *)
usplit c36 tmp_to_use v32 51;
(* _38 = tctrp1_33 + c_36; *)
uadd v38 tctrp133 c36;
(* tctrp1_39 = MEM[(FStar_UInt128_t * )&t + 48B]; *)
mov tctrp139 t_48;
(* _40 = (long unsigned int) _38; *)
cast v40@uint64 v38@uint128;
(* r0_41 = _40 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r041 v40 0x7ffffffffffff@uint64;
(* c_42 = _38 >> 51; *)
usplit c42 tmp_to_use v38 51;
(* _44 = tctrp1_39 + c_42; *)
uadd v44 tctrp139 c42;
(* tctrp1_45 = MEM[(FStar_UInt128_t * )&t + 64B]; *)
mov tctrp145 t_64;
(* _46 = (long unsigned int) _44; *)
cast v46@uint64 v44@uint128;
(* r0_47 = _46 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r047 v46 0x7ffffffffffff@uint64;
(* c_48 = _44 >> 51; *)
usplit c48 tmp_to_use v44 51;
(* _50 = tctrp1_45 + c_48; *)
uadd v50 tctrp145 c48;
(* b4__10 = _50 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_10 v50 0x7ffffffffffff@uint128;
(* _11 = _50 >> 51; *)
usplit v11 tmp_to_use v50 51;
(* _12 = _11 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v12 v11 0xffffffffffffffff@uint128;
(* _13 = _12 * 19; *)
umul v13 v12 0x13@uint128;
(* b0__14 = _13 + _31; *)
uadd b0_14 v13 v31;
(* _15 = (long unsigned int) b0__14; *)
cast v15@uint64 b0_14@uint128;
(* MEM[(uint64_t * )output_2(D) + 16B] = r0_41; *)
mov output2_16 r041;
(* MEM[(uint64_t * )output_2(D) + 24B] = r0_47; *)
mov output2_24 r047;
(* _22 = (long unsigned int) b4__10; *)
cast v22@uint64 b4_10@uint128;
(* MEM[(uint64_t * )output_2(D) + 32B] = _22; *)
mov output2_32 v22;
(* i0__23 = _15 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_23 v15 0x7ffffffffffff@uint64;
(* _24 = _15 >> 51; *)
usplit v24 tmp_to_use v15 51;
(* i1__25 = _24 + r0_35; *)
uadd i1_25 v24 r035;
(* *output_2(D) = i0__23; *)
mov output2_0 i0_23;
(* MEM[(uint64_t * )output_2(D) + 8B] = i1__25; *)
mov output2_8 i1_25;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ output2_0@uint64;
mov _ output2_8@uint64;
mov _ output2_16@uint64;
mov _ output2_24@uint64;
mov _ output2_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

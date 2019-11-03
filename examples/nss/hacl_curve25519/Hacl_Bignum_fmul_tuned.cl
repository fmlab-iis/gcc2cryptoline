proc Hacl_Bignum_Fmul_mul_shift_reduce_ (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4;uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4) = 
{
  true
  &&
  and [
    a0 <u (2**53)@64,
    a1 <u (2**53)@64,
    a2 <u (2**53)@64,
    a3 <u (2**53)@64,
    a4 <u (2**53)@64,
    b0 <u (2**53)@64,
    b1 <u (2**53)@64,
    b2 <u (2**53)@64,
    b3 <u (2**53)@64,
    b4 <u (2**53)@64
  ]
}



(* Start with undefined rhs *)
mov input212_0@uint64 a0;
mov input212_8@uint64 a1;
mov input212_16@uint64 a2;
mov input212_24@uint64 a3;
mov input212_32@uint64 a4;
mov input5_0@uint64 b0;
mov input5_8@uint64 b1;
mov input5_16@uint64 b2;
mov input5_24@uint64 b3;
mov input5_32@uint64 b4;
mov output4_0@uint128 0@uint128;
mov output4_16@uint128 0@uint128;
mov output4_32@uint128 0@uint128;
mov output4_48@uint128 0@uint128;
mov output4_64@uint128 0@uint128;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* input2i_3 = *input21_2(D); *)
mov input2i3 input212_0;
(* xi_62 = *output_4(D); *)
mov xi62 output4_0;
(* yi_63 = *input_5(D); *)
mov yi63 input5_0;
(* _66 = yi_63 w* input2i_3; *)
umulj v66 yi63 input2i3;
(* xi_68 = MEM[(FStar_UInt128_t * )output_4(D) + 16B]; *)
mov xi68 output4_16;
(* yi_69 = MEM[(uint64_t * )input_5(D) + 8B]; *)
mov yi69 input5_8;
(* _71 = input2i_3 w* yi_69; *)
umulj v71 input2i3 yi69;
(* xi_73 = MEM[(FStar_UInt128_t * )output_4(D) + 32B]; *)
mov xi73 output4_32;
(* yi_74 = MEM[(uint64_t * )input_5(D) + 16B]; *)
mov yi74 input5_16;
(* _76 = input2i_3 w* yi_74; *)
umulj v76 input2i3 yi74;
(* xi_78 = MEM[(FStar_UInt128_t * )output_4(D) + 48B]; *)
mov xi78 output4_48;
(* yi_79 = MEM[(uint64_t * )input_5(D) + 24B]; *)
mov yi79 input5_24;
(* _81 = input2i_3 w* yi_79; *)
umulj v81 input2i3 yi79;
(* xi_83 = MEM[(FStar_UInt128_t * )output_4(D) + 64B]; *)
mov xi83 output4_64;
(* yi_84 = MEM[(uint64_t * )input_5(D) + 32B]; *)
mov yi84 input5_32;
(* _86 = input2i_3 w* yi_84; *)
umulj v86 input2i3 yi84;
(* MEM[(uint64_t * )input_5(D) + 32B] = yi_79; *)
mov input5_32 yi79;
(* MEM[(uint64_t * )input_5(D) + 24B] = yi_74; *)
mov input5_24 yi74;
(* MEM[(uint64_t * )input_5(D) + 16B] = yi_69; *)
mov input5_16 yi69;
(* MEM[(uint64_t * )input_5(D) + 8B] = yi_63; *)
mov input5_8 yi63;
(* _61 = yi_84 * 19; *)
umul v61 yi84 0x13@uint64;
(* *input_5(D) = _61; *)
mov input5_0 v61;
(* input2i_6 = MEM[(uint64_t * )input21_2(D) + 8B]; *)
mov input2i6 input212_8;
(* _51 = _61 w* input2i_6; *)
umulj v51 v61 input2i6;
(* _117 = _51 + _66; *)
uadd v117 v51 v66;
(* _52 = xi_62 + _117; *)
uadd v52 xi62 v117;
(* _53 = input2i_6 w* yi_63; *)
umulj v53 input2i6 yi63;
(* _116 = _53 + _71; *)
uadd v116 v53 v71;
(* _54 = xi_68 + _116; *)
uadd v54 xi68 v116;
(* _55 = input2i_6 w* yi_69; *)
umulj v55 input2i6 yi69;
(* _113 = _55 + _76; *)
uadd v113 v55 v76;
(* _56 = xi_73 + _113; *)
uadd v56 xi73 v113;
(* _57 = input2i_6 w* yi_74; *)
umulj v57 input2i6 yi74;
(* _114 = _57 + _81; *)
uadd v114 v57 v81;
(* _58 = xi_78 + _114; *)
uadd v58 xi78 v114;
(* _59 = input2i_6 w* yi_79; *)
umulj v59 input2i6 yi79;
(* _115 = _59 + _86; *)
uadd v115 v59 v86;
(* _60 = xi_83 + _115; *)
uadd v60 xi83 v115;
(* MEM[(uint64_t * )input_5(D) + 32B] = yi_74; *)
mov input5_32 yi74;
(* MEM[(uint64_t * )input_5(D) + 24B] = yi_69; *)
mov input5_24 yi69;
(* MEM[(uint64_t * )input_5(D) + 16B] = yi_63; *)
mov input5_16 yi63;
(* MEM[(uint64_t * )input_5(D) + 8B] = _61; *)
mov input5_8 v61;
(* _48 = yi_79 * 19; *)
umul v48 yi79 0x13@uint64;
(* *input_5(D) = _48; *)
mov input5_0 v48;
(* input2i_7 = MEM[(uint64_t * )input21_2(D) + 16B]; *)
mov input2i7 input212_16;
(* _38 = _48 w* input2i_7; *)
umulj v38 v48 input2i7;
(* _39 = _38 + _52; *)
uadd v39 v38 v52;
(* _40 = input2i_7 w* _61; *)
umulj v40 input2i7 v61;
(* _41 = _40 + _54; *)
uadd v41 v40 v54;
(* _42 = input2i_7 w* yi_63; *)
umulj v42 input2i7 yi63;
(* _43 = _42 + _56; *)
uadd v43 v42 v56;
(* _44 = input2i_7 w* yi_69; *)
umulj v44 input2i7 yi69;
(* _45 = _44 + _58; *)
uadd v45 v44 v58;
(* _46 = input2i_7 w* yi_74; *)
umulj v46 input2i7 yi74;
(* _47 = _46 + _60; *)
uadd v47 v46 v60;
(* MEM[(uint64_t * )input_5(D) + 32B] = yi_69; *)
mov input5_32 yi69;
(* MEM[(uint64_t * )input_5(D) + 24B] = yi_63; *)
mov input5_24 yi63;
(* MEM[(uint64_t * )input_5(D) + 16B] = _61; *)
mov input5_16 v61;
(* MEM[(uint64_t * )input_5(D) + 8B] = _48; *)
mov input5_8 v48;
(* _35 = yi_74 * 19; *)
umul v35 yi74 0x13@uint64;
(* *input_5(D) = _35; *)
mov input5_0 v35;
(* input2i_8 = MEM[(uint64_t * )input21_2(D) + 24B]; *)
mov input2i8 input212_24;
(* _25 = _35 w* input2i_8; *)
umulj v25 v35 input2i8;
(* _26 = _25 + _39; *)
uadd v26 v25 v39;
(* _27 = input2i_8 w* _48; *)
umulj v27 input2i8 v48;
(* _28 = _27 + _41; *)
uadd v28 v27 v41;
(* _29 = input2i_8 w* _61; *)
umulj v29 input2i8 v61;
(* _30 = _29 + _43; *)
uadd v30 v29 v43;
(* _31 = input2i_8 w* yi_63; *)
umulj v31 input2i8 yi63;
(* _32 = _31 + _45; *)
uadd v32 v31 v45;
(* _33 = input2i_8 w* yi_69; *)
umulj v33 input2i8 yi69;
(* _34 = _33 + _47; *)
uadd v34 v33 v47;
(* MEM[(uint64_t * )input_5(D) + 32B] = yi_63; *)
mov input5_32 yi63;
(* MEM[(uint64_t * )input_5(D) + 24B] = _61; *)
mov input5_24 v61;
(* MEM[(uint64_t * )input_5(D) + 16B] = _48; *)
mov input5_16 v48;
(* MEM[(uint64_t * )input_5(D) + 8B] = _35; *)
mov input5_8 v35;
(* _22 = yi_69 * 19; *)
umul v22 yi69 0x13@uint64;
(* *input_5(D) = _22; *)
mov input5_0 v22;
(* input2i_9 = MEM[(uint64_t * )input21_2(D) + 32B]; *)
mov input2i9 input212_32;
(* _12 = _22 w* input2i_9; *)
umulj v12 v22 input2i9;
(* _13 = _12 + _26; *)
uadd v13 v12 v26;
(* *output_4(D) = _13; *)
mov output4_0 v13;
(* _14 = input2i_9 w* _35; *)
umulj v14 input2i9 v35;
(* _15 = _14 + _28; *)
uadd v15 v14 v28;
(* MEM[(FStar_UInt128_t * )output_4(D) + 16B] = _15; *)
mov output4_16 v15;
(* _16 = input2i_9 w* _48; *)
umulj v16 input2i9 v48;
(* _17 = _16 + _30; *)
uadd v17 v16 v30;
(* MEM[(FStar_UInt128_t * )output_4(D) + 32B] = _17; *)
mov output4_32 v17;
(* _18 = input2i_9 w* _61; *)
umulj v18 input2i9 v61;
(* _19 = _18 + _32; *)
uadd v19 v18 v32;
(* MEM[(FStar_UInt128_t * )output_4(D) + 48B] = _19; *)
mov output4_48 v19;
(* _20 = input2i_9 w* yi_63; *)
umulj v20 input2i9 yi63;
(* _21 = _20 + _34; *)
uadd v21 v20 v34;
(* MEM[(FStar_UInt128_t * )output_4(D) + 64B] = _21; *)
mov output4_64 v21;
(* return; *)


(* Start with unused lhs *)
mov _ input5_0@uint64;
mov _ input5_8@uint64;
mov _ input5_16@uint64;
mov _ input5_24@uint64;
mov _ input5_32@uint64;
mov c0 output4_0@uint128;
mov c1 output4_16@uint128;
mov c2 output4_32@uint128;
mov c3 output4_48@uint128;
mov c4 output4_64@uint128;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      *
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
   true
}

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) = 
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64,
    b0 <u (2**51+2**15)@64,
    b1 <u (2**51+2**15)@64,
    b2 <u (2**51+2**15)@64,
    b3 <u (2**51+2**15)@64,
    b4 <u (2**51+2**15)@64
  ]
}

(* Start with undefined rhs *)
mov a3_0 a0;
mov a3_8 a1;
mov a3_16 a2;
mov a3_24 a3;
mov a3_32 a4;
mov b4_0 b0;
mov b4_8 b1;
mov b4_16 b2;
mov b4_24 b3;
mov b4_32 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* __builtin_memcpy (&tmp, a_3(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
mov tmp_0 a3_0;
mov tmp_8 a3_8;
mov tmp_16 a3_16;
mov tmp_24 a3_24;
mov tmp_32 a3_32;
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
call Hacl_Bignum_Fmul_mul_shift_reduce_(tmp_0, tmp_8, tmp_16, tmp_24, tmp_32, b4_0, b4_8, b4_16, b4_24, b4_32, t_0, t_16, t_32, t_48, t_64);
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

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r029;
assume tmp_to_use_p = r029 && true;

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

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r035;
assume tmp_to_use_p = r035 && true;

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

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r041;
assume tmp_to_use_p = r041 && true;

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

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r047;
assume tmp_to_use_p = r047 && true;

(* _50 = tctrp1_45 + c_48; *)
uadd v50 tctrp145 c48;
(* b4__10 = _50 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_10 v50 0x7ffffffffffff@uint128;
(* _11 = _50 >> 51; *)
usplit v11 tmp_to_use v50 51;

assert true && tmp_to_use = b4_10;
assume tmp_to_use = b4_10 && true;

(* _12 = _11 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v12 v11 0xffffffffffffffff@uint128;

assert true && v12 = v11;
assume v12 = v11 && true;

(* _13 = _12 * 19; *)
umul v13 v12 0x13@uint128;
(* b0__14 = _13 + _31; *)
uadd b0_14 v13 v31;
(* _15 = (long unsigned int) b0__14; *)
vpc v15@uint64 b0_14@uint128;
(* MEM[(uint64_t * )output_2(D) + 16B] = r0_41; *)
mov output2_16 r041;
(* MEM[(uint64_t * )output_2(D) + 24B] = r0_47; *)
mov output2_24 r047;
(* _22 = (long unsigned int) b4__10; *)
vpc v22@uint64 b4_10@uint128;
(* MEM[(uint64_t * )output_2(D) + 32B] = _22; *)
mov output2_32 v22;
(* i0__23 = _15 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_23 v15 0x7ffffffffffff@uint64;
(* _24 = _15 >> 51; *)
usplit v24 tmp_to_use v15 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_23;
assume tmp_to_use_p = i0_23 && true;

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
mov c0 output2_0@uint64;
mov c1 output2_8@uint64;
mov c2 output2_16@uint64;
mov c3 output2_24@uint64;
mov c4 output2_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      *
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**51+2**15)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}

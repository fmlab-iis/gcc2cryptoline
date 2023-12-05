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

proc main (uint64 X0, uint64 X1, uint64 X2, uint64 X3, uint64 X4, uint64 Z0, uint64 Z1, uint64 Z2, uint64 Z3, uint64 Z4, uint64 XP0, uint64 XP1, uint64 XP2, uint64 XP3, uint64 XP4, uint64 ZP0, uint64 ZP1, uint64 ZP2, uint64 ZP3, uint64 ZP4, uint64 QMQP0, uint64 QMQP1, uint64 QMQP2, uint64 QMQP3, uint64 QMQP4) = 
{
  true
  &&
  and [
      X0    < (2**51)@64,
      X1    < (2**51)@64,
      X2    < (2**51)@64,
      X3    < (2**51)@64,
      X4    < (2**51)@64,

      Z0    < (2**51)@64,
      Z1    < (2**51)@64,
      Z2    < (2**51)@64,
      Z3    < (2**51)@64,
      Z4    < (2**51)@64,

      XP0    < (2**51)@64,
      XP1    < (2**51)@64,
      XP2    < (2**51)@64,
      XP3    < (2**51)@64,
      XP4    < (2**51)@64,

      ZP0    < (2**51)@64,
      ZP1    < (2**51)@64,
      ZP2    < (2**51)@64,
      ZP3    < (2**51)@64,
      ZP4    < (2**51)@64,

      QMQP0    < (2**51)@64,
      QMQP1    < (2**51)@64,
      QMQP2    < (2**51)@64,
      QMQP3    < (2**51)@64,
      QMQP4    < (2**51)@64
  ]
}


(* Start with undefined rhs *)
mov p6_0@uint64 X0;
mov p6_8@uint64 X1;
mov p6_16@uint64 X2;
mov p6_24@uint64 X3;
mov p6_32@uint64 X4;
mov p6_40@uint64 Z0;
mov p6_48@uint64 Z1;
mov p6_56@uint64 Z2;
mov p6_64@uint64 Z3;
mov p6_72@uint64 Z4;
mov pq8_0@uint64 XP0;
mov pq8_8@uint64 XP1;
mov pq8_16@uint64 XP2;
mov pq8_24@uint64 XP3;
mov pq8_32@uint64 XP4;
mov pq8_40@uint64 ZP0;
mov pq8_48@uint64 ZP1;
mov pq8_56@uint64 ZP2;
mov pq8_64@uint64 ZP3;
mov pq8_72@uint64 ZP4;
(* End with undefined rhs *)

mov qmqp1_0 QMQP0;
mov qmqp1_8 QMQP1;
mov qmqp1_16 QMQP2;
mov qmqp1_24 QMQP3;
mov qmqp1_32 QMQP4;


(* BB's index is 2 *)

(* z_7 = p_6(D) + 40; *)
(* Note: Pointer addition *)
(* zprime_9 = pq_8(D) + 40; *)
(* Note: Pointer addition *)
(* buf = {}; *)
(* TODO: Skip translation for constructor *)
(* __builtin_memcpy (&buf, p_6(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

mov buf_0 p6_0;
mov buf_8 p6_8;
mov buf_16 p6_16;
mov buf_24 p6_24;
mov buf_32 p6_32;

(* xi_22 = *p_6(D); *)
mov xi22 p6_0;
(* yi_23 = MEM[(uint64_t * )p_6(D) + 40B]; *)
mov yi23 p6_40;
(* _24 = xi_22 + yi_23; *)
uadd v24 xi22 yi23;
(* *p_6(D) = _24; *)
mov p6_0 v24;
(* xi_25 = MEM[(uint64_t * )p_6(D) + 8B]; *)
mov xi25 p6_8;
(* yi_26 = MEM[(uint64_t * )p_6(D) + 48B]; *)
mov yi26 p6_48;
(* _27 = xi_25 + yi_26; *)
uadd v27 xi25 yi26;
(* MEM[(uint64_t * )p_6(D) + 8B] = _27; *)
mov p6_8 v27;
(* xi_28 = MEM[(uint64_t * )p_6(D) + 16B]; *)
mov xi28 p6_16;
(* yi_29 = MEM[(uint64_t * )p_6(D) + 56B]; *)
mov yi29 p6_56;
(* _30 = xi_28 + yi_29; *)
uadd v30 xi28 yi29;
(* MEM[(uint64_t * )p_6(D) + 16B] = _30; *)
mov p6_16 v30;
(* xi_31 = MEM[(uint64_t * )p_6(D) + 24B]; *)
mov xi31 p6_24;
(* yi_32 = MEM[(uint64_t * )p_6(D) + 64B]; *)
mov yi32 p6_64;
(* _33 = xi_31 + yi_32; *)
uadd v33 xi31 yi32;
(* MEM[(uint64_t * )p_6(D) + 24B] = _33; *)
mov p6_24 v33;
(* xi_34 = MEM[(uint64_t * )p_6(D) + 32B]; *)
mov xi34 p6_32;
(* yi_35 = MEM[(uint64_t * )p_6(D) + 72B]; *)
mov yi35 p6_72;
(* _36 = xi_34 + yi_35; *)
uadd v36 xi34 yi35;
(* MEM[(uint64_t * )p_6(D) + 32B] = _36; *)
mov p6_32 v36;
(* _320 = xi_22 + 18014398509481832; *)
uadd v320 xi22 0x3fffffffffff68@uint64;
(* _321 = xi_25 + 18014398509481976; *)
uadd v321 xi25 0x3ffffffffffff8@uint64;
(* _322 = xi_28 + 18014398509481976; *)
uadd v322 xi28 0x3ffffffffffff8@uint64;
(* _323 = xi_31 + 18014398509481976; *)
uadd v323 xi31 0x3ffffffffffff8@uint64;
(* _324 = xi_34 + 18014398509481976; *)
uadd v324 xi34 0x3ffffffffffff8@uint64;
(* _326 = _320 - yi_23; *)
usub v326 v320 yi23;
(* MEM[(uint64_t * )p_6(D) + 40B] = _326; *)
mov p6_40 v326;
(* _328 = _321 - yi_26; *)
usub v328 v321 yi26;
(* MEM[(uint64_t * )p_6(D) + 48B] = _328; *)
mov p6_48 v328;
(* _330 = _322 - yi_29; *)
usub v330 v322 yi29;
(* MEM[(uint64_t * )p_6(D) + 56B] = _330; *)
mov p6_56 v330;
(* _332 = _323 - yi_32; *)
usub v332 v323 yi32;
(* MEM[(uint64_t * )p_6(D) + 64B] = _332; *)
mov p6_64 v332;
(* _334 = _324 - yi_35; *)
usub v334 v324 yi35;
(* MEM[(uint64_t * )p_6(D) + 72B] = _334; *)
mov p6_72 v334;
(* __builtin_memcpy (&MEM[(void * )&buf + 40B], pq_8(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
mov buf_40 pq8_0;
mov buf_48 pq8_8;
mov buf_56 pq8_16;
mov buf_64 pq8_24;
mov buf_64 pq8_32;
(* xi_37 = *pq_8(D); *)
mov xi37 pq8_0;
(* yi_38 = MEM[(uint64_t * )pq_8(D) + 40B]; *)
mov yi38 pq8_40;
(* _39 = xi_37 + yi_38; *)
uadd v39 xi37 yi38;
(* *pq_8(D) = _39; *)
mov pq8_0 v39;
(* xi_40 = MEM[(uint64_t * )pq_8(D) + 8B]; *)
mov xi40 pq8_8;
(* yi_41 = MEM[(uint64_t * )pq_8(D) + 48B]; *)
mov yi41 pq8_48;
(* _42 = xi_40 + yi_41; *)
uadd v42 xi40 yi41;
(* MEM[(uint64_t * )pq_8(D) + 8B] = _42; *)
mov pq8_8 v42;
(* xi_43 = MEM[(uint64_t * )pq_8(D) + 16B]; *)
mov xi43 pq8_16;
(* yi_44 = MEM[(uint64_t * )pq_8(D) + 56B]; *)
mov yi44 pq8_56;
(* _45 = xi_43 + yi_44; *)
uadd v45 xi43 yi44;
(* MEM[(uint64_t * )pq_8(D) + 16B] = _45; *)
mov pq8_16 v45;
(* xi_46 = MEM[(uint64_t * )pq_8(D) + 24B]; *)
mov xi46 pq8_24;
(* yi_47 = MEM[(uint64_t * )pq_8(D) + 64B]; *)
mov yi47 pq8_64;
(* _48 = xi_46 + yi_47; *)
uadd v48 xi46 yi47;
(* MEM[(uint64_t * )pq_8(D) + 24B] = _48; *)
mov pq8_24 v48;
(* xi_49 = MEM[(uint64_t * )pq_8(D) + 32B]; *)
mov xi49 pq8_32;
(* yi_50 = MEM[(uint64_t * )pq_8(D) + 72B]; *)
mov yi50 pq8_72;
(* _51 = xi_49 + yi_50; *)
uadd v51 xi49 yi50;
(* MEM[(uint64_t * )pq_8(D) + 32B] = _51; *)
mov pq8_32 v51;
(* _300 = xi_37 + 18014398509481832; *)
uadd v300 xi37 0x3fffffffffff68@uint64;
(* _301 = xi_40 + 18014398509481976; *)
uadd v301 xi40 0x3ffffffffffff8@uint64;
(* _302 = xi_43 + 18014398509481976; *)
uadd v302 xi43 0x3ffffffffffff8@uint64;
(* _303 = xi_46 + 18014398509481976; *)
uadd v303 xi46 0x3ffffffffffff8@uint64;
(* _304 = xi_49 + 18014398509481976; *)
uadd v304 xi49 0x3ffffffffffff8@uint64;
(* _306 = _300 - yi_38; *)
usub v306 v300 yi38;
(* MEM[(uint64_t * )pq_8(D) + 40B] = _306; *)
mov pq8_40 v306;
(* _308 = _301 - yi_41; *)
usub v308 v301 yi41;
(* MEM[(uint64_t * )pq_8(D) + 48B] = _308; *)
mov pq8_48 v308;
(* _310 = _302 - yi_44; *)
usub v310 v302 yi44;
(* MEM[(uint64_t * )pq_8(D) + 56B] = _310; *)
mov pq8_56 v310;
(* _312 = _303 - yi_47; *)
usub v312 v303 yi47;
(* MEM[(uint64_t * )pq_8(D) + 64B] = _312; *)
mov pq8_64 v312;
(* _314 = _304 - yi_50; *)
usub v314 v304 yi50;
(* MEM[(uint64_t * )pq_8(D) + 72B] = _314; *)
mov pq8_72 v314;
(* MEM[(char * {ref-all})&tmp] = MEM[(char * {ref-all})pq_8(D)]; *)
(* TODO: skipped, no heuristics ,need self translating *)
mov tmp_0 pq8_0;
mov tmp_8 pq8_8;
mov tmp_16 pq8_16;
mov tmp_24 pq8_24;
mov tmp_32 pq8_32;
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
(* Hacl_Bignum_Fmul_mul_shift_reduce_ (&t, &tmp, z_7); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline Hacl_Bignum_Fmul_mul_shift_reduce_(tmp_0, tmp_8 ,tmp_16, tmp_24, tmp_32, p6_40, p6_48, p6_56, p6_64, p6_72, t_0, t_16, t_32, t_48, t_64);
(* tctr_335 = MEM[(FStar_UInt128_t * )&t]; *)
mov tctr335 t_0;
(* tctrp1_336 = MEM[(FStar_UInt128_t * )&t + 16B]; *)
mov tctrp1336 t_16;
(* _337 = (long unsigned int) tctr_335; *)
cast v337@uint64 tctr335@uint128;
(* r0_338 = _337 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0338 v337 0x7ffffffffffff@uint64;
(* c_339 = tctr_335 >> 51; *)
usplit c339 tmp_to_use tctr335 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0338;
assume tmp_to_use_p = r0338 && true;

(* _340 = (__int128 unsigned) r0_338; *)
vpc v340@uint128 r0338@uint64;
(* _341 = tctrp1_336 + c_339; *)
uadd v341 tctrp1336 c339;
(* tctrp1_342 = MEM[(FStar_UInt128_t * )&t + 32B]; *)
mov tctrp1342 t_32;
(* _343 = (long unsigned int) _341; *)
cast v343@uint64 v341@uint128;
(* r0_344 = _343 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0344 v343 0x7ffffffffffff@uint64;
(* c_345 = _341 >> 51; *)
usplit c345 tmp_to_use v341 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0344;
assume tmp_to_use_p = r0344 && true;

(* _347 = tctrp1_342 + c_345; *)
uadd v347 tctrp1342 c345;
(* tctrp1_348 = MEM[(FStar_UInt128_t * )&t + 48B]; *)
mov tctrp1348 t_48;
(* _349 = (long unsigned int) _347; *)
cast v349@uint64 v347@uint128;
(* r0_350 = _349 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0350 v349 0x7ffffffffffff@uint64;
(* c_351 = _347 >> 51; *)
usplit c351 tmp_to_use v347 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0350;
assume tmp_to_use_p = r0350 && true;

(* _353 = tctrp1_348 + c_351; *)
uadd v353 tctrp1348 c351;
(* tctrp1_354 = MEM[(FStar_UInt128_t * )&t + 64B]; *)
mov tctrp1354 t_64;
(* _355 = (long unsigned int) _353; *)
cast v355@uint64 v353@uint128;
(* r0_356 = _355 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0356 v355 0x7ffffffffffff@uint64;
(* c_357 = _353 >> 51; *)
usplit c357 tmp_to_use v353 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0356;
assume tmp_to_use_p = r0356 && true;

(* _359 = tctrp1_354 + c_357; *)
uadd v359 tctrp1354 c357;
(* b4__279 = _359 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_279 v359 0x7ffffffffffff@uint128;
(* _280 = _359 >> 51; *)
usplit v280 tmp_to_use v359 51;

assert true && tmp_to_use = b4_279;
assume tmp_to_use = b4_279 && true;


(* _281 = _280 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v281 v280 0xffffffffffffffff@uint128;

assert true && v281 = v280;
assume v281 = v280 && true;

(* _282 = _281 * 19; *)
umul v282 v281 0x13@uint128;
(* b0__283 = _282 + _340; *)
uadd b0_283 v282 v340;
(* _284 = (long unsigned int) b0__283; *)
vpc v284@uint64 b0_283@uint128;
(* MEM[(uint64_t * )&buf + 216B] = r0_350; *)
mov buf_216 r0350;
(* MEM[(uint64_t * )&buf + 224B] = r0_356; *)
mov buf_224 r0356;
(* _291 = (long unsigned int) b4__279; *)
vpc v291@uint64 b4_279@uint128;
(* MEM[(uint64_t * )&buf + 232B] = _291; *)
mov buf_232 v291;
(* i0__292 = _284 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_292 v284 0x7ffffffffffff@uint64;
(* _293 = _284 >> 51; *)
usplit v293 tmp_to_use v284 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_292;
assume tmp_to_use_p = i0_292 && true;

(* i1__294 = _293 + r0_344; *)
uadd i1_294 v293 r0344;
(* MEM[(uint64_t * )&buf + 200B] = i0__292; *)
mov buf_200 i0_292;
(* MEM[(uint64_t * )&buf + 208B] = i1__294; *)
mov buf_208 i1_294;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* MEM[(char * {ref-all})&tmp] = MEM[(char * {ref-all})p_6(D)]; *)
(* TODO: skipped, no heuristics ,need self translating *)
mov tmp_0 p6_0;
mov tmp_8 p6_8;
mov tmp_16 p6_16;
mov tmp_24 p6_24;
mov tmp_32 p6_32;
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
(* Hacl_Bignum_Fmul_mul_shift_reduce_ (&t, &tmp, zprime_9); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline Hacl_Bignum_Fmul_mul_shift_reduce_(tmp_0, tmp_8, tmp_16, tmp_24, tmp_32, pq8_40, pq8_48, pq8_56, pq8_64, pq8_72, t_0, t_16, t_32, t_48, t_64);
(* tctr_360 = MEM[(FStar_UInt128_t * )&t]; *)
mov tctr360 t_0;
(* tctrp1_361 = MEM[(FStar_UInt128_t * )&t + 16B]; *)
mov tctrp1361 t_16;
(* _362 = (long unsigned int) tctr_360; *)
cast v362@uint64 tctr360@uint128;
(* r0_363 = _362 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0363 v362 0x7ffffffffffff@uint64;
(* c_364 = tctr_360 >> 51; *)
usplit c364 tmp_to_use tctr360 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0363;
assume tmp_to_use_p = r0363 && true;

(* _365 = (__int128 unsigned) r0_363; *)
vpc v365@uint128 r0363@uint64;
(* _366 = tctrp1_361 + c_364; *)
uadd v366 tctrp1361 c364;
(* tctrp1_367 = MEM[(FStar_UInt128_t * )&t + 32B]; *)
mov tctrp1367 t_32;
(* _368 = (long unsigned int) _366; *)
cast v368@uint64 v366@uint128;
(* r0_369 = _368 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0369 v368 0x7ffffffffffff@uint64;
(* c_370 = _366 >> 51; *)
usplit c370 tmp_to_use v366 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0369;
assume tmp_to_use_p = r0369 && true;

(* _372 = tctrp1_367 + c_370; *)
uadd v372 tctrp1367 c370;
(* tctrp1_373 = MEM[(FStar_UInt128_t * )&t + 48B]; *)
mov tctrp1373 t_48;
(* _374 = (long unsigned int) _372; *)
cast v374@uint64 v372@uint128;
(* r0_375 = _374 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0375 v374 0x7ffffffffffff@uint64;
(* c_376 = _372 >> 51; *)
usplit c376 tmp_to_use v372 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0375;
assume tmp_to_use_p = r0375 && true;

(* _378 = tctrp1_373 + c_376; *)
uadd v378 tctrp1373 c376;
(* tctrp1_379 = MEM[(FStar_UInt128_t * )&t + 64B]; *)
mov tctrp1379 t_64;
(* _380 = (long unsigned int) _378; *)
cast v380@uint64 v378@uint128;
(* r0_381 = _380 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0381 v380 0x7ffffffffffff@uint64;
(* c_382 = _378 >> 51; *)
usplit c382 tmp_to_use v378 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0381;
assume tmp_to_use_p = r0381 && true;

(* _384 = tctrp1_379 + c_382; *)
uadd v384 tctrp1379 c382;
(* b4__259 = _384 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_259 v384 0x7ffffffffffff@uint128;
(* _260 = _384 >> 51; *)
usplit v260 tmp_to_use v384 51;

assert true && tmp_to_use = b4_259;
assume tmp_to_use = b4_259 && true;


(* _261 = _260 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v261 v260 0xffffffffffffffff@uint128;

assert true && v261 = v260;
assume v261 = v260 && true;

(* _262 = _261 * 19; *)
umul v262 v261 0x13@uint128;
(* b0__263 = _262 + _365; *)
uadd b0_263 v262 v365;
(* _264 = (long unsigned int) b0__263; *)
vpc v264@uint64 b0_263@uint128;
(* _271 = (long unsigned int) b4__259; *)
vpc v271@uint64 b4_259@uint128;
(* i0__272 = _264 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_272 v264 0x7ffffffffffff@uint64;
(* _273 = _264 >> 51; *)
usplit v273 tmp_to_use v264 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_272;
assume tmp_to_use_p = i0_272 && true;

(* i1__274 = _273 + r0_369; *)
uadd i1_274 v273 r0369;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* __builtin_memcpy (&MEM[(void * )&buf + 40B], &MEM[(void * )&buf + 200B], 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
mov buf_40 buf_200;
mov buf_48 buf_208;
mov buf_56 buf_216;
mov buf_64 buf_224;
mov buf_72 buf_232;

(* xi_67 = MEM[(uint64_t * )&buf + 200B]; *)
mov xi67 buf_200;
(* _69 = xi_67 + i0__272; *)
uadd v69 xi67 i0_272;
(* MEM[(uint64_t * )&buf + 200B] = _69; *)
mov buf_200 v69;
(* xi_70 = MEM[(uint64_t * )&buf + 208B]; *)
mov xi70 buf_208;
(* _72 = xi_70 + i1__274; *)
uadd v72 xi70 i1_274;
(* MEM[(uint64_t * )&buf + 208B] = _72; *)
mov buf_208 v72;
(* xi_73 = MEM[(uint64_t * )&buf + 216B]; *)
mov xi73 buf_216;
(* _75 = xi_73 + r0_375; *)
uadd v75 xi73 r0375;
(* MEM[(uint64_t * )&buf + 216B] = _75; *)
mov buf_216 v75;
(* xi_76 = MEM[(uint64_t * )&buf + 224B]; *)
mov xi76 buf_224;
(* _78 = xi_76 + r0_381; *)
uadd v78 xi76 r0381;
(* MEM[(uint64_t * )&buf + 224B] = _78; *)
mov buf_224 v78;
(* xi_79 = MEM[(uint64_t * )&buf + 232B]; *)
mov xi79 buf_232;
(* _81 = xi_79 + _271; *)
uadd v81 xi79 v271;
(* MEM[(uint64_t * )&buf + 232B] = _81; *)
mov buf_232 v81;
(* _240 = xi_67 + 18014398509481832; *)
uadd v240 xi67 0x3fffffffffff68@uint64;
(* _241 = xi_70 + 18014398509481976; *)
uadd v241 xi70 0x3ffffffffffff8@uint64;
(* _242 = xi_73 + 18014398509481976; *)
uadd v242 xi73 0x3ffffffffffff8@uint64;
(* _243 = xi_76 + 18014398509481976; *)
uadd v243 xi76 0x3ffffffffffff8@uint64;
(* _244 = xi_79 + 18014398509481976; *)
uadd v244 xi79 0x3ffffffffffff8@uint64;
(* _246 = _240 - i0__272; *)
usub v246 v240 i0_272;
(* MEM[(uint64_t * )&buf + 240B] = _246; *)
mov buf_240 v246;
(* _248 = _241 - i1__274; *)
usub v248 v241 i1_274;
(* MEM[(uint64_t * )&buf + 248B] = _248; *)
mov buf_248 v248;
(* _250 = _242 - r0_375; *)
usub v250 v242 r0375;
(* MEM[(uint64_t * )&buf + 256B] = _250; *)
mov buf_256 v250;
(* _252 = _243 - r0_381; *)
usub v252 v243 r0381;
(* MEM[(uint64_t * )&buf + 264B] = _252; *)
mov buf_264 v252;
(* _254 = _244 - _271; *)
usub v254 v244 v271;
(* MEM[(uint64_t * )&buf + 272B] = _254; *)
mov buf_272 v254;
(* _1394 = ppq_4(D) + 8; *)
(* __builtin_memcpy (_1394, &MEM[(void * )&buf + 208B], 32); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

mov ppq4_8 buf_208;
mov ppq4_16 buf_216;
mov ppq4_24 buf_224;
mov ppq4_32 buf_232;

(* d0_435 = _69 * 2; *)
umul d0435 v69 0x2@uint64;
(* d1_436 = _72 * 2; *)
umul d1436 v72 0x2@uint64;
(* d2_437 = _75 * 38; *)
umul d2437 v75 0x26@uint64;
(* d419_438 = _81 * 19; *)
umul d419438 v81 0x13@uint64;
(* d4_439 = _81 * 38; *)
umul d4439 v81 0x26@uint64;
(* _441 = _69 w* _69; *)
umulj v441 v69 v69;
(* _444 = d4_439 w* _72; *)
umulj v444 d4439 v72;
(* _448 = d2_437 w* _78; *)
umulj v448 d2437 v78;
(* _1415 = _441 + _448; *)
uadd v1415 v441 v448;
(* s0_449 = _444 + _1415; *)
uadd s0449 v444 v1415;
(* _451 = _72 w* d0_435; *)
umulj v451 v72 d0435;
(* _453 = d4_439 w* _75; *)
umulj v453 d4439 v75;
(* _455 = _78 * 19; *)
umul v455 v78 0x13@uint64;
(* _457 = _78 w* _455; *)
umulj v457 v78 v455;
(* _1410 = _453 + _457; *)
uadd v1410 v453 v457;
(* s1_458 = _451 + _1410; *)
uadd s1458 v451 v1410;
(* _459 = d0_435 w* _75; *)
umulj v459 d0435 v75;
(* _460 = _72 w* _72; *)
umulj v460 v72 v72;
(* _461 = _459 + _460; *)
uadd v461 v459 v460;
(* _462 = d4_439 w* _78; *)
umulj v462 d4439 v78;
(* s2_463 = _461 + _462; *)
uadd s2463 v461 v462;
(* _464 = _78 w* d0_435; *)
umulj v464 v78 d0435;
(* _466 = _75 w* d1_436; *)
umulj v466 v75 d1436;
(* _470 = _81 w* d419_438; *)
umulj v470 v81 d419438;
(* _1409 = _464 + _470; *)
uadd v1409 v464 v470;
(* s3_471 = _466 + _1409; *)
uadd s3471 v466 v1409;
(* _472 = d0_435 w* _81; *)
umulj v472 d0435 v81;
(* _473 = _78 w* d1_436; *)
umulj v473 v78 d1436;
(* _475 = _75 w* _75; *)
umulj v475 v75 v75;
(* _1408 = _472 + _475; *)
uadd v1408 v472 v475;
(* s4_476 = _473 + _1408; *)
uadd s4476 v473 v1408;
(* _407 = (long unsigned int) s0_449; *)
cast v407@uint64 s0449@uint128;
(* r0_408 = _407 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0408 v407 0x7ffffffffffff@uint64;
(* c_409 = s0_449 >> 51; *)
usplit c409 tmp_to_use s0449 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0408;
assume tmp_to_use_p = r0408 && true;


(* _410 = (__int128 unsigned) r0_408; *)
vpc v410@uint128 r0408@uint64;
(* _411 = c_409 + s1_458; *)
uadd v411 c409 s1458;
(* _413 = (long unsigned int) _411; *)
cast v413@uint64 v411@uint128;
(* r0_414 = _413 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0414 v413 0x7ffffffffffff@uint64;
(* c_415 = _411 >> 51; *)
usplit c415 tmp_to_use v411 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0414;
assume tmp_to_use_p = r0414 && true;

(* _417 = c_415 + s2_463; *)
uadd v417 c415 s2463;
(* _419 = (long unsigned int) _417; *)
cast v419@uint64 v417@uint128;
(* r0_420 = _419 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0420 v419 0x7ffffffffffff@uint64;
(* c_421 = _417 >> 51; *)
usplit c421 tmp_to_use v417 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0420;
assume tmp_to_use_p = r0420 && true;

(* _423 = c_421 + s3_471; *)
uadd v423 c421 s3471;
(* _425 = (long unsigned int) _423; *)
cast v425@uint64 v423@uint128;
(* r0_426 = _425 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0426 v425 0x7ffffffffffff@uint64;
(* c_427 = _423 >> 51; *)
usplit c427 tmp_to_use v423 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0426;
assume tmp_to_use_p = r0426 && true;

(* _429 = c_427 + s4_476; *)
uadd v429 c427 s4476;
(* b4__389 = _429 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_389 v429 0x7ffffffffffff@uint128;
(* _390 = _429 >> 51; *)
usplit v390 tmp_to_use v429 51;

assert true && tmp_to_use = b4_389;
assume tmp_to_use = b4_389 && true;

(* _391 = _390 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v391 v390 0xffffffffffffffff@uint128;

assert true && v391 = v390;
assume v391 = v390 && true;

(* _392 = _391 * 19; *)
umul v392 v391 0x13@uint128;
(* b0__393 = _392 + _410; *)
uadd b0_393 v392 v410;
(* _394 = (long unsigned int) b0__393; *)
vpc v394@uint64 b0_393@uint128;
(* MEM[(uint64_t * )ppq_4(D) + 16B] = r0_420; *)
mov ppq4_16 r0420;
(* MEM[(uint64_t * )ppq_4(D) + 24B] = r0_426; *)
mov ppq4_24 r0426;
(* _401 = (long unsigned int) b4__389; *)
vpc v401@uint64 b4_389@uint128;
(* MEM[(uint64_t * )ppq_4(D) + 32B] = _401; *)
mov ppq4_32 v401;
(* i0__402 = _394 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_402 v394 0x7ffffffffffff@uint64;
(* _403 = _394 >> 51; *)
usplit v403 tmp_to_use v394 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_402;
assume tmp_to_use_p = i0_402 && true;

(* i1__404 = _403 + r0_414; *)
uadd i1_404 v403 r0414;
(* *ppq_4(D) = i0__402; *)
mov ppq4_0 i0_402;
(* MEM[(uint64_t * )ppq_4(D) + 8B] = i1__404; *)
mov ppq4_8 i1_404;
(* d0_617 = _246 * 2; *)
umul d0617 v246 0x2@uint64;
(* d1_618 = _248 * 2; *)
umul d1618 v248 0x2@uint64;
(* d2_619 = _250 * 38; *)
umul d2619 v250 0x26@uint64;
(* d419_620 = _254 * 19; *)
umul d419620 v254 0x13@uint64;
(* d4_621 = _254 * 38; *)
umul d4621 v254 0x26@uint64;
(* _623 = _246 w* _246; *)
umulj v623 v246 v246;
(* _626 = d4_621 w* _248; *)
umulj v626 d4621 v248;
(* _630 = d2_619 w* _252; *)
umulj v630 d2619 v252;
(* _1407 = _623 + _630; *)
uadd v1407 v623 v630;
(* s0_631 = _626 + _1407; *)
uadd s0631 v626 v1407;
(* _633 = _248 w* d0_617; *)
umulj v633 v248 d0617;
(* _635 = d4_621 w* _250; *)
umulj v635 d4621 v250;
(* _637 = _252 * 19; *)
umul v637 v252 0x13@uint64;
(* _639 = _252 w* _637; *)
umulj v639 v252 v637;
(* _1406 = _635 + _639; *)
uadd v1406 v635 v639;
(* s1_640 = _633 + _1406; *)
uadd s1640 v633 v1406;
(* _641 = d0_617 w* _250; *)
umulj v641 d0617 v250;
(* _642 = _248 w* _248; *)
umulj v642 v248 v248;
(* _643 = _641 + _642; *)
uadd v643 v641 v642;
(* _644 = d4_621 w* _252; *)
umulj v644 d4621 v252;
(* s2_645 = _643 + _644; *)
uadd s2645 v643 v644;
(* _646 = _252 w* d0_617; *)
umulj v646 v252 d0617;
(* _648 = _250 w* d1_618; *)
umulj v648 v250 d1618;
(* _652 = _254 w* d419_620; *)
umulj v652 v254 d419620;
(* _1380 = _646 + _652; *)
uadd v1380 v646 v652;
(* s3_653 = _648 + _1380; *)
uadd s3653 v648 v1380;
(* _654 = d0_617 w* _254; *)
umulj v654 d0617 v254;
(* _655 = _252 w* d1_618; *)
umulj v655 v252 d1618;
(* _657 = _250 w* _250; *)
umulj v657 v250 v250;
(* _1379 = _654 + _657; *)
uadd v1379 v654 v657;
(* s4_658 = _655 + _1379; *)
uadd s4658 v655 v1379;
(* _589 = (long unsigned int) s0_631; *)
cast v589@uint64 s0631@uint128;
(* r0_590 = _589 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0590 v589 0x7ffffffffffff@uint64;
(* c_591 = s0_631 >> 51; *)
usplit c591 tmp_to_use s0631 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0590;
assume tmp_to_use_p = r0590 && true;

(* _592 = (__int128 unsigned) r0_590; *)
vpc v592@uint128 r0590@uint64;
(* _593 = c_591 + s1_640; *)
uadd v593 c591 s1640;
(* _595 = (long unsigned int) _593; *)
cast v595@uint64 v593@uint128;
(* r0_596 = _595 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0596 v595 0x7ffffffffffff@uint64;
(* c_597 = _593 >> 51; *)
usplit c597 tmp_to_use v593 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0596;
assume tmp_to_use_p = r0596 && true;

(* _599 = c_597 + s2_645; *)
uadd v599 c597 s2645;
(* _601 = (long unsigned int) _599; *)
cast v601@uint64 v599@uint128;
(* r0_602 = _601 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0602 v601 0x7ffffffffffff@uint64;
(* c_603 = _599 >> 51; *)
usplit c603 tmp_to_use v599 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0602;
assume tmp_to_use_p = r0602 && true;

(* _605 = c_603 + s3_653; *)
uadd v605 c603 s3653;
(* _607 = (long unsigned int) _605; *)
cast v607@uint64 v605@uint128;
(* r0_608 = _607 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0608 v607 0x7ffffffffffff@uint64;
(* c_609 = _605 >> 51; *)
usplit c609 tmp_to_use v605 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0608;
assume tmp_to_use_p = r0608 && true;

(* _611 = c_609 + s4_658; *)
uadd v611 c609 s4658;
(* b4__571 = _611 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_571 v611 0x7ffffffffffff@uint128;
(* _572 = _611 >> 51; *)
usplit v572 tmp_to_use v611 51;

assert true && tmp_to_use = b4_571;
assume tmp_to_use = b4_571 && true;

(* _573 = _572 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v573 v572 0xffffffffffffffff@uint128;
assert true && v573 = v572;
assume v573 = v572 && true;
(* _574 = _573 * 19; *)
umul v574 v573 0x13@uint128;
(* b0__575 = _574 + _592; *)
uadd b0_575 v574 v592;
(* _576 = (long unsigned int) b0__575; *)
vpc v576@uint64 b0_575@uint128;
(* MEM[(uint64_t * )&buf + 296B] = r0_602; *)
mov buf_296 r0602;
(* MEM[(uint64_t * )&buf + 304B] = r0_608; *)
mov buf_304 r0608;
(* _583 = (long unsigned int) b4__571; *)
vpc v583@uint64 b4_571@uint128;
(* MEM[(uint64_t * )&buf + 312B] = _583; *)
mov buf_312 v583;
(* i0__584 = _576 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_584 v576 0x7ffffffffffff@uint64;
(* _585 = _576 >> 51; *)
usplit v585 tmp_to_use v576 51;


vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_584;
assume tmp_to_use_p = i0_584 && true;

(* i1__586 = _585 + r0_596; *)
uadd i1_586 v585 r0596;
(* MEM[(uint64_t * )&buf + 280B] = i0__584; *)
mov buf_280 i0_584;
(* MEM[(uint64_t * )&buf + 288B] = i1__586; *)
mov buf_288 i1_586;
(* MEM[(char * {ref-all})&tmp] = MEM[(char * {ref-all})&buf + 280B]; *)
(* TODO: skipped, no heuristics ,need self translating *)

mov tmp_0 buf_280;
mov tmp_8 buf_288;
mov tmp_16 buf_296;
mov tmp_24 buf_304;
mov tmp_32 buf_312;

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
(* Hacl_Bignum_Fmul_mul_shift_reduce_ (&t, &tmp, qmqp_1(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline Hacl_Bignum_Fmul_mul_shift_reduce_(tmp_0, tmp_8, tmp_16, tmp_24, tmp_32, qmqp1_0, qmqp1_8 ,qmqp1_16, qmqp1_24, qmqp1_32, t_0, t_16, t_32, t_48, t_64);
(* tctr_749 = MEM[(FStar_UInt128_t * )&t]; *)
mov tctr749 t_0;
(* tctrp1_750 = MEM[(FStar_UInt128_t * )&t + 16B]; *)
mov tctrp1750 t_16;
(* _751 = (long unsigned int) tctr_749; *)
cast v751@uint64 tctr749@uint128;
(* r0_752 = _751 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0752 v751 0x7ffffffffffff@uint64;
(* c_753 = tctr_749 >> 51; *)
usplit c753 tmp_to_use tctr749 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0752;
assume tmp_to_use_p = r0752 && true;

(* _754 = (__int128 unsigned) r0_752; *)
vpc v754@uint128 r0752@uint64;
(* _755 = tctrp1_750 + c_753; *)
uadd v755 tctrp1750 c753;
(* tctrp1_756 = MEM[(FStar_UInt128_t * )&t + 32B]; *)
mov tctrp1756 t_32;
(* _757 = (long unsigned int) _755; *)
cast v757@uint64 v755@uint128;
(* r0_758 = _757 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0758 v757 0x7ffffffffffff@uint64;
(* c_759 = _755 >> 51; *)
usplit c759 tmp_to_use v755 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0758;
assume tmp_to_use_p = r0758 && true;

(* _761 = tctrp1_756 + c_759; *)
uadd v761 tctrp1756 c759;
(* tctrp1_762 = MEM[(FStar_UInt128_t * )&t + 48B]; *)
mov tctrp1762 t_48;
(* _763 = (long unsigned int) _761; *)
cast v763@uint64 v761@uint128;
(* r0_764 = _763 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0764 v763 0x7ffffffffffff@uint64;
(* c_765 = _761 >> 51; *)
usplit c765 tmp_to_use v761 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0764;
assume tmp_to_use_p = r0764 && true;

(* _767 = tctrp1_762 + c_765; *)
uadd v767 tctrp1762 c765;
(* tctrp1_768 = MEM[(FStar_UInt128_t * )&t + 64B]; *)
mov tctrp1768 t_64;
(* _769 = (long unsigned int) _767; *)
cast v769@uint64 v767@uint128;
(* r0_770 = _769 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0770 v769 0x7ffffffffffff@uint64;
(* c_771 = _767 >> 51; *)
usplit c771 tmp_to_use v767 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0770;
assume tmp_to_use_p = r0770 && true;

(* _773 = tctrp1_768 + c_771; *)
uadd v773 tctrp1768 c771;
(* b4__213 = _773 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_213 v773 0x7ffffffffffff@uint128;
(* _214 = _773 >> 51; *)
usplit v214 tmp_to_use v773 51;

assert true && tmp_to_use = b4_213;
assume tmp_to_use = b4_213 && true;

(* _215 = _214 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v215 v214 0xffffffffffffffff@uint128;
assert true && v215 = v214;
assume v215 = v214 && true;
(* _216 = _215 * 19; *)
umul v216 v215 0x13@uint128;
(* b0__217 = _216 + _754; *)
uadd b0_217 v216 v754;
(* _218 = (long unsigned int) b0__217; *)
vpc v218@uint64 b0_217@uint128;
(* MEM[(uint64_t * )ppq_4(D) + 56B] = r0_764; *)
mov ppq4_56 r0764;
(* MEM[(uint64_t * )ppq_4(D) + 64B] = r0_770; *)
mov ppq4_64 r0770;
(* _225 = (long unsigned int) b4__213; *)
vpc v225@uint64 b4_213@uint128;
(* MEM[(uint64_t * )ppq_4(D) + 72B] = _225; *)
mov ppq4_72 v225;
(* i0__226 = _218 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_226 v218 0x7ffffffffffff@uint64;
(* _227 = _218 >> 51; *)
usplit v227 tmp_to_use v218 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_226;
assume tmp_to_use_p = i0_226 && true;

(* i1__228 = _227 + r0_758; *)
uadd i1_228 v227 r0758;
(* MEM[(uint64_t * )ppq_4(D) + 40B] = i0__226; *)
mov ppq4_40 i0_226;
(* MEM[(uint64_t * )ppq_4(D) + 48B] = i1__228; *)
mov ppq4_48 i1_228;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* __builtin_memcpy (&MEM[(void * )&buf + 120B], p_6(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

mov buf_120 p6_0;
mov buf_128 p6_8;
mov buf_136 p6_16;
mov buf_144 p6_24;
mov buf_152 p6_32;


(* r0_819 = MEM[(uint64_t * )&buf + 120B]; *)
mov r0819 buf_120;
(* r1_820 = MEM[(uint64_t * )&buf + 128B]; *)
mov r1820 buf_128;
(* r2_821 = MEM[(uint64_t * )&buf + 136B]; *)
mov r2821 buf_136;
(* r3_822 = MEM[(uint64_t * )&buf + 144B]; *)
mov r3822 buf_144;
(* r4_823 = MEM[(uint64_t * )&buf + 152B]; *)
mov r4823 buf_152;
(* d0_824 = r0_819 * 2; *)
umul d0824 r0819 0x2@uint64;
(* d1_825 = r1_820 * 2; *)
umul d1825 r1820 0x2@uint64;
(* d2_826 = r2_821 * 38; *)
umul d2826 r2821 0x26@uint64;
(* d419_827 = r4_823 * 19; *)
umul d419827 r4823 0x13@uint64;
(* d4_828 = r4_823 * 38; *)
umul d4828 r4823 0x26@uint64;
(* _830 = r0_819 w* r0_819; *)
umulj v830 r0819 r0819;
(* _833 = d4_828 w* r1_820; *)
umulj v833 d4828 r1820;
(* _837 = d2_826 w* r3_822; *)
umulj v837 d2826 r3822;
(* _1378 = _833 + _837; *)
uadd v1378 v833 v837;
(* s0_838 = _830 + _1378; *)
uadd s0838 v830 v1378;
(* _840 = r1_820 w* d0_824; *)
umulj v840 r1820 d0824;
(* _842 = d4_828 w* r2_821; *)
umulj v842 d4828 r2821;
(* _843 = _840 + _842; *)
uadd v843 v840 v842;
(* _844 = r3_822 * 19; *)
umul v844 r3822 0x13@uint64;
(* _846 = r3_822 w* _844; *)
umulj v846 r3822 v844;
(* s1_847 = _843 + _846; *)
uadd s1847 v843 v846;
(* _848 = d0_824 w* r2_821; *)
umulj v848 d0824 r2821;
(* _849 = r1_820 w* r1_820; *)
umulj v849 r1820 r1820;
(* _851 = d4_828 w* r3_822; *)
umulj v851 d4828 r3822;
(* _1377 = _848 + _851; *)
uadd v1377 v848 v851;
(* s2_852 = _849 + _1377; *)
uadd s2852 v849 v1377;
(* _853 = r3_822 w* d0_824; *)
umulj v853 r3822 d0824;
(* _855 = r2_821 w* d1_825; *)
umulj v855 r2821 d1825;
(* _856 = _853 + _855; *)
uadd v856 v853 v855;
(* _859 = r4_823 w* d419_827; *)
umulj v859 r4823 d419827;
(* s3_860 = _856 + _859; *)
uadd s3860 v856 v859;
(* _861 = d0_824 w* r4_823; *)
umulj v861 d0824 r4823;
(* _862 = r3_822 w* d1_825; *)
umulj v862 r3822 d1825;
(* _863 = _861 + _862; *)
uadd v863 v861 v862;
(* _864 = r2_821 w* r2_821; *)
umulj v864 r2821 r2821;
(* s4_865 = _863 + _864; *)
uadd s4865 v863 v864;
(* _796 = (long unsigned int) s0_838; *)
cast v796@uint64 s0838@uint128;
(* r0_797 = _796 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0797 v796 0x7ffffffffffff@uint64;
(* c_798 = s0_838 >> 51; *)
usplit c798 tmp_to_use s0838 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0797;
assume tmp_to_use_p = r0797 && true;

(* _799 = (__int128 unsigned) r0_797; *)
vpc v799@uint128 r0797@uint64;
(* _800 = c_798 + s1_847; *)
uadd v800 c798 s1847;
(* _802 = (long unsigned int) _800; *)
cast v802@uint64 v800@uint128;
(* r0_803 = _802 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0803 v802 0x7ffffffffffff@uint64;
(* c_804 = _800 >> 51; *)
usplit c804 tmp_to_use v800 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0803;
assume tmp_to_use_p = r0803 && true;

(* _806 = c_804 + s2_852; *)
uadd v806 c804 s2852;
(* _808 = (long unsigned int) _806; *)
cast v808@uint64 v806@uint128;
(* r0_809 = _808 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0809 v808 0x7ffffffffffff@uint64;
(* c_810 = _806 >> 51; *)
usplit c810 tmp_to_use v806 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0809;
assume tmp_to_use_p = r0809 && true;

(* _812 = c_810 + s3_860; *)
uadd v812 c810 s3860;
(* _814 = (long unsigned int) _812; *)
cast v814@uint64 v812@uint128;
(* r0_815 = _814 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0815 v814 0x7ffffffffffff@uint64;
(* c_816 = _812 >> 51; *)
usplit c816 tmp_to_use v812 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0815;
assume tmp_to_use_p = r0815 && true;

(* _818 = c_816 + s4_865; *)
uadd v818 c816 s4865;
(* b4__778 = _818 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_778 v818 0x7ffffffffffff@uint128;
(* _779 = _818 >> 51; *)
usplit v779 tmp_to_use v818 51;

assert true && tmp_to_use = b4_778;
assume tmp_to_use = b4_778 && true;

(* _780 = _779 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v780 v779 0xffffffffffffffff@uint128;

assert true && v780 = v779;
assume v780 = v779 && true;

(* _781 = _780 * 19; *)
umul v781 v780 0x13@uint128;
(* b0__782 = _781 + _799; *)
uadd b0_782 v781 v799;
(* _783 = (long unsigned int) b0__782; *)
vpc v783@uint64 b0_782@uint128;
(* MEM[(uint64_t * )&buf + 136B] = r0_809; *)
mov buf_136 r0809;
(* MEM[(uint64_t * )&buf + 144B] = r0_815; *)
mov buf_144 r0815;
(* _790 = (long unsigned int) b4__778; *)
vpc v790@uint64 b4_778@uint128;
(* MEM[(uint64_t * )&buf + 152B] = _790; *)
mov buf_152 v790;
(* i0__791 = _783 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_791 v783 0x7ffffffffffff@uint64;
(* _792 = _783 >> 51; *)
usplit v792 tmp_to_use v783 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_791;
assume tmp_to_use_p = i0_791 && true;

(* i1__793 = _792 + r0_803; *)
uadd i1_793 v792 r0803;
(* MEM[(uint64_t * )&buf + 120B] = i0__791; *)
mov buf_120 i0_791;
(* MEM[(uint64_t * )&buf + 128B] = i1__793; *)
mov buf_128 i1_793;
(* __builtin_memcpy (&MEM[(void * )&buf + 160B], z_7, 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
mov buf_160 p6_40;
mov buf_168 p6_48;
mov buf_176 p6_56;
mov buf_184 p6_64;
mov buf_192 p6_72;
(* r0_1001 = MEM[(uint64_t * )&buf + 160B]; *)
mov r01001 buf_160;
(* r1_1002 = MEM[(uint64_t * )&buf + 168B]; *)
mov r11002 buf_168;
(* r2_1003 = MEM[(uint64_t * )&buf + 176B]; *)
mov r21003 buf_176;
(* r3_1004 = MEM[(uint64_t * )&buf + 184B]; *)
mov r31004 buf_184;
(* r4_1005 = MEM[(uint64_t * )&buf + 192B]; *)
mov r41005 buf_192;
(* d0_1006 = r0_1001 * 2; *)
umul d01006 r01001 0x2@uint64;
(* d1_1007 = r1_1002 * 2; *)
umul d11007 r11002 0x2@uint64;
(* d2_1008 = r2_1003 * 38; *)
umul d21008 r21003 0x26@uint64;
(* d419_1009 = r4_1005 * 19; *)
umul d4191009 r41005 0x13@uint64;
(* d4_1010 = r4_1005 * 38; *)
umul d41010 r41005 0x26@uint64;
(* _1012 = r0_1001 w* r0_1001; *)
umulj v1012 r01001 r01001;
(* _1015 = d4_1010 w* r1_1002; *)
umulj v1015 d41010 r11002;
(* _1019 = d2_1008 w* r3_1004; *)
umulj v1019 d21008 r31004;
(* _1376 = _1015 + _1019; *)
uadd v1376 v1015 v1019;
(* s0_1020 = _1012 + _1376; *)
uadd s01020 v1012 v1376;
(* _1022 = r1_1002 w* d0_1006; *)
umulj v1022 r11002 d01006;
(* _1024 = d4_1010 w* r2_1003; *)
umulj v1024 d41010 r21003;
(* _1025 = _1022 + _1024; *)
uadd v1025 v1022 v1024;
(* _1026 = r3_1004 * 19; *)
umul v1026 r31004 0x13@uint64;
(* _1028 = r3_1004 w* _1026; *)
umulj v1028 r31004 v1026;
(* s1_1029 = _1025 + _1028; *)
uadd s11029 v1025 v1028;
(* _1030 = d0_1006 w* r2_1003; *)
umulj v1030 d01006 r21003;
(* _1031 = r1_1002 w* r1_1002; *)
umulj v1031 r11002 r11002;
(* _1033 = d4_1010 w* r3_1004; *)
umulj v1033 d41010 r31004;
(* _1325 = _1030 + _1033; *)
uadd v1325 v1030 v1033;
(* s2_1034 = _1031 + _1325; *)
uadd s21034 v1031 v1325;
(* _1035 = r3_1004 w* d0_1006; *)
umulj v1035 r31004 d01006;
(* _1037 = r2_1003 w* d1_1007; *)
umulj v1037 r21003 d11007;
(* _1038 = _1035 + _1037; *)
uadd v1038 v1035 v1037;
(* _1041 = r4_1005 w* d419_1009; *)
umulj v1041 r41005 d4191009;
(* s3_1042 = _1038 + _1041; *)
uadd s31042 v1038 v1041;
(* _1043 = d0_1006 w* r4_1005; *)
umulj v1043 d01006 r41005;
(* _1044 = r3_1004 w* d1_1007; *)
umulj v1044 r31004 d11007;
(* _1045 = _1043 + _1044; *)
uadd v1045 v1043 v1044;
(* _1046 = r2_1003 w* r2_1003; *)
umulj v1046 r21003 r21003;
(* s4_1047 = _1045 + _1046; *)
uadd s41047 v1045 v1046;
(* _978 = (long unsigned int) s0_1020; *)
cast v978@uint64 s01020@uint128;
(* r0_979 = _978 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0979 v978 0x7ffffffffffff@uint64;
(* c_980 = s0_1020 >> 51; *)
usplit c980 tmp_to_use s01020 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0979;
assume tmp_to_use_p = r0979 && true;

(* _981 = (__int128 unsigned) r0_979; *)
vpc v981@uint128 r0979@uint64;
(* _982 = c_980 + s1_1029; *)
uadd v982 c980 s11029;
(* _984 = (long unsigned int) _982; *)
cast v984@uint64 v982@uint128;
(* r0_985 = _984 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0985 v984 0x7ffffffffffff@uint64;
(* c_986 = _982 >> 51; *)
usplit c986 tmp_to_use v982 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0985;
assume tmp_to_use_p = r0985 && true;

(* _988 = c_986 + s2_1034; *)
uadd v988 c986 s21034;
(* _990 = (long unsigned int) _988; *)
cast v990@uint64 v988@uint128;
(* r0_991 = _990 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0991 v990 0x7ffffffffffff@uint64;
(* c_992 = _988 >> 51; *)
usplit c992 tmp_to_use v988 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0991;
assume tmp_to_use_p = r0991 && true;

(* _994 = c_992 + s3_1042; *)
uadd v994 c992 s31042;
(* _996 = (long unsigned int) _994; *)
cast v996@uint64 v994@uint128;
(* r0_997 = _996 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r0997 v996 0x7ffffffffffff@uint64;
(* c_998 = _994 >> 51; *)
usplit c998 tmp_to_use v994 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r0997;
assume tmp_to_use_p = r0997 && true;

(* _1000 = c_998 + s4_1047; *)
uadd v1000 c998 s41047;
(* b4__960 = _1000 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_960 v1000 0x7ffffffffffff@uint128;
(* _961 = _1000 >> 51; *)
usplit v961 tmp_to_use v1000 51;

assert true && tmp_to_use = b4_960;
assume tmp_to_use = b4_960 && true;

(* _962 = _961 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v962 v961 0xffffffffffffffff@uint128;
assert true && v962 = v961;
assume v962 = v961 && true;

(* _963 = _962 * 19; *)
umul v963 v962 0x13@uint128;
(* b0__964 = _963 + _981; *)
uadd b0_964 v963 v981;
(* _965 = (long unsigned int) b0__964; *)
vpc v965@uint64 b0_964@uint128;
(* MEM[(uint64_t * )&buf + 176B] = r0_991; *)
mov buf_176 r0991;
(* MEM[(uint64_t * )&buf + 184B] = r0_997; *)
mov buf_184 r0997;
(* _972 = (long unsigned int) b4__960; *)
vpc v972@uint64 b4_960@uint128;
(* MEM[(uint64_t * )&buf + 192B] = _972; *)
mov buf_192 v972;
(* i0__973 = _965 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_973 v965 0x7ffffffffffff@uint64;
(* _974 = _965 >> 51; *)
usplit v974 tmp_to_use v965 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_973;
assume tmp_to_use_p = i0_973 && true;

(* i1__975 = _974 + r0_985; *)
uadd i1_975 v974 r0985;
(* MEM[(uint64_t * )&buf + 160B] = i0__973; *)
mov buf_160 i0_973;
(* MEM[(uint64_t * )&buf + 168B] = i1__975; *)
mov buf_168 i1_975;
(* MEM[(char * {ref-all})&tmp] = MEM[(char * {ref-all})&buf + 120B]; *)
(* TODO: skipped, no heuristics ,need self translating *)
mov tmp_0 buf_120;
mov tmp_8 buf_128;
mov tmp_16 buf_136;
mov tmp_24 buf_144;
mov tmp_32 buf_152;
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
(* Hacl_Bignum_Fmul_mul_shift_reduce_ (&t, &tmp, &MEM[(void * )&buf + 160B]); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline Hacl_Bignum_Fmul_mul_shift_reduce_(tmp_0, tmp_8, tmp_16, tmp_24, tmp_32, buf_160, buf_168, buf_176, buf_184, buf_192, t_0, t_16, t_32, t_48, t_64);
(* tctr_1138 = MEM[(FStar_UInt128_t * )&t]; *)
mov tctr1138 t_0;
(* tctrp1_1139 = MEM[(FStar_UInt128_t * )&t + 16B]; *)
mov tctrp11139 t_16;
(* _1140 = (long unsigned int) tctr_1138; *)
cast v1140@uint64 tctr1138@uint128;
(* r0_1141 = _1140 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01141 v1140 0x7ffffffffffff@uint64;
(* c_1142 = tctr_1138 >> 51; *)
usplit c1142 tmp_to_use tctr1138 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01141;
assume tmp_to_use_p = r01141 && true;

(* _1143 = (__int128 unsigned) r0_1141; *)
vpc v1143@uint128 r01141@uint64;
(* _1144 = tctrp1_1139 + c_1142; *)
uadd v1144 tctrp11139 c1142;
(* tctrp1_1145 = MEM[(FStar_UInt128_t * )&t + 32B]; *)
mov tctrp11145 t_32;
(* _1146 = (long unsigned int) _1144; *)
cast v1146@uint64 v1144@uint128;
(* r0_1147 = _1146 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01147 v1146 0x7ffffffffffff@uint64;
(* c_1148 = _1144 >> 51; *)
usplit c1148 tmp_to_use v1144 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01147;
assume tmp_to_use_p = r01147 && true;

(* _1150 = tctrp1_1145 + c_1148; *)
uadd v1150 tctrp11145 c1148;
(* tctrp1_1151 = MEM[(FStar_UInt128_t * )&t + 48B]; *)
mov tctrp11151 t_48;
(* _1152 = (long unsigned int) _1150; *)
cast v1152@uint64 v1150@uint128;
(* r0_1153 = _1152 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01153 v1152 0x7ffffffffffff@uint64;
(* c_1154 = _1150 >> 51; *)
usplit c1154 tmp_to_use v1150 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01153;
assume tmp_to_use_p = r01153 && true;

(* _1156 = tctrp1_1151 + c_1154; *)
uadd v1156 tctrp11151 c1154;
(* tctrp1_1157 = MEM[(FStar_UInt128_t * )&t + 64B]; *)
mov tctrp11157 t_64;
(* _1158 = (long unsigned int) _1156; *)
cast v1158@uint64 v1156@uint128;
(* r0_1159 = _1158 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01159 v1158 0x7ffffffffffff@uint64;
(* c_1160 = _1156 >> 51; *)
usplit c1160 tmp_to_use v1156 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01159;
assume tmp_to_use_p = r01159 && true;

(* _1162 = tctrp1_1157 + c_1160; *)
uadd v1162 tctrp11157 c1160;
(* b4__187 = _1162 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_187 v1162 0x7ffffffffffff@uint128;
(* _188 = _1162 >> 51; *)
usplit v188 tmp_to_use v1162 51;

assert true && tmp_to_use = b4_187;
assume tmp_to_use= b4_187 && true;

(* _189 = _188 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v189 v188 0xffffffffffffffff@uint128;

assert true && v189 = v188;
assume v189= v188 && true;

(* _190 = _189 * 19; *)
umul v190 v189 0x13@uint128;
(* b0__191 = _190 + _1143; *)
uadd b0_191 v190 v1143;
(* _192 = (long unsigned int) b0__191; *)
vpc v192@uint64 b0_191@uint128;
(* MEM[(uint64_t * )pp_2(D) + 16B] = r0_1153; *)
mov pp2_16 r01153;
(* MEM[(uint64_t * )pp_2(D) + 24B] = r0_1159; *)
mov pp2_24 r01159;
(* _199 = (long unsigned int) b4__187; *)
vpc v199@uint64 b4_187@uint128;
(* MEM[(uint64_t * )pp_2(D) + 32B] = _199; *)
mov pp2_32 v199;
(* i0__200 = _192 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_200 v192 0x7ffffffffffff@uint64;
(* _201 = _192 >> 51; *)
usplit v201 tmp_to_use v192 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_200;
assume tmp_to_use_p = i0_200 && true;

(* i1__202 = _201 + r0_1147; *)
uadd i1_202 v201 r01147;
(* *pp_2(D) = i0__200; *)
mov pp2_0 i0_200;
(* MEM[(uint64_t * )pp_2(D) + 8B] = i1__202; *)
mov pp2_8 i1_202;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* MEM[(char * {ref-all})&tmp] = MEM[(char * {ref-all})&buf + 120B]; *)
(* TODO: skipped, no heuristics ,need self translating *)
mov tmp_0 buf_120;
mov tmp_8 buf_128;
mov tmp_16 buf_136;
mov tmp_24 buf_144;
mov tmp_32 buf_152;
(* tmp$0_152 = MEM[(char * {ref-all})&tmp]; *)
mov tmp__0152 tmp_0;
(* tmp$1_3 = MEM[(char * {ref-all})&tmp + 8B]; *)
mov tmp__13 tmp_8;
(* tmp$2_5 = MEM[(char * {ref-all})&tmp + 16B]; *)
mov tmp__25 tmp_16;
(* tmp$3_1227 = MEM[(char * {ref-all})&tmp + 24B]; *)
mov tmp__31227 tmp_24;
(* tmp$4_1234 = MEM[(char * {ref-all})&tmp + 32B]; *)
mov tmp__41234 tmp_32;
(* _168 = tmp$0_152 + 18014398509481832; *)
uadd v168 tmp__0152 0x3fffffffffff68@uint64;
(* _169 = tmp$1_3 + 18014398509481976; *)
uadd v169 tmp__13 0x3ffffffffffff8@uint64;
(* _170 = tmp$2_5 + 18014398509481976; *)
uadd v170 tmp__25 0x3ffffffffffff8@uint64;
(* _171 = tmp$3_1227 + 18014398509481976; *)
uadd v171 tmp__31227 0x3ffffffffffff8@uint64;
(* _172 = tmp$4_1234 + 18014398509481976; *)
uadd v172 tmp__41234 0x3ffffffffffff8@uint64;
(* xi_173 = MEM[(uint64_t * )&buf + 160B]; *)
mov xi173 buf_160;
(* _174 = _168 - xi_173; *)
usub v174 v168 xi173;
(* MEM[(uint64_t * )&buf + 160B] = _174; *)
mov buf_160 v174;
(* xi_175 = MEM[(uint64_t * )&buf + 168B]; *)
mov xi175 buf_168;
(* _176 = _169 - xi_175; *)
usub v176 v169 xi175;
(* MEM[(uint64_t * )&buf + 168B] = _176; *)
mov buf_168 v176;
(* xi_177 = MEM[(uint64_t * )&buf + 176B]; *)
mov xi177 buf_176;
(* _178 = _170 - xi_177; *)
usub v178 v170 xi177;
(* MEM[(uint64_t * )&buf + 176B] = _178; *)
mov buf_176 v178;
(* xi_179 = MEM[(uint64_t * )&buf + 184B]; *)
mov xi179 buf_184;
(* _180 = _171 - xi_179; *)
usub v180 v171 xi179;
(* MEM[(uint64_t * )&buf + 184B] = _180; *)
mov buf_184 v180;
(* xi_181 = MEM[(uint64_t * )&buf + 192B]; *)
mov xi181 buf_192;
(* _182 = _172 - xi_181; *)
usub v182 v172 xi181;
(* MEM[(uint64_t * )&buf + 192B] = _182; *)
mov buf_192 v182;
(* _135 = _174 w* 121665; *)
umulj v135 v174 0x1db41@uint64;
(* _138 = _176 w* 121665; *)
umulj v138 v176 0x1db41@uint64;
(* _141 = _178 w* 121665; *)
umulj v141 v178 0x1db41@uint64;
(* _144 = _180 w* 121665; *)
umulj v144 v180 0x1db41@uint64;
(* _147 = _182 w* 121665; *)
umulj v147 v182 0x1db41@uint64;
(* _1165 = (long unsigned int) _135; *)
cast v1165@uint64 v135@uint128;
(* r0_1166 = _1165 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01166 v1165 0x7ffffffffffff@uint64;
(* c_1167 = _135 >> 51; *)
usplit c1167 tmp_to_use v135 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01166;
assume tmp_to_use_p = r01166 && true;

(* _1168 = (__int128 unsigned) r0_1166; *)
vpc v1168@uint128 r01166@uint64;
(* _1169 = _138 + c_1167; *)
uadd v1169 v138 c1167;
(* _1171 = (long unsigned int) _1169; *)
cast v1171@uint64 v1169@uint128;
(* r0_1172 = _1171 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01172 v1171 0x7ffffffffffff@uint64;
(* c_1173 = _1169 >> 51; *)
usplit c1173 tmp_to_use v1169 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01172;
assume tmp_to_use_p = r01172 && true;

(* _1175 = _141 + c_1173; *)
uadd v1175 v141 c1173;
(* _1177 = (long unsigned int) _1175; *)
cast v1177@uint64 v1175@uint128;
(* r0_1178 = _1177 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01178 v1177 0x7ffffffffffff@uint64;
(* c_1179 = _1175 >> 51; *)
usplit c1179 tmp_to_use v1175 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01178;
assume tmp_to_use_p = r01178 && true;

(* _1181 = _144 + c_1179; *)
uadd v1181 v144 c1179;
(* _1183 = (long unsigned int) _1181; *)
cast v1183@uint64 v1181@uint128;
(* r0_1184 = _1183 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01184 v1183 0x7ffffffffffff@uint64;
(* c_1185 = _1181 >> 51; *)
usplit c1185 tmp_to_use v1181 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01184;
assume tmp_to_use_p = r01184 && true;

(* _1187 = _147 + c_1185; *)
uadd v1187 v147 c1185;
(* b4__150 = _1187 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_150 v1187 0x7ffffffffffff@uint128;
(* _151 = _1187 >> 51; *)
usplit v151 tmp_to_use v1187 51;

assert true && tmp_to_use = b4_150;
assume tmp_to_use = b4_150 && true;

(* _153 = _151 * 19; *)
umul v153 v151 0x13@uint128;
(* b0__154 = _153 + _1168; *)
uadd b0_154 v153 v1168;
(* _155 = (long unsigned int) b0__154; *)
vpc v155@uint64 b0_154@uint128;
(* _162 = (long unsigned int) b4__150; *)
vpc v162@uint64 b4_150@uint128;
(* yi_53 = MEM[(uint64_t * )&buf + 120B]; *)
mov yi53 buf_120;
(* _54 = yi_53 + _155; *)
uadd v54 yi53 v155;
(* MEM[(uint64_t * )&buf + 80B] = _54; *)
mov buf_80 v54;
(* yi_56 = MEM[(uint64_t * )&buf + 128B]; *)
mov yi56 buf_128;
(* _57 = yi_56 + r0_1172; *)
uadd v57 yi56 r01172;
(* MEM[(uint64_t * )&buf + 88B] = _57; *)
mov buf_88 v57;
(* yi_59 = MEM[(uint64_t * )&buf + 136B]; *)
mov yi59 buf_136;
(* _60 = yi_59 + r0_1178; *)
uadd v60 yi59 r01178;
(* MEM[(uint64_t * )&buf + 96B] = _60; *)
mov buf_96 v60;
(* yi_62 = MEM[(uint64_t * )&buf + 144B]; *)
mov yi62 buf_144;
(* _63 = yi_62 + r0_1184; *)
uadd v63 yi62 r01184;
(* MEM[(uint64_t * )&buf + 104B] = _63; *)
mov buf_104 v63;
(* yi_65 = MEM[(uint64_t * )&buf + 152B]; *)
mov yi65 buf_152;
(* _66 = yi_65 + _162; *)
uadd v66 yi65 v162;
(* MEM[(uint64_t * )&buf + 112B] = _66; *)
mov buf_112 v66;
(* MEM[(char * {ref-all})&tmp] = MEM[(char * {ref-all})&buf + 80B]; *)
(* TODO: skipped, no heuristics ,need self translating *)
mov tmp_0 buf_80;
mov tmp_8 buf_88;
mov tmp_16 buf_96;
mov tmp_24 buf_104;
mov tmp_32 buf_112;
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
(* Hacl_Bignum_Fmul_mul_shift_reduce_ (&t, &tmp, &MEM[(void * )&buf + 160B]); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline Hacl_Bignum_Fmul_mul_shift_reduce_(tmp_0, tmp_8, tmp_16, tmp_24, tmp_32, buf_160, buf_168,buf_176, buf_184, buf_192, t_0, t_16, t_32, t_48, t_64);
(* tctr_1188 = MEM[(FStar_UInt128_t * )&t]; *)
mov tctr1188 t_0;
(* tctrp1_1189 = MEM[(FStar_UInt128_t * )&t + 16B]; *)
mov tctrp11189 t_16;
(* _1190 = (long unsigned int) tctr_1188; *)
cast v1190@uint64 tctr1188@uint128;
(* r0_1191 = _1190 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01191 v1190 0x7ffffffffffff@uint64;
(* c_1192 = tctr_1188 >> 51; *)
usplit c1192 tmp_to_use tctr1188 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01191;
assume tmp_to_use_p = r01191 && true;

(* _1193 = (__int128 unsigned) r0_1191; *)
vpc v1193@uint128 r01191@uint64;
(* _1194 = tctrp1_1189 + c_1192; *)
uadd v1194 tctrp11189 c1192;
(* tctrp1_1195 = MEM[(FStar_UInt128_t * )&t + 32B]; *)
mov tctrp11195 t_32;
(* _1196 = (long unsigned int) _1194; *)
cast v1196@uint64 v1194@uint128;
(* r0_1197 = _1196 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01197 v1196 0x7ffffffffffff@uint64;
(* c_1198 = _1194 >> 51; *)
usplit c1198 tmp_to_use v1194 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01197;
assume tmp_to_use_p = r01197 && true;

(* _1200 = tctrp1_1195 + c_1198; *)
uadd v1200 tctrp11195 c1198;
(* tctrp1_1201 = MEM[(FStar_UInt128_t * )&t + 48B]; *)
mov tctrp11201 t_48;
(* _1202 = (long unsigned int) _1200; *)
cast v1202@uint64 v1200@uint128;
(* r0_1203 = _1202 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01203 v1202 0x7ffffffffffff@uint64;
(* c_1204 = _1200 >> 51; *)
usplit c1204 tmp_to_use v1200 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01203;
assume tmp_to_use_p = r01203 && true;

(* _1206 = tctrp1_1201 + c_1204; *)
uadd v1206 tctrp11201 c1204;
(* tctrp1_1207 = MEM[(FStar_UInt128_t * )&t + 64B]; *)
mov tctrp11207 t_64;
(* _1208 = (long unsigned int) _1206; *)
cast v1208@uint64 v1206@uint128;
(* r0_1209 = _1208 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 r01209 v1208 0x7ffffffffffff@uint64;
(* c_1210 = _1206 >> 51; *)
usplit c1210 tmp_to_use v1206 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = r01209;
assume tmp_to_use_p = r01209 && true;

(* _1212 = tctrp1_1207 + c_1210; *)
uadd v1212 tctrp11207 c1210;
(* b4__114 = _1212 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 b4_114 v1212 0x7ffffffffffff@uint128;
(* _115 = _1212 >> 51; *)
usplit v115 tmp_to_use v1212 51;

assert true && tmp_to_use = b4_114;
assume tmp_to_use = b4_114 && true;

(* _116 = _115 & 18446744073709551615; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint128 v116 v115 0xffffffffffffffff@uint128;

assert true && v116 = v115;
assume v116 = v115 && true;

(* _117 = _116 * 19; *)
umul v117 v116 0x13@uint128;
(* b0__118 = _117 + _1193; *)
uadd b0_118 v117 v1193;
(* _119 = (long unsigned int) b0__118; *)
vpc v119@uint64 b0_118@uint128;
(* MEM[(uint64_t * )pp_2(D) + 56B] = r0_1203; *)
mov pp2_56 r01203;
(* MEM[(uint64_t * )pp_2(D) + 64B] = r0_1209; *)
mov pp2_64 r01209;
(* _126 = (long unsigned int) b4__114; *)
vpc v126@uint64 b4_114@uint128;
(* MEM[(uint64_t * )pp_2(D) + 72B] = _126; *)
mov pp2_72 v126;
(* i0__127 = _119 & 2251799813685247; *)
(* TODO: Bitwise And/Or , may need assert and assume *)
and uint64 i0_127 v119 0x7ffffffffffff@uint64;
(* _128 = _119 >> 51; *)
usplit v128 tmp_to_use v119 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = i0_127;
assume tmp_to_use_p = i0_127 && true;

(* i1__129 = _128 + r0_1197; *)
uadd i1_129 v128 r01197;
(* MEM[(uint64_t * )pp_2(D) + 40B] = i0__127; *)
mov pp2_40 i0_127;
(* MEM[(uint64_t * )pp_2(D) + 48B] = i1__129; *)
mov pp2_48 i1_129;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* t ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* buf ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ p6_0@uint64;
mov _ p6_8@uint64;
mov _ p6_16@uint64;
mov _ p6_24@uint64;
mov _ p6_32@uint64;
mov _ p6_40@uint64;
mov _ p6_48@uint64;
mov _ p6_56@uint64;
mov _ p6_64@uint64;
mov _ p6_72@uint64;
mov X2p0 pp2_0@uint64;
mov X2p1 pp2_8@uint64;
mov X2p2 pp2_16@uint64;
mov X2p3 pp2_24@uint64;
mov X2p4 pp2_32@uint64;
mov Z2Final0 pp2_40@uint64;
mov Z2Final1 pp2_48@uint64;
mov Z2Final2 pp2_56@uint64;
mov Z2Final3 pp2_64@uint64;
mov Z2Final4 pp2_72@uint64;
mov X3Final0 ppq4_0@uint64;
mov X3Final1 ppq4_8@uint64;
mov X3Final2 ppq4_16@uint64;
mov X3Final3 ppq4_24@uint64;
mov X3Final4 ppq4_32@uint64;
mov Z3Final0 ppq4_40@uint64;
mov Z3Final1 ppq4_48@uint64;
mov Z3Final2 ppq4_56@uint64;
mov Z3Final3 ppq4_64@uint64;
mov Z3Final4 ppq4_72@uint64;
mov _ pq8_0@uint64;
mov _ pq8_8@uint64;
mov _ pq8_16@uint64;
mov _ pq8_24@uint64;
mov _ pq8_32@uint64;
mov _ pq8_40@uint64;
mov _ pq8_48@uint64;
mov _ pq8_56@uint64;
mov _ pq8_64@uint64;
mov _ pq8_72@uint64;
(* End with unsed lhs *)


{
   and 
  [
    (* condition 1 *)
    eqmod
    (limbs 51 [X2p0, X2p1, X2p2, X2p3, X2p4])
    (sq (sub
            (sq (limbs 51 [X0, X1, X2, X3, X4]))
            (sq (limbs 51 [Z0, Z1,Z2, Z3, Z4]))))
    (2**255 - 19),
    (* condition 2 *)
    eqmod
    (limbs 51 [Z2Final0, Z2Final1, Z2Final2, Z2Final3, Z2Final4])
    (muls
    [
        4,
        limbs 51 [X0, X1, X2, X3, X4],
        limbs 51 [Z0, Z1,Z2, Z3, Z4],
        adds [
            sq (limbs 51 [X0, X1, X2, X3, X4]),
            muls 
                [
                    486662,
                    limbs 51 [X0, X1, X2, X3, X4],
                    limbs 51 [Z0, Z1,Z2, Z3, Z4]
                ],
                sq (limbs 51 [Z0, Z1,Z2, Z3, Z4])
            ]
    ])
    (2**255 - 19),
    (* condition 3-1 *)

     eqmod
     (limbs 51 [X3Final0, X3Final1, X3Final2, X3Final3, X3Final4])
     (mul (4)
             (sq (sub (mul (limbs 51 [X0, X1, X2, X3, X4]) (limbs 51 [XP0, XP1, XP2, XP3, XP4]))
                            (mul (limbs 51 [Z0, Z1,Z2, Z3, Z4]) (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4])))))
     (2**255 - 19),

     (* condition 3-2 *)

     eqmod
     (limbs 51 [Z3Final0, Z3Final1, Z3Final2, Z3Final3, Z3Final4])
     (mul (4)
             (mul (limbs 51 [QMQP0, QMQP1, QMQP2, QMQP3, QMQP4])
                     (sq (sub (mul (limbs 51 [XP0, XP1, XP2, XP3, XP4]) (limbs 51 [Z0, Z1,Z2, Z3, Z4]))
                                    (mul (limbs 51 [X0, X1, X2, X3, X4]) (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4]))))))
     (2**255 - 19),
     (* condition 3 *)
    eqmod
    (mul (limbs 51 [X3Final0, X3Final1, X3Final2, X3Final3, X3Final4])
            (mul (limbs 51 [QMQP0, QMQP1, QMQP2, QMQP3, QMQP4])
                    (sq (sub (mul (limbs 51 [XP0, XP1, XP2, XP3, XP4])
                                            (limbs 51 [Z0, Z1,Z2, Z3, Z4]))
                                    (mul (limbs 51 [X0, X1, X2, X3, X4])
                                            (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4]))))))
    (mul (limbs 51 [Z3Final0, Z3Final1, Z3Final2, Z3Final3, Z3Final4])
            (sq (sub (mul (limbs 51 [X0, X1, X2, X3, X4])
                                    (limbs 51 [XP0, XP1, XP2, XP3, XP4]))
                            (mul (limbs 51 [Z0, Z1,Z2, Z3, Z4])
                                    (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4])))))
    (2**255 - 19)
  ]
  &&
  true
}

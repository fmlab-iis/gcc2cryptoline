proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov input212_0@uint64 _;
mov input212_8@uint64 _;
mov input212_16@uint64 _;
mov input212_24@uint64 _;
mov input212_32@uint64 _;
mov input5_0@uint64 _;
mov input5_8@uint64 _;
mov input5_16@uint64 _;
mov input5_24@uint64 _;
mov input5_32@uint64 _;
mov output4_0@uint128 _;
mov output4_16@uint128 _;
mov output4_32@uint128 _;
mov output4_48@uint128 _;
mov output4_64@uint128 _;
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
mov _ output4_0@uint128;
mov _ output4_16@uint128;
mov _ output4_32@uint128;
mov _ output4_48@uint128;
mov _ output4_64@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

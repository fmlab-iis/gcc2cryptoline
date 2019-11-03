proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f43_0@int32 _;
mov f43_4@int32 _;
mov f43_8@int32 _;
mov f43_12@int32 _;
mov f43_16@int32 _;
mov f43_20@int32 _;
mov f43_24@int32 _;
mov f43_28@int32 _;
mov f43_32@int32 _;
mov f43_36@int32 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f0_44 = *f_43(D); *)
mov f044 f43_0;
(* f1_45 = MEM[(int32_t * )f_43(D) + 4B]; *)
mov f145 f43_4;
(* f2_46 = MEM[(int32_t * )f_43(D) + 8B]; *)
mov f246 f43_8;
(* f3_47 = MEM[(int32_t * )f_43(D) + 12B]; *)
mov f347 f43_12;
(* f4_48 = MEM[(int32_t * )f_43(D) + 16B]; *)
mov f448 f43_16;
(* f5_49 = MEM[(int32_t * )f_43(D) + 20B]; *)
mov f549 f43_20;
(* f6_50 = MEM[(int32_t * )f_43(D) + 24B]; *)
mov f650 f43_24;
(* f7_51 = MEM[(int32_t * )f_43(D) + 28B]; *)
mov f751 f43_28;
(* f8_52 = MEM[(int32_t * )f_43(D) + 32B]; *)
mov f852 f43_32;
(* f9_53 = MEM[(int32_t * )f_43(D) + 36B]; *)
mov f953 f43_36;
(* h0_54 = f0_44 w* 121666; *)
smulj h054 f044 0x1db42@int32;
(* h1_55 = f1_45 w* 121666; *)
smulj h155 f145 0x1db42@int32;
(* h2_56 = f2_46 w* 121666; *)
smulj h256 f246 0x1db42@int32;
(* h3_57 = f3_47 w* 121666; *)
smulj h357 f347 0x1db42@int32;
(* h4_58 = f4_48 w* 121666; *)
smulj h458 f448 0x1db42@int32;
(* h5_59 = f5_49 w* 121666; *)
smulj h559 f549 0x1db42@int32;
(* h6_60 = f6_50 w* 121666; *)
smulj h660 f650 0x1db42@int32;
(* h7_61 = f7_51 w* 121666; *)
smulj h761 f751 0x1db42@int32;
(* h8_62 = f8_52 w* 121666; *)
smulj h862 f852 0x1db42@int32;
(* h9_63 = f9_53 w* 121666; *)
smulj h963 f953 0x1db42@int32;
(* _11 = h9_63 + 16777216; *)
sadd v11 h963 0x1000000@int64;
(* carry9_64 = _11 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry964 tmp_to_use v11 25;
(* _12 = carry9_64 * 19; *)
smul v12 carry964 0x13@int64;
(* h0_65 = _12 + h0_54; *)
sadd h065 v12 h054;
(* _13 = _11 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v13 v11 (-0x2000000)@int64;
(* h9_66 = h9_63 - _13; *)
ssub h966 h963 v13;
(* _14 = h1_55 + 16777216; *)
sadd v14 h155 0x1000000@int64;
(* carry1_67 = _14 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry167 tmp_to_use v14 25;
(* h2_68 = h2_56 + carry1_67; *)
sadd h268 h256 carry167;
(* _15 = _14 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v15 v14 (-0x2000000)@int64;
(* h1_69 = h1_55 - _15; *)
ssub h169 h155 v15;
(* _16 = h3_57 + 16777216; *)
sadd v16 h357 0x1000000@int64;
(* carry3_70 = _16 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry370 tmp_to_use v16 25;
(* h4_71 = h4_58 + carry3_70; *)
sadd h471 h458 carry370;
(* _17 = _16 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v17 v16 (-0x2000000)@int64;
(* h3_72 = h3_57 - _17; *)
ssub h372 h357 v17;
(* _18 = h5_59 + 16777216; *)
sadd v18 h559 0x1000000@int64;
(* carry5_73 = _18 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry573 tmp_to_use v18 25;
(* h6_74 = h6_60 + carry5_73; *)
sadd h674 h660 carry573;
(* _19 = _18 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v19 v18 (-0x2000000)@int64;
(* h5_75 = h5_59 - _19; *)
ssub h575 h559 v19;
(* _20 = h7_61 + 16777216; *)
sadd v20 h761 0x1000000@int64;
(* carry7_76 = _20 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry776 tmp_to_use v20 25;
(* h8_77 = h8_62 + carry7_76; *)
sadd h877 h862 carry776;
(* _21 = _20 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v21 v20 (-0x2000000)@int64;
(* h7_78 = h7_61 - _21; *)
ssub h778 h761 v21;
(* _22 = h0_65 + 33554432; *)
sadd v22 h065 0x2000000@int64;
(* carry0_79 = _22 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry079 tmp_to_use v22 26;
(* h1_80 = h1_69 + carry0_79; *)
sadd h180 h169 carry079;
(* _23 = _22 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v23 v22 (-0x4000000)@int64;
(* h0_81 = h0_65 - _23; *)
ssub h081 h065 v23;
(* _24 = h2_68 + 33554432; *)
sadd v24 h268 0x2000000@int64;
(* carry2_82 = _24 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry282 tmp_to_use v24 26;
(* h3_83 = h3_72 + carry2_82; *)
sadd h383 h372 carry282;
(* _25 = _24 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v25 v24 (-0x4000000)@int64;
(* h2_84 = h2_68 - _25; *)
ssub h284 h268 v25;
(* _26 = h4_71 + 33554432; *)
sadd v26 h471 0x2000000@int64;
(* carry4_85 = _26 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry485 tmp_to_use v26 26;
(* h5_86 = h5_75 + carry4_85; *)
sadd h586 h575 carry485;
(* _27 = _26 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v27 v26 (-0x4000000)@int64;
(* h4_87 = h4_71 - _27; *)
ssub h487 h471 v27;
(* _28 = h6_74 + 33554432; *)
sadd v28 h674 0x2000000@int64;
(* carry6_88 = _28 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry688 tmp_to_use v28 26;
(* h7_89 = h7_78 + carry6_88; *)
sadd h789 h778 carry688;
(* _29 = _28 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v29 v28 (-0x4000000)@int64;
(* h6_90 = h6_74 - _29; *)
ssub h690 h674 v29;
(* _30 = h8_77 + 33554432; *)
sadd v30 h877 0x2000000@int64;
(* carry8_91 = _30 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry891 tmp_to_use v30 26;
(* h9_92 = h9_66 + carry8_91; *)
sadd h992 h966 carry891;
(* _31 = _30 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v31 v30 (-0x4000000)@int64;
(* h8_93 = h8_77 - _31; *)
ssub h893 h877 v31;
(* _32 = (int) h0_81; *)
cast v32@int32 h081@int64;
(* *h_94(D) = _32; *)
mov h94_0 v32;
(* _33 = (int) h1_80; *)
cast v33@int32 h180@int64;
(* MEM[(int32_t * )h_94(D) + 4B] = _33; *)
mov h94_4 v33;
(* _34 = (int) h2_84; *)
cast v34@int32 h284@int64;
(* MEM[(int32_t * )h_94(D) + 8B] = _34; *)
mov h94_8 v34;
(* _35 = (int) h3_83; *)
cast v35@int32 h383@int64;
(* MEM[(int32_t * )h_94(D) + 12B] = _35; *)
mov h94_12 v35;
(* _36 = (int) h4_87; *)
cast v36@int32 h487@int64;
(* MEM[(int32_t * )h_94(D) + 16B] = _36; *)
mov h94_16 v36;
(* _37 = (int) h5_86; *)
cast v37@int32 h586@int64;
(* MEM[(int32_t * )h_94(D) + 20B] = _37; *)
mov h94_20 v37;
(* _38 = (int) h6_90; *)
cast v38@int32 h690@int64;
(* MEM[(int32_t * )h_94(D) + 24B] = _38; *)
mov h94_24 v38;
(* _39 = (int) h7_89; *)
cast v39@int32 h789@int64;
(* MEM[(int32_t * )h_94(D) + 28B] = _39; *)
mov h94_28 v39;
(* _40 = (int) h8_93; *)
cast v40@int32 h893@int64;
(* MEM[(int32_t * )h_94(D) + 32B] = _40; *)
mov h94_32 v40;
(* _41 = (int) h9_92; *)
cast v41@int32 h992@int64;
(* MEM[(int32_t * )h_94(D) + 36B] = _41; *)
mov h94_36 v41;
(* return; *)


(* Start with unused lhs *)
mov _ h94_0@int32;
mov _ h94_4@int32;
mov _ h94_8@int32;
mov _ h94_12@int32;
mov _ h94_16@int32;
mov _ h94_20@int32;
mov _ h94_24@int32;
mov _ h94_28@int32;
mov _ h94_32@int32;
mov _ h94_36@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

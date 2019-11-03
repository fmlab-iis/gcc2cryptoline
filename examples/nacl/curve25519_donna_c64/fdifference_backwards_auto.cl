proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov iin52_0@int64 _;
mov iin52_8@int64 _;
mov iin52_16@int64 _;
mov iin52_24@int64 _;
mov iin52_32@int64 _;
mov ioutput53_0@int64 _;
mov ioutput53_8@int64 _;
mov ioutput53_16@int64 _;
mov ioutput53_24@int64 _;
mov ioutput53_32@int64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = MEM[(const int64_t * )iin_52(D)]; *)
mov v1 iin52_0;
(* _2 = MEM[(int64_t * )ioutput_53(D)]; *)
mov v2 ioutput53_0;
(* _3 = _1 - _2; *)
ssub v3 v1 v2;
(* MEM[(int64_t * )ioutput_53(D)] = _3; *)
mov ioutput53_0 v3;
(* _4 = MEM[(const int64_t * )iin_52(D) + 8B]; *)
mov v4 iin52_8;
(* _5 = MEM[(int64_t * )ioutput_53(D) + 8B]; *)
mov v5 ioutput53_8;
(* _6 = _4 - _5; *)
ssub v6 v4 v5;
(* MEM[(int64_t * )ioutput_53(D) + 8B] = _6; *)
mov ioutput53_8 v6;
(* _7 = MEM[(const int64_t * )iin_52(D) + 16B]; *)
mov v7 iin52_16;
(* _8 = MEM[(int64_t * )ioutput_53(D) + 16B]; *)
mov v8 ioutput53_16;
(* _9 = _7 - _8; *)
ssub v9 v7 v8;
(* MEM[(int64_t * )ioutput_53(D) + 16B] = _9; *)
mov ioutput53_16 v9;
(* _10 = MEM[(const int64_t * )iin_52(D) + 24B]; *)
mov v10 iin52_24;
(* _11 = MEM[(int64_t * )ioutput_53(D) + 24B]; *)
mov v11 ioutput53_24;
(* _12 = _10 - _11; *)
ssub v12 v10 v11;
(* MEM[(int64_t * )ioutput_53(D) + 24B] = _12; *)
mov ioutput53_24 v12;
(* _13 = MEM[(const int64_t * )iin_52(D) + 32B]; *)
mov v13 iin52_32;
(* _14 = MEM[(int64_t * )ioutput_53(D) + 32B]; *)
mov v14 ioutput53_32;
(* _15 = _13 - _14; *)
ssub v15 v13 v14;
(* t_59 = _3 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t59 tmp_to_use v3 63;
(* _16 = t_59 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v16 t59 0x8000000000000@int64;
(* _17 = _3 + _16; *)
sadd v17 v3 v16;
(* _18 = t_59 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v18 t59 0x1@int64;
(* _19 = _6 - _18; *)
ssub v19 v6 v18;
(* t_60 = _19 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t60 tmp_to_use v19 63;
(* _20 = t_60 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v20 t60 0x8000000000000@int64;
(* _21 = _19 + _20; *)
sadd v21 v19 v20;
(* _22 = t_60 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v22 t60 0x1@int64;
(* _23 = _9 - _22; *)
ssub v23 v9 v22;
(* t_61 = _23 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t61 tmp_to_use v23 63;
(* _24 = t_61 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v24 t61 0x8000000000000@int64;
(* _25 = _23 + _24; *)
sadd v25 v23 v24;
(* _26 = t_61 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v26 t61 0x1@int64;
(* _27 = _12 - _26; *)
ssub v27 v12 v26;
(* t_62 = _27 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t62 tmp_to_use v27 63;
(* _28 = t_62 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v28 t62 0x8000000000000@int64;
(* _29 = _27 + _28; *)
sadd v29 v27 v28;
(* _30 = t_62 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v30 t62 0x1@int64;
(* _31 = _15 - _30; *)
ssub v31 v15 v30;
(* t_63 = _31 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t63 tmp_to_use v31 63;
(* _32 = t_63 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v32 t63 0x8000000000000@int64;
(* _33 = _31 + _32; *)
sadd v33 v31 v32;
(* _34 = t_63 & 19; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x13@int64 = 0x00000000000013 *)
(* Note: 0x13@int64 = 0b00000000000000000000000000000000000000000000000000000000010011 *)
and int64 v34 t63 0x13@int64;
(* _35 = _17 - _34; *)
ssub v35 v17 v34;
(* t_64 = _35 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t64 tmp_to_use v35 63;
(* _36 = t_64 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v36 t64 0x8000000000000@int64;
(* _37 = _35 + _36; *)
sadd v37 v35 v36;
(* MEM[(int64_t * )ioutput_53(D)] = _37; *)
mov ioutput53_0 v37;
(* _38 = t_64 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v38 t64 0x1@int64;
(* _39 = _21 - _38; *)
ssub v39 v21 v38;
(* t_66 = _39 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t66 tmp_to_use v39 63;
(* _40 = t_66 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v40 t66 0x8000000000000@int64;
(* _41 = _39 + _40; *)
sadd v41 v39 v40;
(* MEM[(int64_t * )ioutput_53(D) + 8B] = _41; *)
mov ioutput53_8 v41;
(* _42 = t_66 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v42 t66 0x1@int64;
(* _43 = _25 - _42; *)
ssub v43 v25 v42;
(* t_68 = _43 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t68 tmp_to_use v43 63;
(* _44 = t_68 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v44 t68 0x8000000000000@int64;
(* _45 = _43 + _44; *)
sadd v45 v43 v44;
(* MEM[(int64_t * )ioutput_53(D) + 16B] = _45; *)
mov ioutput53_16 v45;
(* _46 = t_68 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v46 t68 0x1@int64;
(* _47 = _29 - _46; *)
ssub v47 v29 v46;
(* t_70 = _47 >> 63; *)
(* TODO: signed operation, need check *)
ssplit t70 tmp_to_use v47 63;
(* _48 = t_70 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
and int64 v48 t70 0x8000000000000@int64;
(* _49 = _47 + _48; *)
sadd v49 v47 v48;
(* MEM[(int64_t * )ioutput_53(D) + 24B] = _49; *)
mov ioutput53_24 v49;
(* _50 = t_70 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
and int64 v50 t70 0x1@int64;
(* _51 = _33 - _50; *)
ssub v51 v33 v50;
(* MEM[(int64_t * )ioutput_53(D) + 32B] = _51; *)
mov ioutput53_32 v51;
(* return; *)


(* Start with unused lhs *)
mov _ ioutput53_0@int64;
mov _ ioutput53_8@int64;
mov _ ioutput53_16@int64;
mov _ ioutput53_24@int64;
mov _ ioutput53_32@int64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

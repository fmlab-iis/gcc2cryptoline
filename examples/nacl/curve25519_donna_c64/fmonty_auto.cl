proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov zz_0@uint64 _;
mov zz_8@uint64 _;
mov zz_16@uint64 _;
mov zz_24@uint64 _;
mov zz_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* __builtin_memcpy (&origx, x_2(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fsum (x_2(D), z_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fdifference_backwards (z_3(D), &origx); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* __builtin_memcpy (&origxprime, xprime_6(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fsum (xprime_6(D), zprime_7(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fdifference_backwards (zprime_7(D), &origxprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fmul (&xxprime, xprime_6(D), z_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fmul (&zzprime, x_2(D), zprime_7(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* MEM[(char * {ref-all})&origxprime] = MEM[(char * {ref-all})&xxprime]; *)
(* TODO: skipped, no heuristics ,need self translating *)
(* fsum (&xxprime, &zzprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fdifference_backwards (&zzprime, &origxprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fsquare (x3_14(D), &xxprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fsquare (&zzzprime, &zzprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fmul (z3_17(D), &zzzprime, qmqp_18(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fsquare (&xx, x_2(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fsquare (&zz, z_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fmul (x2_22(D), &xx, &zz); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fdifference_backwards (&zz, &xx); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _40 = MEM[(const felem * )&zz]; *)
mov v40 zz_0;
(* a_43 = _40 w* 121665; *)
umulj a43 v40 0x1db41@uint64;
(* _44 = (long unsigned int) a_43; *)
cast v44@uint64 a43@uint128;
(* _45 = _44 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v45 v44 0x7ffffffffffff@uint64;
(* _46 = MEM[(const felem * )&zz + 8B]; *)
mov v46 zz_8;
(* _48 = _46 w* 121665; *)
umulj v48 v46 0x1db41@uint64;
(* _49 = a_43 >> 51; *)
usplit v49 tmp_to_use a43 51;
(* a_50 = _48 + _49; *)
uadd a50 v48 v49;
(* _51 = (long unsigned int) a_50; *)
cast v51@uint64 a50@uint128;
(* _52 = _51 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v52 v51 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 8B] = _52; *)
mov zzz_8 v52;
(* _53 = MEM[(const felem * )&zz + 16B]; *)
mov v53 zz_16;
(* _55 = _53 w* 121665; *)
umulj v55 v53 0x1db41@uint64;
(* _56 = a_50 >> 51; *)
usplit v56 tmp_to_use a50 51;
(* a_57 = _55 + _56; *)
uadd a57 v55 v56;
(* _58 = (long unsigned int) a_57; *)
cast v58@uint64 a57@uint128;
(* _59 = _58 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v59 v58 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 16B] = _59; *)
mov zzz_16 v59;
(* _60 = MEM[(const felem * )&zz + 24B]; *)
mov v60 zz_24;
(* _62 = _60 w* 121665; *)
umulj v62 v60 0x1db41@uint64;
(* _63 = a_57 >> 51; *)
usplit v63 tmp_to_use a57 51;
(* a_64 = _62 + _63; *)
uadd a64 v62 v63;
(* _65 = (long unsigned int) a_64; *)
cast v65@uint64 a64@uint128;
(* _66 = _65 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v66 v65 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 24B] = _66; *)
mov zzz_24 v66;
(* _67 = MEM[(const felem * )&zz + 32B]; *)
mov v67 zz_32;
(* _69 = _67 w* 121665; *)
umulj v69 v67 0x1db41@uint64;
(* _70 = a_64 >> 51; *)
usplit v70 tmp_to_use a64 51;
(* a_71 = _69 + _70; *)
uadd a71 v69 v70;
(* _72 = (long unsigned int) a_71; *)
cast v72@uint64 a71@uint128;
(* _73 = _72 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v73 v72 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 32B] = _73; *)
mov zzz_32 v73;
(* _74 = a_71 >> 51; *)
usplit v74 tmp_to_use a71 51;
(* _75 = (long unsigned int) _74; *)
cast v75@uint64 v74@uint128;
(* _76 = _75 * 19; *)
umul v76 v75 0x13@uint64;
(* _77 = _45 + _76; *)
uadd v77 v45 v76;
(* MEM[(felem * )&zzz] = _77; *)
mov zzz_0 v77;
(* fsum (&zzz, &xx); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* fmul (z2_27(D), &zz, &zzz); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* origx ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* origxprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zzz ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* xx ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zz ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* xxprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zzprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zzzprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ zzz_0@uint64;
mov _ zzz_8@uint64;
mov _ zzz_16@uint64;
mov _ zzz_24@uint64;
mov _ zzz_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

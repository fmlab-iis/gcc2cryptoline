proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov beta_0@uint64 _;
mov beta_8@uint64 _;
mov beta_16@uint64 _;
mov beta_24@uint64 _;
mov beta_32@uint64 _;
mov beta_40@uint64 _;
mov beta_48@uint64 _;
mov beta_56@uint64 _;
mov beta_64@uint64 _;
mov delta_0@uint64 _;
mov delta_8@uint64 _;
mov delta_16@uint64 _;
mov delta_24@uint64 _;
mov delta_32@uint64 _;
mov delta_40@uint64 _;
mov delta_48@uint64 _;
mov delta_56@uint64 _;
mov delta_64@uint64 _;
mov gamma_0@uint64 _;
mov gamma_8@uint64 _;
mov gamma_16@uint64 _;
mov gamma_24@uint64 _;
mov gamma_32@uint64 _;
mov gamma_40@uint64 _;
mov gamma_48@uint64 _;
mov gamma_56@uint64 _;
mov gamma_64@uint64 _;
mov tmp_0@uint128 _;
mov tmp_16@uint128 _;
mov tmp_32@uint128 _;
mov tmp_48@uint128 _;
mov tmp_64@uint128 _;
mov tmp_80@uint128 _;
mov tmp_96@uint128 _;
mov tmp_112@uint128 _;
mov tmp_128@uint128 _;
mov tmp2_0@uint128 _;
mov tmp2_16@uint128 _;
mov tmp2_32@uint128 _;
mov tmp2_48@uint128 _;
mov tmp2_64@uint128 _;
mov tmp2_80@uint128 _;
mov tmp2_96@uint128 _;
mov tmp2_112@uint128 _;
mov tmp2_128@uint128 _;
mov x_in2_0@uint64 _;
mov x_in2_8@uint64 _;
mov x_in2_16@uint64 _;
mov x_in2_24@uint64 _;
mov x_in2_32@uint64 _;
mov x_in2_40@uint64 _;
mov x_in2_48@uint64 _;
mov x_in2_56@uint64 _;
mov x_in2_64@uint64 _;
mov x_out19_0@uint64 _;
mov x_out19_8@uint64 _;
mov x_out19_16@uint64 _;
mov x_out19_24@uint64 _;
mov x_out19_32@uint64 _;
mov x_out19_40@uint64 _;
mov x_out19_48@uint64 _;
mov x_out19_56@uint64 _;
mov x_out19_64@uint64 _;
mov y_in6_0@uint64 _;
mov y_in6_8@uint64 _;
mov y_in6_16@uint64 _;
mov y_in6_24@uint64 _;
mov y_in6_32@uint64 _;
mov y_in6_40@uint64 _;
mov y_in6_48@uint64 _;
mov y_in6_56@uint64 _;
mov y_in6_64@uint64 _;
mov z_in3_0@uint64 _;
mov z_in3_8@uint64 _;
mov z_in3_16@uint64 _;
mov z_in3_24@uint64 _;
mov z_in3_32@uint64 _;
mov z_in3_40@uint64 _;
mov z_in3_48@uint64 _;
mov z_in3_56@uint64 _;
mov z_in3_64@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* vect__61.168_468 = MEM[(const limb * )x_in_2(D)]; *)
mov vect__61168468_0 x_in2_0;
mov vect__61168468_8 x_in2_8;
(* vect__61.169_470 = MEM[(const limb * )x_in_2(D) + 16B]; *)
mov vect__61169470_0 x_in2_16;
mov vect__61169470_8 x_in2_24;
(* vect__61.170_472 = MEM[(const limb * )x_in_2(D) + 32B]; *)
mov vect__61170472_0 x_in2_32;
mov vect__61170472_8 x_in2_40;
(* vect__61.171_474 = MEM[(const limb * )x_in_2(D) + 48B]; *)
mov vect__61171474_0 x_in2_48;
mov vect__61171474_8 x_in2_56;
(* MEM[(limb * )&ftmp] = vect__61.168_468; *)
mov ftmp_0 vect__61168468_0;
mov ftmp_8 vect__61168468_8;
(* MEM[(limb * )&ftmp + 16B] = vect__61.169_470; *)
mov ftmp_16 vect__61169470_0;
mov ftmp_24 vect__61169470_8;
(* MEM[(limb * )&ftmp + 32B] = vect__61.170_472; *)
mov ftmp_32 vect__61170472_0;
mov ftmp_40 vect__61170472_8;
(* MEM[(limb * )&ftmp + 48B] = vect__61.171_474; *)
mov ftmp_48 vect__61171474_0;
mov ftmp_56 vect__61171474_8;
(* _69 = MEM[(const limb * )x_in_2(D) + 64B]; *)
mov v69 x_in2_64;
(* MEM[(limb * )&ftmp + 64B] = _69; *)
mov ftmp_64 v69;
(* MEM[(limb * )&ftmp2] = vect__61.168_468; *)
mov ftmp2_0 vect__61168468_0;
mov ftmp2_8 vect__61168468_8;
(* MEM[(limb * )&ftmp2 + 16B] = vect__61.169_470; *)
mov ftmp2_16 vect__61169470_0;
mov ftmp2_24 vect__61169470_8;
(* MEM[(limb * )&ftmp2 + 32B] = vect__61.170_472; *)
mov ftmp2_32 vect__61170472_0;
mov ftmp2_40 vect__61170472_8;
(* MEM[(limb * )&ftmp2 + 48B] = vect__61.171_474; *)
mov ftmp2_48 vect__61171474_0;
mov ftmp2_56 vect__61171474_8;
(* MEM[(limb * )&ftmp2 + 64B] = _69; *)
mov ftmp2_64 v69;
(* felem_square (&tmp, z_in_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_reduce (&delta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_square (&tmp, y_in_6(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_reduce (&gamma, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_mul (&tmp, x_in_2(D), &gamma); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_reduce (&beta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _422 = MEM[(limb * )&ftmp]; *)
mov v422 ftmp_0;
(* _423 = MEM[(const limb * )&delta]; *)
mov v423 delta_0;
(* _393 = _422 + 4611686018427387872; *)
uadd v393 v422 0x3fffffffffffffe0@uint64;
(* _425 = _393 - _423; *)
usub v425 v393 v423;
(* MEM[(limb * )&ftmp] = _425; *)
mov ftmp_0 v425;
(* _426 = MEM[(limb * )&ftmp + 8B]; *)
mov v426 ftmp_8;
(* _427 = MEM[(const limb * )&delta + 8B]; *)
mov v427 delta_8;
(* _391 = _426 + 4611686018427387888; *)
uadd v391 v426 0x3ffffffffffffff0@uint64;
(* _429 = _391 - _427; *)
usub v429 v391 v427;
(* MEM[(limb * )&ftmp + 8B] = _429; *)
mov ftmp_8 v429;
(* _430 = MEM[(limb * )&ftmp + 16B]; *)
mov v430 ftmp_16;
(* _431 = MEM[(const limb * )&delta + 16B]; *)
mov v431 delta_16;
(* _389 = _430 + 4611686018427387888; *)
uadd v389 v430 0x3ffffffffffffff0@uint64;
(* _433 = _389 - _431; *)
usub v433 v389 v431;
(* MEM[(limb * )&ftmp + 16B] = _433; *)
mov ftmp_16 v433;
(* _434 = MEM[(limb * )&ftmp + 24B]; *)
mov v434 ftmp_24;
(* _435 = MEM[(const limb * )&delta + 24B]; *)
mov v435 delta_24;
(* _387 = _434 + 4611686018427387888; *)
uadd v387 v434 0x3ffffffffffffff0@uint64;
(* _437 = _387 - _435; *)
usub v437 v387 v435;
(* MEM[(limb * )&ftmp + 24B] = _437; *)
mov ftmp_24 v437;
(* _438 = MEM[(limb * )&ftmp + 32B]; *)
mov v438 ftmp_32;
(* _439 = MEM[(const limb * )&delta + 32B]; *)
mov v439 delta_32;
(* _385 = _438 + 4611686018427387888; *)
uadd v385 v438 0x3ffffffffffffff0@uint64;
(* _441 = _385 - _439; *)
usub v441 v385 v439;
(* MEM[(limb * )&ftmp + 32B] = _441; *)
mov ftmp_32 v441;
(* _442 = MEM[(limb * )&ftmp + 40B]; *)
mov v442 ftmp_40;
(* _443 = MEM[(const limb * )&delta + 40B]; *)
mov v443 delta_40;
(* _383 = _442 + 4611686018427387888; *)
uadd v383 v442 0x3ffffffffffffff0@uint64;
(* _445 = _383 - _443; *)
usub v445 v383 v443;
(* MEM[(limb * )&ftmp + 40B] = _445; *)
mov ftmp_40 v445;
(* _446 = MEM[(limb * )&ftmp + 48B]; *)
mov v446 ftmp_48;
(* _447 = MEM[(const limb * )&delta + 48B]; *)
mov v447 delta_48;
(* _381 = _446 + 4611686018427387888; *)
uadd v381 v446 0x3ffffffffffffff0@uint64;
(* _449 = _381 - _447; *)
usub v449 v381 v447;
(* MEM[(limb * )&ftmp + 48B] = _449; *)
mov ftmp_48 v449;
(* _450 = MEM[(limb * )&ftmp + 56B]; *)
mov v450 ftmp_56;
(* _451 = MEM[(const limb * )&delta + 56B]; *)
mov v451 delta_56;
(* _379 = _450 + 4611686018427387888; *)
uadd v379 v450 0x3ffffffffffffff0@uint64;
(* _453 = _379 - _451; *)
usub v453 v379 v451;
(* MEM[(limb * )&ftmp + 56B] = _453; *)
mov ftmp_56 v453;
(* _454 = MEM[(limb * )&ftmp + 64B]; *)
mov v454 ftmp_64;
(* _455 = MEM[(const limb * )&delta + 64B]; *)
mov v455 delta_64;
(* _377 = _454 + 4611686018427387888; *)
uadd v377 v454 0x3ffffffffffffff0@uint64;
(* _457 = _377 - _455; *)
usub v457 v377 v455;
(* MEM[(limb * )&ftmp + 64B] = _457; *)
mov ftmp_64 v457;
(* _395 = MEM[(limb * )&ftmp2]; *)
mov v395 ftmp2_0;
(* _397 = _395 + _423; *)
uadd v397 v395 v423;
(* _398 = MEM[(limb * )&ftmp2 + 8B]; *)
mov v398 ftmp2_8;
(* _400 = _398 + _427; *)
uadd v400 v398 v427;
(* _401 = MEM[(limb * )&ftmp2 + 16B]; *)
mov v401 ftmp2_16;
(* _403 = _401 + _431; *)
uadd v403 v401 v431;
(* _404 = MEM[(limb * )&ftmp2 + 24B]; *)
mov v404 ftmp2_24;
(* _406 = _404 + _435; *)
uadd v406 v404 v435;
(* _407 = MEM[(limb * )&ftmp2 + 32B]; *)
mov v407 ftmp2_32;
(* _409 = _407 + _439; *)
uadd v409 v407 v439;
(* _410 = MEM[(limb * )&ftmp2 + 40B]; *)
mov v410 ftmp2_40;
(* _412 = _410 + _443; *)
uadd v412 v410 v443;
(* _413 = MEM[(limb * )&ftmp2 + 48B]; *)
mov v413 ftmp2_48;
(* _415 = _413 + _447; *)
uadd v415 v413 v447;
(* _416 = MEM[(limb * )&ftmp2 + 56B]; *)
mov v416 ftmp2_56;
(* _418 = _416 + _451; *)
uadd v418 v416 v451;
(* _419 = MEM[(limb * )&ftmp2 + 64B]; *)
mov v419 ftmp2_64;
(* _421 = _419 + _455; *)
uadd v421 v419 v455;
(* _378 = _397 * 3; *)
umul v378 v397 0x3@uint64;
(* MEM[(limb * )&ftmp2] = _378; *)
mov ftmp2_0 v378;
(* _380 = _400 * 3; *)
umul v380 v400 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 8B] = _380; *)
mov ftmp2_8 v380;
(* _382 = _403 * 3; *)
umul v382 v403 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 16B] = _382; *)
mov ftmp2_16 v382;
(* _384 = _406 * 3; *)
umul v384 v406 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 24B] = _384; *)
mov ftmp2_24 v384;
(* _386 = _409 * 3; *)
umul v386 v409 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 32B] = _386; *)
mov ftmp2_32 v386;
(* _388 = _412 * 3; *)
umul v388 v412 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 40B] = _388; *)
mov ftmp2_40 v388;
(* _390 = _415 * 3; *)
umul v390 v415 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 48B] = _390; *)
mov ftmp2_48 v390;
(* _392 = _418 * 3; *)
umul v392 v418 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 56B] = _392; *)
mov ftmp2_56 v392;
(* _394 = _421 * 3; *)
umul v394 v421 0x3@uint64;
(* MEM[(limb * )&ftmp2 + 64B] = _394; *)
mov ftmp2_64 v394;
(* felem_mul (&tmp, &ftmp, &ftmp2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_reduce (&alpha, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_square (&tmp, &alpha); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _52 = MEM[(const limb * )&beta]; *)
mov v52 beta_0;
(* _53 = MEM[(const limb * )&beta + 8B]; *)
mov v53 beta_8;
(* _54 = MEM[(const limb * )&beta + 16B]; *)
mov v54 beta_16;
(* _55 = MEM[(const limb * )&beta + 24B]; *)
mov v55 beta_24;
(* _56 = MEM[(const limb * )&beta + 32B]; *)
mov v56 beta_32;
(* _57 = MEM[(const limb * )&beta + 40B]; *)
mov v57 beta_40;
(* _58 = MEM[(const limb * )&beta + 48B]; *)
mov v58 beta_48;
(* _59 = MEM[(const limb * )&beta + 56B]; *)
mov v59 beta_56;
(* _60 = MEM[(const limb * )&beta + 64B]; *)
mov v60 beta_64;
(* _360 = _52 * 8; *)
umul v360 v52 0x8@uint64;
(* MEM[(limb * )&ftmp] = _360; *)
mov ftmp_0 v360;
(* _362 = _53 * 8; *)
umul v362 v53 0x8@uint64;
(* MEM[(limb * )&ftmp + 8B] = _362; *)
mov ftmp_8 v362;
(* _364 = _54 * 8; *)
umul v364 v54 0x8@uint64;
(* MEM[(limb * )&ftmp + 16B] = _364; *)
mov ftmp_16 v364;
(* _366 = _55 * 8; *)
umul v366 v55 0x8@uint64;
(* MEM[(limb * )&ftmp + 24B] = _366; *)
mov ftmp_24 v366;
(* _368 = _56 * 8; *)
umul v368 v56 0x8@uint64;
(* MEM[(limb * )&ftmp + 32B] = _368; *)
mov ftmp_32 v368;
(* _370 = _57 * 8; *)
umul v370 v57 0x8@uint64;
(* MEM[(limb * )&ftmp + 40B] = _370; *)
mov ftmp_40 v370;
(* _372 = _58 * 8; *)
umul v372 v58 0x8@uint64;
(* MEM[(limb * )&ftmp + 48B] = _372; *)
mov ftmp_48 v372;
(* _374 = _59 * 8; *)
umul v374 v59 0x8@uint64;
(* MEM[(limb * )&ftmp + 56B] = _374; *)
mov ftmp_56 v374;
(* _376 = _60 * 8; *)
umul v376 v60 0x8@uint64;
(* MEM[(limb * )&ftmp + 64B] = _376; *)
mov ftmp_64 v376;
(* _314 = MEM[(uint128_t * )&tmp]; *)
mov v314 tmp_0;
(* _316 = 9223372036854775744 - _360; *)
usub v316 0x7fffffffffffffc0@uint64 v360;
(* _317 = (__int128 unsigned) _316; *)
vpc v317@uint128 v316@uint64;
(* _318 = _314 + _317; *)
uadd v318 v314 v317;
(* MEM[(uint128_t * )&tmp] = _318; *)
mov tmp_0 v318;
(* _319 = MEM[(uint128_t * )&tmp + 16B]; *)
mov v319 tmp_16;
(* _321 = 9223372036854775776 - _362; *)
usub v321 0x7fffffffffffffe0@uint64 v362;
(* _322 = (__int128 unsigned) _321; *)
vpc v322@uint128 v321@uint64;
(* _323 = _319 + _322; *)
uadd v323 v319 v322;
(* MEM[(uint128_t * )&tmp + 16B] = _323; *)
mov tmp_16 v323;
(* _324 = MEM[(uint128_t * )&tmp + 32B]; *)
mov v324 tmp_32;
(* _326 = 9223372036854775776 - _364; *)
usub v326 0x7fffffffffffffe0@uint64 v364;
(* _327 = (__int128 unsigned) _326; *)
vpc v327@uint128 v326@uint64;
(* _328 = _324 + _327; *)
uadd v328 v324 v327;
(* MEM[(uint128_t * )&tmp + 32B] = _328; *)
mov tmp_32 v328;
(* _329 = MEM[(uint128_t * )&tmp + 48B]; *)
mov v329 tmp_48;
(* _331 = 9223372036854775776 - _366; *)
usub v331 0x7fffffffffffffe0@uint64 v366;
(* _332 = (__int128 unsigned) _331; *)
vpc v332@uint128 v331@uint64;
(* _333 = _329 + _332; *)
uadd v333 v329 v332;
(* MEM[(uint128_t * )&tmp + 48B] = _333; *)
mov tmp_48 v333;
(* _334 = MEM[(uint128_t * )&tmp + 64B]; *)
mov v334 tmp_64;
(* _336 = 9223372036854775776 - _368; *)
usub v336 0x7fffffffffffffe0@uint64 v368;
(* _337 = (__int128 unsigned) _336; *)
vpc v337@uint128 v336@uint64;
(* _338 = _334 + _337; *)
uadd v338 v334 v337;
(* MEM[(uint128_t * )&tmp + 64B] = _338; *)
mov tmp_64 v338;
(* _339 = MEM[(uint128_t * )&tmp + 80B]; *)
mov v339 tmp_80;
(* _341 = 9223372036854775776 - _370; *)
usub v341 0x7fffffffffffffe0@uint64 v370;
(* _342 = (__int128 unsigned) _341; *)
vpc v342@uint128 v341@uint64;
(* _343 = _339 + _342; *)
uadd v343 v339 v342;
(* MEM[(uint128_t * )&tmp + 80B] = _343; *)
mov tmp_80 v343;
(* _344 = MEM[(uint128_t * )&tmp + 96B]; *)
mov v344 tmp_96;
(* _346 = 9223372036854775776 - _372; *)
usub v346 0x7fffffffffffffe0@uint64 v372;
(* _347 = (__int128 unsigned) _346; *)
vpc v347@uint128 v346@uint64;
(* _348 = _344 + _347; *)
uadd v348 v344 v347;
(* MEM[(uint128_t * )&tmp + 96B] = _348; *)
mov tmp_96 v348;
(* _349 = MEM[(uint128_t * )&tmp + 112B]; *)
mov v349 tmp_112;
(* _351 = 9223372036854775776 - _374; *)
usub v351 0x7fffffffffffffe0@uint64 v374;
(* _352 = (__int128 unsigned) _351; *)
vpc v352@uint128 v351@uint64;
(* _353 = _349 + _352; *)
uadd v353 v349 v352;
(* MEM[(uint128_t * )&tmp + 112B] = _353; *)
mov tmp_112 v353;
(* _354 = MEM[(uint128_t * )&tmp + 128B]; *)
mov v354 tmp_128;
(* _356 = 9223372036854775776 - _376; *)
usub v356 0x7fffffffffffffe0@uint64 v376;
(* _357 = (__int128 unsigned) _356; *)
vpc v357@uint128 v356@uint64;
(* _358 = _354 + _357; *)
uadd v358 v354 v357;
(* MEM[(uint128_t * )&tmp + 128B] = _358; *)
mov tmp_128 v358;
(* felem_reduce (x_out_19(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect__287.178_102 = MEM[(limb * )&delta]; *)
mov vect__287178102_0 delta_0;
mov vect__287178102_8 delta_8;
(* vect__287.179_104 = MEM[(limb * )&delta + 16B]; *)
mov vect__287179104_0 delta_16;
mov vect__287179104_8 delta_24;
(* vect__287.180_424 = MEM[(limb * )&delta + 32B]; *)
mov vect__287180424_0 delta_32;
mov vect__287180424_8 delta_40;
(* vect__287.181_432 = MEM[(limb * )&delta + 48B]; *)
mov vect__287181432_0 delta_48;
mov vect__287181432_8 delta_56;
(* vect__288.184_440 = MEM[(const limb * )&gamma]; *)
mov vect__288184440_0 gamma_0;
mov vect__288184440_8 gamma_8;
(* vect__288.185_448 = MEM[(const limb * )&gamma + 16B]; *)
mov vect__288185448_0 gamma_16;
mov vect__288185448_8 gamma_24;
(* vect__288.186_456 = MEM[(const limb * )&gamma + 32B]; *)
mov vect__288186456_0 gamma_32;
mov vect__288186456_8 gamma_40;
(* vect__288.187_167 = MEM[(const limb * )&gamma + 48B]; *)
mov vect__288187167_0 gamma_48;
mov vect__288187167_8 gamma_56;
(* vect__289.188_175 = vect__287.178_102 + vect__288.184_440; *)
uadd vect__289188175_0 vect__287178102_0 vect__288184440_0;
uadd vect__289188175_8 vect__287178102_8 vect__288184440_8;
(* vect__289.188_179 = vect__287.179_104 + vect__288.185_448; *)
uadd vect__289188179_0 vect__287179104_0 vect__288185448_0;
uadd vect__289188179_8 vect__287179104_8 vect__288185448_8;
(* vect__289.188_183 = vect__287.180_424 + vect__288.186_456; *)
uadd vect__289188183_0 vect__287180424_0 vect__288186456_0;
uadd vect__289188183_8 vect__287180424_8 vect__288186456_8;
(* vect__289.188_187 = vect__288.187_167 + vect__287.181_432; *)
uadd vect__289188187_0 vect__288187167_0 vect__287181432_0;
uadd vect__289188187_8 vect__288187167_8 vect__287181432_8;
(* MEM[(limb * )&delta] = vect__289.188_175; *)
mov delta_0 vect__289188175_0;
mov delta_8 vect__289188175_8;
(* MEM[(limb * )&delta + 16B] = vect__289.188_179; *)
mov delta_16 vect__289188179_0;
mov delta_24 vect__289188179_8;
(* MEM[(limb * )&delta + 32B] = vect__289.188_183; *)
mov delta_32 vect__289188183_0;
mov delta_40 vect__289188183_8;
(* MEM[(limb * )&delta + 48B] = vect__289.188_187; *)
mov delta_48 vect__289188187_0;
mov delta_56 vect__289188187_8;
(* _311 = MEM[(limb * )&delta + 64B]; *)
mov v311 delta_64;
(* _312 = MEM[(const limb * )&gamma + 64B]; *)
mov v312 gamma_64;
(* _313 = _311 + _312; *)
uadd v313 v311 v312;
(* MEM[(limb * )&delta + 64B] = _313; *)
mov delta_64 v313;
(* vect__43.193_132 = MEM[(const limb * )y_in_6(D)]; *)
mov vect__43193132_0 y_in6_0;
mov vect__43193132_8 y_in6_8;
(* vect__43.194_140 = MEM[(const limb * )y_in_6(D) + 16B]; *)
mov vect__43194140_0 y_in6_16;
mov vect__43194140_8 y_in6_24;
(* vect__43.195_361 = MEM[(const limb * )y_in_6(D) + 32B]; *)
mov vect__43195361_0 y_in6_32;
mov vect__43195361_8 y_in6_40;
(* vect__43.196_365 = MEM[(const limb * )y_in_6(D) + 48B]; *)
mov vect__43196365_0 y_in6_48;
mov vect__43196365_8 y_in6_56;
(* _51 = MEM[(const limb * )y_in_6(D) + 64B]; *)
mov v51 y_in6_64;
(* vect__261.199_371 = MEM[(const limb * )z_in_3(D)]; *)
mov vect__261199371_0 z_in3_0;
mov vect__261199371_8 z_in3_8;
(* vect__261.200_375 = MEM[(const limb * )z_in_3(D) + 16B]; *)
mov vect__261200375_0 z_in3_16;
mov vect__261200375_8 z_in3_24;
(* vect__261.201_320 = MEM[(const limb * )z_in_3(D) + 32B]; *)
mov vect__261201320_0 z_in3_32;
mov vect__261201320_8 z_in3_40;
(* vect__261.202_330 = MEM[(const limb * )z_in_3(D) + 48B]; *)
mov vect__261202330_0 z_in3_48;
mov vect__261202330_8 z_in3_56;
(* vect__262.203_340 = vect__43.193_132 + vect__261.199_371; *)
uadd vect__262203340_0 vect__43193132_0 vect__261199371_0;
uadd vect__262203340_8 vect__43193132_8 vect__261199371_8;
(* vect__262.203_345 = vect__43.194_140 + vect__261.200_375; *)
uadd vect__262203345_0 vect__43194140_0 vect__261200375_0;
uadd vect__262203345_8 vect__43194140_8 vect__261200375_8;
(* vect__262.203_350 = vect__261.201_320 + vect__43.195_361; *)
uadd vect__262203350_0 vect__261201320_0 vect__43195361_0;
uadd vect__262203350_8 vect__261201320_8 vect__43195361_8;
(* vect__262.203_355 = vect__261.202_330 + vect__43.196_365; *)
uadd vect__262203355_0 vect__261202330_0 vect__43196365_0;
uadd vect__262203355_8 vect__261202330_8 vect__43196365_8;
(* MEM[(limb * )&ftmp] = vect__262.203_340; *)
mov ftmp_0 vect__262203340_0;
mov ftmp_8 vect__262203340_8;
(* MEM[(limb * )&ftmp + 16B] = vect__262.203_345; *)
mov ftmp_16 vect__262203345_0;
mov ftmp_24 vect__262203345_8;
(* MEM[(limb * )&ftmp + 32B] = vect__262.203_350; *)
mov ftmp_32 vect__262203350_0;
mov ftmp_40 vect__262203350_8;
(* MEM[(limb * )&ftmp + 48B] = vect__262.203_355; *)
mov ftmp_48 vect__262203355_0;
mov ftmp_56 vect__262203355_8;
(* _285 = MEM[(const limb * )z_in_3(D) + 64B]; *)
mov v285 z_in3_64;
(* _286 = _51 + _285; *)
uadd v286 v51 v285;
(* MEM[(limb * )&ftmp + 64B] = _286; *)
mov ftmp_64 v286;
(* felem_square (&tmp, &ftmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _215 = MEM[(uint128_t * )&tmp]; *)
mov v215 tmp_0;
(* _216 = MEM[(const limb * )&delta]; *)
mov v216 delta_0;
(* _217 = 9223372036854775744 - _216; *)
usub v217 0x7fffffffffffffc0@uint64 v216;
(* _218 = (__int128 unsigned) _217; *)
vpc v218@uint128 v217@uint64;
(* _219 = _215 + _218; *)
uadd v219 v215 v218;
(* MEM[(uint128_t * )&tmp] = _219; *)
mov tmp_0 v219;
(* _220 = MEM[(uint128_t * )&tmp + 16B]; *)
mov v220 tmp_16;
(* _221 = MEM[(const limb * )&delta + 8B]; *)
mov v221 delta_8;
(* _222 = 9223372036854775776 - _221; *)
usub v222 0x7fffffffffffffe0@uint64 v221;
(* _223 = (__int128 unsigned) _222; *)
vpc v223@uint128 v222@uint64;
(* _224 = _220 + _223; *)
uadd v224 v220 v223;
(* MEM[(uint128_t * )&tmp + 16B] = _224; *)
mov tmp_16 v224;
(* _225 = MEM[(uint128_t * )&tmp + 32B]; *)
mov v225 tmp_32;
(* _226 = MEM[(const limb * )&delta + 16B]; *)
mov v226 delta_16;
(* _227 = 9223372036854775776 - _226; *)
usub v227 0x7fffffffffffffe0@uint64 v226;
(* _228 = (__int128 unsigned) _227; *)
vpc v228@uint128 v227@uint64;
(* _229 = _225 + _228; *)
uadd v229 v225 v228;
(* MEM[(uint128_t * )&tmp + 32B] = _229; *)
mov tmp_32 v229;
(* _230 = MEM[(uint128_t * )&tmp + 48B]; *)
mov v230 tmp_48;
(* _231 = MEM[(const limb * )&delta + 24B]; *)
mov v231 delta_24;
(* _232 = 9223372036854775776 - _231; *)
usub v232 0x7fffffffffffffe0@uint64 v231;
(* _233 = (__int128 unsigned) _232; *)
vpc v233@uint128 v232@uint64;
(* _234 = _230 + _233; *)
uadd v234 v230 v233;
(* MEM[(uint128_t * )&tmp + 48B] = _234; *)
mov tmp_48 v234;
(* _235 = MEM[(uint128_t * )&tmp + 64B]; *)
mov v235 tmp_64;
(* _236 = MEM[(const limb * )&delta + 32B]; *)
mov v236 delta_32;
(* _237 = 9223372036854775776 - _236; *)
usub v237 0x7fffffffffffffe0@uint64 v236;
(* _238 = (__int128 unsigned) _237; *)
vpc v238@uint128 v237@uint64;
(* _239 = _235 + _238; *)
uadd v239 v235 v238;
(* MEM[(uint128_t * )&tmp + 64B] = _239; *)
mov tmp_64 v239;
(* _240 = MEM[(uint128_t * )&tmp + 80B]; *)
mov v240 tmp_80;
(* _241 = MEM[(const limb * )&delta + 40B]; *)
mov v241 delta_40;
(* _242 = 9223372036854775776 - _241; *)
usub v242 0x7fffffffffffffe0@uint64 v241;
(* _243 = (__int128 unsigned) _242; *)
vpc v243@uint128 v242@uint64;
(* _244 = _240 + _243; *)
uadd v244 v240 v243;
(* MEM[(uint128_t * )&tmp + 80B] = _244; *)
mov tmp_80 v244;
(* _245 = MEM[(uint128_t * )&tmp + 96B]; *)
mov v245 tmp_96;
(* _246 = MEM[(const limb * )&delta + 48B]; *)
mov v246 delta_48;
(* _247 = 9223372036854775776 - _246; *)
usub v247 0x7fffffffffffffe0@uint64 v246;
(* _248 = (__int128 unsigned) _247; *)
vpc v248@uint128 v247@uint64;
(* _249 = _245 + _248; *)
uadd v249 v245 v248;
(* MEM[(uint128_t * )&tmp + 96B] = _249; *)
mov tmp_96 v249;
(* _250 = MEM[(uint128_t * )&tmp + 112B]; *)
mov v250 tmp_112;
(* _251 = MEM[(const limb * )&delta + 56B]; *)
mov v251 delta_56;
(* _252 = 9223372036854775776 - _251; *)
usub v252 0x7fffffffffffffe0@uint64 v251;
(* _253 = (__int128 unsigned) _252; *)
vpc v253@uint128 v252@uint64;
(* _254 = _250 + _253; *)
uadd v254 v250 v253;
(* MEM[(uint128_t * )&tmp + 112B] = _254; *)
mov tmp_112 v254;
(* _255 = MEM[(uint128_t * )&tmp + 128B]; *)
mov v255 tmp_128;
(* _256 = MEM[(const limb * )&delta + 64B]; *)
mov v256 delta_64;
(* _257 = 9223372036854775776 - _256; *)
usub v257 0x7fffffffffffffe0@uint64 v256;
(* _258 = (__int128 unsigned) _257; *)
vpc v258@uint128 v257@uint64;
(* _259 = _255 + _258; *)
uadd v259 v255 v258;
(* MEM[(uint128_t * )&tmp + 128B] = _259; *)
mov tmp_128 v259;
(* felem_reduce (z_out_25(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _197 = MEM[(limb * )&beta]; *)
mov v197 beta_0;
(* _198 = _197 * 4; *)
umul v198 v197 0x4@uint64;
(* _199 = MEM[(limb * )&beta + 8B]; *)
mov v199 beta_8;
(* _200 = _199 * 4; *)
umul v200 v199 0x4@uint64;
(* _201 = MEM[(limb * )&beta + 16B]; *)
mov v201 beta_16;
(* _202 = _201 * 4; *)
umul v202 v201 0x4@uint64;
(* _203 = MEM[(limb * )&beta + 24B]; *)
mov v203 beta_24;
(* _204 = _203 * 4; *)
umul v204 v203 0x4@uint64;
(* _205 = MEM[(limb * )&beta + 32B]; *)
mov v205 beta_32;
(* _206 = _205 * 4; *)
umul v206 v205 0x4@uint64;
(* _207 = MEM[(limb * )&beta + 40B]; *)
mov v207 beta_40;
(* _208 = _207 * 4; *)
umul v208 v207 0x4@uint64;
(* _209 = MEM[(limb * )&beta + 48B]; *)
mov v209 beta_48;
(* _210 = _209 * 4; *)
umul v210 v209 0x4@uint64;
(* _211 = MEM[(limb * )&beta + 56B]; *)
mov v211 beta_56;
(* _212 = _211 * 4; *)
umul v212 v211 0x4@uint64;
(* _213 = MEM[(limb * )&beta + 64B]; *)
mov v213 beta_64;
(* _214 = _213 * 4; *)
umul v214 v213 0x4@uint64;
(* _162 = MEM[(const limb * )x_out_19(D)]; *)
mov v162 x_out19_0;
(* _420 = _198 + 4611686018427387872; *)
uadd v420 v198 0x3fffffffffffffe0@uint64;
(* _164 = _420 - _162; *)
usub v164 v420 v162;
(* MEM[(limb * )&beta] = _164; *)
mov beta_0 v164;
(* _166 = MEM[(const limb * )x_out_19(D) + 8B]; *)
mov v166 x_out19_8;
(* _417 = _200 + 4611686018427387888; *)
uadd v417 v200 0x3ffffffffffffff0@uint64;
(* _168 = _417 - _166; *)
usub v168 v417 v166;
(* MEM[(limb * )&beta + 8B] = _168; *)
mov beta_8 v168;
(* _170 = MEM[(const limb * )x_out_19(D) + 16B]; *)
mov v170 x_out19_16;
(* _414 = _202 + 4611686018427387888; *)
uadd v414 v202 0x3ffffffffffffff0@uint64;
(* _172 = _414 - _170; *)
usub v172 v414 v170;
(* MEM[(limb * )&beta + 16B] = _172; *)
mov beta_16 v172;
(* _174 = MEM[(const limb * )x_out_19(D) + 24B]; *)
mov v174 x_out19_24;
(* _411 = _204 + 4611686018427387888; *)
uadd v411 v204 0x3ffffffffffffff0@uint64;
(* _176 = _411 - _174; *)
usub v176 v411 v174;
(* MEM[(limb * )&beta + 24B] = _176; *)
mov beta_24 v176;
(* _178 = MEM[(const limb * )x_out_19(D) + 32B]; *)
mov v178 x_out19_32;
(* _408 = _206 + 4611686018427387888; *)
uadd v408 v206 0x3ffffffffffffff0@uint64;
(* _180 = _408 - _178; *)
usub v180 v408 v178;
(* MEM[(limb * )&beta + 32B] = _180; *)
mov beta_32 v180;
(* _182 = MEM[(const limb * )x_out_19(D) + 40B]; *)
mov v182 x_out19_40;
(* _396 = _208 + 4611686018427387888; *)
uadd v396 v208 0x3ffffffffffffff0@uint64;
(* _184 = _396 - _182; *)
usub v184 v396 v182;
(* MEM[(limb * )&beta + 40B] = _184; *)
mov beta_40 v184;
(* _186 = MEM[(const limb * )x_out_19(D) + 48B]; *)
mov v186 x_out19_48;
(* _402 = _210 + 4611686018427387888; *)
uadd v402 v210 0x3ffffffffffffff0@uint64;
(* _188 = _402 - _186; *)
usub v188 v402 v186;
(* MEM[(limb * )&beta + 48B] = _188; *)
mov beta_48 v188;
(* _190 = MEM[(const limb * )x_out_19(D) + 56B]; *)
mov v190 x_out19_56;
(* _399 = _212 + 4611686018427387888; *)
uadd v399 v212 0x3ffffffffffffff0@uint64;
(* _192 = _399 - _190; *)
usub v192 v399 v190;
(* MEM[(limb * )&beta + 56B] = _192; *)
mov beta_56 v192;
(* _194 = MEM[(const limb * )x_out_19(D) + 64B]; *)
mov v194 x_out19_64;
(* _405 = _214 + 4611686018427387888; *)
uadd v405 v214 0x3ffffffffffffff0@uint64;
(* _196 = _405 - _194; *)
usub v196 v405 v194;
(* MEM[(limb * )&beta + 64B] = _196; *)
mov beta_64 v196;
(* felem_mul (&tmp, &alpha, &beta); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_square (&tmp2, &gamma); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* _142 = MEM[(uint128_t * )&tmp2]; *)
mov v142 tmp2_0;
(* _144 = _142 * 8; *)
umul v144 v142 0x8@uint128;
(* MEM[(uint128_t * )&tmp2] = _144; *)
mov tmp2_0 v144;
(* _145 = MEM[(uint128_t * )&tmp2 + 16B]; *)
mov v145 tmp2_16;
(* _146 = _145 * 8; *)
umul v146 v145 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 16B] = _146; *)
mov tmp2_16 v146;
(* _147 = MEM[(uint128_t * )&tmp2 + 32B]; *)
mov v147 tmp2_32;
(* _148 = _147 * 8; *)
umul v148 v147 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 32B] = _148; *)
mov tmp2_32 v148;
(* _149 = MEM[(uint128_t * )&tmp2 + 48B]; *)
mov v149 tmp2_48;
(* _150 = _149 * 8; *)
umul v150 v149 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 48B] = _150; *)
mov tmp2_48 v150;
(* _151 = MEM[(uint128_t * )&tmp2 + 64B]; *)
mov v151 tmp2_64;
(* _152 = _151 * 8; *)
umul v152 v151 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 64B] = _152; *)
mov tmp2_64 v152;
(* _153 = MEM[(uint128_t * )&tmp2 + 80B]; *)
mov v153 tmp2_80;
(* _154 = _153 * 8; *)
umul v154 v153 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 80B] = _154; *)
mov tmp2_80 v154;
(* _155 = MEM[(uint128_t * )&tmp2 + 96B]; *)
mov v155 tmp2_96;
(* _156 = _155 * 8; *)
umul v156 v155 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 96B] = _156; *)
mov tmp2_96 v156;
(* _157 = MEM[(uint128_t * )&tmp2 + 112B]; *)
mov v157 tmp2_112;
(* _158 = _157 * 8; *)
umul v158 v157 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 112B] = _158; *)
mov tmp2_112 v158;
(* _159 = MEM[(uint128_t * )&tmp2 + 128B]; *)
mov v159 tmp2_128;
(* _160 = _159 * 8; *)
umul v160 v159 0x8@uint128;
(* MEM[(uint128_t * )&tmp2 + 128B] = _160; *)
mov tmp2_128 v160;
(* _106 = MEM[(uint128_t * )&tmp]; *)
mov v106 tmp_0;
(* _538 = _106 + 0x7fffffffffffffc00000000000000000; *)
uadd v538 v106 0x7fffffffffffffc00000000000000000@uint128;
(* _109 = _538 - _144; *)
usub v109 v538 v144;
(* MEM[(uint128_t * )&tmp] = _109; *)
mov tmp_0 v109;
(* _110 = MEM[(uint128_t * )&tmp + 16B]; *)
mov v110 tmp_16;
(* _537 = _110 + 0x7fffffffffffffe00000000000000000; *)
uadd v537 v110 0x7fffffffffffffe00000000000000000@uint128;
(* _113 = _537 - _146; *)
usub v113 v537 v146;
(* MEM[(uint128_t * )&tmp + 16B] = _113; *)
mov tmp_16 v113;
(* _114 = MEM[(uint128_t * )&tmp + 32B]; *)
mov v114 tmp_32;
(* _536 = _114 + 0x7fffffffffffffe00000000000000000; *)
uadd v536 v114 0x7fffffffffffffe00000000000000000@uint128;
(* _117 = _536 - _148; *)
usub v117 v536 v148;
(* MEM[(uint128_t * )&tmp + 32B] = _117; *)
mov tmp_32 v117;
(* _118 = MEM[(uint128_t * )&tmp + 48B]; *)
mov v118 tmp_48;
(* _535 = _118 + 0x7fffffffffffffe00000000000000000; *)
uadd v535 v118 0x7fffffffffffffe00000000000000000@uint128;
(* _121 = _535 - _150; *)
usub v121 v535 v150;
(* MEM[(uint128_t * )&tmp + 48B] = _121; *)
mov tmp_48 v121;
(* _122 = MEM[(uint128_t * )&tmp + 64B]; *)
mov v122 tmp_64;
(* _534 = _122 + 0x7fffffffffffffe00000000000000000; *)
uadd v534 v122 0x7fffffffffffffe00000000000000000@uint128;
(* _125 = _534 - _152; *)
usub v125 v534 v152;
(* MEM[(uint128_t * )&tmp + 64B] = _125; *)
mov tmp_64 v125;
(* _126 = MEM[(uint128_t * )&tmp + 80B]; *)
mov v126 tmp_80;
(* _533 = _126 + 0x7fffffffffffffe00000000000000000; *)
uadd v533 v126 0x7fffffffffffffe00000000000000000@uint128;
(* _129 = _533 - _154; *)
usub v129 v533 v154;
(* MEM[(uint128_t * )&tmp + 80B] = _129; *)
mov tmp_80 v129;
(* _130 = MEM[(uint128_t * )&tmp + 96B]; *)
mov v130 tmp_96;
(* _532 = _130 + 0x7fffffffffffffe00000000000000000; *)
uadd v532 v130 0x7fffffffffffffe00000000000000000@uint128;
(* _133 = _532 - _156; *)
usub v133 v532 v156;
(* MEM[(uint128_t * )&tmp + 96B] = _133; *)
mov tmp_96 v133;
(* _134 = MEM[(uint128_t * )&tmp + 112B]; *)
mov v134 tmp_112;
(* _531 = _134 + 0x7fffffffffffffe00000000000000000; *)
uadd v531 v134 0x7fffffffffffffe00000000000000000@uint128;
(* _137 = _531 - _158; *)
usub v137 v531 v158;
(* MEM[(uint128_t * )&tmp + 112B] = _137; *)
mov tmp_112 v137;
(* _138 = MEM[(uint128_t * )&tmp + 128B]; *)
mov v138 tmp_128;
(* _530 = _138 + 0x7fffffffffffffe00000000000000000; *)
uadd v530 v138 0x7fffffffffffffe00000000000000000@uint128;
(* _141 = _530 - _160; *)
usub v141 v530 v160;
(* MEM[(uint128_t * )&tmp + 128B] = _141; *)
mov tmp_128 v141;
(* felem_reduce (y_out_33(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* delta ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* gamma ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* beta ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* alpha ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* ftmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* ftmp2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ beta_0@uint64;
mov _ beta_8@uint64;
mov _ beta_16@uint64;
mov _ beta_24@uint64;
mov _ beta_32@uint64;
mov _ beta_40@uint64;
mov _ beta_48@uint64;
mov _ beta_56@uint64;
mov _ beta_64@uint64;
mov _ ftmp_0@uint64;
mov _ ftmp_8@uint64;
mov _ ftmp_16@uint64;
mov _ ftmp_24@uint64;
mov _ ftmp_32@uint64;
mov _ ftmp_40@uint64;
mov _ ftmp_48@uint64;
mov _ ftmp_56@uint64;
mov _ ftmp_64@uint64;
mov _ ftmp2_0@uint64;
mov _ ftmp2_8@uint64;
mov _ ftmp2_16@uint64;
mov _ ftmp2_24@uint64;
mov _ ftmp2_32@uint64;
mov _ ftmp2_40@uint64;
mov _ ftmp2_48@uint64;
mov _ ftmp2_56@uint64;
mov _ ftmp2_64@uint64;
mov _ tmp_0@uint128;
mov _ tmp_16@uint128;
mov _ tmp_32@uint128;
mov _ tmp_48@uint128;
mov _ tmp_64@uint128;
mov _ tmp_80@uint128;
mov _ tmp_96@uint128;
mov _ tmp_112@uint128;
mov _ tmp_128@uint128;
mov _ tmp2_0@uint128;
mov _ tmp2_16@uint128;
mov _ tmp2_32@uint128;
mov _ tmp2_48@uint128;
mov _ tmp2_64@uint128;
mov _ tmp2_80@uint128;
mov _ tmp2_96@uint128;
mov _ tmp2_112@uint128;
mov _ tmp2_128@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

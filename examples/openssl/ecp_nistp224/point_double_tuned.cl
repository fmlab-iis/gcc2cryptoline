(*
===== System Information =====
Machine: frege
Operating System: Linux frege 5.4.0-48-generic #52-Ubuntu SMP Thu Sep 10 10:58:49 UTC 2020 x86_64
CPU Model: Intel(R) Xeon(R) Gold 6134M CPU @
Memory: 1055491232 kB
Singular: path=/home/mht208/.local/bin/Singular, version=Singular for x86_64-Linux version 4.1.3 (4132, 64 bit) Jul 20 2020 10:31:25
Boolector: path=/home/mht208/.local/bin/boolector, version=3.2.0
Z3: path=/home/mht208/.local/bin/z3, version=Z3 version 4.8.3 - 64 bit
===== Verification =====
Arguments: -v -btor -no_carry_constraint -isafety -jobs 12 ecp_nistp224_point_double_tuned.cl
Parsing Cryptoline file:                [OK]            0.008601 seconds
Checking well-formedness:               [OK]            0.001452 seconds
Transforming to SSA form:               [OK]            0.000838 seconds
Rewriting assignments:                  [OK]            0.010774 seconds
Verifying program safety:
......
         Overall                        [OK]            84.063370 seconds
Verifying range assertions:             [OK]            6.466601 seconds
Verifying range specification:          [OK]            0.046297 seconds
Rewriting value-preserved casting:      [OK]            0.003244 seconds
Verifying algebraic assertions:         [OK]            0.037729 seconds
Verifying algebraic specification:      [OK]            0.454784 seconds
Verification result:                    [OK]            91.094766 seconds
*)
proc felem_reduce (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6;uint64 c0, uint64 c1, uint64 c2, uint64 c3) = 
{
  true
  &&
  and [
    a0 <u (2**126)@128,
    a1 <u (2**126)@128,
    a2 <u (2**126)@128,
    a3 <u (2**126)@128,
    a4 <u (2**126)@128,
    a5 <u (2**126)@128,
    a6 <u (2**126)@128
  ]
}


(* Start with undefined rhs *)
mov in54_0@uint128 a0;
mov in54_16@uint128 a1;
mov in54_32@uint128 a2;
mov in54_48@uint128 a3;
mov in54_64@uint128 a4;
mov in54_80@uint128 a5;
mov in54_96@uint128 a6;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_54(D); *)
mov v1 in54_0;
(* _2 = _1 + 0x80000000000000000000000000008000; *)
mov value_lo 0x8000@uint64;
mov value_hi 0x8000000000000000@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* _3 = MEM[(const widelimb * )in_54(D) + 16B]; *)
mov v3 in54_16;
(* _4 = _3 + 0x7fffffffffffff7fff80000000000000; *)
mov value_lo 0xff80000000000000@uint64;
mov value_hi 0x7fffffffffffff7f@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* _5 = MEM[(const widelimb * )in_54(D) + 32B]; *)
mov v5 in54_32;
(* _6 = _5 + 0x7fffffffffffff800000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* _7 = MEM[(const widelimb * )in_54(D) + 48B]; *)
mov v7 in54_48;
(* _8 = MEM[(const widelimb * )in_54(D) + 64B]; *)
mov v8 in54_64;
(* _9 = MEM[(const widelimb * )in_54(D) + 96B]; *)
mov v9 in54_96;
(* _10 = _9 >> 16; *)
usplit v10 tmp_to_use v9 16;
(* _11 = _8 + _10; *)
uadd v11 v8 v10;
(* _12 = _9 << 40; *)
usplit tmp1 tmp2 v9 88;
shl v12 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _13 = _12 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v13 v12 value;

assert true && v13 = tmp_to_use * (2**40)@128;
assume v13 = tmp_to_use * (2**40) && true;

(* _15 = _6 - _9; *)
usub v15 v6 v9;
(* _16 = MEM[(const widelimb * )in_54(D) + 80B]; *)
mov v16 in54_80;
(* _17 = _16 >> 16; *)
usplit v17 tmp_to_use v16 16;
(* _64 = _7 + _17; *)
uadd v64 v7 v17;
(* _18 = _13 + _64; *)
uadd v18 v13 v64;
(* _19 = _16 << 40; *)
usplit tmp1 tmp2 v16 88;
shl v19 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _20 = _19 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v20 v19 value;

assert true && v20 = tmp_to_use * (2**40)@128;
assume v20 = tmp_to_use * (2**40) && true;

(* _21 = _15 + _20; *)
uadd v21 v15 v20;
(* _22 = _4 - _16; *)
usub v22 v4 v16;
(* _23 = _11 >> 16; *)
usplit v23 tmp_to_use v11 16;
(* _24 = _21 + _23; *)
uadd v24 v21 v23;
(* _25 = _11 << 40; *)
usplit tmp1 tmp2 v11 88;
shl v25 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _26 = _25 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v26 v25 value;

assert true && v26 = tmp_to_use * (2**40)@128;
assume v26 = tmp_to_use * (2**40) && true;

(* _27 = _22 + _26; *)
uadd v27 v22 v26;
(* _28 = _2 - _11; *)
usub v28 v2 v11;
(* _29 = _24 >> 56; *)
usplit v29 tmp_to_use v24 56;
(* _30 = _18 + _29; *)
uadd v30 v18 v29;
(* _31 = _24 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v31 v24 value;

assert true && v31 = tmp_to_use ;
assume v31 = tmp_to_use &&  true ;

(* _32 = _30 >> 56; *)
usplit v32 tmp_to_use v30 56;
(* _33 = _30 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v33 v30 value;

assert true && v33 = tmp_to_use ;
assume v33 = tmp_to_use && true;

(* _34 = _30 >> 72; *)
usplit v34 tmp_to_use v30 72;
(* _35 = _31 + _34; *)
uadd v35 v31 v34;
(* _36 = _32 << 40; *)
usplit tmp1 tmp2 v32 88;
shl v36 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _37 = _36 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v37 v36 value;

(* NOTE: the following assertion is required for verifying algebraic specification *)

assert 
    true 
    &&
    (
        v37 
        +
        ((v34 * (2**40)@128) * (2**16)@128)
    )
    =
    (v32 * (2**40)@128);
assume
    (
        v37 
        +
        ((v34 * 2**40) * 2**16)
    )
    =
    (v32 * (2**40))
    &&
    true;


(* _38 = _27 + _37; *)
uadd v38 v27 v37;
(* _39 = _28 - _32; *)
usub v39 v28 v32;
(* _40 = _39 >> 56; *)
usplit v40 tmp_to_use v39 56;
(* _41 = _38 + _40; *)
uadd v41 v38 v40;
(* _42 = (long unsigned int) _39; *)
cast v42@uint64 v39@uint128;
(* _43 = _42 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v43 v42 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v43 = tmp_to_use_p ;
assume v43 = tmp_to_use && true;

(* *out_55(D) = _43; *)
mov out55_0 v43;
(* _44 = _41 >> 56; *)
usplit v44 tmp_to_use v41 56;
(* _45 = _35 + _44; *)
uadd v45 v35 v44;
(* _46 = (long unsigned int) _41; *)
cast v46@uint64 v41@uint128;
(* _47 = _46 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v47 v46 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v47 = tmp_to_use_p ;
assume v47 = tmp_to_use && true;

(* MEM[(limb * )out_55(D) + 8B] = _47; *)
mov out55_8 v47;
(* _48 = _45 >> 56; *)
usplit v48 tmp_to_use v45 56;
(* _49 = _33 + _48; *)
uadd v49 v33 v48;
(* _50 = (long unsigned int) _45; *)
cast v50@uint64 v45@uint128;
(* _51 = _50 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v51 v50 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v51 = tmp_to_use_p;
assume v51 = tmp_to_use && true;

(* MEM[(limb * )out_55(D) + 16B] = _51; *)
mov out55_16 v51;
(* _52 = (long unsigned int) _49; *)
vpc v52@uint64 v49@uint128;
(* MEM[(limb * )out_55(D) + 24B] = _52; *)
mov out55_24 v52;
(* return; *)


(* Start with unused lhs *)
mov c0 out55_0@uint64;
mov c1 out55_8@uint64;
mov c2 out55_16@uint64;
mov c3 out55_24@uint64;
(* End with unsed lhs *)


{
  (limbs 56 [c0, c1 , c2, c3])
  =
  (limbs 56 [a0, a1, a2, a3, a4, a5, a6])
  (mod (2**224 - 2**96 + 1))
  &&
 and 
  [
      c0 <u (2**56)@64,
      c1 <u (2**56)@64,
      c2 <u (2**56)@64,
      c3 <u (2**56 + 2**16)@64
  ]
}

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1,uint64 y2,uint64 y3,uint64 z0, uint64 z1,uint64 z2, uint64 z3) = 
{
  true
  &&
  and [
    x0 <u (2**58)@64,
    x1 <u (2**58)@64,
    x2 <u (2**58)@64,
    x3 <u (2**58)@64,
    y0 <u (2**58)@64,
    y1 <u (2**58)@64,
    y2 <u (2**58)@64,
    y3 <u (2**58)@64,
    z0 <u (2**58)@64,
    z1 <u (2**58)@64,
    z2 <u (2**58)@64,
    z3 <u (2**58)@64
  ]
}


(* Start with undefined rhs *)
mov x_in2_0@uint64 x0;
mov x_in2_8@uint64 x1;
mov x_in2_16@uint64 x2;
mov x_in2_24@uint64 x3;
mov y_in6_0@uint64 y0;
mov y_in6_8@uint64 y1;
mov y_in6_16@uint64 y2;
mov y_in6_24@uint64 y3;
mov z_in3_0@uint64 z0;
mov z_in3_8@uint64 z1;
mov z_in3_16@uint64 z2;
mov z_in3_24@uint64 z3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _162 = *x_in_2(D); *)
mov v162 x_in2_0;
(* _163 = MEM[(const limb * )x_in_2(D) + 8B]; *)
mov v163 x_in2_8;
(* _164 = MEM[(const limb * )x_in_2(D) + 16B]; *)
mov v164 x_in2_16;
(* _165 = MEM[(const limb * )x_in_2(D) + 24B]; *)
mov v165 x_in2_24;
(* _472 = *z_in_3(D); *)
mov v472 z_in3_0;
(* tmp0_473 = _472 * 2; *)
umul tmp0473 v472 0x2@uint64;
(* _474 = MEM[(const limb * )z_in_3(D) + 8B]; *)
mov v474 z_in3_8;
(* tmp1_475 = _474 * 2; *)
umul tmp1475 v474 0x2@uint64;
(* _476 = MEM[(const limb * )z_in_3(D) + 16B]; *)
mov v476 z_in3_16;
(* tmp2_477 = _476 * 2; *)
umul tmp2477 v476 0x2@uint64;
(* _479 = _472 w* _472; *)
umulj v479 v472 v472;
(* MEM[(widelimb * )&tmp] = _479; *)
mov tmp_0 v479;
(* _481 = _472 w* tmp1_475; *)
umulj v481 v472 tmp1475;
(* MEM[(widelimb * )&tmp + 16B] = _481; *)
mov tmp_16 v481;
(* _483 = _472 w* tmp2_477; *)
umulj v483 v472 tmp2477;
(* _485 = _474 w* _474; *)
umulj v485 v474 v474;
(* _486 = _483 + _485; *)
uadd v486 v483 v485;
(* MEM[(widelimb * )&tmp + 32B] = _486; *)
mov tmp_32 v486;
(* _487 = MEM[(const limb * )z_in_3(D) + 24B]; *)
mov v487 z_in3_24;
(* _490 = _487 w* tmp0_473; *)
umulj v490 v487 tmp0473;
(* _491 = tmp2_477 w* _474; *)
umulj v491 tmp2477 v474;
(* _492 = _490 + _491; *)
uadd v492 v490 v491;
(* MEM[(widelimb * )&tmp + 48B] = _492; *)
mov tmp_48 v492;
(* _493 = tmp1_475 w* _487; *)
umulj v493 tmp1475 v487;
(* _495 = _476 w* _476; *)
umulj v495 v476 v476;
(* _496 = _493 + _495; *)
uadd v496 v493 v495;
(* MEM[(widelimb * )&tmp + 64B] = _496; *)
mov tmp_64 v496;
(* _497 = tmp2_477 w* _487; *)
umulj v497 tmp2477 v487;
(* MEM[(widelimb * )&tmp + 80B] = _497; *)
mov tmp_80 v497;
(* _498 = _487 w* _487; *)
umulj v498 v487 v487;
(* MEM[(widelimb * )&tmp + 96B] = _498; *)
mov tmp_96 v498;
(* felem_reduce (&delta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, delta_0, delta_8, delta_16, delta_24);

mov delta0_0 delta_0;
mov delta0_1 delta_8;
mov delta0_2 delta_16;
mov delta0_3 delta_24;

(* _445 = *y_in_6(D); *)
mov v445 y_in6_0;
(* tmp0_446 = _445 * 2; *)
umul tmp0446 v445 0x2@uint64;
(* _447 = MEM[(const limb * )y_in_6(D) + 8B]; *)
mov v447 y_in6_8;
(* tmp1_448 = _447 * 2; *)
umul tmp1448 v447 0x2@uint64;
(* _449 = MEM[(const limb * )y_in_6(D) + 16B]; *)
mov v449 y_in6_16;
(* tmp2_450 = _449 * 2; *)
umul tmp2450 v449 0x2@uint64;
(* _452 = _445 w* _445; *)
umulj v452 v445 v445;
(* MEM[(widelimb * )&tmp] = _452; *)
mov tmp_0 v452;
(* _454 = _445 w* tmp1_448; *)
umulj v454 v445 tmp1448;
(* MEM[(widelimb * )&tmp + 16B] = _454; *)
mov tmp_16 v454;
(* _456 = _445 w* tmp2_450; *)
umulj v456 v445 tmp2450;
(* _458 = _447 w* _447; *)
umulj v458 v447 v447;
(* _459 = _456 + _458; *)
uadd v459 v456 v458;
(* MEM[(widelimb * )&tmp + 32B] = _459; *)
mov tmp_32 v459;
(* _460 = MEM[(const limb * )y_in_6(D) + 24B]; *)
mov v460 y_in6_24;
(* _463 = _460 w* tmp0_446; *)
umulj v463 v460 tmp0446;
(* _464 = tmp2_450 w* _447; *)
umulj v464 tmp2450 v447;
(* _465 = _463 + _464; *)
uadd v465 v463 v464;
(* MEM[(widelimb * )&tmp + 48B] = _465; *)
mov tmp_48 v465;
(* _466 = tmp1_448 w* _460; *)
umulj v466 tmp1448 v460;
(* _468 = _449 w* _449; *)
umulj v468 v449 v449;
(* _469 = _466 + _468; *)
uadd v469 v466 v468;
(* MEM[(widelimb * )&tmp + 64B] = _469; *)
mov tmp_64 v469;
(* _470 = tmp2_450 w* _460; *)
umulj v470 tmp2450 v460;
(* MEM[(widelimb * )&tmp + 80B] = _470; *)
mov tmp_80 v470;
(* _471 = _460 w* _460; *)
umulj v471 v460 v460;
(* MEM[(widelimb * )&tmp + 96B] = _471; *)
mov tmp_96 v471;
(* felem_reduce (&gamma, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, gamma_0, gamma_8, gamma_16, gamma_24);

mov gamma0_0 gamma_0;
mov gamma0_1 gamma_8;
mov gamma0_2 gamma_16;
mov gamma0_3 gamma_24;

(* _404 = *x_in_2(D); *)
mov v404 x_in2_0;
(* _406 = MEM[(const limb * )&gamma]; *)
mov v406 gamma_0;
(* _408 = _404 w* _406; *)
umulj v408 v404 v406;
(* MEM[(widelimb * )&tmp] = _408; *)
mov tmp_0 v408;
(* _409 = MEM[(const limb * )&gamma + 8B]; *)
mov v409 gamma_8;
(* _411 = _404 w* _409; *)
umulj v411 v404 v409;
(* _412 = MEM[(const limb * )x_in_2(D) + 8B]; *)
mov v412 x_in2_8;
(* _414 = _406 w* _412; *)
umulj v414 v406 v412;
(* _415 = _411 + _414; *)
uadd v415 v411 v414;
(* MEM[(widelimb * )&tmp + 16B] = _415; *)
mov tmp_16 v415;
(* _416 = MEM[(const limb * )&gamma + 16B]; *)
mov v416 gamma_16;
(* _418 = _404 w* _416; *)
umulj v418 v404 v416;
(* _419 = _409 w* _412; *)
umulj v419 v409 v412;
(* _420 = _418 + _419; *)
uadd v420 v418 v419;
(* _421 = MEM[(const limb * )x_in_2(D) + 16B]; *)
mov v421 x_in2_16;
(* _423 = _406 w* _421; *)
umulj v423 v406 v421;
(* _424 = _420 + _423; *)
uadd v424 v420 v423;
(* MEM[(widelimb * )&tmp + 32B] = _424; *)
mov tmp_32 v424;
(* _425 = MEM[(const limb * )&gamma + 24B]; *)
mov v425 gamma_24;
(* _427 = _404 w* _425; *)
umulj v427 v404 v425;
(* _428 = _412 w* _416; *)
umulj v428 v412 v416;
(* _211 = _427 + _428; *)
uadd v211 v427 v428;
(* _430 = MEM[(const limb * )x_in_2(D) + 24B]; *)
mov v430 x_in2_24;
(* _432 = _406 w* _430; *)
umulj v432 v406 v430;
(* _433 = _409 w* _421; *)
umulj v433 v409 v421;
(* _212 = _211 + _432; *)
uadd v212 v211 v432;
(* _435 = _212 + _433; *)
uadd v435 v212 v433;
(* MEM[(widelimb * )&tmp + 48B] = _435; *)
mov tmp_48 v435;
(* _436 = _412 w* _425; *)
umulj v436 v412 v425;
(* _437 = _416 w* _421; *)
umulj v437 v416 v421;
(* _438 = _436 + _437; *)
uadd v438 v436 v437;
(* _439 = _409 w* _430; *)
umulj v439 v409 v430;
(* _440 = _438 + _439; *)
uadd v440 v438 v439;
(* MEM[(widelimb * )&tmp + 64B] = _440; *)
mov tmp_64 v440;
(* _441 = _421 w* _425; *)
umulj v441 v421 v425;
(* _442 = _416 w* _430; *)
umulj v442 v416 v430;
(* _443 = _441 + _442; *)
uadd v443 v441 v442;
(* MEM[(widelimb * )&tmp + 80B] = _443; *)
mov tmp_80 v443;
(* _444 = _425 w* _430; *)
umulj v444 v425 v430;
(* MEM[(widelimb * )&tmp + 96B] = _444; *)
mov tmp_96 v444;
(* felem_reduce (&beta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, beta_0, beta_8, beta_16, beta_24);

mov beta0_0 beta_0;
mov beta0_1 beta_8;
mov beta0_2 beta_16;
mov beta0_3 beta_24;

(* _154 = MEM[(const limb * )&delta]; *)
mov v154 delta_0;
(* _209 = 288230376151711748 - _154; *)
usub v209 0x400000000000004@uint64 v154;
(* _155 = _162 + _209; *)
uadd v155 v162 v209;
(* _156 = MEM[(const limb * )&delta + 8B]; *)
mov v156 delta_8;
(* _208 = 288225978105200636 - _156; *)
usub v208 0x3fffbfffffffffc@uint64 v156;
(* _157 = _163 + _208; *)
uadd v157 v163 v208;
(* _158 = MEM[(const limb * )&delta + 16B]; *)
mov v158 delta_16;
(* _207 = 288230376151711740 - _158; *)
usub v207 0x3fffffffffffffc@uint64 v158;
(* _159 = _164 + _207; *)
uadd v159 v164 v207;
(* _160 = MEM[(const limb * )&delta + 24B]; *)
mov v160 delta_24;
(* _206 = 288230376151711740 - _160; *)
usub v206 0x3fffffffffffffc@uint64 v160;
(* _161 = _165 + _206; *)
uadd v161 v165 v206;
(* _139 = _154 + _162; *)
uadd v139 v154 v162;
(* _141 = _156 + _163; *)
uadd v141 v156 v163;
(* _143 = _158 + _164; *)
uadd v143 v158 v164;
(* _145 = _160 + _165; *)
uadd v145 v160 v165;
(* _134 = _139 * 3; *)
umul v134 v139 0x3@uint64;
(* _135 = _141 * 3; *)
umul v135 v141 0x3@uint64;
(* _136 = _143 * 3; *)
umul v136 v143 0x3@uint64;
(* _137 = _145 * 3; *)
umul v137 v145 0x3@uint64;
(* _367 = _155 w* _134; *)
umulj v367 v155 v134;
(* MEM[(widelimb * )&tmp] = _367; *)
mov tmp_0 v367;
(* _370 = _155 w* _135; *)
umulj v370 v155 v135;
(* _373 = _134 w* _157; *)
umulj v373 v134 v157;
(* _374 = _370 + _373; *)
uadd v374 v370 v373;
(* MEM[(widelimb * )&tmp + 16B] = _374; *)
mov tmp_16 v374;
(* _377 = _155 w* _136; *)
umulj v377 v155 v136;
(* _378 = _135 w* _157; *)
umulj v378 v135 v157;
(* _379 = _377 + _378; *)
uadd v379 v377 v378;
(* _382 = _134 w* _159; *)
umulj v382 v134 v159;
(* _383 = _379 + _382; *)
uadd v383 v379 v382;
(* MEM[(widelimb * )&tmp + 32B] = _383; *)
mov tmp_32 v383;
(* _386 = _155 w* _137; *)
umulj v386 v155 v137;
(* _387 = _157 w* _136; *)
umulj v387 v157 v136;
(* _553 = _386 + _387; *)
uadd v553 v386 v387;
(* _391 = _134 w* _161; *)
umulj v391 v134 v161;
(* _392 = _135 w* _159; *)
umulj v392 v135 v159;
(* _554 = _391 + _553; *)
uadd v554 v391 v553;
(* _394 = _392 + _554; *)
uadd v394 v392 v554;
(* MEM[(widelimb * )&tmp + 48B] = _394; *)
mov tmp_48 v394;
(* _395 = _157 w* _137; *)
umulj v395 v157 v137;
(* _396 = _136 w* _159; *)
umulj v396 v136 v159;
(* _397 = _395 + _396; *)
uadd v397 v395 v396;
(* _398 = _135 w* _161; *)
umulj v398 v135 v161;
(* _399 = _397 + _398; *)
uadd v399 v397 v398;
(* MEM[(widelimb * )&tmp + 64B] = _399; *)
mov tmp_64 v399;
(* _400 = _159 w* _137; *)
umulj v400 v159 v137;
(* _401 = _136 w* _161; *)
umulj v401 v136 v161;
(* _402 = _400 + _401; *)
uadd v402 v400 v401;
(* MEM[(widelimb * )&tmp + 80B] = _402; *)
mov tmp_80 v402;
(* _403 = _137 w* _161; *)
umulj v403 v137 v161;
(* MEM[(widelimb * )&tmp + 96B] = _403; *)
mov tmp_96 v403;
(* felem_reduce (&alpha, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, alpha_0, alpha_8, alpha_16, alpha_24);

mov alpha0_0 alpha_0;
mov alpha0_1 alpha_8;
mov alpha0_2 alpha_16;
mov alpha0_3 alpha_24;

ecut
  and [
    (* delta = z^2 *)
    (limbs 56 [delta0_0, delta0_1, delta0_2, delta0_3])
    =
    ((limbs 56 [z0, z1, z2, z3]) ** 2)
    (mod (2**224 - 2**96 + 1))
    ,
    (* gamma = y^2 *)
    (limbs 56 [gamma0_0, gamma0_1, gamma0_2, gamma0_3])
    =
    ((limbs 56 [y0, y1, y2, y3]) ** 2)
    (mod (2**224 - 2**96 + 1))
    ,
    (* beta = x * gamma *)
    (limbs 56 [beta0_0, beta0_1, beta0_2, beta0_3])
    =
    ((limbs 56 [x0, x1, x2, x3]) * (limbs 56 [gamma0_0, gamma0_1, gamma0_2, gamma0_3]))
    (mod (2**224 - 2**96 + 1))
    ,
    (* alpha = 3 * (x - delta) * (x + delta) *)
    (limbs 56 [alpha0_0, alpha0_1, alpha0_2, alpha0_3])
    =
    (
      3 *
      ((limbs 56 [x0, x1, x2, x3]) - (limbs 56 [delta0_0, delta0_1, delta0_2, delta0_3])) *
      ((limbs 56 [x0, x1, x2, x3]) + (limbs 56 [delta0_0, delta0_1, delta0_2, delta0_3]))
    )
    (mod (2**224 - 2**96 + 1))
  ];

(* _336 = MEM[(const limb * )&alpha]; *)
mov v336 alpha_0;
(* tmp0_337 = _336 * 2; *)
umul tmp0337 v336 0x2@uint64;
(* _338 = MEM[(const limb * )&alpha + 8B]; *)
mov v338 alpha_8;
(* tmp1_339 = _338 * 2; *)
umul tmp1339 v338 0x2@uint64;
(* _340 = MEM[(const limb * )&alpha + 16B]; *)
mov v340 alpha_16;
(* tmp2_341 = _340 * 2; *)
umul tmp2341 v340 0x2@uint64;
(* _343 = _336 w* _336; *)
umulj v343 v336 v336;
(* _345 = _336 w* tmp1_339; *)
umulj v345 v336 tmp1339;
(* _347 = _336 w* tmp2_341; *)
umulj v347 v336 tmp2341;
(* _349 = _338 w* _338; *)
umulj v349 v338 v338;
(* _550 = _349 + 18446744073709551360; *)
uadd v550 v349 0xffffffffffffff00@uint128;
(* _351 = MEM[(const limb * )&alpha + 24B]; *)
mov v351 alpha_24;
(* _354 = _351 w* tmp0_337; *)
umulj v354 v351 tmp0337;
(* _355 = tmp2_341 w* _338; *)
umulj v355 tmp2341 v338;
(* _356 = _354 + _355; *)
uadd v356 v354 v355;
(* _357 = tmp1_339 w* _351; *)
umulj v357 tmp1339 v351;
(* _359 = _340 w* _340; *)
umulj v359 v340 v340;
(* _360 = _357 + _359; *)
uadd v360 v357 v359;
(* MEM[(widelimb * )&tmp + 64B] = _360; *)
mov tmp_64 v360;
(* _361 = tmp2_341 w* _351; *)
umulj v361 tmp2341 v351;
(* MEM[(widelimb * )&tmp + 80B] = _361; *)
mov tmp_80 v361;
(* _362 = _351 w* _351; *)
umulj v362 v351 v351;
(* MEM[(widelimb * )&tmp + 96B] = _362; *)
mov tmp_96 v362;
(* _130 = MEM[(const limb * )&beta]; *)
mov v130 beta_0;
(* _131 = MEM[(const limb * )&beta + 8B]; *)
mov v131 beta_8;
(* _132 = MEM[(const limb * )&beta + 16B]; *)
mov v132 beta_16;
(* _133 = MEM[(const limb * )&beta + 24B]; *)
mov v133 beta_24;
(* _126 = _130 * 8; *)
umul v126 v130 0x8@uint64;
(* _127 = _131 * 8; *)
umul v127 v131 0x8@uint64;
(* _128 = _132 * 8; *)
umul v128 v132 0x8@uint64;
(* _129 = _133 * 8; *)
umul v129 v133 0x8@uint64;
(* _111 = _343 + 0x10000000000000100; *)
uadd v111 v343 0x10000000000000100@uint128;
(* _115 = _347 + _550; *)
uadd v115 v347 v550;
(* _117 = _356 + 18446744073709551360; *)
uadd v117 v356 0xffffffffffffff00@uint128;
(* _118 = (__int128 unsigned) _126; *)
vpc v118@uint128 v126@uint64;
(* _119 = _111 - _118; *)
usub v119 v111 v118;
(* MEM[(widelimb * )&tmp] = _119; *)
mov tmp_0 v119;
(* _120 = (__int128 unsigned) _127; *)
vpc v120@uint128 v127@uint64;
(* _551 = _345 - _120; *)
usubb carry_1 v551 v345 v120;
(* _121 = _551 + 18446462598732840704; *)
uadds carry_2 v121 v551 0xfffeffffffffff00@uint128;

assert true && carry_1 = carry_2;
assume carry_1 = carry_2 && true;

(* MEM[(widelimb * )&tmp + 16B] = _121; *)
mov tmp_16 v121;
(* _122 = (__int128 unsigned) _128; *)
vpc v122@uint128 v128@uint64;
(* _123 = _115 - _122; *)
usub v123 v115 v122;
(* MEM[(widelimb * )&tmp + 32B] = _123; *)
mov tmp_32 v123;
(* _124 = (__int128 unsigned) _129; *)
vpc v124@uint128 v129@uint64;
(* _125 = _117 - _124; *)
usub v125 v117 v124;
(* MEM[(widelimb * )&tmp + 48B] = _125; *)
mov tmp_48 v125;
(* felem_reduce (x_out_14(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, x_out14_0,x_out14_8, x_out14_16, x_out14_24);
(* _98 = MEM[(limb * )&delta]; *)
mov v98 delta_0;
(* _99 = MEM[(const limb * )&gamma]; *)
mov v99 gamma_0;
(* _100 = _98 + _99; *)
uadd v100 v98 v99;
(* MEM[(limb * )&delta] = _100; *)
mov delta_0 v100;
(* _101 = MEM[(limb * )&delta + 8B]; *)
mov v101 delta_8;
(* _102 = MEM[(const limb * )&gamma + 8B]; *)
mov v102 gamma_8;
(* _103 = _101 + _102; *)
uadd v103 v101 v102;
(* MEM[(limb * )&delta + 8B] = _103; *)
mov delta_8 v103;
(* _104 = MEM[(limb * )&delta + 16B]; *)
mov v104 delta_16;
(* _105 = MEM[(const limb * )&gamma + 16B]; *)
mov v105 gamma_16;
(* _106 = _104 + _105; *)
uadd v106 v104 v105;
(* MEM[(limb * )&delta + 16B] = _106; *)
mov delta_16 v106;
(* _107 = MEM[(limb * )&delta + 24B]; *)
mov v107 delta_24;
(* _108 = MEM[(const limb * )&gamma + 24B]; *)
mov v108 gamma_24;
(* _109 = _107 + _108; *)
uadd v109 v107 v108;
(* MEM[(limb * )&delta + 24B] = _109; *)
mov delta_24 v109;
(* _94 = *y_in_6(D); *)
mov v94 y_in6_0;
(* _95 = MEM[(const limb * )y_in_6(D) + 8B]; *)
mov v95 y_in6_8;
(* _96 = MEM[(const limb * )y_in_6(D) + 16B]; *)
mov v96 y_in6_16;
(* _97 = MEM[(const limb * )y_in_6(D) + 24B]; *)
mov v97 y_in6_24;
(* _86 = *z_in_3(D); *)
mov v86 z_in3_0;
(* _87 = _86 + _94; *)
uadd v87 v86 v94;
(* _88 = MEM[(const limb * )z_in_3(D) + 8B]; *)
mov v88 z_in3_8;
(* _89 = _88 + _95; *)
uadd v89 v88 v95;
(* _90 = MEM[(const limb * )z_in_3(D) + 16B]; *)
mov v90 z_in3_16;
(* _91 = _90 + _96; *)
uadd v91 v90 v96;
(* _92 = MEM[(const limb * )z_in_3(D) + 24B]; *)
mov v92 z_in3_24;
(* _93 = _92 + _97; *)
uadd v93 v92 v97;
(* tmp0_310 = _87 * 2; *)
umul tmp0310 v87 0x2@uint64;
(* tmp1_312 = _89 * 2; *)
umul tmp1312 v89 0x2@uint64;
(* tmp2_314 = _91 * 2; *)
umul tmp2314 v91 0x2@uint64;
(* _316 = _87 w* _87; *)
umulj v316 v87 v87;
(* _318 = _87 w* tmp1_312; *)
umulj v318 v87 tmp1312;
(* _320 = _87 w* tmp2_314; *)
umulj v320 v87 tmp2314;
(* _322 = _89 w* _89; *)
umulj v322 v89 v89;
(* _327 = _93 w* tmp0_310; *)
umulj v327 v93 tmp0310;
(* _328 = tmp2_314 w* _89; *)
umulj v328 tmp2314 v89;
(* _330 = tmp1_312 w* _93; *)
umulj v330 tmp1312 v93;
(* _332 = _91 w* _91; *)
umulj v332 v91 v91;
(* _333 = _330 + _332; *)
uadd v333 v330 v332;
(* MEM[(widelimb * )&tmp + 64B] = _333; *)
mov tmp_64 v333;
(* _334 = tmp2_314 w* _93; *)
umulj v334 tmp2314 v93;
(* MEM[(widelimb * )&tmp + 80B] = _334; *)
mov tmp_80 v334;
(* _335 = _93 w* _93; *)
umulj v335 v93 v93;
(* MEM[(widelimb * )&tmp + 96B] = _335; *)
mov tmp_96 v335;
(* _75 = (__int128 unsigned) _100; *)
vpc v75@uint128 v100@uint64;
(* _549 = 0x10000000000000100 - _75; *)
usub v549 0x10000000000000100@uint128 v75; 
(* _76 = _316 + _549; *)
uadd v76 v316 v549;
(* MEM[(widelimb * )&tmp] = _76; *)
mov tmp_0 v76;
(* _78 = (__int128 unsigned) _103; *)
vpc v78@uint128 v103@uint64;
(* _548 = 18446462598732840704 - _78; *)
usub v548 0xfffeffffffffff00@uint128 v78;
(* _79 = _318 + _548; *)
uadd v79 v318 v548;
(* MEM[(widelimb * )&tmp + 16B] = _79; *)
mov tmp_16 v79;
(* _81 = (__int128 unsigned) _106; *)
vpc v81@uint128 v106@uint64;
(* _196 = 18446744073709551360 - _81; *)
usub v196 0xffffffffffffff00@uint128 v81;
(* _197 = _196 + _322; *)
uadd v197 v196 v322;
(* _82 = _197 + _320; *)
uadd v82 v197 v320;
(* MEM[(widelimb * )&tmp + 32B] = _82; *)
mov tmp_32 v82;
(* _84 = (__int128 unsigned) _109; *)
vpc v84@uint128 v109@uint64;
(* _194 = 18446744073709551360 - _84; *)
usub v194 0xffffffffffffff00@uint128 v84;
(* _195 = _194 + _327; *)
uadd v195 v194 v327;
(* _85 = _195 + _328; *)
uadd v85 v195 v328;
(* MEM[(widelimb * )&tmp + 48B] = _85; *)
mov tmp_48 v85;
(* felem_reduce (z_out_17(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, z_out17_0,z_out17_8, z_out17_16, z_out17_24);
(* _58 = MEM[(limb * )&beta]; *)
mov v58 beta_0;
(* _59 = _58 * 4; *)
umul v59 v58 0x4@uint64;
(* _60 = MEM[(limb * )&beta + 8B]; *)
mov v60 beta_8;
(* _61 = _60 * 4; *)
umul v61 v60 0x4@uint64;
(* _62 = MEM[(limb * )&beta + 16B]; *)
mov v62 beta_16;
(* _63 = _62 * 4; *)
umul v63 v62 0x4@uint64;
(* _64 = MEM[(limb * )&beta + 24B]; *)
mov v64 beta_24;
(* _65 = _64 * 4; *)
umul v65 v64 0x4@uint64;
(* _46 = _59 + 288230376151711748; *)
uadd v46 v59 0x400000000000004@uint64;
(* _47 = _61 + 288225978105200636; *)
uadd v47 v61 0x3fffbfffffffffc@uint64;
(* _48 = _63 + 288230376151711740; *)
uadd v48 v63 0x3fffffffffffffc@uint64;
(* _49 = _65 + 288230376151711740; *)
uadd v49 v65 0x3fffffffffffffc@uint64;
(* _50 = MEM[(const limb * )x_out_14(D)]; *)
mov v50 x_out14_0;
(* _51 = _46 - _50; *)
usub v51 v46 v50;
(* MEM[(limb * )&beta] = _51; *)
mov beta_0 v51;
(* _52 = MEM[(const limb * )x_out_14(D) + 8B]; *)
mov v52 x_out14_8;
(* _53 = _47 - _52; *)
usub v53 v47 v52;
(* MEM[(limb * )&beta + 8B] = _53; *)
mov beta_8 v53;
(* _54 = MEM[(const limb * )x_out_14(D) + 16B]; *)
mov v54 x_out14_16;
(* _55 = _48 - _54; *)
usub v55 v48 v54;
(* MEM[(limb * )&beta + 16B] = _55; *)
mov beta_16 v55;
(* _56 = MEM[(const limb * )x_out_14(D) + 24B]; *)
mov v56 x_out14_24;
(* _57 = _49 - _56; *)
usub v57 v49 v56;
(* MEM[(limb * )&beta + 24B] = _57; *)
mov beta_24 v57;
(* _268 = MEM[(const limb * )&alpha]; *)
mov v268 alpha_0;
(* _272 = _268 w* _51; *)
umulj v272 v268 v51;
(* _275 = _268 w* _53; *)
umulj v275 v268 v53;
(* _276 = MEM[(const limb * )&alpha + 8B]; *)
mov v276 alpha_8;
(* _278 = _51 w* _276; *)
umulj v278 v51 v276;
(* _282 = _268 w* _55; *)
umulj v282 v268 v55;
(* _283 = _53 w* _276; *)
umulj v283 v53 v276;
(* _285 = MEM[(const limb * )&alpha + 16B]; *)
mov v285 alpha_16;
(* _287 = _51 w* _285; *)
umulj v287 v51 v285;
(* _291 = _268 w* _57; *)
umulj v291 v268 v57;
(* _292 = _276 w* _55; *)
umulj v292 v276 v55;
(* _294 = MEM[(const limb * )&alpha + 24B]; *)
mov v294 alpha_24;
(* _296 = _51 w* _294; *)
umulj v296 v51 v294;
(* _297 = _53 w* _285; *)
umulj v297 v53 v285;
(* _300 = _276 w* _57; *)
umulj v300 v276 v57;
(* _301 = _55 w* _285; *)
umulj v301 v55 v285;
(* _303 = _53 w* _294; *)
umulj v303 v53 v294;
(* _305 = _285 w* _57; *)
umulj v305 v285 v57;
(* _306 = _55 w* _294; *)
umulj v306 v55 v294;
(* _308 = _57 w* _294; *)
umulj v308 v57 v294;
(* _241 = MEM[(const limb * )&gamma]; *)
mov v241 gamma_0;
(* tmp0_242 = _241 * 2; *)
umul tmp0242 v241 0x2@uint64;
(* _243 = MEM[(const limb * )&gamma + 8B]; *)
mov v243 gamma_8;
(* tmp1_244 = _243 * 2; *)
umul tmp1244 v243 0x2@uint64;
(* _245 = MEM[(const limb * )&gamma + 16B]; *)
mov v245 gamma_16;
(* tmp2_246 = _245 * 2; *)
umul tmp2246 v245 0x2@uint64;
(* _248 = _241 w* _241; *)
umulj v248 v241 v241;
(* _252 = _241 w* tmp2_246; *)
umulj v252 v241 tmp2246;
(* _254 = _243 w* _243; *)
umulj v254 v243 v243;
(* _255 = _252 + _254; *)
uadd v255 v252 v254;
(* _256 = MEM[(const limb * )&gamma + 24B]; *)
mov v256 gamma_24;
(* _259 = _256 w* tmp0_242; *)
umulj v259 v256 tmp0242;
(* _260 = tmp2_246 w* _243; *)
umulj v260 tmp2246 v243;
(* _261 = _259 + _260; *)
uadd v261 v259 v260;
(* _262 = tmp1_244 w* _256; *)
umulj v262 tmp1244 v256;
(* _264 = _245 w* _245; *)
umulj v264 v245 v245;
(* _265 = _262 + _264; *)
uadd v265 v262 v264;
(* _267 = _256 w* _256; *)
umulj v267 v256 v256;
(* _33 = _248 * 8; *)
umul v33 v248 0x8@uint128;
(* _185 = _241 w* tmp1_244; *)
umulj v185 v241 tmp1244;
(* _35 = _185 * 8; *)
umul v35 v185 0x8@uint128;
(* _37 = _255 * 8; *)
umul v37 v255 0x8@uint128;
(* _39 = _261 * 8; *)
umul v39 v261 0x8@uint128;
(* _41 = _265 * 8; *)
umul v41 v265 0x8@uint128;
(* _184 = tmp2_246 w* _256; *)
umulj v184 tmp2246 v256;
(* _43 = _184 * 8; *)
umul v43 v184 0x8@uint128;
(* _45 = _267 * 8; *)
umul v45 v267 0x8@uint128;
(* _183 = 0x1000000000000000000000000000000 - _33; *)
usub v183 0x1000000000000000000000000000000@uint128 v33;
(* _228 = _183 + _272; *)
uadd v228 v183 v272;
(* MEM[(widelimb * )&tmp] = _228; *)
mov tmp_0 v228;
(* _181 = 0xffffffffffffff0000000000000000 - _35; *)
usub v181 0xffffffffffffff0000000000000000@uint128 v35;
(* _182 = _181 + _275; *)
uadd v182 v181 v275;
(* _230 = _182 + _278; *)
uadd v230 v182 v278;
(* MEM[(widelimb * )&tmp + 16B] = _230; *)
mov tmp_16 v230;
(* _178 = 0xffffffffffffff0000000000000000 - _37; *)
usub v178 0xffffffffffffff0000000000000000@uint128 v37;
(* _179 = _178 + _282; *)
uadd v179 v178 v282;
(* _180 = _179 + _283; *)
uadd v180 v179 v283;
(* _232 = _180 + _287; *)
uadd v232 v180 v287;
(* MEM[(widelimb * )&tmp + 32B] = _232; *)
mov tmp_32 v232;
(* _174 = 0x1000000000000000000000000000000 - _39; *)
usub v174 0x1000000000000000000000000000000@uint128 v39;
(* _175 = _174 + _291; *)
uadd v175 v174 v291;
(* _176 = _175 + _292; *)
uadd v176 v175 v292;
(* _177 = _176 + _296; *)
uadd v177 v176 v296;
(* _234 = _177 + _297; *)
uadd v234 v177 v297;
(* MEM[(widelimb * )&tmp + 48B] = _234; *)
mov tmp_48 v234;
(* _170 = 0xfffeffffffffff0000000000000000 - _41; *)
usub v170 0xfffeffffffffff0000000000000000@uint128 v41;
(* _171 = _170 + _300; *)
uadd v171 v170 v300;
(* _172 = _171 + _301; *)
uadd v172 v171 v301;
(* _236 = _172 + _303; *)
uadd v236 v172 v303;
(* MEM[(widelimb * )&tmp + 64B] = _236; *)
mov tmp_64 v236;
(* _168 = 0xffffffffffffff0000000000000000 - _43; *)
usub v168 0xffffffffffffff0000000000000000@uint128 v43;
(* _169 = _168 + _305; *)
uadd v169 v168 v305;
(* _238 = _169 + _306; *)
uadd v238 v169 v306;
(* MEM[(widelimb * )&tmp + 80B] = _238; *)
mov tmp_80 v238;
(* _167 = 0xffffffffffffff0000000000000000 - _45; *)
usub v167 0xffffffffffffff0000000000000000@uint128 v45;
(* _240 = _167 + _308; *)
uadd v240 v167 v308;
(* MEM[(widelimb * )&tmp + 96B] = _240; *)
mov tmp_96 v240;
(* felem_reduce (y_out_22(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96, y_out22_0,y_out22_8, y_out22_16, y_out22_24);
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* delta ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* gamma ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* beta ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* alpha ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


mov xp0 x_out14_0;
mov xp1 x_out14_8;
mov xp2 x_out14_16;
mov xp3 x_out14_24;

mov yp0 y_out22_0;
mov yp1 y_out22_8;
mov yp2 y_out22_16;
mov yp3 y_out22_24;

mov zp0 z_out17_0;
mov zp1 z_out17_8;
mov zp2 z_out17_16;
mov zp3 z_out17_24;



{
 and [
     (*  X' = (3 * (X - Z^2) * (X + Z^2))^2 - 8 * X * Y^2 *)
  (limbs 56 [xp0, xp1, xp2, xp3])
  =
  (
     (
         3 * ((limbs 56 [x0,x1,x2,x3]) - (limbs 56 [z0,z1,z2,z3]) **2)
         * ((limbs 56 [x0,x1,x2,x3]) + (limbs 56 [z0,z1,z2,z3]) **2)
     ) ** 2
     -
     8 * (limbs 56 [x0,x1,x2,x3]) * (limbs 56 [y0,y1,y2,y3]) **2
     
  )
  (mod (2**224 - 2**96 + 1)),
  (*  Y' = 3 * (X - Z^2) * (X + Z^2) * (4 * X * Y^2 - X') - 8 * Y^4 *)
  (limbs 56 [yp0, yp1, yp2, yp3])
  =
  (
     
    3 
    * ((limbs 56 [x0,x1,x2,x3]) - (limbs 56 [z0,z1,z2,z3]) **2)
    * ((limbs 56 [x0,x1,x2,x3]) + (limbs 56 [z0,z1,z2,z3]) **2)
    * (
        4 
        * (limbs 56 [x0,x1,x2,x3]) 
        * (limbs 56 [y0, y1, y2, y3] ** 2)
        - (limbs 56 [xp0, xp1, xp2, xp3])
    )
    -
    8 * (limbs 56 [y0, y1, y2, y3]) ** 4
  )
  (mod (2**224 - 2**96 + 1)),
  (* Z' = (Y + Z)^2 - Y^2 - Z^2 = 2 * Y * Z *)
  (limbs 56 [zp0, zp1, zp2, zp3])
  =
  (
    2 
    * (limbs 56 [y0 ,y1, y2, y3])
    * (limbs 56 [z0, z1, z2, z3])
  )
  (mod (2**224 - 2**96 + 1))
 ]
  &&
  true
}

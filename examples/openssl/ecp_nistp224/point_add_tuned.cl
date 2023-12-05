/* @frege
===== System Information =====
Machine: frege
Operating System: Linux frege 4.15.0-72-generic #81~16.04.1-Ubuntu SMP Tue Nov 26 16:34:21 UTC 2019 x86_64
CPU Model: Intel(R) Xeon(R) Gold 6134M CPU @
Memory: 1055495704 kB
Singular: path=/home/fuyu0425/.linuxbrew/bin/Singular, version=Singular for x86_64-Linux version 4.1.2 (4120, 64 bit) Feb 2019 #UNKNOWN_GIT_VERSION
Boolector: path=/home/fuyu0425/source/boolector-3.0.0/build/bin/boolector, version=3.0.0
Z3: path=/home/fuyu0425/.linuxbrew/bin/z3, version=Z3 version 4.8.4 - 64 bit
===== Verification =====
Arguments: -v -jobs 24 -isafety -slicing -isafety_timeout 9999999 -qfbv_solver mathsat -disable_safety -disable_range -o algebra.log ./point_add_tuned.cl
Parsing Cryptoline file:                [OK]            0.015972 seconds
Checking well-formedness:               [OK]            0.003086 seconds
Transforming to SSA form:               [OK]            0.002085 seconds
Rewriting assignments:                  [OK]            0.052450 seconds
Rewriting value-preserved casting:      [OK]            0.003582 seconds
Verifying algebraic assertions:         [OK]            0.087294 seconds
Verifying algebraic specification:      [OK]            30454.154450 seconds
Verification result:                    [OK]            30454.320671 seconds
*/


(* verify the correctness except for special condition *)
proc widefelem_diff (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6, uint128 b0, uint128 b1, uint128 b2, uint128 b3, uint128 b4, uint128 b5, uint128 b6;
                    uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4, uint128 c5, uint128 c6) =
{
  true
  &&
  and [
    a0 <u (2**119)@128,
    a1 <u (2**119)@128,
    a2 <u (2**119)@128,
    a3 <u (2**119)@128,
    a4 <u (2**119)@128,
    a5 <u (2**119)@128,
    a6 <u (2**119)@128,
    b0 <u (2**119)@128,
    b1 <u (2**119)@128,
    b2 <u (2**119)@128,
    b3 <u (2**119)@128,
    b4 <u (2**119)@128,
    b5 <u (2**119)@128,
    b6 <u (2**119)@128
  ]
}



(* Start with undefined rhs *)
mov in38_0@uint128 b0;
mov in38_16@uint128 b1;
mov in38_32@uint128 b2;
mov in38_48@uint128 b3;
mov in38_64@uint128 b4;
mov in38_80@uint128 b5;
mov in38_96@uint128 b6;
mov out30_0@uint128 a0;
mov out30_16@uint128 a1;
mov out30_32@uint128 a2;
mov out30_48@uint128 a3;
mov out30_64@uint128 a4;
mov out30_80@uint128 a5;
mov out30_96@uint128 a6;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_30(D); *)
mov v1 out30_0;
(* _2 = _1 + 0x1000000000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x100000000000000@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* *out_30(D) = _2; *)
mov out30_0 v2;
(* _3 = MEM[(widelimb * )out_30(D) + 16B]; *)
mov v3 out30_16;
(* _4 = _3 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* MEM[(widelimb * )out_30(D) + 16B] = _4; *)
mov out30_16 v4;
(* _5 = MEM[(widelimb * )out_30(D) + 32B]; *)
mov v5 out30_32;
(* _6 = _5 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* MEM[(widelimb * )out_30(D) + 32B] = _6; *)
mov out30_32 v6;
(* _7 = MEM[(widelimb * )out_30(D) + 48B]; *)
mov v7 out30_48;
(* _8 = _7 + 0x1000000000000000000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x100000000000000@uint64;
join value value_hi value_lo;
uadd v8 v7 value;
(* MEM[(widelimb * )out_30(D) + 48B] = _8; *)
mov out30_48 v8;
(* _9 = MEM[(widelimb * )out_30(D) + 64B]; *)
mov v9 out30_64;
(* _10 = _9 + 0xfffeffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xfffeffffffffff@uint64;
join value value_hi value_lo;
uadd v10 v9 value;
(* MEM[(widelimb * )out_30(D) + 64B] = _10; *)
mov out30_64 v10;
(* _11 = MEM[(widelimb * )out_30(D) + 80B]; *)
mov v11 out30_80;
(* _12 = _11 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v12 v11 value;
(* MEM[(widelimb * )out_30(D) + 80B] = _12; *)
mov out30_80 v12;
(* _13 = MEM[(widelimb * )out_30(D) + 96B]; *)
mov v13 out30_96;
(* _14 = _13 + 0xffffffffffffff0000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0xffffffffffffff@uint64;
join value value_hi value_lo;
uadd v14 v13 value;
(* MEM[(widelimb * )out_30(D) + 96B] = _14; *)
mov out30_96 v14;
(* _15 = *in_38(D); *)
mov v15 in38_0;
(* _16 = _2 - _15; *)
usub v16 v2 v15;
(* *out_30(D) = _16; *)
mov out30_0 v16;
(* _17 = MEM[(const widelimb * )in_38(D) + 16B]; *)
mov v17 in38_16;
(* _18 = _4 - _17; *)
usub v18 v4 v17;
(* MEM[(widelimb * )out_30(D) + 16B] = _18; *)
mov out30_16 v18;
(* _19 = MEM[(const widelimb * )in_38(D) + 32B]; *)
mov v19 in38_32;
(* _20 = _6 - _19; *)
usub v20 v6 v19;
(* MEM[(widelimb * )out_30(D) + 32B] = _20; *)
mov out30_32 v20;
(* _21 = MEM[(const widelimb * )in_38(D) + 48B]; *)
mov v21 in38_48;
(* _22 = _8 - _21; *)
usub v22 v8 v21;
(* MEM[(widelimb * )out_30(D) + 48B] = _22; *)
mov out30_48 v22;
(* _23 = MEM[(const widelimb * )in_38(D) + 64B]; *)
mov v23 in38_64;
(* _24 = _10 - _23; *)
usub v24 v10 v23;
(* MEM[(widelimb * )out_30(D) + 64B] = _24; *)
mov out30_64 v24;
(* _25 = MEM[(const widelimb * )in_38(D) + 80B]; *)
mov v25 in38_80;
(* _26 = _12 - _25; *)
usub v26 v12 v25;
(* MEM[(widelimb * )out_30(D) + 80B] = _26; *)
mov out30_80 v26;
(* _27 = MEM[(const widelimb * )in_38(D) + 96B]; *)
mov v27 in38_96;
(* _28 = _14 - _27; *)
usub v28 v14 v27;
(* MEM[(widelimb * )out_30(D) + 96B] = _28; *)
mov out30_96 v28;
(* return; *)


(* Start with unused lhs *)
mov c0 out30_0@uint128;
mov c1 out30_16@uint128;
mov c2 out30_32@uint128;
mov c3 out30_48@uint128;
mov c4 out30_64@uint128;
mov c5 out30_80@uint128;
mov c6 out30_96@uint128;
(* End with unsed lhs *)


{
  (
      limbs 56 [c0, c1, c2, c3, c4, c5, c6]
  )
  =
  (
      (limbs 56 [a0, a1, a2, a3, a4, a5, a6])
      -
      (limbs 56 [b0, b1, b2, b3, b4, b5, b6])
  )
  (mod (2**224 - 2**96 + 1))
  &&
  and
  [
      c0 <u (2**121)@128,
      c1 <u (2**121)@128,
      c2 <u (2**121)@128,
      c3 <u (2**121)@128,
      c4 <u (2**121)@128,
      c5 <u (2**121)@128,
      c6 <u (2**121)@128
  ]
}
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

proc felem_mul (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
                uint64 b0, uint64 b1, uint64 b2, uint64 b3;
                uint128 c0, uint128 c1, uint128 c2, uint128 c3,
                uint128 c4, uint128 c5, uint128 c6
               ) =
{
  true
  &&
  and [
    a0 <u (2**60)@64,
    a1 <u (2**60)@64,
    a2 <u (2**60)@64,
    a3 <u (2**60)@64,
    b0 <u (2**59)@64,
    b1 <u (2**59)@64,
    b2 <u (2**59)@64,
    b3 <u (2**59)@64
  ]
}

(* Start with undefined rhs *)
mov in143_0@uint64 a0;
mov in143_8@uint64 a1;
mov in143_16@uint64 a2;
mov in143_24@uint64 a3;
mov in244_0@uint64 b0;
mov in244_8@uint64 b1;
mov in244_16@uint64 b2;
mov in244_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in1_43(D); *)
mov v1 in143_0;
(* _3 = *in2_44(D); *)
mov v3 in244_0;
(* _5 = _1 w* _3; *)
umulj v5 v1 v3;
(* *out_45(D) = _5; *)
mov out45_0 v5;
(* _6 = MEM[(const limb * )in2_44(D) + 8B]; *)
mov v6 in244_8;
(* _8 = _1 w* _6; *)
umulj v8 v1 v6;
(* _9 = MEM[(const limb * )in1_43(D) + 8B]; *)
mov v9 in143_8;
(* _11 = _3 w* _9; *)
umulj v11 v3 v9;
(* _12 = _8 + _11; *)
uadd v12 v8 v11;
(* MEM[(widelimb * )out_45(D) + 16B] = _12; *)
mov out45_16 v12;
(* _13 = MEM[(const limb * )in2_44(D) + 16B]; *)
mov v13 in244_16;
(* _15 = _1 w* _13; *)
umulj v15 v1 v13;
(* _16 = _6 w* _9; *)
umulj v16 v6 v9;
(* _17 = _15 + _16; *)
uadd v17 v15 v16;
(* _18 = MEM[(const limb * )in1_43(D) + 16B]; *)
mov v18 in143_16;
(* _20 = _3 w* _18; *)
umulj v20 v3 v18;
(* _21 = _17 + _20; *)
uadd v21 v17 v20;
(* MEM[(widelimb * )out_45(D) + 32B] = _21; *)
mov out45_32 v21;
(* _22 = MEM[(const limb * )in2_44(D) + 24B]; *)
mov v22 in244_24;
(* _24 = _1 w* _22; *)
umulj v24 v1 v22;
(* _25 = _9 w* _13; *)
umulj v25 v9 v13;
(* _54 = _24 + _25; *)
uadd v54 v24 v25;
(* _27 = MEM[(const limb * )in1_43(D) + 24B]; *)
mov v27 in143_24;
(* _29 = _3 w* _27; *)
umulj v29 v3 v27;
(* _30 = _6 w* _18; *)
umulj v30 v6 v18;
(* _53 = _29 + _54; *)
uadd v53 v29 v54;
(* _32 = _30 + _53; *)
uadd v32 v30 v53;
(* MEM[(widelimb * )out_45(D) + 48B] = _32; *)
mov out45_48 v32;
(* _33 = _9 w* _22; *)
umulj v33 v9 v22;
(* _34 = _13 w* _18; *)
umulj v34 v13 v18;
(* _35 = _33 + _34; *)
uadd v35 v33 v34;
(* _36 = _6 w* _27; *)
umulj v36 v6 v27;
(* _37 = _35 + _36; *)
uadd v37 v35 v36;
(* MEM[(widelimb * )out_45(D) + 64B] = _37; *)
mov out45_64 v37;
(* _38 = _18 w* _22; *)
umulj v38 v18 v22;
(* _39 = _13 w* _27; *)
umulj v39 v13 v27;
(* _40 = _38 + _39; *)
uadd v40 v38 v39;
(* MEM[(widelimb * )out_45(D) + 80B] = _40; *)
mov out45_80 v40;
(* _41 = _22 w* _27; *)
umulj v41 v22 v27;
(* MEM[(widelimb * )out_45(D) + 96B] = _41; *)
mov out45_96 v41;
(* return; *)


(* Start with unused lhs *)
mov c0 out45_0@uint128;
mov c1 out45_16@uint128;
mov c2 out45_32@uint128;
mov c3 out45_48@uint128;
mov c4 out45_64@uint128;
mov c5 out45_80@uint128;
mov c6 out45_96@uint128;
(* End with unsed lhs *)


{
  (
      limbs 56 [c0, c1, c2, c3, c4, c5, c6]
  )
  =
  (
      (limbs 56 [a0, a1, a2, a3])
      *
      (limbs 56 [b0, b1, b2, b3])
  )
  &&
  and
  [
      c0 <u (2**121)@128,
      c1 <u (2**121)@128,
      c2 <u (2**121)@128,
      c3 <u (2**121)@128,
      c4 <u (2**121)@128,
      c5 <u (2**121)@128,
      c6 <u (2**121)@128
  ]
}


/*
static  void point_add(felem x3, felem y3, felem z3,
                      const felem x1, const felem y1, const felem z1,
                      const int mixed, const felem x2, const felem y2,
                      */

/* assume mixed = 0 <-> Z_2 > 1 */

proc main (uint64 X1_0, uint64 X1_1, uint64 X1_2, uint64 X1_3,
           uint64 Y1_0, uint64 Y1_1, uint64 Y1_2, uint64 Y1_3,
           uint64 Z1_0, uint64 Z1_1, uint64 Z1_2, uint64 Z1_3,
           uint64 X2_0, uint64 X2_1, uint64 X2_2, uint64 X2_3,
           uint64 Y2_0, uint64 Y2_1, uint64 Y2_2, uint64 Y2_3,
           uint64 Z2_0, uint64 Z2_1, uint64 Z2_2, uint64 Z2_3) =
{
  true
  &&
  and [
    X1_0 <u (2**57)@64, X1_1 <u (2**57)@64, X1_2 <u (2**57)@64, X1_3 <u (2**57)@64,
    Y1_0 <u (2**57)@64, Y1_1 <u (2**57)@64, Y1_2 <u (2**57)@64, Y1_3 <u (2**57)@64,
    Z1_0 <u (2**57)@64, Z1_1 <u (2**57)@64, Z1_2 <u (2**57)@64, Z1_3 <u (2**57)@64,
    X2_0 <u (2**57)@64, X2_1 <u (2**57)@64, X2_2 <u (2**57)@64, X2_3 <u (2**57)@64,
    Y2_0 <u (2**57)@64, Y2_1 <u (2**57)@64, Y2_2 <u (2**57)@64, Y2_3 <u (2**57)@64,
    Z2_0 <u (2**57)@64, Z2_1 <u (2**57)@64, Z2_2 <u (2**57)@64, Z2_3 <u (2**57)@64,
    /* general case */
    (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3] >u (limbs 56 [1@64, 0@64, 0@64, 0@64]))
  ]
}


/* Start with undefined rhs */
mov x118_0@uint64 X1_0;
mov x118_8@uint64 X1_1;
mov x118_16@uint64 X1_2;
mov x118_24@uint64 X1_3;
mov x230_0@uint64 X2_0;
mov x230_8@uint64 X2_1;
mov x230_16@uint64 X2_2;
mov x230_24@uint64 X2_3;
mov y115_0@uint64 Y1_0;
mov y115_8@uint64 Y1_1;
mov y115_16@uint64 Y1_2;
mov y115_24@uint64 Y1_3;
mov y226_0@uint64 Y2_0;
mov y226_8@uint64 Y2_1;
mov y226_16@uint64 Y2_2;
mov y226_24@uint64 Y2_3;
mov z121_0@uint64 Z1_0;
mov z121_8@uint64 Z1_1;
mov z121_16@uint64 Z1_2;
mov z121_24@uint64 Z1_3;
mov z210_0@uint64 Z2_0;
mov z210_8@uint64 Z2_1;
mov z210_16@uint64 Z2_2;
mov z210_24@uint64 Z2_3;
/* End with undefined rhs */



/* BB's index is 2 */

/* if (mixed_8(D) == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 3>, False label: <bb 4> */

/* BB's index is 3 */

/* _248 = *z2_10(D); */
mov v248 z210_0;
/* tmp0_249 = _248 * 2; */
umul tmp0249 v248 0x2@uint64;
/* _250 = MEM[(const limb *)z2_10(D) + 8B]; */
mov v250 z210_8;
/* tmp1_251 = _250 * 2; */
umul tmp1251 v250 0x2@uint64;
/* _252 = MEM[(const limb *)z2_10(D) + 16B]; */
mov v252 z210_16;
/* tmp2_253 = _252 * 2; */
umul tmp2253 v252 0x2@uint64;
/* _255 = _248 w* _248; */
umulj v255 v248 v248;
/* MEM[(widelimb *)&tmp] = _255; */
mov tmp_0 v255;
/* _257 = _248 w* tmp1_251; */
umulj v257 v248 tmp1251;
/* MEM[(widelimb *)&tmp + 16B] = _257; */
mov tmp_16 v257;
/* _259 = _248 w* tmp2_253; */
umulj v259 v248 tmp2253;
/* _261 = _250 w* _250; */
umulj v261 v250 v250;
/* _262 = _259 + _261; */
uadd v262 v259 v261;
/* MEM[(widelimb *)&tmp + 32B] = _262; */
mov tmp_32 v262;
/* _263 = MEM[(const limb *)z2_10(D) + 24B]; */
mov v263 z210_24;
/* _266 = _263 w* tmp0_249; */
umulj v266 v263 tmp0249;
/* _267 = tmp2_253 w* _250; */
umulj v267 tmp2253 v250;
/* _268 = _266 + _267; */
uadd v268 v266 v267;
/* MEM[(widelimb *)&tmp + 48B] = _268; */
mov tmp_48 v268;
/* _269 = tmp1_251 w* _263; */
umulj v269 tmp1251 v263;
/* _271 = _252 w* _252; */
umulj v271 v252 v252;
/* _272 = _269 + _271; */
uadd v272 v269 v271;
/* MEM[(widelimb *)&tmp + 64B] = _272; */
mov tmp_64 v272;
/* _273 = tmp2_253 w* _263; */
umulj v273 tmp2253 v263;
/* MEM[(widelimb *)&tmp + 80B] = _273; */
mov tmp_80 v273;
/* _274 = _263 w* _263; */
umulj v274 v263 v263;
/* MEM[(widelimb *)&tmp + 96B] = _274; */
mov tmp_96 v274;
/* felem_reduce (&ftmp2, &tmp); */
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24);
/* felem_mul (&tmp, &ftmp2, z2_10(D)); */
inline felem_mul (ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24,
                z210_0, z210_8, z210_16, z210_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* felem_reduce (&ftmp4, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24);
/* felem_mul (&tmp2, &ftmp4, y1_15(D)); */
inline felem_mul (ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24,
                y115_0, y115_8, y115_16, y115_24,
                tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96);
/* felem_reduce (&ftmp4, &tmp2); */
inline felem_reduce (tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96,
                   ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24);
/* felem_mul (&tmp2, &ftmp2, x1_18(D)); */
inline felem_mul (ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24,
                x118_0, x118_8, x118_16, x118_24,
                tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96);
/* felem_reduce (&ftmp2, &tmp2); */
inline felem_reduce (tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96,
                   ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24);
/* goto <bb 5> */
/* TODO: unconditional jump */

/* NOTE: skip special case */
/* BB's index is 4 */

/* /\* vect__84185_32 = MEM[(const limb *)y1_15(D)]; *\/ */
/* mov vect__8418532_0 y115_0; */
/* mov vect__8418532_8 y115_8; */
/* /\* vect__84186_650 = MEM[(const limb *)y1_15(D) + 16B]; *\/ */
/* mov vect__84186650_0 y115_16; */
/* mov vect__84186650_8 y115_24; */
/* /\* MEM[(limb *)&ftmp4] = vect__84185_32; *\/ */
/* mov ftmp4_0 vect__8418532_0; */
/* mov ftmp4_8 vect__8418532_8; */
/* /\* MEM[(limb *)&ftmp4 + 16B] = vect__84186_650; *\/ */
/* mov ftmp4_16 vect__84186650_0; */
/* mov ftmp4_24 vect__84186650_8; */
/* /\* vect__40179_669 = MEM[(const limb *)x1_18(D)]; *\/ */
/* mov vect__40179669_0 x118_0; */
/* mov vect__40179669_8 x118_8; */
/* /\* vect__40180_679 = MEM[(const limb *)x1_18(D) + 16B]; *\/ */
/* mov vect__40180679_0 x118_16; */
/* mov vect__40180679_8 x118_24; */
/* /\* MEM[(limb *)&ftmp2] = vect__40179_669; *\/ */
/* mov ftmp2_0 vect__40179669_0; */
/* mov ftmp2_8 vect__40179669_8; */
/* /\* MEM[(limb *)&ftmp2 + 16B] = vect__40180_679; *\/ */
/* mov ftmp2_16 vect__40180679_0; */
/* mov ftmp2_24 vect__40180679_8; */
/* goto <bb 5> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* MEM_5 = PHI <MEM_20(3), MEM_11(4)> */



/* _451 = *z1_21(D); */
mov v451 z121_0;
/* tmp0_452 = _451 * 2; */
umul tmp0452 v451 0x2@uint64;
/* _453 = MEM[(const limb *)z1_21(D) + 8B]; */
mov v453 z121_8;
/* tmp1_454 = _453 * 2; */
umul tmp1454 v453 0x2@uint64;
/* _455 = MEM[(const limb *)z1_21(D) + 16B]; */
mov v455 z121_16;
/* tmp2_456 = _455 * 2; */
umul tmp2456 v455 0x2@uint64;
/* _458 = _451 w* _451; */
umulj v458 v451 v451;
/* MEM[(widelimb *)&tmp] = _458; */
mov tmp_0 v458;
/* _460 = _451 w* tmp1_454; */
umulj v460 v451 tmp1454;
/* MEM[(widelimb *)&tmp + 16B] = _460; */
mov tmp_16 v460;
/* _462 = _451 w* tmp2_456; */
umulj v462 v451 tmp2456;
/* _464 = _453 w* _453; */
umulj v464 v453 v453;
/* _465 = _462 + _464; */
uadd v465 v462 v464;
/* MEM[(widelimb *)&tmp + 32B] = _465; */
mov tmp_32 v465;
/* _466 = MEM[(const limb *)z1_21(D) + 24B]; */
mov v466 z121_24;
/* _469 = _466 w* tmp0_452; */
umulj v469 v466 tmp0452;
/* _470 = tmp2_456 w* _453; */
umulj v470 tmp2456 v453;
/* _471 = _469 + _470; */
uadd v471 v469 v470;
/* MEM[(widelimb *)&tmp + 48B] = _471; */
mov tmp_48 v471;
/* _472 = tmp1_454 w* _466; */
umulj v472 tmp1454 v466;
/* _474 = _455 w* _455; */
umulj v474 v455 v455;
/* _475 = _472 + _474; */
uadd v475 v472 v474;
/* MEM[(widelimb *)&tmp + 64B] = _475; */
mov tmp_64 v475;
/* _476 = tmp2_456 w* _466; */
umulj v476 tmp2456 v466;
/* MEM[(widelimb *)&tmp + 80B] = _476; */
mov tmp_80 v476;
/* _477 = _466 w* _466; */
umulj v477 v466 v466;
/* MEM[(widelimb *)&tmp + 96B] = _477; */
mov tmp_96 v477;
/* felem_reduce (&ftmp, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp_0, ftmp_8, ftmp_16, ftmp_24);
/* felem_mul (&tmp, &ftmp, z1_21(D)); */
inline felem_mul (ftmp_0, ftmp_8, ftmp_16, ftmp_24,
                z121_0, z121_8, z121_16, z121_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* felem_reduce (&ftmp3, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24);
/* felem_mul (&tmp, &ftmp3, y2_26(D)); */
inline felem_mul (ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24,
                y226_0, y226_8, y226_16, y226_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);

/* start 977: felem_diff_128_64(tmp, ftmp4); */
/* _431 = MEM[(widelimb *)&tmp]; */
mov v431 tmp_0;
/* _432 = _431 + 0x10000000000000100; */
uadd v432 v431 0x10000000000000100@uint128;
/* _433 = MEM[(widelimb *)&tmp + 16B]; */
mov v433 tmp_16;
/* _434 = _433 + 18446462598732840704; */
uadd v434 v433 0xfffeffffffffff00@uint128;
/* _435 = MEM[(widelimb *)&tmp + 32B]; */
mov v435 tmp_32;
/* _436 = _435 + 18446744073709551360; */
uadd v436 v435 0xffffffffffffff00@uint128;
/* _437 = MEM[(widelimb *)&tmp + 48B]; */
mov v437 tmp_48;
/* _438 = _437 + 18446744073709551360; */
uadd v438 v437 0xffffffffffffff00@uint128;
/* _439 = MEM[(const limb *)&ftmp4]; */
mov v439 ftmp4_0;
/* _440 = (__int128 unsigned) _439; */
vpc v440@uint128 v439@uint64;
/* _441 = _432 - _440; */
usub v441 v432 v440;
/* MEM[(widelimb *)&tmp] = _441; */
mov tmp_0 v441;
/* _442 = MEM[(const limb *)&ftmp4 + 8B]; */
mov v442 ftmp4_8;
/* _443 = (__int128 unsigned) _442; */
vpc v443@uint128 v442@uint64;
/* _444 = _434 - _443; */
usub v444 v434 v443;
/* MEM[(widelimb *)&tmp + 16B] = _444; */
mov tmp_16 v444;
/* _445 = MEM[(const limb *)&ftmp4 + 16B]; */
mov v445 ftmp4_16;
/* _446 = (__int128 unsigned) _445; */
vpc v446@uint128 v445@uint64;
/* _447 = _436 - _446; */
usub v447 v436 v446;
/* MEM[(widelimb *)&tmp + 32B] = _447; */
mov tmp_32 v447;
/* _448 = MEM[(const limb *)&ftmp4 + 24B]; */
mov v448 ftmp4_24;
/* _449 = (__int128 unsigned) _448; */
vpc v449@uint128 v448@uint64;
/* _450 = _438 - _449; */
usub v450 v438 v449;
/* MEM[(widelimb *)&tmp + 48B] = _450; */
mov tmp_48 v450;
/* felem_reduce (&ftmp3, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24);
/* felem_mul (&tmp, &ftmp, x2_30(D)); */
inline felem_mul (ftmp_0, ftmp_8, ftmp_16, ftmp_24,
                x230_0, x230_8, x230_16, x230_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);

/* start 986: felem_diff_128_64(tmp, ftmp2); */
/* _411 = MEM[(widelimb *)&tmp]; */
mov v411 tmp_0;
/* _412 = _411 + 0x10000000000000100; */
uadd v412 v411 0x10000000000000100@uint128;
/* _413 = MEM[(widelimb *)&tmp + 16B]; */
mov v413 tmp_16;
/* _414 = _413 + 18446462598732840704; */
uadd v414 v413 0xfffeffffffffff00@uint128;
/* _415 = MEM[(widelimb *)&tmp + 32B]; */
mov v415 tmp_32;
/* _416 = _415 + 18446744073709551360; */
uadd v416 v415 0xffffffffffffff00@uint128;
/* _417 = MEM[(widelimb *)&tmp + 48B]; */
mov v417 tmp_48;
/* _418 = _417 + 18446744073709551360; */
uadd v418 v417 0xffffffffffffff00@uint128;
/* _419 = MEM[(const limb *)&ftmp2]; */
mov v419 ftmp2_0;
/* _420 = (__int128 unsigned) _419; */
vpc v420@uint128 v419@uint64;
/* _421 = _412 - _420; */
usub v421 v412 v420;
/* MEM[(widelimb *)&tmp] = _421; */
mov tmp_0 v421;
/* _422 = MEM[(const limb *)&ftmp2 + 8B]; */
mov v422 ftmp2_8;
/* _423 = (__int128 unsigned) _422; */
vpc v423@uint128 v422@uint64;
/* _424 = _414 - _423; */
usub v424 v414 v423;
/* MEM[(widelimb *)&tmp + 16B] = _424; */
mov tmp_16 v424;
/* _425 = MEM[(const limb *)&ftmp2 + 16B]; */
mov v425 ftmp2_16;
/* _426 = (__int128 unsigned) _425; */
vpc v426@uint128 v425@uint64;
/* _427 = _416 - _426; */
usub v427 v416 v426;
/* MEM[(widelimb *)&tmp + 32B] = _427; */
mov tmp_32 v427;
/* _428 = MEM[(const limb *)&ftmp2 + 24B]; */
mov v428 ftmp2_24;
/* _429 = (__int128 unsigned) _428; */
vpc v429@uint128 v428@uint64;
/* _430 = _418 - _429; */
usub v430 v418 v429;
/* MEM[(widelimb *)&tmp + 48B] = _430; */
mov tmp_48 v430;
/* felem_reduce (&ftmp, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp_0, ftmp_8, ftmp_16, ftmp_24);


(* speical case for point double *)

/* /\* _377 = MEM[(const limb *)&ftmp]; *\/ */
/* mov v377 ftmp_0; */
/* /\* _378 = MEM[(const limb *)&ftmp + 8B]; *\/ */
/* mov v378 ftmp_8; */
/* /\* _379 = _377 | _378; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v379 v377 v378; */
/* /\* _380 = MEM[(const limb *)&ftmp + 16B]; *\/ */
/* mov v380 ftmp_16; */
/* /\* _381 = _379 | _380; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v381 v379 v380; */
/* /\* _382 = MEM[(const limb *)&ftmp + 24B]; *\/ */
/* mov v382 ftmp_24; */
/* /\* zero_383 = _381 | _382; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 zero383 v381 v382; */
/* /\* zero4_384 = (long long int) zero_383; *\/ */
/* cast v384@int64 zero383@uint64; */
/* /\* _385 = zero4_384 + -1; *\/ */
/* sadd v385 v384 (-0x1)@int64; */
/* /\* _386 = (unsigned long) _385; *\/ */
/* cast v386@uint64 v385@int64; */
/* /\* zero_387 = _386 >> 63; *\/ */
/* usplit zero387 tmp_to_use v386 63; */
/* /\* _388 = _377 ^ 1; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _389 = _378 ^ 72056494526300160; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _390 = _388 | _389; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v390 v388 v389; */
/* /\* _391 = _380 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _392 = _390 | _391; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v392 v390 v391; */
/* /\* _393 = _382 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two224m96p1_394 = _392 | _393; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two224m96p1394 v392 v393; */
/* /\* two224m96p15_395 = (long long int) two224m96p1_394; *\/ */
/* cast v395@int64 two224m96p1394@uint64; */
/* /\* _396 = two224m96p15_395 + -1; *\/ */
/* sadd v396 v395 (-0x1)@int64; */
/* /\* _397 = (unsigned long) _396; *\/ */
/* cast v397@uint64 v396@int64; */
/* /\* two224m96p1_398 = _397 >> 63; *\/ */
/* usplit two224m96p1398 tmp_to_use v397 63; */
/* /\* _399 = _377 ^ 2; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _400 = _378 ^ 72055395014672384; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _547 = _391 | _399; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v547 v391 v399; */
/* /\* _402 = _400 | _547; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v402 v400 v547; */
/* /\* _403 = _382 ^ 144115188075855871; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two225m97p2_404 = _402 | _403; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two225m97p2404 v402 v403; */
/* /\* two225m97p26_405 = (long long int) two225m97p2_404; *\/ */
/* cast v405@int64 two225m97p2404@uint64; */
/* /\* _406 = two225m97p26_405 + -1; *\/ */
/* sadd v406 v405 (-0x1)@int64; */
/* /\* _407 = (unsigned long) _406; *\/ */
/* cast v407@uint64 v406@int64; */
/* /\* two225m97p2_408 = _407 >> 63; *\/ */
/* usplit two225m97p2408 tmp_to_use v407 63; */
/* /\* _90 = two224m96p1_398 | two225m97p2_408; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v90 two224m96p1398 two225m97p2408; */
/* /\* _410 = _90 | zero_387; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v410 v90 zero387; */
/* /\* _343 = MEM[(const limb *)&ftmp3]; *\/ */
/* mov v343 ftmp3_0; */
/* /\* _344 = MEM[(const limb *)&ftmp3 + 8B]; *\/ */
/* mov v344 ftmp3_8; */
/* /\* _345 = _343 | _344; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v345 v343 v344; */
/* /\* _346 = MEM[(const limb *)&ftmp3 + 16B]; *\/ */
/* mov v346 ftmp3_16; */
/* /\* _347 = _345 | _346; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v347 v345 v346; */
/* /\* _348 = MEM[(const limb *)&ftmp3 + 24B]; *\/ */
/* mov v348 ftmp3_24; */
/* /\* zero_349 = _347 | _348; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 zero349 v347 v348; */
/* /\* zero4_350 = (long long int) zero_349; *\/ */
/* cast v350@int64 zero349@uint64; */
/* /\* _351 = zero4_350 + -1; *\/ */
/* sadd v351 v350 (-0x1)@int64; */
/* /\* _352 = (unsigned long) _351; *\/ */
/* cast v352@uint64 v351@int64; */
/* /\* zero_353 = _352 >> 63; *\/ */
/* usplit zero353 tmp_to_use v352 63; */
/* /\* _354 = _343 ^ 1; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _355 = _344 ^ 72056494526300160; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _356 = _354 | _355; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v356 v354 v355; */
/* /\* _357 = _346 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _358 = _356 | _357; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v358 v356 v357; */
/* /\* _359 = _348 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two224m96p1_360 = _358 | _359; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two224m96p1360 v358 v359; */
/* /\* two224m96p15_361 = (long long int) two224m96p1_360; *\/ */
/* cast v361@int64 two224m96p1360@uint64; */
/* /\* _362 = two224m96p15_361 + -1; *\/ */
/* sadd v362 v361 (-0x1)@int64; */
/* /\* _363 = (unsigned long) _362; *\/ */
/* cast v363@uint64 v362@int64; */
/* /\* two224m96p1_364 = _363 >> 63; *\/ */
/* usplit two224m96p1364 tmp_to_use v363 63; */
/* /\* _365 = _343 ^ 2; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _366 = _344 ^ 72055395014672384; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _91 = _357 | _365; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v91 v357 v365; */
/* /\* _368 = _91 | _366; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v368 v91 v366; */
/* /\* _369 = _348 ^ 144115188075855871; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two225m97p2_370 = _368 | _369; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two225m97p2370 v368 v369; */
/* /\* two225m97p26_371 = (long long int) two225m97p2_370; *\/ */
/* cast v371@int64 two225m97p2370@uint64; */
/* /\* _372 = two225m97p26_371 + -1; *\/ */
/* sadd v372 v371 (-0x1)@int64; */
/* /\* _373 = (unsigned long) _372; *\/ */
/* cast v373@uint64 v372@int64; */
/* /\* two225m97p2_374 = _373 >> 63; *\/ */
/* usplit two225m97p2374 tmp_to_use v373 63; */
/* /\* _41 = two224m96p1_364 | two225m97p2_374; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v41 two224m96p1364 two225m97p2374; */
/* /\* _376 = _41 | zero_353; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v376 v41 zero353; */
/* /\* _309 = *z1_21(D); *\/ */
/* mov v309 z121_0; */
/* /\* _310 = MEM[(const limb *)z1_21(D) + 8B]; *\/ */
/* mov v310 z121_8; */
/* /\* _311 = _309 | _310; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v311 v309 v310; */
/* /\* _312 = MEM[(const limb *)z1_21(D) + 16B]; *\/ */
/* mov v312 z121_16; */
/* /\* _313 = _311 | _312; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v313 v311 v312; */
/* /\* _314 = MEM[(const limb *)z1_21(D) + 24B]; *\/ */
/* mov v314 z121_24; */
/* /\* zero_315 = _313 | _314; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 zero315 v313 v314; */
/* /\* zero4_316 = (long long int) zero_315; *\/ */
/* cast v316@int64 zero315@uint64; */
/* /\* _317 = zero4_316 + -1; *\/ */
/* sadd v317 v316 (-0x1)@int64; */
/* /\* _318 = (unsigned long) _317; *\/ */
/* cast v318@uint64 v317@int64; */
/* /\* zero_319 = _318 >> 63; *\/ */
/* usplit zero319 tmp_to_use v318 63; */
/* /\* _320 = _309 ^ 1; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _321 = _310 ^ 72056494526300160; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _322 = _320 | _321; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v322 v320 v321; */
/* /\* _323 = _312 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _324 = _322 | _323; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v324 v322 v323; */
/* /\* _325 = _314 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two224m96p1_326 = _324 | _325; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two224m96p1326 v324 v325; */
/* /\* two224m96p15_327 = (long long int) two224m96p1_326; *\/ */
/* cast v327@int64 two224m96p1326@uint64; */
/* /\* _328 = two224m96p15_327 + -1; *\/ */
/* sadd v328 v327 (-0x1)@int64; */
/* /\* _329 = (unsigned long) _328; *\/ */
/* cast v329@uint64 v328@int64; */
/* /\* two224m96p1_330 = _329 >> 63; *\/ */
/* usplit two224m96p1330 tmp_to_use v329 63; */
/* /\* _331 = _309 ^ 2; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _332 = _310 ^ 72055395014672384; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _88 = _323 | _331; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v88 v323 v331; */
/* /\* _334 = _88 | _332; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v334 v88 v332; */
/* /\* _335 = _314 ^ 144115188075855871; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two225m97p2_336 = _334 | _335; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two225m97p2336 v334 v335; */
/* /\* two225m97p26_337 = (long long int) two225m97p2_336; *\/ */
/* cast v337@int64 two225m97p2336@uint64; */
/* /\* _338 = two225m97p26_337 + -1; *\/ */
/* sadd v338 v337 (-0x1)@int64; */
/* /\* _339 = (unsigned long) _338; *\/ */
/* cast v339@uint64 v338@int64; */
/* /\* two225m97p2_340 = _339 >> 63; *\/ */
/* usplit two225m97p2340 tmp_to_use v339 63; */
/* /\* _89 = two224m96p1_330 | two225m97p2_340; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v89 two224m96p1330 two225m97p2340; */
/* /\* _342 = _89 | zero_319; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v342 v89 zero319; */
/* /\* _275 = *z2_10(D); *\/ */
/* mov v275 z210_0; */
/* /\* _276 = MEM[(const limb *)z2_10(D) + 8B]; *\/ */
/* mov v276 z210_8; */
/* /\* _277 = _275 | _276; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v277 v275 v276; */
/* /\* _278 = MEM[(const limb *)z2_10(D) + 16B]; *\/ */
/* mov v278 z210_16; */
/* /\* _279 = _277 | _278; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v279 v277 v278; */
/* /\* _280 = MEM[(const limb *)z2_10(D) + 24B]; *\/ */
/* mov v280 z210_24; */
/* /\* zero_281 = _279 | _280; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 zero281 v279 v280; */
/* /\* zero4_282 = (long long int) zero_281; *\/ */
/* cast v282@int64 zero281@uint64; */
/* /\* _283 = zero4_282 + -1; *\/ */
/* sadd v283 v282 (-0x1)@int64; */
/* /\* _284 = (unsigned long) _283; *\/ */
/* cast v284@uint64 v283@int64; */
/* /\* zero_285 = _284 >> 63; *\/ */
/* usplit zero285 tmp_to_use v284 63; */
/* /\* _286 = _275 ^ 1; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _287 = _276 ^ 72056494526300160; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _288 = _286 | _287; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v288 v286 v287; */
/* /\* _289 = _278 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _290 = _288 | _289; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v290 v288 v289; */
/* /\* _291 = _280 ^ 72057594037927935; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two224m96p1_292 = _290 | _291; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two224m96p1292 v290 v291; */
/* /\* two224m96p15_293 = (long long int) two224m96p1_292; *\/ */
/* cast v293@int64 two224m96p1292@uint64; */
/* /\* _294 = two224m96p15_293 + -1; *\/ */
/* sadd v294 v293 (-0x1)@int64; */
/* /\* _295 = (unsigned long) _294; *\/ */
/* cast v295@uint64 v294@int64; */
/* /\* two224m96p1_296 = _295 >> 63; *\/ */
/* usplit two224m96p1296 tmp_to_use v295 63; */
/* /\* _297 = _275 ^ 2; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _298 = _276 ^ 72055395014672384; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* _200 = _289 | _297; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v200 v289 v297; */
/* /\* _300 = _200 | _298; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v300 v200 v298; */
/* /\* _301 = _280 ^ 144115188075855871; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* two225m97p2_302 = _300 | _301; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 two225m97p2302 v300 v301; */
/* /\* two225m97p26_303 = (long long int) two225m97p2_302; *\/ */
/* cast v303@int64 two225m97p2302@uint64; */
/* /\* _304 = two225m97p26_303 + -1; *\/ */
/* sadd v304 v303 (-0x1)@int64; */
/* /\* _305 = (unsigned long) _304; *\/ */
/* cast v305@uint64 v304@int64; */
/* /\* two225m97p2_306 = _305 >> 63; *\/ */
/* usplit two225m97p2306 tmp_to_use v305 63; */
/* /\* _201 = two224m96p1_296 | two225m97p2_306; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v201 two224m96p1296 two225m97p2306; */
/* /\* _308 = _201 | zero_285; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* or uint64 v308 v201 zero285; */
/* /\* _598 = _376 & _410; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 v598 v376 v410; */
/* if (_598 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 6>, False label: <bb 8> */

/* BB's index is 6 */

/* _4 = _308 | _342; */
/* TODO: Bitwise And/Or , may need assert and assume */
/* or uint64 v4 v308 v342; */
/* if (_4 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 8> */

/* BB's index is 7 */

/* point_double (x3_42(D), y3_43(D), z3_44(D), x1_18(D), y1_15(D), z1_21(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* ftmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* y_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* goto <bb 12> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* if (mixed_8(D) == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 9>, False label: <bb 10> */

/* BB's index is 9 */

/* felem_mul (&tmp, z1_21(D), z2_10(D)); */
inline felem_mul (z121_0, z121_8, z121_16, z121_24,
                z210_0, z210_8, z210_16, z210_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* felem_reduce (&ftmp5, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24);
/* goto <bb 11> */
/* TODO: unconditional jump */

/* BB's index is 10 */
/* NOTE: 1010: special case z2 = 0 is handled later */
/* _168 = {_309, _310}; */
/* mov v168_0 v309; */
/* mov v168_1 v310; */
/* _628 = {_312, _314}; */
/* mov v628_0 v312; */
/* mov v628_1 v314; */
/* MEM[(limb *)&ftmp5] = _168; */
/* mov ftmp5_0 v168_0; */
/* mov ftmp5_8 v168_8; */
/* MEM[(limb *)&ftmp5 + 16B] = _628; */
/* mov ftmp5_16 v628_0; */
/* mov ftmp5_24 v628_8; */
/* goto <bb 11> */
/* TODO: unconditional jump */

/* BB's index is 11 */

/* MEM_6 = PHI <MEM_57(9), MEM_634(10)> */
/* felem_mul (&tmp, &ftmp, &ftmp5); */
inline felem_mul (ftmp_0, ftmp_8, ftmp_16, ftmp_24,
                ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* felem_reduce (&z_out, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   z_out_0, z_out_8, z_out_16, z_out_24);
/* _196 = MEM[(const limb *)&ftmp]; */
mov v196 ftmp_0;
/* MEM[(limb *)&ftmp5] = _196; */
mov ftmp5_0 v196;
/* _197 = MEM[(const limb *)&ftmp + 8B]; */
mov v197 ftmp_8;
/* MEM[(limb *)&ftmp5 + 8B] = _197; */
mov ftmp5_8 v197;
/* _198 = MEM[(const limb *)&ftmp + 16B]; */
mov v198 ftmp_16;
/* MEM[(limb *)&ftmp5 + 16B] = _198; */
mov ftmp5_16 v198;
/* _199 = MEM[(const limb *)&ftmp + 24B]; */
mov v199 ftmp_24;
/* MEM[(limb *)&ftmp5 + 24B] = _199; */
mov ftmp5_24 v199;
/* tmp0_546 = _196 * 2; */
umul tmp0546 v196 0x2@uint64;
/* tmp1_548 = _197 * 2; */
umul tmp1548 v197 0x2@uint64;
/* tmp2_550 = _198 * 2; */
umul tmp2550 v198 0x2@uint64;
/* _552 = _196 w* _196; */
umulj v552 v196 v196;
/* MEM[(widelimb *)&tmp] = _552; */
mov tmp_0 v552;
/* _554 = _196 w* tmp1_548; */
umulj v554 v196 tmp1548;
/* MEM[(widelimb *)&tmp + 16B] = _554; */
mov tmp_16 v554;
/* _556 = _196 w* tmp2_550; */
umulj v556 v196 tmp2550;
/* _558 = _197 w* _197; */
umulj v558 v197 v197;
/* _559 = _556 + _558; */
uadd v559 v556 v558;
/* MEM[(widelimb *)&tmp + 32B] = _559; */
mov tmp_32 v559;
/* _563 = _199 w* tmp0_546; */
umulj v563 v199 tmp0546;
/* _564 = tmp2_550 w* _197; */
umulj v564 tmp2550 v197;
/* _565 = _563 + _564; */
uadd v565 v563 v564;
/* MEM[(widelimb *)&tmp + 48B] = _565; */
mov tmp_48 v565;
/* _566 = tmp1_548 w* _199; */
umulj v566 tmp1548 v199;
/* _568 = _198 w* _198; */
umulj v568 v198 v198;
/* _569 = _566 + _568; */
uadd v569 v566 v568;
/* MEM[(widelimb *)&tmp + 64B] = _569; */
mov tmp_64 v569;
/* _570 = tmp2_550 w* _199; */
umulj v570 tmp2550 v199;
/* MEM[(widelimb *)&tmp + 80B] = _570; */
mov tmp_80 v570;
/* _571 = _199 w* _199; */
umulj v571 v199 v199;
/* MEM[(widelimb *)&tmp + 96B] = _571; */
mov tmp_96 v571;
/* felem_reduce (&ftmp, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp_0, ftmp_8, ftmp_16, ftmp_24);
/* felem_mul (&tmp, &ftmp, &ftmp5); */
inline felem_mul (ftmp_0, ftmp_8, ftmp_16, ftmp_24,
                ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* felem_reduce (&ftmp5, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24);
/* felem_mul (&tmp, &ftmp2, &ftmp); */
inline felem_mul (ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24,
                ftmp_0, ftmp_8, ftmp_16, ftmp_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* felem_reduce (&ftmp2, &tmp); */
inline felem_reduce (tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                   ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24);
/* felem_mul (&tmp, &ftmp4, &ftmp5); */
inline felem_mul (ftmp4_0, ftmp4_8, ftmp4_16, ftmp4_24,
                ftmp5_0, ftmp5_8, ftmp5_16, ftmp5_24,
                tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96);
/* _518 = MEM[(const limb *)&ftmp3]; */
mov v518 ftmp3_0;
/* tmp0_519 = _518 * 2; */
umul tmp0519 v518 0x2@uint64;
/* _520 = MEM[(const limb *)&ftmp3 + 8B]; */
mov v520 ftmp3_8;
/* tmp1_521 = _520 * 2; */
umul tmp1521 v520 0x2@uint64;
/* _522 = MEM[(const limb *)&ftmp3 + 16B]; */
mov v522 ftmp3_16;
/* tmp2_523 = _522 * 2; */
umul tmp2523 v522 0x2@uint64;
/* _525 = _518 w* _518; */
umulj v525 v518 v518;
/* _527 = _518 w* tmp1_521; */
umulj v527 v518 tmp1521;
/* _529 = _518 w* tmp2_523; */
umulj v529 v518 tmp2523;
/* _531 = _520 w* _520; */
umulj v531 v520 v520;
/* _533 = MEM[(const limb *)&ftmp3 + 24B]; */
mov v533 ftmp3_24;
/* _536 = _533 w* tmp0_519; */
umulj v536 v533 tmp0519;
/* _537 = tmp2_523 w* _520; */
umulj v537 tmp2523 v520;
/* _539 = tmp1_521 w* _533; */
umulj v539 tmp1521 v533;
/* _541 = _522 w* _522; */
umulj v541 v522 v522;
/* _542 = _539 + _541; */
uadd v542 v539 v541;
/* MEM[(widelimb *)&tmp2 + 64B] = _542; */
mov tmp2_64 v542;
/* _543 = tmp2_523 w* _533; */
umulj v543 tmp2523 v533;
/* MEM[(widelimb *)&tmp2 + 80B] = _543; */
mov tmp2_80 v543;
/* _544 = _533 w* _533; */
umulj v544 v533 v533;
/* MEM[(widelimb *)&tmp2 + 96B] = _544; */
mov tmp2_96 v544;
/* _506 = MEM[(const limb *)&ftmp5]; */
mov v506 ftmp5_0;
/* _507 = (__int128 unsigned) _506; */
vpc v507@uint128 v506@uint64;
/* _203 = _525 - _507; */
usubb carry_v203 v203 v525 v507; (* NOTE: slow *)
/* _509 = MEM[(const limb *)&ftmp5 + 8B]; */
mov v509 ftmp5_8;
/* _510 = (__int128 unsigned) _509; */
vpc v510@uint128 v509@uint64;
/* _205 = 0x1fffdfffffffffe00 - _510; */
usub v205 0x1fffdfffffffffe00@uint128 v510;
/* _512 = MEM[(const limb *)&ftmp5 + 16B]; */
mov v512 ftmp5_16;
/* _513 = (__int128 unsigned) _512; */
vpc v513@uint128 v512@uint64;
/* _495 = _531 - _513; */
usubb carry_v495 v495 v531 v513; /* NOTE: fail */
/* _489 = _495 + 0x1fffffffffffffe00; */
uadds carry_v489 v489 v495 0x1fffffffffffffe00@uint128;

assert true && carry_v495 = carry_v489;
assume carry_v495 = carry_v489 && true;

/* _515 = MEM[(const limb *)&ftmp5 + 24B]; */
mov v515 ftmp5_24;
/* _516 = (__int128 unsigned) _515; */
vpc v516@uint128 v515@uint64;
/* _28 = 0x1fffffffffffffe00 - _516; */
usub v28 0x1fffffffffffffe00@uint128 v516;
/* _69 = _28 + _536; */
uadd v69 v28 v536;
/* _192 = MEM[(const limb *)&ftmp2]; */
mov v192 ftmp2_0;
/* _193 = MEM[(const limb *)&ftmp2 + 8B]; */
mov v193 ftmp2_8;
/* _194 = MEM[(const limb *)&ftmp2 + 16B]; */
mov v194 ftmp2_16;
/* _195 = MEM[(const limb *)&ftmp2 + 24B]; */
mov v195 ftmp2_24;
/* _188 = _192 * 2; */
umul v188 v192 0x2@uint64;
/* MEM[(limb *)&ftmp5] = _188; */
mov ftmp5_0 v188;
/* _189 = _193 * 2; */
umul v189 v193 0x2@uint64;
/* MEM[(limb *)&ftmp5 + 8B] = _189; */
mov ftmp5_8 v189;
/* _190 = _194 * 2; */
umul v190 v194 0x2@uint64;
/* MEM[(limb *)&ftmp5 + 16B] = _190; */
mov ftmp5_16 v190;
/* _191 = _195 * 2; */
umul v191 v195 0x2@uint64;
/* MEM[(limb *)&ftmp5 + 24B] = _191; */
mov ftmp5_24 v191;
/* _202 = _203 + 0x20000000000000200; */
uadds carry_v202 v202 v203 0x20000000000000200@uint128;

assert true && carry_v202 = carry_v203;
assume carry_v202 = carry_v203 && true;


/* _204 = _205 + _527; */
uadd v204 v205 v527;
/* _484 = _489 + _529; */
uadd v484 v489 v529;
/* _67 = _69 + _537; */
uadd v67 v69 v537;
/* _487 = (__int128 unsigned) _188; */
vpc v487@uint128 v188@uint64;
/* _488 = _202 - _487; */
usub v488 v202 v487;
/* MEM[(widelimb *)&tmp2] = _488; */
mov tmp2_0 v488;
/* _490 = (__int128 unsigned) _189; */
vpc v490@uint128 v189@uint64;
/* _491 = _204 - _490; */
usub v491 v204 v490;
/* MEM[(widelimb *)&tmp2 + 16B] = _491; */
mov tmp2_16 v491;
/* _493 = (__int128 unsigned) _190; */
vpc v493@uint128 v190@uint64;
/* _494 = _484 - _493; */
usub v494 v484 v493;
/* MEM[(widelimb *)&tmp2 + 32B] = _494; */
mov tmp2_32 v494;
/* _496 = (__int128 unsigned) _191; */
vpc v496@uint128 v191@uint64;
/* _497 = _67 - _496; */
usub v497 v67 v496;
/* MEM[(widelimb *)&tmp2 + 48B] = _497; */
mov tmp2_48 v497;
/* felem_reduce (&x_out, &tmp2); */
inline felem_reduce (tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96,
                   x_out_0, x_out_8, x_out_16, x_out_24);
/* vect__172193_637 = MEM[(limb *)&ftmp2]; */
mov vect__172193637_0 ftmp2_0;
mov vect__172193637_8 ftmp2_8;
/* vect__172194_647 = MEM[(limb *)&ftmp2 + 16B]; */
mov vect__172194647_0 ftmp2_16;
mov vect__172194647_8 ftmp2_24;
/* vect__173195_683 = vect__172193_637 + { 288230376151711748, 288225978105200636 }; */
uadd vect__173195683_0 vect__172193637_0 0x400000000000004@uint64;
uadd vect__173195683_8 vect__172193637_8 0x3fffbfffffffffc@uint64;
/* vect__173195_159 = vect__172194_647 + { 288230376151711740, 288230376151711740 }; */
uadd vect__173195159_0 vect__172194647_0 0x3fffffffffffffc@uint64;
uadd vect__173195159_8 vect__172194647_8 0x3fffffffffffffc@uint64;
/* vect__180198_158 = MEM[(const limb *)&x_out]; */
mov vect__180198158_0 x_out_0;
mov vect__180198158_8 x_out_8;
/* vect__180199_560 = MEM[(const limb *)&x_out + 16B]; */
mov vect__180199560_0 x_out_16;
mov vect__180199560_8 x_out_24;
/* vect__181200_589 = vect__173195_683 - vect__180198_158; */
usub vect__181200589_0 vect__173195683_0 vect__180198158_0;
usub vect__181200589_8 vect__173195683_8 vect__180198158_8;
/* vect__181200_607 = vect__173195_159 - vect__180199_560; */
usub vect__181200607_0 vect__173195159_0 vect__180199560_0;
usub vect__181200607_8 vect__173195159_8 vect__180199560_8;
/* MEM[(limb *)&ftmp2] = vect__181200_589; */
mov ftmp2_0 vect__181200589_0;
mov ftmp2_8 vect__181200589_8;
/* MEM[(limb *)&ftmp2 + 16B] = vect__181200_607; */
mov ftmp2_16 vect__181200607_0;
mov ftmp2_24 vect__181200607_8;

/* assert true && (limbs 56 [ftmp2_0, ftmp2_8, ftmp2_16, ftmp_24] <u (2**59)@232); */

/* felem_mul (&tmp2, &ftmp3, &ftmp2); */
inline felem_mul (ftmp3_0, ftmp3_8, ftmp3_16, ftmp3_24,
                ftmp2_0, ftmp2_8, ftmp2_16, ftmp2_24,
                tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96);

/* assert true && (limbs 56 [tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96]) <u (2**118)@464; */

/* widefelem_diff (&tmp2, &tmp); */
inline widefelem_diff (tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96,
                     tmp_0, tmp_16, tmp_32, tmp_48, tmp_64, tmp_80, tmp_96,
                     tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96);
/* felem_reduce (&y_out, &tmp2); */
inline felem_reduce (tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96,
                   y_out_0, y_out_8, y_out_16, y_out_24);



/* NOTE: body end */


/* /\* copy_160 = -_342; *\/ */
/* /\* TODO: check negation semantics *\/ */
/* usubb carry copy160 0@uint64 v342; */
/* /\* vect_cst__409 = {copy_160, copy_160}; *\/ */
/* mov v409_0 copy160; */
/* mov v409_1 copy160; */
/* /\* vect__165168_632 = MEM[(const limb *)x2_30(D)]; *\/ */
/* mov vect__165168632_0 x230_0; */
/* mov vect__165168632_8 x230_8; */
/* /\* vect__167171_648 = MEM[(limb *)&x_out]; *\/ */
/* mov vect__167171648_0 x_out_0; */
/* mov vect__167171648_8 x_out_8; */
/* /\* vect__168172_664 = vect__165168_632 ^ vect__167171_648; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_169173_680 = vect_cst__409 & vect__168172_664; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_169173680_0 v409_0 vect__168172664_0; */
/* and uint64 vect_tmp_169173680_8 v409_8 vect__168172664_8; */
/* /\* vect__170174_218 = vect__167171_648 ^ vect_tmp_169173_680; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out] = vect__170174_218; *\/ */
/* mov x_out_0 vect__170174218_0; */
/* mov x_out_8 vect__170174218_8; */
/* /\* vect__165168_482 = MEM[(const limb *)x2_30(D) + 16B]; *\/ */
/* mov vect__165168482_0 x230_16; */
/* mov vect__165168482_8 x230_24; */
/* /\* vect__167171_479 = MEM[(limb *)&x_out + 16B]; *\/ */
/* mov vect__167171479_0 x_out_16; */
/* mov vect__167171479_8 x_out_24; */
/* /\* vect__168172_478 = vect__167171_479 ^ vect__165168_482; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_169173_401 = vect_cst__409 & vect__168172_478; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_169173401_0 v409_0 vect__168172478_0; */
/* and uint64 vect_tmp_169173401_8 v409_8 vect__168172478_8; */
/* /\* vect__170174_375 = vect_tmp_169173_401 ^ vect__167171_479; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 16B] = vect__170174_375; *\/ */
/* mov x_out_16 vect__170174375_0; */
/* mov x_out_24 vect__170174375_8; */
/* /\* copy_148 = -_308; *\/ */
/* /\* TODO: check negation semantics *\/ */
/* usubb carry copy148 0@uint64 v308; */
/* /\* vect_cst__504 = {copy_148, copy_148}; *\/ */
/* mov v504_0 copy148; */
/* mov v504_1 copy148; */
/* /\* vect__153157_125 = MEM[(const limb *)x1_18(D)]; *\/ */
/* mov vect__153157125_0 x118_0; */
/* mov vect__153157125_8 x118_8; */
/* /\* vect__156161_105 = vect__153157_125 ^ vect__170174_218; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_157162_106 = vect__156161_105 & vect_cst__504; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_157162106_0 vect__156161105_0 v504_0; */
/* and uint64 vect_tmp_157162106_8 vect__156161105_8 v504_8; */
/* /\* vect__158163_107 = vect_tmp_157162_106 ^ vect__170174_218; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out] = vect__158163_107; *\/ */
/* mov x_out_0 vect__158163107_0; */
/* mov x_out_8 vect__158163107_8; */
/* /\* vect__153157_517 = MEM[(const limb *)x1_18(D) + 16B]; *\/ */
/* mov vect__153157517_0 x118_16; */
/* mov vect__153157517_8 x118_24; */
/* /\* vect__156161_505 = vect__170174_375 ^ vect__153157_517; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_157162_503 = vect_cst__504 & vect__156161_505; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_157162503_0 v504_0 vect__156161505_0; */
/* and uint64 vect_tmp_157162503_8 v504_8 vect__156161505_8; */
/* /\* vect__158163_502 = vect__170174_375 ^ vect_tmp_157162_503; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&x_out + 16B] = vect__158163_502; *\/ */
/* mov x_out_16 vect__158163502_0; */
/* mov x_out_24 vect__158163502_8; */
/* /\* vect__141146_132 = MEM[(const limb *)y2_26(D)]; *\/ */
/* mov vect__141146132_0 y226_0; */
/* mov vect__141146132_8 y226_8; */
/* /\* vect__143149_133 = MEM[(limb *)&y_out]; *\/ */
/* mov vect__143149133_0 y_out_0; */
/* mov vect__143149133_8 y_out_8; */
/* /\* vect__144150_134 = vect__141146_132 ^ vect__143149_133; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_145151_135 = vect__144150_134 & vect_cst__409; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_145151135_0 vect__144150134_0 v409_0; */
/* and uint64 vect_tmp_145151135_8 vect__144150134_8 v409_8; */
/* /\* vect__146152_136 = vect__143149_133 ^ vect_tmp_145151_135; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out] = vect__146152_136; *\/ */
/* mov y_out_0 vect__146152136_0; */
/* mov y_out_8 vect__146152136_8; */
/* /\* vect__141146_608 = MEM[(const limb *)y2_26(D) + 16B]; *\/ */
/* mov vect__141146608_0 y226_16; */
/* mov vect__141146608_8 y226_24; */
/* /\* vect__143149_605 = MEM[(limb *)&y_out + 16B]; *\/ */
/* mov vect__143149605_0 y_out_16; */
/* mov vect__143149605_8 y_out_24; */
/* /\* vect__144150_601 = vect__143149_605 ^ vect__141146_608; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_145151_599 = vect_cst__409 & vect__144150_601; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_145151599_0 v409_0 vect__144150601_0; */
/* and uint64 vect_tmp_145151599_8 v409_8 vect__144150601_8; */
/* /\* vect__146152_590 = vect_tmp_145151_599 ^ vect__143149_605; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 16B] = vect__146152_590; *\/ */
/* mov y_out_16 vect__146152590_0; */
/* mov y_out_24 vect__146152590_8; */
/* /\* vect__130135_139 = MEM[(const limb *)y1_15(D)]; *\/ */
/* mov vect__130135139_0 y115_0; */
/* mov vect__130135139_8 y115_8; */
/* /\* vect__133139_141 = vect__146152_136 ^ vect__130135_139; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_134140_142 = vect__133139_141 & vect_cst__504; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_134140142_0 vect__133139141_0 v504_0; */
/* and uint64 vect_tmp_134140142_8 vect__133139141_8 v504_8; */
/* /\* vect__135141_143 = vect__146152_136 ^ vect_tmp_134140_142; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out] = vect__135141_143; *\/ */
/* mov y_out_0 vect__135141143_0; */
/* mov y_out_8 vect__135141143_8; */
/* /\* vect__130135_645 = MEM[(const limb *)y1_15(D) + 16B]; *\/ */
/* mov vect__130135645_0 y115_16; */
/* mov vect__130135645_8 y115_24; */
/* /\* vect__133139_641 = vect__146152_590 ^ vect__130135_645; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_134140_639 = vect_cst__504 & vect__133139_641; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_134140639_0 v504_0 vect__133139641_0; */
/* and uint64 vect_tmp_134140639_8 v504_8 vect__133139641_8; */
/* /\* vect__135141_638 = vect__146152_590 ^ vect_tmp_134140_639; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&y_out + 16B] = vect__135141_638; *\/ */
/* mov y_out_16 vect__135141638_0; */
/* mov y_out_24 vect__135141638_8; */
/* /\* vect__119124_170 = MEM[(const limb *)z2_10(D)]; *\/ */
/* mov vect__119124170_0 z210_0; */
/* mov vect__119124170_8 z210_8; */
/* /\* vect__121127_171 = MEM[(limb *)&z_out]; *\/ */
/* mov vect__121127171_0 z_out_0; */
/* mov vect__121127171_8 z_out_8; */
/* /\* vect__122128_681 = vect__119124_170 ^ vect__121127_171; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_123129_150 = vect_cst__409 & vect__122128_681; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_123129150_0 v409_0 vect__122128681_0; */
/* and uint64 vect_tmp_123129150_8 v409_8 vect__122128681_8; */
/* /\* vect__124130_151 = vect_tmp_123129_150 ^ vect__121127_171; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out] = vect__124130_151; *\/ */
/* mov z_out_0 vect__124130151_0; */
/* mov z_out_8 vect__124130151_8; */
/* /\* vect__119124_661 = MEM[(const limb *)z2_10(D) + 16B]; *\/ */
/* mov vect__119124661_0 z210_16; */
/* mov vect__119124661_8 z210_24; */
/* /\* vect__121127_658 = MEM[(limb *)&z_out + 16B]; *\/ */
/* mov vect__121127658_0 z_out_16; */
/* mov vect__121127658_8 z_out_24; */
/* /\* vect__122128_657 = vect__121127_658 ^ vect__119124_661; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_123129_655 = vect_cst__409 & vect__122128_657; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_123129655_0 v409_0 vect__122128657_0; */
/* and uint64 vect_tmp_123129655_8 v409_8 vect__122128657_8; */
/* /\* vect__124130_654 = vect_tmp_123129_655 ^ vect__121127_658; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out + 16B] = vect__124130_654; *\/ */
/* mov z_out_16 vect__124130654_0; */
/* mov z_out_24 vect__124130654_8; */
/* /\* vect__108113_620 = MEM[(const limb *)z1_21(D)]; *\/ */
/* mov vect__108113620_0 z121_0; */
/* mov vect__108113620_8 z121_8; */
/* /\* vect__111117_621 = vect__124130_151 ^ vect__108113_620; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_112118_684 = vect_cst__504 & vect__111117_621; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_112118684_0 v504_0 vect__111117621_0; */
/* and uint64 vect_tmp_112118684_8 v504_8 vect__111117621_8; */
/* /\* vect__113119_622 = vect__124130_151 ^ vect_tmp_112118_684; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)&z_out] = vect__113119_622; *\/ */
/* mov z_out_0 vect__113119622_0; */
/* mov z_out_8 vect__113119622_8; */
/* /\* vect__108113_677 = MEM[(const limb *)z1_21(D) + 16B]; *\/ */
/* mov vect__108113677_0 z121_16; */
/* mov vect__108113677_8 z121_24; */
/* /\* vect__111117_673 = vect__124130_654 ^ vect__108113_677; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* vect_tmp_112118_671 = vect_cst__504 & vect__111117_673; *\/ */
/* /\* TODO: Bitwise And/Or , may need assert and assume *\/ */
/* and uint64 vect_tmp_112118671_0 v504_0 vect__111117673_0; */
/* and uint64 vect_tmp_112118671_8 v504_8 vect__111117673_8; */
/* /\* vect__113119_670 = vect__124130_654 ^ vect_tmp_112118_671; *\/ */
/* /\* TODO: Skip translation for bit xor *\/ */
/* /\* MEM[(limb *)x3_42(D)] = vect__158163_107; *\/ */
/* mov x342_0 vect__158163107_0; */
/* mov x342_8 vect__158163107_8; */
/* /\* MEM[(limb *)x3_42(D) + 16B] = vect__158163_502; *\/ */
/* mov x342_16 vect__158163502_0; */
/* mov x342_24 vect__158163502_8; */
/* /\* MEM[(limb *)y3_43(D)] = vect__135141_143; *\/ */
/* mov y343_0 vect__135141143_0; */
/* mov y343_8 vect__135141143_8; */
/* /\* MEM[(limb *)y3_43(D) + 16B] = vect__135141_638; *\/ */
/* mov y343_16 vect__135141638_0; */
/* mov y343_24 vect__135141638_8; */
/* /\* MEM[(limb *)z3_44(D)] = vect__113119_622; *\/ */
/* mov z344_0 vect__113119622_0; */
/* mov z344_8 vect__113119622_8; */
/* /\* MEM[(limb *)z3_44(D) + 16B] = vect__113119_670; *\/ */
/* mov z344_16 vect__113119670_0; */
/* mov z344_24 vect__113119670_8; */
/* ftmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* ftmp5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* x_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* y_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* z_out ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* tmp2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* goto <bb 12> */
/* TODO: unconditional jump */

/* BB's index is 12 */

/* MEM_7 = PHI <MEM_83(11), MEM_55(7)> */
/* return; */


/* Start with unused lhs */
/* mov X3_0 x342_0@uint64; */
/* mov X3_1 x342_8@uint64; */
/* mov X3_2 x342_16@uint64; */
/* mov X3_3 x342_24@uint64; */
mov X3_0 x_out_0@uint64;
mov X3_1 x_out_8@uint64;
mov X3_2 x_out_16@uint64;
mov X3_3 x_out_24@uint64;
/* mov _ y343_0@uint64; */
/* mov _ y343_8@uint64; */
/* mov _ y343_16@uint64; */
/* mov _ y343_24@uint64; */
mov Y3_0 y_out_0@uint64;
mov Y3_1 y_out_8@uint64;
mov Y3_2 y_out_16@uint64;
mov Y3_3 y_out_24@uint64;
/* mov _ z344_0@uint64; */
/* mov _ z344_8@uint64; */
/* mov _ z344_16@uint64; */
/* mov _ z344_24@uint64; */
mov Z3_0 z_out_0@uint64;
mov Z3_1 z_out_8@uint64;
mov Z3_2 z_out_16@uint64;
mov Z3_3 z_out_24@uint64;
/* End with unsed lhs */

/*-
 * Add two elliptic curve points:
 * (X_1, Y_1, Z_1) + (X_2, Y_2, Z_2) = (X_3, Y_3, Z_3), where
 * X_3 = (Z_1^3 * Y_2 - Z_2^3 * Y_1)^2 - (Z_1^2 * X_2 - Z_2^2 * X_1)^3 -
 * 2 * Z_2^2 * X_1 * (Z_1^2 * X_2 - Z_2^2 * X_1)^2
 * Y_3 = (Z_1^3 * Y_2 - Z_2^3 * Y_1) * (Z_2^2 * X_1 * (Z_1^2 * X_2 - Z_2^2 * X_1)^2 - X_3) -
 *        Z_2^3 * Y_1 * (Z_1^2 * X_2 - Z_2^2 * X_1)^3
 * Z_3 = (Z_1^2 * X_2 - Z_2^2 * X_1) * (Z_1 * Z_2)
 *
 * This runs faster if 'mixed' is set, which requires Z_2 = 1 or Z_2 = 0
 */

 {
  and [
       (limbs 56 [X3_0, X3_1, X3_2, X3_3])
       = ((
           (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 3 * (limbs 56 [Y2_0, Y2_1, Y2_2, Y2_3])
           - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 3 * (limbs 56 [Y1_0, Y1_1, Y1_2, Y1_3])
          ) ** 2
          - (
             (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 2 * (limbs 56 [X2_0, X2_1, X2_2, X2_3])
             - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
            ) ** 3
            - 2 * (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
            * (
               (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 2 * (limbs 56 [X2_0, X2_1, X2_2, X2_3])
               - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
              )**2
         )
         (mod (2**224 - 2**96 + 1)),
         (limbs 56 [Y3_0, Y3_1, Y3_2, Y3_3])
         = ((
             (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 3 * (limbs 56 [Y2_0, Y2_1, Y2_2, Y2_3])
             - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 3 * (limbs 56 [Y1_0, Y1_1, Y1_2, Y1_3])
            ) *
            ( (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
              * (
                 (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 2 * (limbs 56 [X2_0, X2_1, X2_2, X2_3])
                 - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
                )**2
                - limbs 56 [X3_0, X3_1, X3_2, X3_3]
            )
            - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 3 * (limbs 56 [Y1_0, Y1_1, Y1_2, Y1_3])
            * (
               (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 2 * (limbs 56 [X2_0, X2_1, X2_2, X2_3])
               - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2 * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
              ) **3
           )
           (mod (2**224 - 2**96 + 1)),
         (limbs 56 [Z3_0, Z3_1, Z3_2, Z3_3])
         = ((
             (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3]) ** 2
             * (limbs 56 [X2_0, X2_1, X2_2, X2_3])
             - (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3]) ** 2
             * (limbs 56 [X1_0, X1_1, X1_2, X1_3])
            ) * (limbs 56 [Z1_0, Z1_1, Z1_2, Z1_3])
            * (limbs 56 [Z2_0, Z2_1, Z2_2, Z2_3])
           )
           (mod (2**224 - 2**96 + 1))
      ]
      &&
      true
 }

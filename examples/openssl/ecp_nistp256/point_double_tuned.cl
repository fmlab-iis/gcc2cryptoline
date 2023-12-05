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
Arguments: -v -btor -no_carry_constraint -isafety -jobs 12 point_double_tuned.cl
Parsing Cryptoline file:                [OK]            0.014133 seconds
Checking well-formedness:               [OK]            0.003802 seconds
Transforming to SSA form:               [OK]            0.002435 seconds
Rewriting assignments:                  [OK]            0.073933 seconds
Verifying program safety:
......
         Overall                        [OK]            3112.053565 seconds
Verifying range assertions:             [OK]            16.172168 seconds
Verifying range specification:          [OK]            0.066468 seconds
Rewriting value-preserved casting:      [OK]            0.013980 seconds
Verifying algebraic assertions:         [OK]            0.336433 seconds
Verifying algebraic specification:      [OK]            4.055720 seconds
Verification result:                    [OK]            3132.794412 seconds
*)
proc felem_shrink (uint128 a0, uint128 a1, uint128 a2, uint128 a3; uint64 c0, uint64 c1, uint64 c2, uint64 c3) = 
{
  true
  &&
  and [
      a0 <u (2**109)@128,
      a1 <u (2**109)@128,
      a2 <u (2**109)@128,
      a3 <u (2**109)@128
  ]
}


(* Start with undefined rhs *)
mov in50_0@uint128 a0;
mov in50_16@uint128 a1;
mov in50_32@uint128 a2;
mov in50_48@uint128 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _2 = MEM[(const limb * )in_50(D) + 48B]; *)
mov v2 in50_48;
(* _3 = _2 + 18446744069414584320; *)
mov value_lo 0xffffffff00000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v3 v2 value;
(* _4 = MEM[(const limb * )in_50(D) + 32B]; *)
mov v4 in50_32;
(* _5 = _4 >> 64; *)
usplit v5 tmp_to_use v4 64;
(* _6 = _3 + _5; *)
uadd v6 v3 v5;
(* _1 = _4 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v1 v4 value;

assert true && v1 = tmp_to_use;
assume v1 = tmp_to_use && true;

(* _8 = _1 + 18446673704965373952; *)
mov value_lo 0xffffc00000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v8 v1 value;
(* _10 = *in_50(D); *)
mov v10 in50_0;
(* _11 = _10 + 18446744073709551615; *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v11 v10 value;
(* _12 = MEM[(const limb * )in_50(D) + 16B]; *)
mov v12 in50_16;
(* _13 = _12 + 0x40000000000000000000ffffffff; *)
mov value_lo 0xffffffff@uint64;
mov value_hi 0x400000000000@uint64;
join value value_hi value_lo;
uadd v13 v12 value;
(* _14 = _6 >> 64; *)
usplit v14 tmp_to_use v6 64;
(* a_52 = (u64) _14; *)
vpc a52@uint64 v14@uint128;
(* _7 = _6 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v7 v6 value;

assert true && v7 = tmp_to_use;
assume v7 = tmp_to_use && true;

(* _16 = _14 << 32; *)
usplit tmp1 tmp2 v14 96;
shl v16 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _76 = _16 - _14; *)
usub v76 v16 v14;
(* _17 = _7 + _76; *)
uadd v17 v7 v76;
(* _18 = _17 >> 64; *)
usplit v18 tmp_to_use v17 64;
(* a_53 = (u64) _18; *)
vpc a53@uint64 v18@uint128;
(* b_54 = a_52 + a_53; *)
uadd b54 a52 a53;
(* _9 = _17 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v9 v17 value;

assert true && v9 = tmp_to_use;
assume v9 = tmp_to_use && true;

(* _20 = _18 << 32; *)
usplit tmp1 tmp2 v18 96;
shl v20 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _75 = _20 - _18; *)
usub v75 v20 v18;
(* _21 = _9 + _75; *)
uadd v21 v9 v75;
(* _22 = (__int128 unsigned) b_54; *)
vpc v22@uint128 b54@uint64;
(* _23 = _11 + _22; *)
uadd v23 v11 v22;
(* _24 = _22 << 32; *)
usplit tmp1 tmp2 v22 96;
shl v24 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _25 = _13 - _24; *)
usub v25 v13 v24;
(* _26 = _21 >> 64; *)
usplit v26 tmp_to_use v21 64;
(* high_55 = (u64) _26; *)
vpc high55@uint64 v26@uint128;
(* high_56 = -high_55; *)
(* TODO: check negation semantics *)
(* ====== modified : carry -> high ======= *)
usubb high high56 0@uint64 high55;
(* low_57 = (u64) _21; *)
cast low57@uint64 v21@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && low57 = tmp_to_use_p;
assume low57 = tmp_to_use && true;

(* low.0_27 = (signed long) _21; *)
cast v27@int64 v21@uint128;

assert true && v27 = low57;
assume v27 = low57 && true;

(* _28 = low.0_27 >> 63; *)
(* TODO: signed operation, need check *)
(* ====== modified: combine ====== *)
(* ssplit v28 tmp_to_use v27 63; *)
(* mask_58 = (u64) _28; *)
(* cast mask58@uint64 v28@int64; *)
(* cast v27_p@uint64 v27; *)
usplit low_h1bit low_l63bit low57 63;
vpc mask@uint1 low_h1bit;
(* low_59 = low_57 & 9223372036854775807; *)
(* Note: 0x7fffffffffffffff@uint64 = 0x7fffffffffffffff *)
(* Note: 0x7fffffffffffffff@uint64 = 0b111111111111111111111111111111111111111111111111111111111111111 *)
and uint64 low59 low57 0x7fffffffffffffff@uint64; 
(* low_60 = low_59 + 9223372041149743103; *)
(* uadd low60 low59 0x80000000ffffffff@uint64; *)
uadds discarded low60 low59 0x80000000ffffffff@uint64;
(* low_61 = ~low_60; *)
not uint64 low61 low60;
(* low.1_29 = (signed long) low_61; *)
(* cast v29@int64 low61@uint64; *)
(* _30 = low.1_29 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit v30 tmp_to_use v29 63; *)
(* low_62 = (u64) _30; *)
(* cast low62@uint64 v30@int64; *)
usplit low discarded low61 63;
vpc low@uint1 low;
(* _31 = mask_58 & low_62; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint64 v31 mask58 low62; *)
cmove v31 mask low 0@uint1;
(* mask_63 = _31 | high_56; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint64 mask63 v31 high56; *)
cmove mask63 v31 1@uint1 high;
(* _32 = (__int128 unsigned) mask_63; *)
(* vpc v32@uint128 mask63@uint64; *)
cmove v32@uint128 mask63 0xffffffffffffffff@uint128 0@uint128;
(* _33 = _23 - _32; *)
usub v33 v23 v32;
(* _34 = mask_63 & 4294967295; *)
(* Note: 0xffffffff@uint64 = 0x000000ffffffff *)
(* Note: 0xffffffff@uint64 = 0b00000000000000000000000000000011111111111111111111111111111111 *)
(* and uint64 v34 mask63 0xffffffff@uint64; *)
cmove v34 mask63 0xFFFFFFFF@uint64 0@uint64;
(* _35 = (__int128 unsigned) _34; *)
vpc v35@uint128 v34@uint64;
(* _36 = _25 - _35; *)
usub v36 v25 v35;
(* _37 = mask_63 & 18446744069414584321; *)
(* Note: 0xffffffff00000001@uint64 = 0xffffffff00000001 *)
(* Note: 0xffffffff00000001@uint64 = 0b1111111111111111111111111111111100000000000000000000000000000001 *)
(* and uint64 v37 mask63 0xffffffff00000001@uint64; *)
cmove v37 mask63 0xFFFFFFFF00000001@uint64 0@uint64;
(* _38 = (__int128 unsigned) _37; *)
vpc v38@uint128 v37@uint64;
(* _39 = _21 - _38; *)
usub v39 v21 v38;
(* _40 = _33 >> 64; *)
usplit v40 tmp_to_use v33 64;
(* _41 = _36 + _40; *)
uadd v41 v36 v40;
(* _42 = (long unsigned int) _33; *)
cast v42@uint64 v33@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v42 = tmp_to_use_p;
assume v42 = tmp_to_use_p && true;


(* _43 = _41 >> 64; *)
usplit v43 tmp_to_use v41 64;
(* _44 = _8 + _43; *)
uadd v44 v8 v43;
(* _45 = (long unsigned int) _41; *)
cast v45@uint64 v41@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v45 = tmp_to_use_p;
assume v45 = tmp_to_use && true;


(* _46 = _44 >> 64; *)
usplit v46 tmp_to_use v44 64;
(* _47 = _39 + _46; *)
uadd v47 v39 v46;
(* _48 = (long unsigned int) _44; *)
cast v48@uint64 v44@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v48 = tmp_to_use_p;
assume v48 = tmp_to_use && true;

(* *out_64(D) = _42; *)
mov out64_0 v42;
(* MEM[(u64 * )out_64(D) + 8B] = _45; *)
mov out64_8 v45;
(* MEM[(u64 * )out_64(D) + 16B] = _48; *)
mov out64_16 v48;
(* _49 = (long unsigned int) _47; *)
vpc v49@uint64 v47@uint128;
(* MEM[(u64 * )out_64(D) + 24B] = _49; *)
mov out64_24 v49;
(* return; *)


(* Start with unused lhs *)
mov c0 out64_0@uint64;
mov c1 out64_8@uint64;
mov c2 out64_16@uint64;
mov c3 out64_24@uint64;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3])
  =
  (limbs 64 [a0, a1, a2, a3])
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  true
}
proc smallfelem_mul (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3; uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4, uint128 c5, uint128 c6, uint128 c7) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov small158_0@uint64 a0;
mov small158_8@uint64 a1;
mov small158_16@uint64 a2;
mov small158_24@uint64 a3;
mov small259_0@uint64 b0;
mov small259_8@uint64 b1;
mov small259_16@uint64 b2;
mov small259_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *small1_58(D); *)
mov v1 small158_0;
(* _3 = *small2_59(D); *)
mov v3 small259_0;
(* a_60 = _1 w* _3; *)
umulj a60 v1 v3;
(* _5 = a_60 >> 64; *)
usplit v5 tmp_to_use a60 64;
(* _85 = a_60 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v85 a60 value;

assert true && v85 = tmp_to_use;
assume v85 = tmp_to_use && true;

(* *out_61(D) = _85; *)
mov out61_0 v85;
(* _6 = MEM[(const u64 * )small2_59(D) + 8B]; *)
mov v6 small259_8;
(* a_63 = _1 w* _6; *)
umulj a63 v1 v6;
(* _8 = a_63 >> 64; *)
usplit v8 tmp_to_use a63 64;
(* _86 = a_63 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v86 a63 value;

assert true && v86 = tmp_to_use;
assume v86 = tmp_to_use && true;

(* _9 = _5 + _86; *)
uadd v9 v5 v86;
(* _10 = MEM[(const u64 * )small1_58(D) + 8B]; *)
mov v10 small158_8;
(* a_64 = _3 w* _10; *)
umulj a64 v3 v10;
(* _12 = a_64 >> 64; *)
usplit v12 tmp_to_use a64 64;
(* _87 = a_64 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 a64 value;

assert true && v87 = tmp_to_use;
assume v87 = tmp_to_use && true;

(* _13 = _9 + _87; *)
uadd v13 v9 v87;
(* MEM[(limb * )out_61(D) + 16B] = _13; *)
mov out61_16 v13;
(* _14 = _8 + _12; *)
uadd v14 v8 v12;
(* _15 = MEM[(const u64 * )small2_59(D) + 16B]; *)
mov v15 small259_16;
(* a_66 = _1 w* _15; *)
umulj a66 v1 v15;
(* _17 = a_66 >> 64; *)
usplit v17 tmp_to_use a66 64;
(* _88 = a_66 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v88 a66 value;

assert true && v88 = tmp_to_use;
assume v88 = tmp_to_use && true;

(* _18 = _14 + _88; *)
uadd v18 v14 v88;
(* a_67 = _6 w* _10; *)
umulj a67 v6 v10;
(* _19 = a_67 >> 64; *)
usplit v19 tmp_to_use a67 64;
(* _89 = a_67 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v89 a67 value;

assert true && v89 = tmp_to_use;
assume v89 = tmp_to_use && true;

(* _20 = _18 + _89; *)
uadd v20 v18 v89;
(* _21 = _17 + _19; *)
uadd v21 v17 v19;
(* _22 = MEM[(const u64 * )small1_58(D) + 16B]; *)
mov v22 small158_16;
(* a_68 = _3 w* _22; *)
umulj a68 v3 v22;
(* _24 = a_68 >> 64; *)
usplit v24 tmp_to_use a68 64;
(* _90 = a_68 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v90 a68 value;

assert true && v90 = tmp_to_use;
assume v90 = tmp_to_use && true;

(* _25 = _20 + _90; *)
uadd v25 v20 v90;
(* MEM[(limb * )out_61(D) + 32B] = _25; *)
mov out61_32 v25;
(* _26 = _21 + _24; *)
uadd v26 v21 v24;
(* _27 = MEM[(const u64 * )small2_59(D) + 24B]; *)
mov v27 small259_24;
(* a_70 = _1 w* _27; *)
umulj a70 v1 v27;
(* _29 = a_70 >> 64; *)
usplit v29 tmp_to_use a70 64;
(* _91 = a_70 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v91 a70 value;

assert true && v91 = tmp_to_use;
assume v91 = tmp_to_use && true;

(* _30 = _26 + _91; *)
uadd v30 v26 v91;
(* a_71 = _10 w* _15; *)
umulj a71 v10 v15;
(* _31 = a_71 >> 64; *)
usplit v31 tmp_to_use a71 64;
(* _92 = a_71 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v92 a71 value;

assert true && v92 = tmp_to_use;
assume v92 = tmp_to_use && true;

(* _32 = _30 + _92; *)
uadd v32 v30 v92;
(* _33 = _29 + _31; *)
uadd v33 v29 v31;
(* a_72 = _6 w* _22; *)
umulj a72 v6 v22;
(* _34 = a_72 >> 64; *)
usplit v34 tmp_to_use a72 64;
(* _93 = a_72 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v93 a72 value;

assert true && v93 = tmp_to_use;
assume v93 = tmp_to_use && true;

(* _35 = _32 + _93; *)
uadd v35 v32 v93;
(* _36 = _33 + _34; *)
uadd v36 v33 v34;
(* _37 = MEM[(const u64 * )small1_58(D) + 24B]; *)
mov v37 small158_24;
(* a_73 = _3 w* _37; *)
umulj a73 v3 v37;
(* _39 = a_73 >> 64; *)
usplit v39 tmp_to_use a73 64;
(* _94 = a_73 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v94 a73 value;

assert true && v94 = tmp_to_use;
assume v94 = tmp_to_use && true;

(* _40 = _35 + _94; *)
uadd v40 v35 v94;
(* MEM[(limb * )out_61(D) + 48B] = _40; *)
mov out61_48 v40;
(* _41 = _36 + _39; *)
uadd v41 v36 v39;
(* a_75 = _10 w* _27; *)
umulj a75 v10 v27;
(* _42 = a_75 >> 64; *)
usplit v42 tmp_to_use a75 64;
(* _95 = a_75 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v95 a75 value;

assert true && v95 = tmp_to_use;
assume v95 = tmp_to_use && true;

(* _43 = _41 + _95; *)
uadd v43 v41 v95;
(* a_76 = _15 w* _22; *)
umulj a76 v15 v22;
(* _44 = a_76 >> 64; *)
usplit v44 tmp_to_use a76 64;
(* _96 = a_76 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v96 a76 value;

assert true && v96 = tmp_to_use;
assume v96 = tmp_to_use && true;


(* _45 = _43 + _96; *)
uadd v45 v43 v96;
(* _46 = _42 + _44; *)
uadd v46 v42 v44;
(* a_77 = _6 w* _37; *)
umulj a77 v6 v37;
(* _47 = a_77 >> 64; *)
usplit v47 tmp_to_use a77 64;
(* _97 = a_77 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v97 a77 value;

assert true && v97 = tmp_to_use;
assume v97 = tmp_to_use && true;


(* _48 = _45 + _97; *)
uadd v48 v45 v97;
(* MEM[(limb * )out_61(D) + 64B] = _48; *)
mov out61_64 v48;
(* _49 = _46 + _47; *)
uadd v49 v46 v47;
(* a_79 = _22 w* _27; *)
umulj a79 v22 v27;
(* _50 = a_79 >> 64; *)
usplit v50 tmp_to_use a79 64;
(* _98 = a_79 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v98 a79 value;

assert true && v98 = tmp_to_use;
assume v98 = tmp_to_use && true;


(* _51 = _49 + _98; *)
uadd v51 v49 v98;
(* a_80 = _15 w* _37; *)
umulj a80 v15 v37;
(* _52 = a_80 >> 64; *)
usplit v52 tmp_to_use a80 64;
(* _99 = a_80 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v99 a80 value;

assert true && v99 = tmp_to_use;
assume v99 = tmp_to_use && true;


(* _53 = _51 + _99; *)
uadd v53 v51 v99;
(* MEM[(limb * )out_61(D) + 80B] = _53; *)
mov out61_80 v53;
(* _54 = _50 + _52; *)
uadd v54 v50 v52;
(* a_82 = _27 w* _37; *)
umulj a82 v27 v37;
(* _55 = a_82 >> 64; *)
usplit v55 tmp_to_use a82 64;
(* _100 = a_82 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v100 a82 value;

assert true && v100 = tmp_to_use;
assume v100 = tmp_to_use && true;

(* _56 = _54 + _100; *)
uadd v56 v54 v100;
(* MEM[(limb * )out_61(D) + 96B] = _56; *)
mov out61_96 v56;
(* MEM[(limb * )out_61(D) + 112B] = _55; *)
mov out61_112 v55;
(* return; *)


(* Start with unused lhs *)
mov c0 out61_0@uint128;
mov c1 out61_16@uint128;
mov c2 out61_32@uint128;
mov c3 out61_48@uint128;
mov c4 out61_64@uint128;
mov c5 out61_80@uint128;
mov c6 out61_96@uint128;
mov c7 out61_112@uint128;
(* End with unsed lhs *)



{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      (limbs 64 [a0, a1, a2, a3])
      *
      (limbs 64 [b0, b1, b2, b3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and 
  [
      c0 <u (7 * 2**64)@128,
      c1 <u (7 * 2**64)@128,
      c2 <u (7 * 2**64)@128,
      c3 <u (7 * 2**64)@128,
      c4 <u (7 * 2**64)@128,
      c5 <u (7 * 2**64)@128,
      c6 <u (7 * 2**64)@128,
      c7 <u (7 * 2**64)@128
  ]
}

proc smallfelem_square (uint64 a0, uint64 a1, uint64 a2, uint64 a3; uint128 c0, uint128 c1, uint128 c2, uint128 c3, uint128 c4, uint128 c5, uint128 c6, uint128 c7) = 
{
  true
  &&
  true
}



(* Start with undefined rhs *)
mov small38_0@uint64 a0;
mov small38_8@uint64 a1;
mov small38_16@uint64 a2;
mov small38_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *small_38(D); *)
mov v1 small38_0;
(* a_39 = _1 w* _1; *)
umulj a39 v1 v1;
(* _3 = a_39 >> 64; *)
usplit v3 tmp_to_use a39 64;
(* _58 = a_39 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v58 a39 value;

assert true && v58 = tmp_to_use;
assume v58 = tmp_to_use && true;

(* *out_40(D) = _58; *)
mov out40_0 v58;
(* _4 = MEM[(const u64 * )small_38(D) + 8B]; *)
mov v4 small38_8;
(* a_42 = _1 w* _4; *)
umulj a42 v1 v4;
(* _6 = a_42 >> 64; *)
usplit v6 tmp_to_use a42 64;
(* _59 = a_42 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v59 a42 value;

assert true && v59 = tmp_to_use;
assume v59 = tmp_to_use && true;

(* _69 = _59 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v69 v59 value;
(* _8 = _3 + _69; *)
uadd v8 v3 v69;
(* MEM[(limb * )out_40(D) + 16B] = _8; *)
mov out40_16 v8;
(* _9 = MEM[(const u64 * )small_38(D) + 16B]; *)
mov v9 small38_16;
(* a_44 = _1 w* _9; *)
umulj a44 v1 v9;
(* _11 = a_44 >> 64; *)
usplit v11 tmp_to_use a44 64;
(* _60 = a_44 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v60 a44 value;

assert true && v60 = tmp_to_use;
assume v60 = tmp_to_use && true;

(* _12 = _6 + _60; *)
uadd v12 v6 v60;
(* _13 = _12 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v13 v12 value;
(* _14 = MEM[(const u64 * )small_38(D) + 24B]; *)
mov v14 small38_24;
(* a_45 = _1 w* _14; *)
umulj a45 v1 v14;
(* _16 = a_45 >> 64; *)
usplit v16 tmp_to_use a45 64;
(* _61 = a_45 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v61 a45 value;

assert true && v61 = tmp_to_use;
assume v61 = tmp_to_use && true;

(* _17 = _11 + _61; *)
uadd v17 v11 v61;
(* a_46 = _4 w* _9; *)
umulj a46 v4 v9;
(* _18 = a_46 >> 64; *)
usplit v18 tmp_to_use a46 64;
(* _62 = a_46 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v62 a46 value;

assert true && v62 = tmp_to_use;
assume v62 = tmp_to_use && true;

(* _19 = _17 + _62; *)
uadd v19 v17 v62;
(* _20 = _19 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v20 v19 value;
(* _21 = _16 + _18; *)
uadd v21 v16 v18;
(* a_47 = _4 w* _4; *)
umulj a47 v4 v4;
(* _22 = a_47 >> 64; *)
usplit v22 tmp_to_use a47 64;
(* _63 = a_47 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v63 a47 value;

assert true && v63 = tmp_to_use;
assume v63 = tmp_to_use && true;

(* _23 = _13 + _63; *)
uadd v23 v13 v63;
(* MEM[(limb * )out_40(D) + 32B] = _23; *)
mov out40_32 v23;
(* _24 = _20 + _22; *)
uadd v24 v20 v22;
(* MEM[(limb * )out_40(D) + 48B] = _24; *)
mov out40_48 v24;
(* a_50 = _4 w* _14; *)
umulj a50 v4 v14;
(* _25 = a_50 >> 64; *)
usplit v25 tmp_to_use a50 64;
(* _64 = a_50 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v64 a50 value;

assert true && v64 = tmp_to_use;
assume v64 = tmp_to_use && true;

(* _26 = _21 + _64; *)
uadd v26 v21 v64;
(* _27 = _26 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v27 v26 value;
(* a_51 = _9 w* _14; *)
umulj a51 v9 v14;
(* _28 = a_51 >> 64; *)
usplit v28 tmp_to_use a51 64;
(* _65 = a_51 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v65 a51 value;

assert true && v65 = tmp_to_use;
assume v65 = tmp_to_use && true;

(* _29 = _25 + _65; *)
uadd v29 v25 v65;
(* _30 = _29 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v30 v29 value;
(* _31 = _28 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v31 v28 value;
(* a_52 = _9 w* _9; *)
umulj a52 v9 v9;
(* _32 = a_52 >> 64; *)
usplit v32 tmp_to_use a52 64;
(* _66 = a_52 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v66 a52 value;

assert true && v66 = tmp_to_use;
assume v66 = tmp_to_use && true;

(* _33 = _27 + _66; *)
uadd v33 v27 v66;
(* MEM[(limb * )out_40(D) + 64B] = _33; *)
mov out40_64 v33;
(* _34 = _30 + _32; *)
uadd v34 v30 v32;
(* MEM[(limb * )out_40(D) + 80B] = _34; *)
mov out40_80 v34;
(* a_55 = _14 w* _14; *)
umulj a55 v14 v14;
(* _35 = a_55 >> 64; *)
usplit v35 tmp_to_use a55 64;
(* _67 = a_55 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v67 a55 value;

assert true && v67 = tmp_to_use;
assume v67 = tmp_to_use && true;

(* _36 = _31 + _67; *)
uadd v36 v31 v67;
(* MEM[(limb * )out_40(D) + 96B] = _36; *)
mov out40_96 v36;
(* MEM[(limb * )out_40(D) + 112B] = _35; *)
mov out40_112 v35;
(* return; *)


(* Start with unused lhs *)
mov c0 out40_0@uint128;
mov c1 out40_16@uint128;
mov c2 out40_32@uint128;
mov c3 out40_48@uint128;
mov c4 out40_64@uint128;
mov c5 out40_80@uint128;
mov c6 out40_96@uint128;
mov c7 out40_112@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      sq
      (limbs 64 [a0, a1, a2, a3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
 and 
  [
      c0 <u (7 * 2**64)@128,
      c1 <u (7 * 2**64)@128,
      c2 <u (7 * 2**64)@128,
      c3 <u (7 * 2**64)@128,
      c4 <u (7 * 2**64)@128,
      c5 <u (7 * 2**64)@128,
      c6 <u (7 * 2**64)@128,
      c7 <u (7 * 2**64)@128
  ]
}

proc felem_reduce (uint128 in0, uint128 in1, uint128 in2, uint128 in3, uint128 in4, uint128 in5, uint128 in6, uint128 in7; uint128 out0, uint128 out1, uint128 out2, uint128 out3) = 
{
  true
  &&
  and [
      in0 < (2**64)@128,
      in1 < (3 * 2**64)@128,
      in2 < (5 * 2**64)@128,
      in3 < (7 * 2**64)@128,
      in4 < (7 * 2**64)@128,
      in5 < (5 * 2**64)@128,
      in6 < (3 * 2**64)@128,
      in7 < (2**64)@128
  ]
}


(* Start with undefined rhs *)
mov in10_0@uint128 in0;
mov in10_16@uint128 in1;
mov in10_32@uint128 in2;
mov in10_48@uint128 in3;
mov in10_64@uint128 in4;
mov in10_80@uint128 in5;
mov in10_96@uint128 in6;
mov in10_112@uint128 in7;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_10(D); *)
mov v1 in10_0;
(* _2 = _1 + 0xfffffffffffffffeffffffff0; *)
uadd v2 v1 0xfffffffffffffffeffffffff0@uint128;
(* *out_11(D) = _2; *)
mov out11_0 v2;
(* _3 = MEM[(const limb * )in_10(D) + 16B]; *)
mov v3 in10_16;
(* _4 = _3 + 0x10000000000000000000000000; *)
uadd v4 v3 0x10000000000000000000000000@uint128;
(* MEM[(limb * )out_11(D) + 16B] = _4; *)
mov out11_16 v4;
(* _5 = MEM[(const limb * )in_10(D) + 32B]; *)
mov v5 in10_32;
(* _6 = _5 + 0xffffffffffffffff000000010; *)
uadd v6 v5 0xffffffffffffffff000000010@uint128;
(* MEM[(limb * )out_11(D) + 32B] = _6; *)
mov out11_32 v6;
(* _7 = MEM[(const limb * )in_10(D) + 48B]; *)
mov v7 in10_48;
(* _8 = _7 + 0xffffffffffffffff000000010; *)
uadd v8 v7 0xffffffffffffffff000000010@uint128;
(* MEM[(limb * )out_11(D) + 48B] = _8; *)
mov out11_48 v8;
(* _17 = MEM[(const limb * )in_10(D) + 64B]; *)
mov v17 in10_64;
(* _18 = MEM[(const limb * )in_10(D) + 80B]; *)
mov v18 in10_80;
(* _19 = _18 << 32; *)
usplit tmp1 tmp2 v18 96;
shl v19 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _20 = _17 + _19; *)
uadd v20 v17 v19;
(* _22 = _2 + _20; *)
uadd v22 v2 v20;
(* *out_11(D) = _22; *)
mov out11_0 v22;
(* _24 = _8 - _20; *)
usub v24 v8 v20;
(* MEM[(limb * )out_11(D) + 48B] = _24; *)
mov out11_48 v24;
(* _25 = MEM[(const limb * )in_10(D) + 80B]; *)
mov v25 in10_80;
(* _26 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v26 in10_112;
(* _30 = _4 - _26; *)
usub v30 v4 v26;
(* _29 = _25 + _30; *)
uadd v29 v25 v30;
(* MEM[(limb * )out_11(D) + 16B] = _29; *)
mov out11_16 v29;
(* _28 = _6 - _25; *)
usub v28 v6 v25;
(* _32 = _26 + _28; *)
uadd v32 v26 v28;
(* MEM[(limb * )out_11(D) + 32B] = _32; *)
mov out11_32 v32;
(* _33 = MEM[(const limb * )in_10(D) + 64B]; *)
mov v33 in10_64;
(* _34 = _33 << 32; *)
usplit tmp1 tmp2 v33 96;
shl v34 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _35 = _29 - _34; *)
usub v35 v29 v34;
(* MEM[(limb * )out_11(D) + 16B] = _35; *)
mov out11_16 v35;
(* _36 = MEM[(const limb * )in_10(D) + 64B]; *)
mov v36 in10_64;
(* _37 = _36 << 32; *)
usplit tmp1 tmp2 v36 96;
shl v37 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _38 = _24 + _37; *)
uadd v38 v24 v37;
(* MEM[(limb * )out_11(D) + 48B] = _38; *)
mov out11_48 v38;
(* _39 = MEM[(const limb * )in_10(D) + 80B]; *)
mov v39 in10_80;
(* _40 = _39 << 32; *)
usplit tmp1 tmp2 v39 96;
shl v40 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _41 = _32 - _40; *)
usub v41 v32 v40;
(* MEM[(limb * )out_11(D) + 32B] = _41; *)
mov out11_32 v41;
(* _42 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v42 in10_96;
(* _43 = _22 - _42; *)
usub v43 v22 v42;
(* *out_11(D) = _43; *)
mov out11_0 v43;
(* _44 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v44 in10_96;
(* _45 = _44 << 32; *)
usplit tmp1 tmp2 v44 96;
shl v45 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _46 = _43 - _45; *)
usub v46 v43 v45;
(* *out_11(D) = _46; *)
mov out11_0 v46;
(* _47 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v47 in10_96;
(* _48 = _47 << 33; *)
usplit tmp1 tmp2 v47 95;
shl v48 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _49 = _35 + _48; *)
uadd v49 v35 v48;
(* MEM[(limb * )out_11(D) + 16B] = _49; *)
mov out11_16 v49;
(* _50 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v50 in10_96;
(* _51 = _50 * 2; *)
umul v51 v50 0x2@uint128;
(* _52 = _41 + _51; *)
uadd v52 v41 v51;
(* MEM[(limb * )out_11(D) + 32B] = _52; *)
mov out11_32 v52;
(* _53 = MEM[(const limb * )in_10(D) + 96B]; *)
mov v53 in10_96;
(* _54 = _53 << 32; *)
usplit tmp1 tmp2 v53 96;
shl v54 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _55 = _38 - _54; *)
usub v55 v38 v54;
(* MEM[(limb * )out_11(D) + 48B] = _55; *)
mov out11_48 v55;
(* _56 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v56 in10_112;
(* _57 = _46 - _56; *)
usub v57 v46 v56;
(* *out_11(D) = _57; *)
mov out11_0 v57;
(* _58 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v58 in10_112;
(* _59 = _58 << 32; *)
usplit tmp1 tmp2 v58 96;
shl v59 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _60 = _57 - _59; *)
usub v60 v57 v59;
(* *out_11(D) = _60; *)
mov out11_0 v60;
(* _61 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v61 in10_112;
(* _62 = _61 << 33; *)
usplit tmp1 tmp2 v61 95;
shl v62 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _63 = _52 + _62; *)
uadd v63 v52 v62;
(* MEM[(limb * )out_11(D) + 32B] = _63; *)
mov out11_32 v63;
(* _64 = MEM[(const limb * )in_10(D) + 112B]; *)
mov v64 in10_112;
(* _65 = _64 * 3; *)
umul v65 v64 0x3@uint128;
(* _66 = _55 + _65; *)
uadd v66 v55 v65;
(* MEM[(limb * )out_11(D) + 48B] = _66; *)
mov out11_48 v66;
(* return; *)


(* Start with unused lhs *)
mov out0 out11_0@uint128;
mov out1 out11_16@uint128;
mov out2 out11_32@uint128;
mov out3 out11_48@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [out0, out1, out2, out3])
  =
  (
     (limbs 64 [in0, in1, in2, in3, in4, in5, in6, in7])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  and [
      out0 < (2**101)@128,
      out1 < (2**101)@128,
      out2 < (2**101)@128,
      out3 < (2**101)@128
  ]
}


proc felem_reduce_ (uint128 out0, uint128 out1, uint128 out2, uint128 out3, uint128 in4, uint128 in5, uint128 in6, uint128 in7; uint128 c0, uint128 c1, uint128 c2, uint128 c3) = 
{
  true
  &&
  and [
      (*  
        out[0] = zero100[0] + in[0];
        out[1] = zero100[1] + in[1];
        out[2] = zero100[2] + in[2];
        out[3] = zero100[3] + in[3];
        felem_reduce_(out, in);
      *)
      in4 < (7 * 2**64)@128,
      in5 < (5 * 2**64)@128,
      in6 < (3 * 2**64)@128,
      in7 < (2**64)@128,
      out0 < (2**100 - 2**36 - 2**4)@128 + (2**64)@128,
      out1 < (2**100)@128 + (3 * 2**64)@128,
      out2 < (2**100 - 2**36 + 2**4)@128 + (5 * 2**64)@128,
      out3 < (2**100 - 2**36 + 2**4)@128 + (7 * 2**64)@128,
      out0 >= in6 + (2**32)@128 * in6 + in7 + (2**32)@128 * in7,
      out1 >= in7 + (2**32)@128 * in4,
      out2 >= in5 + (2**32)@128 * in5,
      out3 >= in4 + (2**32)@128 * in5 + (2**32)@128 * in6
  ]
}


(* Start with undefined rhs *)
mov in51_64@uint128 in4;
mov in51_80@uint128 in5;
mov in51_96@uint128 in6;
mov in51_112@uint128 in7;
mov out53_0@uint128 out0;
mov out53_16@uint128 out1;
mov out53_32@uint128 out2;
mov out53_48@uint128 out3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = MEM[(const limb * )in_51(D) + 64B]; *)
mov v1 in51_64;
(* _2 = MEM[(const limb * )in_51(D) + 80B]; *)
mov v2 in51_80;
(* _3 = _2 << 32; *)
usplit tmp1 tmp2 v2 96;
shl v3 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _4 = _1 + _3; *)
uadd v4 v1 v3;
(* _5 = *out_53(D); *)
mov v5 out53_0;
(* _7 = _4 + _5; *)
uadd v7 v4 v5;
(* *out_53(D) = _7; *)
mov out53_0 v7;
(* _8 = MEM[(limb * )out_53(D) + 48B]; *)
mov v8 out53_48;
(* _9 = _8 - _4; *)
usub v9 v8 v4;
(* MEM[(limb * )out_53(D) + 48B] = _9; *)
mov out53_48 v9;
(* _10 = MEM[(const limb * )in_51(D) + 80B]; *)
mov v10 in51_80;
(* _11 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v11 in51_112;
(* _13 = MEM[(limb * )out_53(D) + 16B]; *)
mov v13 out53_16;
(* _73 = _10 + _13; *)
uadd v73 v10 v13;
(* _14 = _73 - _11; *)
usub v14 v73 v11;
(* MEM[(limb * )out_53(D) + 16B] = _14; *)
mov out53_16 v14;
(* _15 = MEM[(limb * )out_53(D) + 32B]; *)
mov v15 out53_32;
(* _72 = _11 + _15; *)
uadd v72 v11 v15;
(* _16 = _72 - _10; *)
usub v16 v72 v10;
(* MEM[(limb * )out_53(D) + 32B] = _16; *)
mov out53_32 v16;
(* _17 = MEM[(const limb * )in_51(D) + 64B]; *)
mov v17 in51_64;
(* _18 = _17 << 32; *)
usplit tmp1 tmp2 v17 96;
shl v18 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _19 = _14 - _18; *)
usub v19 v14 v18;
(* MEM[(limb * )out_53(D) + 16B] = _19; *)
mov out53_16 v19;
(* _20 = MEM[(const limb * )in_51(D) + 64B]; *)
mov v20 in51_64;
(* _21 = _20 << 32; *)
usplit tmp1 tmp2 v20 96;
shl v21 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _22 = _9 + _21; *)
uadd v22 v9 v21;
(* MEM[(limb * )out_53(D) + 48B] = _22; *)
mov out53_48 v22;
(* _23 = MEM[(const limb * )in_51(D) + 80B]; *)
mov v23 in51_80;
(* _24 = _23 << 32; *)
usplit tmp1 tmp2 v23 96;
shl v24 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _25 = _16 - _24; *)
usub v25 v16 v24;
(* MEM[(limb * )out_53(D) + 32B] = _25; *)
mov out53_32 v25;
(* _26 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v26 in51_96;
(* _27 = _7 - _26; *)
usub v27 v7 v26;
(* *out_53(D) = _27; *)
mov out53_0 v27;
(* _28 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v28 in51_96;
(* _29 = _28 << 32; *)
usplit tmp1 tmp2 v28 96;
shl v29 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _30 = _27 - _29; *)
usub v30 v27 v29;
(* *out_53(D) = _30; *)
mov out53_0 v30;
(* _31 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v31 in51_96;
(* _32 = _31 << 33; *)
usplit tmp1 tmp2 v31 95;
shl v32 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _33 = _19 + _32; *)
uadd v33 v19 v32;
(* MEM[(limb * )out_53(D) + 16B] = _33; *)
mov out53_16 v33;
(* _34 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v34 in51_96;
(* _35 = _34 * 2; *)
umul v35 v34 0x2@uint128;
(* _36 = _25 + _35; *)
uadd v36 v25 v35;
(* MEM[(limb * )out_53(D) + 32B] = _36; *)
mov out53_32 v36;
(* _37 = MEM[(const limb * )in_51(D) + 96B]; *)
mov v37 in51_96;
(* _38 = _37 << 32; *)
usplit tmp1 tmp2 v37 96;
shl v38 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _39 = _22 - _38; *)
usub v39 v22 v38;
(* MEM[(limb * )out_53(D) + 48B] = _39; *)
mov out53_48 v39;
(* _40 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v40 in51_112;
(* _41 = _30 - _40; *)
usub v41 v30 v40;
(* *out_53(D) = _41; *)
mov out53_0 v41;
(* _42 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v42 in51_112;
(* _43 = _42 << 32; *)
usplit tmp1 tmp2 v42 96;
shl v43 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _44 = _41 - _43; *)
usub v44 v41 v43;
(* *out_53(D) = _44; *)
mov out53_0 v44;
(* _45 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v45 in51_112;
(* _46 = _45 << 33; *)
usplit tmp1 tmp2 v45 95;
shl v46 tmp2 33;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _47 = _36 + _46; *)
uadd v47 v36 v46;
(* MEM[(limb * )out_53(D) + 32B] = _47; *)
mov out53_32 v47;
(* _48 = MEM[(const limb * )in_51(D) + 112B]; *)
mov v48 in51_112;
(* _49 = _48 * 3; *)
umul v49 v48 0x3@uint128;
(* _50 = _39 + _49; *)
uadd v50 v39 v49;
(* MEM[(limb * )out_53(D) + 48B] = _50; *)
mov out53_48 v50;
(* return; *)


(* Start with unused lhs *)
mov c0 out53_0@uint128;
mov c1 out53_16@uint128;
mov c2 out53_32@uint128;
mov c3 out53_48@uint128;
(* End with unsed lhs *)


{
  true
  &&
  and [
      c0 <= out0 + in4 + (2**32)@128 * in5,
      c1 <= out1 + in5 + (2**33)@128 * in6,
      c2 <= out2 + in7 + (2)@128 * in6 + (2**33)@128 * in7,
      c3 <= out3 + (2**32)@128 * in4 + (3)@128 * in7
  ]
}


proc main (uint128 x0, uint128 x1, uint128 x2, uint128 x3, uint128 y0, uint128 y1,uint128 y2,uint128 y3,uint128 z0, uint128 z1,uint128 z2, uint128 z3) = 
{
  true
  &&
  and [
    x0 <u (2**106)@128,
    x1 <u (2**106)@128,
    x2 <u (2**106)@128,
    x3 <u (2**106)@128,
    y0 <u (2**109)@128,
    y1 <u (2**109)@128,
    y2 <u (2**109)@128,
    y3 <u (2**109)@128,
    z0 <u (2**109)@128,
    z1 <u (2**109)@128,
    z2 <u (2**109)@128,
    z3 <u (2**109)@128
  ]
}


(* Start with undefined rhs *)
mov x_in2_0@uint128 x0;
mov x_in2_16@uint128 x1;
mov x_in2_32@uint128 x2;
mov x_in2_48@uint128 x3;
mov y_in5_0@uint128 y0;
mov y_in5_16@uint128 y1;
mov y_in5_32@uint128 y2;
mov y_in5_48@uint128 y3;
mov z_in3_0@uint128 z0;
mov z_in3_16@uint128 z1;
mov z_in3_32@uint128 z2;
mov z_in3_48@uint128 z3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _155 = *x_in_2(D); *)
mov v155 x_in2_0;
(* MEM[(limb * )&ftmp] = _155; *)
mov ftmp_0 v155;
(* _156 = MEM[(const limb * )x_in_2(D) + 16B]; *)
mov v156 x_in2_16;
(* MEM[(limb * )&ftmp + 16B] = _156; *)
mov ftmp_16 v156;
(* _157 = MEM[(const limb * )x_in_2(D) + 32B]; *)
mov v157 x_in2_32;
(* MEM[(limb * )&ftmp + 32B] = _157; *)
mov ftmp_32 v157;
(* _158 = MEM[(const limb * )x_in_2(D) + 48B]; *)
mov v158 x_in2_48;
(* MEM[(limb * )&ftmp + 48B] = _158; *)
mov ftmp_48 v158;
(* MEM[(limb * )&ftmp2] = _155; *)
mov ftmp2_0 v155;
(* MEM[(limb * )&ftmp2 + 16B] = _156; *)
mov ftmp2_16 v156;
(* MEM[(limb * )&ftmp2 + 32B] = _157; *)
mov ftmp2_32 v157;
(* MEM[(limb * )&ftmp2 + 48B] = _158; *)
mov ftmp2_48 v158;
(* felem_shrink (&small, z_in_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink (z_in3_0, z_in3_16, z_in3_32, z_in3_48, small_0, small_8, small_16, small_24);
(* smallfelem_square (&tmp, &small); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_square(small_0, small_8, small_16, small_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* small ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&delta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112, delta_0, delta_16, delta_32, delta_48);

mov delta0_0 delta_0;
mov delta0_1 delta_16;
mov delta0_2 delta_32;
mov delta0_3 delta_48;

(* felem_shrink (&small, y_in_5(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(y_in5_0, y_in5_16, y_in5_32, y_in5_48, small_0, small_8, small_16, small_24);
(* smallfelem_square (&tmp, &small); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_square(small_0, small_8, small_16, small_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* small ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&gamma, &tmp); *)
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112, gamma_0, gamma_16, gamma_32, gamma_48);
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* felem_shrink (&small1, &gamma); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(gamma_0, gamma_16, gamma_32, gamma_48, small1_0, small1_8, small1_16, small1_24);

mov gamma0_0 gamma_0;
mov gamma0_1 gamma_16;
mov gamma0_2 gamma_32;
mov gamma0_3 gamma_48;

(* felem_shrink (&small2, x_in_2(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(x_in2_0, x_in2_16, x_in2_32, x_in2_48, small2_0, small2_8, small2_16, small2_24);
(* smallfelem_mul (&tmp, &small1, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_mul(small1_0, small1_8, small1_16, small1_24, small2_0, small2_8, small2_16, small2_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&beta, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112, beta_0, beta_16, beta_32, beta_48);

mov beta0_0 beta_0;
mov beta0_1 beta_16;
mov beta0_2 beta_32;
mov beta0_3 beta_48;

(* _139 = MEM[(limb * )&ftmp]; *)
mov v139 ftmp_0;
(* _140 = _139 + 0x1fffffffffffffffdfffffffe00; *)
uadd v140 v139 0x1fffffffffffffffdfffffffe00@uint128;
(* _141 = MEM[(limb * )&ftmp + 16B]; *)
mov v141 ftmp_16;
(* _142 = _141 + 0x200000000000000000000000000; *)
uadd v142 v141 0x200000000000000000000000000@uint128;
(* _143 = MEM[(limb * )&ftmp + 32B]; *)
mov v143 ftmp_32;
(* _144 = _143 + 0x1fffffffffffffffe0000000200; *)
uadd v144 v143 0x1fffffffffffffffe0000000200@uint128;
(* _145 = MEM[(limb * )&ftmp + 48B]; *)
mov v145 ftmp_48;
(* _146 = _145 + 0x1fffffffffffffffe0000000200; *)
uadd v146 v145 0x1fffffffffffffffe0000000200@uint128;
(* _147 = MEM[(const limb * )&delta]; *)
mov v147 delta_0;
(* _148 = _140 - _147; *)
usub v148 v140 v147;
(* MEM[(limb * )&ftmp] = _148; *)
mov ftmp_0 v148;
(* _149 = MEM[(const limb * )&delta + 16B]; *)
mov v149 delta_16;
(* _150 = _142 - _149; *)
usub v150 v142 v149;
(* MEM[(limb * )&ftmp + 16B] = _150; *)
mov ftmp_16 v150;
(* _151 = MEM[(const limb * )&delta + 32B]; *)
mov v151 delta_32;
(* _152 = _144 - _151; *)
usub v152 v144 v151;
(* MEM[(limb * )&ftmp + 32B] = _152; *)
mov ftmp_32 v152;
(* _153 = MEM[(const limb * )&delta + 48B]; *)
mov v153 delta_48;
(* _154 = _146 - _153; *)
usub v154 v146 v153;
(* MEM[(limb * )&ftmp + 48B] = _154; *)
mov ftmp_48 v154;
(* _131 = MEM[(limb * )&ftmp2]; *)
mov v131 ftmp2_0;
(* _132 = _131 + _147; *)
uadd v132 v131 v147;
(* _133 = MEM[(limb * )&ftmp2 + 16B]; *)
mov v133 ftmp2_16;
(* _134 = _133 + _149; *)
uadd v134 v133 v149;
(* _135 = MEM[(limb * )&ftmp2 + 32B]; *)
mov v135 ftmp2_32;
(* _136 = _135 + _151; *)
uadd v136 v135 v151;
(* _137 = MEM[(limb * )&ftmp2 + 48B]; *)
mov v137 ftmp2_48;
(* _138 = _137 + _153; *)
uadd v138 v137 v153;
(* _127 = _132 * 3; *)
umul v127 v132 0x3@uint128;
(* MEM[(limb * )&ftmp2] = _127; *)
mov ftmp2_0 v127;
(* _128 = _134 * 3; *)
umul v128 v134 0x3@uint128;
(* MEM[(limb * )&ftmp2 + 16B] = _128; *)
mov ftmp2_16 v128;
(* _129 = _136 * 3; *)
umul v129 v136 0x3@uint128;
(* MEM[(limb * )&ftmp2 + 32B] = _129; *)
mov ftmp2_32 v129;
(* _130 = _138 * 3; *)
umul v130 v138 0x3@uint128;
(* MEM[(limb * )&ftmp2 + 48B] = _130; *)
mov ftmp2_48 v130;
(* felem_shrink (&small1, &ftmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
//call felem_shrink(ftmp_0, ftmp_16, ftmp_32, ftmp_48, small1_0, small1_8, small1_16, small1_24);
inline felem_shrink(ftmp_0, ftmp_16, ftmp_32, ftmp_48, small1_wrong_0, small1_wrong_8, small1_wrong_16, small1_wrong_24);
(* felem_shrink (&small2, &ftmp2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(ftmp2_0, ftmp2_16, ftmp2_32, ftmp2_48, small2_0, small2_8, small2_16, small2_24);
(* smallfelem_mul (&tmp, &small1, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
//call smallfelem_mul(small1_0, small1_8, small1_16, small1_24, small2_0, small2_8, small2_16, small2_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
inline smallfelem_mul(small1_wrong_0, small1_wrong_8, small1_wrong_16, small1_wrong_24, small2_0, small2_8, small2_16, small2_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* small1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (&alpha, &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112, alpha_0, alpha_16, alpha_32, alpha_48);
(* felem_shrink (&small2, &alpha); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(alpha_0, alpha_16, alpha_32, alpha_48, small2_0, small2_8, small2_16, small2_24);

mov alpha0_0 alpha_0;
mov alpha0_1 alpha_16;
mov alpha0_2 alpha_32;
mov alpha0_3 alpha_48;

ecut
  and [
    (* delta = z^2 *)
    (limbs 64 [delta0_0, delta0_1, delta0_2, delta0_3])
    =
    ((limbs 64 [z0, z1, z2, z3]) ** 2)
    (mod (limbs 64 [18446744073709551615, 4294967295, 0, 18446744069414584321]))
    ,
    (* gamma = y^2 *)
    (limbs 64 [gamma0_0, gamma0_1, gamma0_2, gamma0_3])
    =
    ((limbs 64 [y0, y1, y2, y3]) ** 2)
    (mod (limbs 64 [18446744073709551615, 4294967295, 0, 18446744069414584321]))
    ,
    (* beta = x * gamma *)
    (limbs 64 [beta0_0, beta0_1, beta0_2, beta0_3])
    =
    ((limbs 64 [x0, x1, x2, x3]) * (limbs 64 [gamma0_0, gamma0_1, gamma0_2, gamma0_3]))
    (mod (limbs 64 [18446744073709551615, 4294967295, 0, 18446744069414584321]))
    ,
    (* alpha = 3 * (x - delta) * (x + delta) *)
    (limbs 64 [alpha0_0, alpha0_1, alpha0_2, alpha0_3])
    =
    (
      3 *
      ((limbs 64 [x0, x1, x2, x3]) - (limbs 64 [delta0_0, delta0_1, delta0_2, delta0_3])) *
      ((limbs 64 [x0, x1, x2, x3]) + (limbs 64 [delta0_0, delta0_1, delta0_2, delta0_3]))
    )
    (mod (limbs 64 [18446744073709551615, 4294967295, 0, 18446744069414584321]))
    ,
    (* small1 = y^2 *)
    (limbs 64 [small1_0, small1_8, small1_16, small1_24])
    =
    ((limbs 64 [y0, y1, y2, y3]) ** 2)
    (mod (limbs 64 [18446744073709551615, 4294967295, 0, 18446744069414584321]))
    ,
    (* small2 = alpha *)
    (limbs 64 [small2_0, small2_8, small2_16, small2_24])
    =
    (limbs 64 [alpha0_0, alpha0_1, alpha0_2, alpha0_3])
    (mod (limbs 64 [18446744073709551615, 4294967295, 0, 18446744069414584321]))
  ];

(* smallfelem_square (&tmp, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_square(small2_0, small2_8, small2_16, small2_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* felem_reduce (x_out_13(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112, x_out13_0, x_out13_16, x_out13_32, x_out13_48);
(* _123 = MEM[(const limb * )&beta]; *)
mov v123 beta_0;
(* _124 = MEM[(const limb * )&beta + 16B]; *)
mov v124 beta_16;
(* _125 = MEM[(const limb * )&beta + 32B]; *)
mov v125 beta_32;
(* _126 = MEM[(const limb * )&beta + 48B]; *)
mov v126 beta_48;
(* _119 = _123 * 8; *)
umul v119 v123 0x8@uint128;
(* _120 = _124 * 8; *)
umul v120 v124 0x8@uint128;
(* _121 = _125 * 8; *)
umul v121 v125 0x8@uint128;
(* _122 = _126 * 8; *)
umul v122 v126 0x8@uint128;
(* _107 = *x_out_13(D); *)
mov v107 x_out13_0;
(* _109 = MEM[(limb * )x_out_13(D) + 16B]; *)
mov v109 x_out13_16;
(* _111 = MEM[(limb * )x_out_13(D) + 32B]; *)
mov v111 x_out13_32;
(* _113 = MEM[(limb * )x_out_13(D) + 48B]; *)
mov v113 x_out13_48;
(* _292 = 0x1fffffffffffffffdfffffffe00 - _119; *)
usub v292 0x1fffffffffffffffdfffffffe00@uint128 v119;
(* _115 = _107 + _292; *)
uadd v115 v107 v292;
(* *x_out_13(D) = _115; *)
mov x_out13_0 v115;
(* _291 = 0x200000000000000000000000000 - _120; *)
usub v291 0x200000000000000000000000000@uint128 v120;
(* _116 = _109 + _291; *)
uadd v116 v109 v291;
(* MEM[(limb * )x_out_13(D) + 16B] = _116; *)
mov x_out13_16 v116;
(* _290 = 0x1fffffffffffffffe0000000200 - _121; *)
usub v290 0x1fffffffffffffffe0000000200@uint128 v121;
(* _117 = _111 + _290; *)
uadd v117 v111 v290;
(* MEM[(limb * )x_out_13(D) + 32B] = _117; *)
mov x_out13_32 v117;
(* _289 = 0x1fffffffffffffffe0000000200 - _122; *)
usub v289 0x1fffffffffffffffe0000000200@uint128 v122;
(* _118 = _113 + _289; *)
uadd v118 v113 v289;
(* MEM[(limb * )x_out_13(D) + 48B] = _118; *)
mov x_out13_48 v118;
(* _95 = MEM[(limb * )&delta]; *)
mov v95 delta_0;
(* _96 = MEM[(const limb * )&gamma]; *)
mov v96 gamma_0;
(* _97 = _95 + _96; *)
uadd v97 v95 v96;
(* MEM[(limb * )&delta] = _97; *)
mov delta_0 v97;
(* _98 = MEM[(limb * )&delta + 16B]; *)
mov v98 delta_16;
(* _99 = MEM[(const limb * )&gamma + 16B]; *)
mov v99 gamma_16;
(* _100 = _98 + _99; *)
uadd v100 v98 v99;
(* MEM[(limb * )&delta + 16B] = _100; *)
mov delta_16 v100;
(* _101 = MEM[(limb * )&delta + 32B]; *)
mov v101 delta_32;
(* _102 = MEM[(const limb * )&gamma + 32B]; *)
mov v102 gamma_32;
(* _103 = _101 + _102; *)
uadd v103 v101 v102;
(* MEM[(limb * )&delta + 32B] = _103; *)
mov delta_32 v103;
(* _104 = MEM[(limb * )&delta + 48B]; *)
mov v104 delta_48;
(* _105 = MEM[(const limb * )&gamma + 48B]; *)
mov v105 gamma_48;
(* _106 = _104 + _105; *)
uadd v106 v104 v105;
(* MEM[(limb * )&delta + 48B] = _106; *)
mov delta_48 v106;
(* _91 = *y_in_5(D); *)
mov v91 y_in5_0;
(* _92 = MEM[(const limb * )y_in_5(D) + 16B]; *)
mov v92 y_in5_16;
(* _93 = MEM[(const limb * )y_in_5(D) + 32B]; *)
mov v93 y_in5_32;
(* _94 = MEM[(const limb * )y_in_5(D) + 48B]; *)
mov v94 y_in5_48;
(* _83 = *z_in_3(D); *)
mov v83 z_in3_0;
(* _84 = _83 + _91; *)
uadd v84 v83 v91;
(* MEM[(limb * )&ftmp] = _84; *)
mov ftmp_0 v84;
(* _85 = MEM[(const limb * )z_in_3(D) + 16B]; *)
mov v85 z_in3_16;
(* _86 = _85 + _92; *)
uadd v86 v85 v92;
(* MEM[(limb * )&ftmp + 16B] = _86; *)
mov ftmp_16 v86;
(* _87 = MEM[(const limb * )z_in_3(D) + 32B]; *)
mov v87 z_in3_32;
(* _88 = _87 + _93; *)
uadd v88 v87 v93;
(* MEM[(limb * )&ftmp + 32B] = _88; *)
mov ftmp_32 v88;
(* _89 = MEM[(const limb * )z_in_3(D) + 48B]; *)
mov v89 z_in3_48;
(* _90 = _89 + _94; *)
uadd v90 v89 v94;
(* MEM[(limb * )&ftmp + 48B] = _90; *)
mov ftmp_48 v90;
(* felem_shrink (&small, &ftmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(ftmp_0, ftmp_16, ftmp_32, ftmp_48, small_0, small_8, small_16, small_24);
(* smallfelem_square (&tmp, &small); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_square(small_0, small_8, small_16, small_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* small ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* felem_reduce (z_out_15(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_reduce(tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112, z_out15_0, z_out15_16, z_out15_32, z_out15_48);
(* _67 = *z_out_15(D); *)
mov v67 z_out15_0;
(* _69 = MEM[(limb * )z_out_15(D) + 16B]; *)
mov v69 z_out15_16;
(* _71 = MEM[(limb * )z_out_15(D) + 32B]; *)
mov v71 z_out15_32;
(* _73 = MEM[(limb * )z_out_15(D) + 48B]; *)
mov v73 z_out15_48;
(* _75 = MEM[(const limb * )&delta]; *)
mov v75 delta_0;
(* _288 = 0x1fffffffffffffffdfffffffe00 - _75; *)
usub v288 0x1fffffffffffffffdfffffffe00@uint128 v75;
(* _76 = _67 + _288; *)
uadd v76 v67 v288;
(* *z_out_15(D) = _76; *)
mov z_out15_0 v76;
(* _77 = MEM[(const limb * )&delta + 16B]; *)
mov v77 delta_16;
(* _287 = 0x200000000000000000000000000 - _77; *)
usub v287 0x200000000000000000000000000@uint128 v77;
(* _78 = _69 + _287; *)
uadd v78 v69 v287;
(* MEM[(limb * )z_out_15(D) + 16B] = _78; *)
mov z_out15_16 v78;
(* _79 = MEM[(const limb * )&delta + 32B]; *)
mov v79 delta_32;
(* _286 = 0x1fffffffffffffffe0000000200 - _79; *)
usub v286 0x1fffffffffffffffe0000000200@uint128 v79;
(* _80 = _71 + _286; *)
uadd v80 v71 v286;
(* MEM[(limb * )z_out_15(D) + 32B] = _80; *)
mov z_out15_32 v80;
(* _81 = MEM[(const limb * )&delta + 48B]; *)
mov v81 delta_48;
(* _285 = 0x1fffffffffffffffe0000000200 - _81; *)
usub v285 0x1fffffffffffffffe0000000200@uint128 v81;
(* _82 = _73 + _285; *)
uadd v82 v73 v285;
(* MEM[(limb * )z_out_15(D) + 48B] = _82; *)
mov z_out15_48 v82;
(* _59 = MEM[(limb * )&beta]; *)
mov v59 beta_0;
(* _60 = _59 * 4; *)
umul v60 v59 0x4@uint128;
(* _61 = MEM[(limb * )&beta + 16B]; *)
mov v61 beta_16;
(* _62 = _61 * 4; *)
umul v62 v61 0x4@uint128;
(* _63 = MEM[(limb * )&beta + 32B]; *)
mov v63 beta_32;
(* _64 = _63 * 4; *)
umul v64 v63 0x4@uint128;
(* _65 = MEM[(limb * )&beta + 48B]; *)
mov v65 beta_48;
(* _66 = _65 * 4; *)
umul v66 v65 0x4@uint128;
(* _47 = _60 + 0x7fffffffffffffff7fffffff800; *)
uadd v47 v60 0x7fffffffffffffff7fffffff800@uint128;
(* _48 = _62 + 0x800000000000000000000000000; *)
uadd v48 v62 0x800000000000000000000000000@uint128;
(* _49 = _64 + 0x7fffffffffffffff80000000800; *)
uadd v49 v64 0x7fffffffffffffff80000000800@uint128;
(* _50 = _66 + 0x7fffffffffffffff80000000800; *)
uadd v50 v66 0x7fffffffffffffff80000000800@uint128;
(* _51 = MEM[(const limb * )x_out_13(D)]; *)
mov v51 x_out13_0;
(* _52 = _47 - _51; *)
usub v52 v47 v51;
(* MEM[(limb * )&beta] = _52; *)
mov beta_0 v52;
(* _53 = MEM[(const limb * )x_out_13(D) + 16B]; *)
mov v53 x_out13_16;
(* _54 = _48 - _53; *)
usub v54 v48 v53;
(* MEM[(limb * )&beta + 16B] = _54; *)
mov beta_16 v54;
(* _55 = MEM[(const limb * )x_out_13(D) + 32B]; *)
mov v55 x_out13_32;
(* _56 = _49 - _55; *)
usub v56 v49 v55;
(* MEM[(limb * )&beta + 32B] = _56; *)
mov beta_32 v56;
(* _57 = MEM[(const limb * )x_out_13(D) + 48B]; *)
mov v57 x_out13_48;
(* _58 = _50 - _57; *)
usub v58 v50 v57;
(* MEM[(limb * )&beta + 48B] = _58; *)
mov beta_48 v58;
(* felem_shrink (&small2, &beta); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_shrink(beta_0, beta_16, beta_32, beta_48, small2_wrong_0, small2_wrong_8, small2_wrong_16, small2_wrong_24);
(* smallfelem_mul (&tmp, &small2, &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_mul(small2_0, small2_8, small2_16, small2_24, small2_wrong_0, small2_wrong_8, small2_wrong_16, small2_wrong_24, tmp_0, tmp_16, tmp_32, tmp_48 ,tmp_64, tmp_80 ,tmp_96, tmp_112);
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* smallfelem_square (&tmp2, &small1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline smallfelem_square(small1_0, small1_8, small1_16, small1_24, tmp2_0, tmp2_16, tmp2_32, tmp2_48, tmp2_64, tmp2_80, tmp2_96, tmp2_112);
(* _31 = MEM[(limb * )&tmp2]; *)
mov v31 tmp2_0;
(* _32 = _31 * 8; *)
umul v32 v31 0x8@uint128;
(* MEM[(limb * )&tmp2] = _32; *)
mov tmp2_0 v32;
(* _33 = MEM[(limb * )&tmp2 + 16B]; *)
mov v33 tmp2_16;
(* _34 = _33 * 8; *)
umul v34 v33 0x8@uint128;
(* MEM[(limb * )&tmp2 + 16B] = _34; *)
mov tmp2_16 v34;
(* _35 = MEM[(limb * )&tmp2 + 32B]; *)
mov v35 tmp2_32;
(* _36 = _35 * 8; *)
umul v36 v35 0x8@uint128;
(* MEM[(limb * )&tmp2 + 32B] = _36; *)
mov tmp2_32 v36;
(* _37 = MEM[(limb * )&tmp2 + 48B]; *)
mov v37 tmp2_48;
(* _38 = _37 * 8; *)
umul v38 v37 0x8@uint128;
(* MEM[(limb * )&tmp2 + 48B] = _38; *)
mov tmp2_48 v38;
(* _39 = MEM[(limb * )&tmp2 + 64B]; *)
mov v39 tmp2_64;
(* _40 = _39 * 8; *)
umul v40 v39 0x8@uint128;
(* MEM[(limb * )&tmp2 + 64B] = _40; *)
mov tmp2_64 v40;
(* _41 = MEM[(limb * )&tmp2 + 80B]; *)
mov v41 tmp2_80;
(* _42 = _41 * 8; *)
umul v42 v41 0x8@uint128;
(* MEM[(limb * )&tmp2 + 80B] = _42; *)
mov tmp2_80 v42;
(* _43 = MEM[(limb * )&tmp2 + 96B]; *)
mov v43 tmp2_96;
(* _44 = _43 * 8; *)
umul v44 v43 0x8@uint128;
(* MEM[(limb * )&tmp2 + 96B] = _44; *)
mov tmp2_96 v44;
(* _45 = MEM[(limb * )&tmp2 + 112B]; *)
mov v45 tmp2_112;
(* _46 = _45 * 8; *)
umul v46 v45 0x8@uint128;
(* MEM[(limb * )&tmp2 + 112B] = _46; *)
mov tmp2_112 v46;
(* _226 = MEM[(limb * )&tmp]; *)
mov v226 tmp_0;
(* _227 = _226 + 0x3fffffffffffffff40; *)
uadd v227 v226 0x3fffffffffffffff40@uint128;
(* _228 = MEM[(limb * )&tmp + 16B]; *)
mov v228 tmp_16;
(* _229 = _228 + 0x400000010000000000; *)
uadd v229 v228 0x400000010000000000@uint128;
(* _230 = MEM[(limb * )&tmp + 32B]; *)
mov v230 tmp_32;
(* _231 = _230 + 0x400000000000000000; *)
uadd v231 v230 0x400000000000000000@uint128;
(* _232 = MEM[(limb * )&tmp + 48B]; *)
mov v232 tmp_48;
(* _233 = _232 + 0x3ffffffec000000040; *)
uadd v233 v232 0x3ffffffec000000040@uint128;
(* _234 = MEM[(limb * )&tmp + 64B]; *)
mov v234 tmp_64;
(* _235 = _234 + 0x3fffffffffffffffc0; *)
uadd v235 v234 0x3fffffffffffffffc0@uint128;
(* _236 = MEM[(limb * )&tmp + 80B]; *)
mov v236 tmp_80;
(* _237 = _236 + 0x3fffffffffffffffc0; *)
uadd v237 v236 0x3fffffffffffffffc0@uint128;
(* _238 = MEM[(limb * )&tmp + 96B]; *)
mov v238 tmp_96;
(* _239 = _238 + 0x3fffffffffffffffc0; *)
uadd v239 v238 0x3fffffffffffffffc0@uint128;
(* _240 = MEM[(limb * )&tmp + 112B]; *)
mov v240 tmp_112;
(* _241 = _240 + 0x3fffffffffffffffc0; *)
uadd v241 v240 0x3fffffffffffffffc0@uint128;
(* _243 = _227 - _32; *)
usub v243 v227 v32;
(* MEM[(limb * )&tmp] = _243; *)
mov tmp_0 v243;
(* _245 = _229 - _34; *)
usub v245 v229 v34;
(* MEM[(limb * )&tmp + 16B] = _245; *)
mov tmp_16 v245;
(* _247 = _231 - _36; *)
usub v247 v231 v36;
(* MEM[(limb * )&tmp + 32B] = _247; *)
mov tmp_32 v247;
(* _249 = _233 - _38; *)
usub v249 v233 v38;
(* MEM[(limb * )&tmp + 48B] = _249; *)
mov tmp_48 v249;
(* _251 = _235 - _40; *)
usub v251 v235 v40;
(* MEM[(limb * )&tmp + 64B] = _251; *)
mov tmp_64 v251;
(* _253 = _237 - _42; *)
usub v253 v237 v42;
(* MEM[(limb * )&tmp + 80B] = _253; *)
mov tmp_80 v253;
(* _255 = _239 - _44; *)
usub v255 v239 v44;
(* MEM[(limb * )&tmp + 96B] = _255; *)
mov tmp_96 v255;
(* _257 = _241 - _46; *)
usub v257 v241 v46;
(* MEM[(limb * )&tmp + 112B] = _257; *)
mov tmp_112 v257;
(* _219 = _243 + 0x1fffffffffffffffdfffffffe00; *)
uadd v219 v243 0x1fffffffffffffffdfffffffe00@uint128;
(* *y_out_19(D) = _219; *)
mov y_out19_0 v219;
(* _221 = _245 + 0x200000000000000000000000000; *)
uadd v221 v245 0x200000000000000000000000000@uint128;
(* MEM[(limb * )y_out_19(D) + 16B] = _221; *)
mov y_out19_16 v221;
(* _223 = _247 + 0x1fffffffffffffffe0000000200; *)
uadd v223 v247 0x1fffffffffffffffe0000000200@uint128;
(* MEM[(limb * )y_out_19(D) + 32B] = _223; *)
mov y_out19_32 v223;
(* _225 = _249 + 0x1fffffffffffffffe0000000200; *)
uadd v225 v249 0x1fffffffffffffffe0000000200@uint128;
(* MEM[(limb * )y_out_19(D) + 48B] = _225; *)
mov y_out19_48 v225;
(* felem_reduce_ (y_out_19(D), &tmp); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
inline felem_reduce_(y_out19_0, y_out19_16, y_out19_32, y_out19_48, tmp_64, tmp_80, tmp_96, tmp_112, y_out19_0, y_out19_16, y_out19_32, y_out19_48);
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
(* small1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov xp0 x_out13_0;
mov xp1 x_out13_16;
mov xp2 x_out13_32;
mov xp3 x_out13_48;
mov yp0 y_out19_0@uint128;
mov yp1 y_out19_16@uint128;
mov yp2 y_out19_32@uint128;
mov yp3 y_out19_48@uint128;
mov zp0 z_out15_0@uint128;
mov zp1 z_out15_16@uint128;
mov zp2 z_out15_32@uint128;
mov zp3 z_out15_48@uint128;
(* End with unsed lhs *)


{
 and [
     (*  X' = (3 * (X - Z^2) * (X + Z^2))^2 - 8 * X * Y^2 *)
  (limbs 64 [xp0, xp1, xp2, xp3])
  =
  (
     (
         3 * ((limbs 64 [x0,x1,x2,x3]) - (limbs 64 [z0,z1,z2,z3]) **2)
         * ((limbs 64 [x0,x1,x2,x3]) + (limbs 64 [z0,z1,z2,z3]) **2)
     ) ** 2
     -
     8 * (limbs 64 [x0,x1,x2,x3]) * (limbs 64 [y0,y1,y2,y3]) **2
     
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ])),
  (*  Y' = 3 * (X - Z^2) * (X + Z^2) * (4 * X * Y^2 - X') - 8 * Y^4 *)
  (limbs 64 [yp0, yp1, yp2, yp3])
  =
  (
     
    3 
    * ((limbs 64 [x0,x1,x2,x3]) - (limbs 64 [z0,z1,z2,z3]) **2)
    * ((limbs 64 [x0,x1,x2,x3]) + (limbs 64 [z0,z1,z2,z3]) **2)
    * (
        4 
        * (limbs 64 [x0,x1,x2,x3]) 
        * (limbs 64 [y0, y1, y2, y3] ** 2)
        - (limbs 64 [xp0, xp1, xp2, xp3])
    )
    -
    8 * (limbs 64 [y0, y1, y2, y3]) ** 4
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ])),
  (* Z' = (Y + Z)^2 - Y^2 - Z^2 = 2 * Y * Z *)
  (limbs 64 [zp0, zp1, zp2, zp3])
  =
  (
    2 
    * (limbs 64 [y0 ,y1, y2, y3])
    * (limbs 64 [z0, z1, z2, z3])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
 ]
  &&
  true
}


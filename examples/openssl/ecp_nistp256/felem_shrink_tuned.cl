(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_shrink_tuned.cl
Verification result:                    [OK]            0.903036 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_shrink_tuned.cl"
        User time (seconds): 1.32
        System time (seconds): 0.59
        Percent of CPU this job got: 196%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.98
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 17184
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 169984
        Voluntary context switches: 2045
        Involuntary context switches: 238
        Swaps: 0
        File system inputs: 0
        File system outputs: 1272
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_shrink_tuned.cl
Verification result:			[OK]		2.037967 seconds
        2.14 real         1.35 user         1.66 sys
  14381056  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    429132  page reclaims
         8  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       567  signals received
       985  voluntary context switches
      6020  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3) = 
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

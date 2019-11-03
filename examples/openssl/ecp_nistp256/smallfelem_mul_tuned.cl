(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing smallfelem_mul_tuned.cl
Verification result:                    [OK]            1.143381 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing smallfelem_mul_tuned.cl"
        User time (seconds): 3.23
        System time (seconds): 0.97
        Percent of CPU this job got: 344%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:01.22
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 95420
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 337300
        Voluntary context switches: 2224
        Involuntary context switches: 446
        Swaps: 0
        File system inputs: 0
        File system outputs: 1104
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0 
*)
(* @mac
3.43 real         5.44 user         2.37 sys
  91795456  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    602000  page reclaims
         3  page faults
         0  swaps
         0  block input operations
        30  block output operations
         0  messages sent
         0  messages received
       620  signals received
      1026  voluntary context switches
     13217  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) = 
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

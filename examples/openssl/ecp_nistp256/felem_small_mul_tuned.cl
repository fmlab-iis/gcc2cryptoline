(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_small_mul_tuned.cl
Verification result:                    [OK]            2.221563 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_small_mul_tuned.cl"
        User time (seconds): 4.83
        System time (seconds): 1.70
        Percent of CPU this job got: 284%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:02.30
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 123252
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 591667
        Voluntary context switches: 3932
        Involuntary context switches: 598
        Swaps: 0
        File system inputs: 0
        File system outputs: 3752
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing felem_small_mul_tuned.cl
Verification result:			[OK]		5.507903 seconds
        5.62 real         8.43 user         4.08 sys
 122515456  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   1078636  page reclaims
         2  page faults
         0  swaps
         0  block input operations
        12  block output operations
         0  messages sent
         0  messages received
      1135  signals received
      1897  voluntary context switches
     15360  involuntary context switches
*)
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



proc main (uint64 a0, uint64 a1, uint64 a2,uint64 a3, uint128 b0, uint128 b1, uint128 b2, uint128 b3) = 
{
  true
  &&
  and [
    (* a[i] < 2^64 *)
    (* in2[i] < 2^109 *)
    b0 <u (2**109)@128,
    b1 <u (2**109)@128,
    b2 <u (2**109)@128,
    b3 <u (2**109)@128
  ]
}



(* Start with undefined rhs *)
mov in22_0@uint128 b0;
mov in22_16@uint128 b1;
mov in22_32@uint128 b2;
mov in22_48@uint128 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _8 = MEM[(const limb * )in2_2(D) + 48B]; *)
mov v8 in22_48;
(* _9 = _8 + 18446744069414584320; *)
mov value_lo 0xffffffff00000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v9 v8 value;
(* _10 = MEM[(const limb * )in2_2(D) + 32B]; *)
mov v10 in22_32;
(* _11 = _10 >> 64; *)
usplit v11 tmp_to_use v10 64;
(* _12 = _9 + _11; *)
uadd v12 v9 v11;
(* _13 = _10 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v13 v10 value;

assert true && v13 = tmp_to_use;
assume v13 = tmp_to_use && true;

(* _14 = _13 + 18446673704965373952; *)
mov value_lo 0xffffc00000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v14 v13 value;
(* _15 = *in2_2(D); *)
mov v15 in22_0;
(* _16 = _15 + 18446744073709551615; *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v16 v15 value;
(* _17 = MEM[(const limb * )in2_2(D) + 16B]; *)
mov v17 in22_16;
(* _18 = _17 + 0x40000000000000000000ffffffff; *)
mov value_lo 0xffffffff@uint64;
mov value_hi 0x400000000000@uint64;
join value value_hi value_lo;
uadd v18 v17 value;
(* _19 = _12 >> 64; *)
usplit v19 tmp_to_use v12 64;
(* a_20 = (u64) _19; *)
vpc a20@uint64 v19@uint128;
(* _21 = _12 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v21 v12 value;

assert true && v21 = tmp_to_use;
assume v21 = tmp_to_use && true;

(* _23 = _19 << 32; *)
usplit tmp1 tmp2 v19 96;
shl v23 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _79 = _23 - _19; *)
usub v79 v23 v19;
(* _24 = _21 + _79; *)
uadd v24 v21 v79;
(* _25 = _24 >> 64; *)
usplit v25 tmp_to_use v24 64;
(* a_26 = (u64) _25; *)
vpc a26@uint64 v25@uint128;
(* b_27 = a_20 + a_26; *)
uadd b27 a20 a26;
(* _28 = _24 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v28 v24 value;

assert true && v28 = tmp_to_use;
assume v28 = tmp_to_use && true;

(* _30 = _25 << 32; *)
usplit tmp1 tmp2 v25 96;
shl v30 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _78 = _30 - _25; *)
usub v78 v30 v25;
(* _31 = _28 + _78; *)
uadd v31 v28 v78;
(* _32 = (__int128 unsigned) b_27; *)
vpc v32@uint128 b27@uint64;
(* _33 = _16 + _32; *)
uadd v33 v16 v32;
(* _34 = _32 << 32; *)
usplit tmp1 tmp2 v32 96;
shl v34 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _35 = _18 - _34; *)
usub v35 v18 v34;
(* _36 = _31 >> 64; *)
usplit v36 tmp_to_use v31 64;
(* high_37 = (u64) _36; *)
cast high37@uint64 v36@uint128;
(* high_38 = -high_37; *)
(* TODO: check negation semantics *)
(* ====== modified : carry -> high ======= *)
usubb high high38 0@uint64 high37;
(* low_39 = (u64) _31; *)
cast low39@uint64 v31@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && low39 = tmp_to_use_p;
assume low39 = tmp_to_use && true;

(* low.0_40 = (signed long) _31; *)
cast v40@int64 v31@uint128;

assert true && v40 = low39;
assume v40 = low39 && true;

(* _41 = low.0_40 >> 63; *)
(* TODO: signed operation, need check *)
(* ====== modified: combine ====== *)
(* ssplit v41 tmp_to_use v40 63; *)
(* mask_42 = (u64) _41; *)
usplit low_h1bit low_l63bit low39 63;
vpc mask@uint1 low_h1bit;
(* cast mask42@uint64 v41@int64; *)
(* low_43 = low_39 & 9223372036854775807; *)
(* Note: 0x7fffffffffffffff@uint64 = 0x7fffffffffffffff *)
(* Note: 0x7fffffffffffffff@uint64 = 0b111111111111111111111111111111111111111111111111111111111111111 *)
and uint64 low43 low39 0x7fffffffffffffff@uint64;
(* low_44 = low_43 + 9223372041149743103; *)
(* ====== modified: uadd -> uadds ====== *)
uadds discarded low44 low43 0x80000000ffffffff@uint64;
(* low_45 = ~low_44; *)
not uint64 low45 low44;
(* low.1_46 = (signed long) low_45; *)
(* cast v46@int64 low45@uint64; *)
(* _47 = low.1_46 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit v47 tmp_to_use v46 63; *)
(* low_48 = (u64) _47; *)
(* cast low48@uint64 v47@int64; *)
usplit low discarded low45 63;
vpc low@uint1 low;
(* _49 = mask_42 & low_48; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and uint64 v49 mask42 low48; *)
cmove v49 mask low 0@uint1;
(* mask_50 = high_38 | _49; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* r uint64 mask50 high38 v49; *)
cmove mask50 high 1@uint1 v49;
(* _51 = (__int128 unsigned) mask_50; *)
(* vpc v51@uint128 mask50@uint64; *)
cmove v51@uint128 mask50 0xffffffffffffffff@uint128 0@uint128;
(* _52 = _33 - _51; *)
usub v52 v33 v51;
(* _53 = mask_50 & 4294967295; *)
(* Note: 0xffffffff@uint64 = 0x000000ffffffff *)
(* Note: 0xffffffff@uint64 = 0b00000000000000000000000000000011111111111111111111111111111111 *)
(* and uint64 v53 mask50 0xffffffff@uint64; *)
cmove v53 mask50 0xFFFFFFFF@uint64 0@uint64;
(* _54 = (__int128 unsigned) _53; *)
vpc v54@uint128 v53@uint64;
(* _55 = _35 - _54; *)
usub v55 v35 v54;
(* _56 = mask_50 & 18446744069414584321; *)
(* Note: 0xffffffff00000001@uint64 = 0xffffffff00000001 *)
(* Note: 0xffffffff00000001@uint64 = 0b1111111111111111111111111111111100000000000000000000000000000001 *)
(* and uint64 v56 mask50 0xffffffff00000001@uint64; *)
cmove v56 mask50 0xFFFFFFFF00000001@uint64 0@uint64;
(* _57 = (__int128 unsigned) _56; *)
vpc v57@uint128 v56@uint64;
(* _58 = _31 - _57; *)
usub v58 v31 v57;
(* _59 = _52 >> 64; *)
usplit v59 tmp_to_use v52 64;
(* _60 = _55 + _59; *)
uadd v60 v55 v59;
(* _61 = (long unsigned int) _52; *)
cast v61@uint64 v52@uint128;


vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v61 = tmp_to_use_p;
assume v61 = tmp_to_use_p && true;

(* _62 = _60 >> 64; *)
usplit v62 tmp_to_use v60 64;
(* _63 = _14 + _62; *)
uadd v63 v14 v62;
(* _64 = (long unsigned int) _60; *)
cast v64@uint64 v60@uint128;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v64 = tmp_to_use_p;
assume v64 = tmp_to_use_p && true;

(* _65 = _63 >> 64; *)
usplit v65 tmp_to_use v63 64;
(* _66 = _58 + _65; *)
uadd v66 v58 v65;
(* _67 = (long unsigned int) _63; *)
cast v67@uint64 v63@uint128;


vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v67 = tmp_to_use_p;
assume v67 = tmp_to_use_p && true;

(* MEM[(u64 * )&small2] = _61; *)
mov small2_0 v61;
(* MEM[(u64 * )&small2 + 8B] = _64; *)
mov small2_8 v64;
(* MEM[(u64 * )&small2 + 16B] = _67; *)
mov small2_16 v67;
(* _68 = (long unsigned int) _66; *)
vpc v68@uint64 v66@uint128;
(* MEM[(u64 * )&small2 + 24B] = _68; *)
mov small2_24 v68;
(* smallfelem_mul (out_4(D), small1_5(D), &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

mov c0@uint128 0@uint128;
mov c1@uint128 0@uint128;
mov c2@uint128 0@uint128;
mov c3@uint128 0@uint128;
mov c4@uint128 0@uint128;
mov c5@uint128 0@uint128;
mov c6@uint128 0@uint128;
mov c7@uint128 0@uint128;

call smallfelem_mul(a0, a1, a2, a3, small2_0, small2_8, small2_16, small2_24, c0, c1, c2, c3, c4, c5, c6, c7);

(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ small2_0@uint64;
mov _ small2_8@uint64;
mov _ small2_16@uint64;
mov _ small2_24@uint64;
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

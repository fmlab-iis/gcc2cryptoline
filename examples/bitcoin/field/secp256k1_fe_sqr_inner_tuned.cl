(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_sqr_inner_tuned.cl
Verification result:                    [OK]            2.687090 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_sqr_inner_tuned.cl"
        User time (seconds): 13.45
        System time (seconds): 2.72
        Percent of CPU this job got: 586%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:02.75
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 303284
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 1324515
        Voluntary context switches: 2699
        Involuntary context switches: 1584
        Swaps: 0
        File system inputs: 0
        File system outputs: 2048
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_fe_sqr_inner_tuned.cl
Verification result:                    [OK]            10.923119 seconds
       11.02 real        27.28 user         5.23 sys
 283258880  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   1510648  page reclaims
       136  page faults
         0  swaps
         1  block input operations
        14  block output operations
         0  messages sent
         0  messages received
       761  signals received
      1324  voluntary context switches
     35182  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) = 
{
  true
  &&
  and
  [
    a0 < (8*(2**53-1))@64,
    a1 < (8*(2**53-1))@64,
    a2 < (8*(2**53-1))@64,
    a3 < (8*(2**53-1))@64,
    a4 < (8*(2**49-1))@64
  ]
}


(* Start with undefined rhs *)
mov a59_0@uint64 a0;
mov a59_8@uint64 a1;
mov a59_16@uint64 a2;
mov a59_24@uint64 a3;
mov a59_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* a0_60 = *a_59(D); *)
mov a060 a59_0;
(* a1_61 = MEM[(const uint64_t * )a_59(D) + 8B]; *)
mov a161 a59_8;
(* a2_62 = MEM[(const uint64_t * )a_59(D) + 16B]; *)
mov a262 a59_16;
(* a3_63 = MEM[(const uint64_t * )a_59(D) + 24B]; *)
mov a363 a59_24;
(* a4_64 = MEM[(const uint64_t * )a_59(D) + 32B]; *)
mov a464 a59_32;
(* _1 = a0_60 * 2; *)
umul v1 a060 0x2@uint64;
(* _4 = _1 w* a3_63; *)
umulj v4 v1 a363;
(* _5 = a1_61 * 2; *)
umul v5 a161 0x2@uint64;
(* _8 = _5 w* a2_62; *)
umulj v8 v5 a262;
(* d_66 = _4 + _8; *)
uadd d66 v4 v8;
(* c_67 = a4_64 w* a4_64; *)
umulj c67 a464 a464;
(* _11 = c_67 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v11 c67 value;
(* _12 = _11 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v12 v11 value;
(* d_68 = _12 + d_66; *)
uadd d68 v12 d66;
(* c_69 = c_67 >> 52; *)
usplit c69 tmp_to_use c67 52;

assert true && tmp_to_use = v11;
assume tmp_to_use = v11 && true;

(* _13 = (long int) d_68; *)
cast v13@int64 d68@uint128;
(* t3_70 = _13 & 4503599627370495; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff@int64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@int64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and int64 t370 v13 0xfffffffffffff@int64;
(* d_71 = d_68 >> 52; *)
usplit d71 tmp_to_use d68 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = t370;
assume tmp_to_use = t370 && true;


(* a4_72 = a4_64 * 2; *)
umul a472 a464 0x2@uint64;
(* _16 = a0_60 w* a4_72; *)
umulj v16 a060 a472;
(* _17 = a3_63 w* _5; *)
umulj v17 a363 v5;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* _19 = a2_62 w* a2_62; *)
umulj v19 a262 a262;
(* _20 = _18 + _19; *)
uadd v20 v18 v19;
(* _21 = c_69 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v21 c69 value;
(* _105 = _20 + _21; *)
uadd v105 v20 v21;
(* d_74 = d_71 + _105; *)
uadd d74 d71 v105;
(* _22 = (long int) d_74; *)
cast v22@int64 d74@uint128;
(* d_75 = d_74 >> 52; *)
usplit d75 tmp_to_use1 d74 52;
(* _10 = _22 >> 48; *)
(* TODO: signed operation, need check *)
ssplit v10 tmp_to_use2 v22 48;
(* tx_76 = _10 & 15; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xf@int64 = 0x0000000000000f *)
(* Note: 0xf@int64 = 0b00000000000000000000000000000000000000000000000000000000001111 *)
and int64 tx76 v10 0xf@int64;

vpc tmp_to_use1_p@uint64 tmp_to_use1;


assert true && tmp_to_use1_p = (tx76 * (2**48)@64) + tmp_to_use2;
assume tmp_to_use1 = (tx76 * (2**48)) + tmp_to_use2 && true;

(* t4_77 = _22 & 281474976710655; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xffffffffffff@int64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@int64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and int64 t477 v22 0xffffffffffff@int64;

assert true && tmp_to_use2 = t477;
assume tmp_to_use2 = t477 && true;

(* c_78 = a0_60 w* a0_60; *)
umulj c78 a060 a060;
(* _24 = a4_72 w* a1_61; *)
umulj v24 a472 a161;
(* _25 = a2_62 * 2; *)
umul v25 a262 0x2@uint64;
(* _27 = a3_63 w* _25; *)
umulj v27 a363 v25;
(* _28 = _24 + _27; *)
uadd v28 v24 v27;
(* d_79 = _28 + d_75; *)
uadd d79 v28 d75;
(* _29 = (long int) d_79; *)
cast v29@int64 d79@uint128;
(* d_80 = d_79 >> 52; *)
usplit d80 tmp_to_use d79 52;
(* _65 = _29 << 4; *)
ssplit tmp1 tmp2 v29 60;
shl v65 tmp2 4;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _30 = _65 & 72057594037927920; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0xfffffffffffff0@int64 = 0xfffffffffffff0 *)
(* Note: 0xfffffffffffff0@int64 = 0b00000011111111111111111111111111111111111111111111111111110000 *)
and int64 v30 v65 0xfffffffffffff0@int64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true &&  v30 = tmp_to_use_p * (2**4)@64;
assume v30 = tmp_to_use * (2**4) && true;

vpc v30@uint64 v30;

(* u0_81 = _30 | tx_76; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint64 u081 v30 tx76; *)

vpc tx76@uint64 tx76;
uadd u081 v30 tx76;

(* _32 = u0_81 w* 4294968273; *)
umulj v32 u081 0x1000003d1@uint64;
(* c_82 = _32 + c_78; *)
uadd c82 v32 c78;
(* _33 = (long unsigned int) c_82; *)
cast v33@uint64 c82@uint128;
(* _34 = _33 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v34 v33 0xfffffffffffff@uint64;
(* *r_83(D) = _34; *)
mov r83_0 v34;
(* c_85 = c_82 >> 52; *)
usplit c85 tmp_to_use c82 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v34;
assume tmp_to_use = v34 && true;

(* _35 = _1 w* a1_61; *)
umulj v35 v1 a161;
(* _36 = a2_62 w* a4_72; *)
umulj v36 a262 a472;
(* _37 = a3_63 w* a3_63; *)
umulj v37 a363 a363;
(* _38 = _36 + _37; *)
uadd v38 v36 v37;
(* d_87 = _38 + d_80; *)
uadd d87 v38 d80;
(* _39 = d_87 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v39 d87 value;
(* _40 = _39 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v40 v39 value;
(* _103 = _35 + _40; *)
uadd v103 v35 v40;
(* c_88 = c_85 + _103; *)
uadd c88 c85 v103;
(* d_89 = d_87 >> 52; *)
usplit d89 tmp_to_use d87 52;

assert true && tmp_to_use = v39;
assume tmp_to_use = v39 && true;

(* _41 = (long unsigned int) c_88; *)
cast v41@uint64 c88@uint128;
(* _42 = _41 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v42 v41 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_83(D) + 8B] = _42; *)
mov r83_8 v42;
(* c_91 = c_88 >> 52; *)
usplit c91 tmp_to_use c88 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v42;
assume tmp_to_use = v42 && true;

(* _43 = _1 w* a2_62; *)
umulj v43 v1 a262;
(* _44 = a1_61 w* a1_61; *)
umulj v44 a161 a161;
(* _45 = _43 + _44; *)
uadd v45 v43 v44;
(* _46 = a3_63 w* a4_72; *)
umulj v46 a363 a472;
(* d_93 = _46 + d_89; *)
uadd d93 v46 d89;
(* _47 = d_93 & 4503599627370495; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: low part 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xfffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v47 d93 value;
(* _48 = _47 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v48 v47 value;
(* _104 = _45 + _48; *)
uadd v104 v45 v48;
(* c_94 = c_91 + _104; *)
uadd c94 c91 v104;
(* d_95 = d_93 >> 52; *)
usplit d95 tmp_to_use d93 52;

assert true && tmp_to_use = v47;
assume tmp_to_use = v47 && true;

(* _49 = (long unsigned int) c_94; *)
cast v49@uint64 c94@uint128;
(* _50 = _49 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v50 v49 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_83(D) + 16B] = _50; *)
mov r83_16 v50;
(* c_97 = c_94 >> 52; *)
usplit c97 tmp_to_use c94 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v50;
assume tmp_to_use = v50 && true;

(* _51 = d_95 * 68719492368; *)
mov value_lo 0x1000003d10@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v51 d95 value;
(* _52 = (__int128 unsigned) t3_70; *)
vpc v52@uint128 t370@int64;
(* _53 = _51 + _52; *)
uadd v53 v51 v52;
(* c_98 = _53 + c_97; *)
uadd c98 v53 c97;
(* _54 = (long unsigned int) c_98; *)
cast v54@uint64 c98@uint128;
(* _55 = _54 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v55 v54 0xfffffffffffff@uint64;
(* MEM[(uint64_t * )r_83(D) + 24B] = _55; *)
mov r83_24 v55;
(* c_100 = c_98 >> 52; *)
usplit c100 tmp_to_use c98 52;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v55;
assume tmp_to_use = v55 && true;

(* _56 = (__int128 unsigned) t4_77; *)
vpc v56@uint128 t477@int64;
(* c_101 = _56 + c_100; *)
uadd c101 v56 c100;
(* _57 = (long unsigned int) c_101; *)
vpc v57@uint64 c101@uint128;
(* MEM[(uint64_t * )r_83(D) + 32B] = _57; *)
mov r83_32 v57;
(* return; *)


(* Start with unused lhs *)
mov c0 r83_0@uint64;
mov c1 r83_8@uint64;
mov c2 r83_16@uint64;
mov c3 r83_24@uint64;
mov c4 r83_32@uint64;
(* End with unsed lhs *)


{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      sq
      (limbs 52 [a0, a1, a2, a3, a4])
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  and [
        c0 < (2**53-1)@64,
        c1 < (2**53-1)@64,
        c2 < (2**53-1)@64,
        c3 < (2**53-1)@64,
        c4 < (2**49-1)@64
  ]
}

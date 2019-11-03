(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_reduce_tuned.cl
Verification result:                    [OK]            0.838450 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_reduce_tuned.cl"
        User time (seconds): 1.06
        System time (seconds): 0.53
        Percent of CPU this job got: 175%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.91
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 15208
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 143433
        Voluntary context switches: 1727
        Involuntary context switches: 157
        Swaps: 0
        File system inputs: 0
        File system outputs: 1384
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_reduce_tuned.cl
Verification result:                    [OK]            1.739538 seconds
        1.84 real         1.11 user         1.32 sys
  11993088  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    358044  page reclaims
         8  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       469  signals received
       818  voluntary context switches
      5972  involuntary context switches
*)
proc secp256k1_scalar_check_overflow (uint64 a0, uint64 a1, uint64 a2, uint64 a3; int32 c0) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a22_0@uint64 a0;
mov a22_8@uint64 a1;
mov a22_16@uint64 a2;
mov a22_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_22(D)->d[3]; *)
mov v1 a22_24;
(* _2 = _1 != 18446744073709551615; *)
subb lt_value dontcare v1 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v1; *)
mov v2 lt_value;
vpc v2@uint8 v2@uint1;
(* _3 = a_22(D)->d[2]; *)
mov v3 a22_16;
(* _4 = _3 <= 18446744073709551613; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xfffffffffffffffd@uint64 1@uint64;
subb v4 dontcare v3 tmp_for_compare;
vpc v4@uint8 v4@uint1;
(* _19 = _2 | _4; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v19 v2 v4; *)
vpc v2_p@uint1 v2;
cmov v19 v2_p 1@uint8 v4;
(* no_23 = (int) _19; *)
vpc v19_p@uint1 v19;
(* vpc no23@int32 v19@uint8; *)
mov no23 v19_p;
(* _5 = _3 == 18446744073709551615; *)
subb lt_value dontcare v3 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v3; *)
mov v5 lt_value;
not uint1 v5 v5;
vpc v5@uint8 v5@uint1;
(* _6 = (int) _5; *)
(* vpc v6@int32 v5@uint8; *)
vpc v6@uint1 v5@uint8;
(* _7 = ~no_23; *)
not uint1 v7 no23;
(* _8 = _6 & _7; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v8 v6 v7; *)
cmov v8@uint1 v6 v7 0@uint1;
(* _9 = a_22(D)->d[1]; *)
mov v9 a22_8;
(* _10 = _9 <= 13451932020343611450; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xbaaedce6af48a03a@uint64 1@uint64;
subb v10 dontcare v9 tmp_for_compare;
vpc v10@uint8 v10@uint1;
(* _20 = _10 | _19; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v20 v10 v19; *)
vpc v10_p@uint1 v10;
cmov v20@uint8 v10_p 1@uint8 v19;

(* no_24 = (int) _20; *)
(* cast no24@int32 v20@uint8; *)
vpc no24@uint1 v20;
(* _11 = _9 > 13451932020343611451; *)
subb v11 dontcare 0xbaaedce6af48a03b@uint64 v9;
vpc v11@uint8 v11@uint1;
(* _13 = ~no_24; *)
(* not int32 v13 no24; *)
not uint1 v13 no24;
(* _15 = a_22(D)->d[0]; *)
mov v15 a22_0;
(* _16 = _15 > 13822214165235122496; *)
subb v16 dontcare 0xbfd25e8cd0364140@uint64 v15;
vpc v16@uint8 v16@uint1;
(* _25 = _11 | _16; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v25 v11 v16; *)
vpc v11_p@uint1 v11;
cmov v25 v11_p 1@uint8 v16;

(* _28 = (int) _25; *)
(* cast v28@int32 v25@uint8; *)
vpc v28@uint8 v25@uint8;
(* _27 = _13 & _28; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v27 v13 v28; *)
vpc v13_p@uint1 v13;
cmov v27@uint8 v13_p v28 0@uint8;
(* yes_26 = _8 | _27; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or int32 yes26 v8 v27; *)
vpc v8_p@uint1 v8;
cmove yes26 v8_p 1@uint8 v27;
vpc yes26@int32 yes26; 
(* return yes_26; *)


(* Start with unused lhs *)
mov c0 yes26@int32;
(* End with unsed lhs *)

{
  true
  &&
  true
}


proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
(* mov overflow23@uint32 _; *)
mov r22_0@uint64 a0;
mov r22_8@uint64 a1;
mov r22_16@uint64 a2;
mov r22_24@uint64 a3;
(* End with undefined rhs *)

mov tmp 0@int32;

call secp256k1_scalar_check_overflow(r22_0, r22_8, r22_16, r22_24, tmp);

vpc overflow23@uint32 tmp;



(* BB's index is 2 *)

(* _1 = r_22(D)->d[0]; *)
mov v1 r22_0;
(* _2 = (__int128 unsigned) _1; *)
vpc v2@uint128 v1@uint64;
(* _3 = (long unsigned int) overflow_23(D); *)
vpc v3@uint64 overflow23@uint32;
(* _4 = _3 * 4624529908474429119; *)
umul v4 v3 0x402da1732fc9bebf@uint64;
(* _5 = (__int128 unsigned) _4; *)
vpc v5@uint128 v4@uint64;
(* t_24 = _2 + _5; *)
uadd t24 v2 v5;
(* _6 = _1 + _4; *)
uadds carry v6 v1 v4;
(* r_22(D)->d[0] = _6; *)
mov r22_0 v6;
(* t_26 = t_24 >> 64; *)
usplit t26 tmp_to_use t24 64;

vpc t26_p@uint1 t26;
assert true && t26_p = carry;
assume t26 = carry && true;


(* _7 = r_22(D)->d[1]; *)
mov v7 r22_8;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _9 = _3 * 4994812053365940164; *)
umul v9 v3 0x4551231950b75fc4@uint64;
(* _10 = (__int128 unsigned) _9; *)
vpc v10@uint128 v9@uint64;
(* _11 = _8 + _10; *)
uadd v11 v8 v10;
(* t_27 = _11 + t_26; *)
uadd t27 v11 t26;
(* _12 = (long unsigned int) t_27; *)
cast v12@uint64 t27@uint128;
(* r_22(D)->d[1] = _12; *)
mov r22_8 v12;
(* t_29 = t_27 >> 64; *)
usplit t29 tmp_to_use t27 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v12;
assume tmp_to_use = v12 && true;

(* _13 = r_22(D)->d[2]; *)
mov v13 r22_16;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _15 = (__int128 unsigned) overflow_23(D); *)
vpc v15@uint128 overflow23@uint32;
(* _16 = _14 + _15; *)
uadd v16 v14 v15;
(* t_30 = _16 + t_29; *)
uadd t30 v16 t29;
(* _17 = (long unsigned int) t_30; *)
cast v17@uint64 t30@uint128;
(* r_22(D)->d[2] = _17; *)
mov r22_16 v17;
(* t_32 = t_30 >> 64; *)
usplit t32 tmp_to_use t30 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v17;
assume tmp_to_use = v17 && true;

(* _18 = r_22(D)->d[3]; *)
mov v18 r22_24;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* t_33 = _19 + t_32; *)
uadd t33 v19 t32;
(* _20 = (long unsigned int) t_33; *)
(* cast v20@uint64 t33@uint128;  *)
split tmp v20 t33 64;
vpc v20@uint64 v20; 
vpc tmp@uint32 tmp; 

assert true && tmp = overflow23;
assume tmp = overflow23 && true;

(* r_22(D)->d[3] = _20; *)
mov r22_24 v20;
(* _35 = (int) overflow_23(D); *)
vpc v35@int32 overflow23@uint32;
(* return _35; *)


(* Start with unused lhs *)
mov c0 r22_0@uint64;
mov c1 r22_8@uint64;
mov c2 r22_16@uint64;
mov c3 r22_24@uint64;
mov _ v35@int32;
(* End with unsed lhs *)

mov is_overflow 0@int32;
call secp256k1_scalar_check_overflow(c0, c1, c2, c3, is_overflow);


{
        (
            limbs 64 [c0, c1, c2, c3]
        )
        = 
        (
            limbs 64 [a0, a1, a2, a3]
        )
        (
            mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141
        )
    &&
    is_overflow = 0@32
}

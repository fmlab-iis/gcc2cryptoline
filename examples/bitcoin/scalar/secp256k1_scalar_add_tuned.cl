(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_add_tuned.cl
Verification result:                    [OK]            1.035844 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_add_tuned.cl"
        User time (seconds): 1.46
        System time (seconds): 0.72
        Percent of CPU this job got: 196%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:01.11
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 14172
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 195591
        Voluntary context switches: 2345
        Involuntary context switches: 280
        Swaps: 0
        File system inputs: 0
        File system outputs: 1856
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_add_tuned.cl
Verification result:                    [OK]            2.235525 seconds
        2.36 real         1.49 user         1.77 sys
  10653696  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    491133  page reclaims
       408  page faults
         0  swaps
         0  block input operations
        10  block output operations
         0  messages sent
         0  messages received
       652  signals received
      1134  voluntary context switches
      6060  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 overflow) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a28_0@uint64 a0;
mov a28_8@uint64 a1;
mov a28_16@uint64 a2;
mov a28_24@uint64 a3;
mov b29_0@uint64 b0;
mov b29_8@uint64 b1;
mov b29_16@uint64 b2;
mov b29_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_28(D)->d[0]; *)
mov v1  a28_0;
(* _2 = (__int128 unsigned) _1; *)
vpc v2@uint128 v1@uint64;
(* _3 = b_29(D)->d[0]; *)
mov v3  b29_0;
(* _4 = (__int128 unsigned) _3; *)
vpc v4@uint128 v3@uint64;
(* t_30 = _2 + _4; *)
uadd t30 v2 v4;
(* _5 = _1 + _3; *)
uadds carry v5 v1 v3;
(* t_32 = t_30 >> 64; *)
usplit t32 tmp_to_use t30 64;

vpc t32_p@uint1 t32;
assert true && t32_p = carry;
assume t32_p = carry && true;

(* _6 = a_28(D)->d[1]; *)
mov v6  a28_8;
(* _7 = (__int128 unsigned) _6; *)
vpc v7@uint128 v6@uint64;
(* _8 = b_29(D)->d[1]; *)
mov v8  b29_8;
(* _9 = (__int128 unsigned) _8; *)
vpc v9@uint128 v8@uint64;
(* _10 = _7 + _9; *)
uadd v10 v7 v9;
(* t_33 = _10 + t_32; *)
uadd t33 v10 t32;
(* _11 = (long unsigned int) t_33; *)
cast v11@uint64 t33@uint128;
(* t_34 = t_33 >> 64; *)
usplit t34 tmp_to_use_t33 t33 64;

vpc tmp_to_use_p@uint64 tmp_to_use_t33;
assert true && tmp_to_use_p = v11;
assume tmp_to_use_p = v11 && true;

(* _12 = a_28(D)->d[2]; *)
mov v12  a28_16;
(* _13 = (__int128 unsigned) _12; *)
vpc v13@uint128 v12@uint64;
(* _14 = b_29(D)->d[2]; *)
mov v14  b29_16;
(* _15 = (__int128 unsigned) _14; *)
vpc v15@uint128 v14@uint64;
(* _16 = _13 + _15; *)
uadd v16 v13 v15;
(* t_35 = _16 + t_34; *)
uadd t35 v16 t34;
(* _17 = (long unsigned int) t_35; *)
cast v17@uint64 t35@uint128;
(* t_36 = t_35 >> 64; *)
usplit t36 tmp_to_use_t35 t35 64;

vpc tmp_to_use_p@uint64 tmp_to_use_t35;
assert true && tmp_to_use_p = v17;
assume tmp_to_use_p = v17 && true;

(* _18 = a_28(D)->d[3]; *)
mov v18  a28_24;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* _20 = b_29(D)->d[3]; *)
mov v20  b29_24;
(* _21 = (__int128 unsigned) _20; *)
vpc v21@uint128 v20@uint64;
(* _22 = _19 + _21; *)
uadd v22 v19 v21;
(* t_37 = _22 + t_36; *)
uadd t37 v22 t36;
(* _23 = (long unsigned int) t_37; *)
cast v23@uint64 t37@uint128;
(* t_38 = t_37 >> 64; *)
usplit t38 tmp_to_use_t37 t37 64;

vpc tmp_to_use_p@uint64 tmp_to_use_t37;
assert true && tmp_to_use_p = v23;
assume tmp_to_use_p = v23 && true;

(* _63 = _23 != 18446744073709551615; *)
subb lt_value dontcare v23 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v23; *)
(* or uint1 v63 lt_value gt_value; *)
mov v63 lt_value;
vpc v63@uint8 v63@uint1;
(* _64 = _17 <= 18446744073709551613; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xfffffffffffffffd@uint64 1@uint64;
subb v64 dontcare v17 tmp_for_compare;
vpc v64@uint8 v64@uint1;
(* _65 = _63 | _64; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v65 v63 v64; *)
vpc v63_p@uint1 v63;
cmov v65 v63_p 1@uint8 v64;
(* no_66 = (int) _65; *)
vpc no66@int32 v65@uint8;
(* _67 = _17 == 18446744073709551615; *)
subb lt_value dontcare v17 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v17; *)
(* or uint1 v67 lt_value gt_value; *)
mov v67 lt_value;
not uint1 v67 v67;
vpc v67@uint8 v67@uint1;
(* _68 = (int) _67; *)
vpc v68@uint1 v67@uint8;
(* _69 = ~no_66; *)
vpc no66@uint1 no66;
not uint1 v69 no66;
(* _70 = _68 & _69; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v70 v68 v69; *)
cmov v70@uint1 v68 v69 0@uint1;
(* _71 = _11 <= 13451932020343611450; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xbaaedce6af48a03a@uint64 1@uint64;
subb v71 dontcare v11 tmp_for_compare;
vpc v71@uint8 v71@uint1;
(* _72 = _65 | _71; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v72 v65 v71; *)
vpc v65_p@uint1 v65;
cmov v72@uint8 v65_p 1@uint8 v71;
(* no_73 = (int) _72; *)
(* cast no73@int32 v72@uint8; *)
vpc no73@uint1 v72;
(* _74 = _11 > 13451932020343611451; *)
subb v74 dontcare 0xbaaedce6af48a03b@uint64 v11;
vpc v74@uint8 v74@uint1;
(* _76 = ~no_73; *)
(* not int32 v76 no73; *)
not uint1 v76 no73;
(* _79 = _5 > 13822214165235122496; *)
subb v79 dontcare 0xbfd25e8cd0364140@uint64 v5;
vpc v79@uint8 v79@uint1;
(* _78 = _74 | _79; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v78 v74 v79; *)
vpc v74_p@uint1 v74;
cmov v78 v74_p 1@uint8 v79;
(* _40 = (int) _78; *)
(* cast v40@int32 v78@uint8; *)
vpc v40@uint8 v78;
(* _47 = _40 & _76; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v47 v40 v76; *)
vpc v40_p@uint1 v40;
cmov v47@uint1 v40_p v76 0@uint1;
(* yes_82 = _47 | _70; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or int32 yes82 v47 v70; *)
vpc v47_p@uint1 v47;
cmov yes82@uint1 v47_p 1@uint1 v70;
vpc yes82@int32 yes82;
(* _24 = (unsigned int) yes_82; *)
vpc v24@uint32 yes82@int32;
(* _25 = (unsigned int) t_38; *)
vpc v25@uint32 t38@uint128;
(* _26 = _24 + _25; *)
uadd v26 v24 v25;
(* overflow_39 = (int) _26; *)
vpc overflow39@int32 v26@uint32;
(* _54 = (__int128 unsigned) _5; *)
vpc v54@uint128 v5@uint64;
(* _41 = (long unsigned int) _26; *)
vpc v41@uint64 v26@uint32;
(* _42 = _41 * 4624529908474429119; *)
umul v42 v41 0x402da1732fc9bebf@uint64;
(* _43 = (__int128 unsigned) _42; *)
vpc v43@uint128 v42@uint64;
(* t_44 = _43 + _54; *)
uadd t44 v43 v54;
(* _45 = _5 + _42; *)
uadds carry v45 v5 v42;
(* r_31(D)->d[0] = _45; *)
mov r31_0 v45;
(* t_46 = t_44 >> 64; *)
usplit t46 tmp_to_use t44 64;


vpc t46_p@uint1 t46;
assert true && t46_p = carry;
assume t46_p = carry && true;



(* _87 = t_33 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 t33 value;

assert true && v87 = tmp_to_use_t33;
assume v87 = tmp_to_use_t33 && true;

(* _48 = _41 * 4994812053365940164; *)
umul v48 v41 0x4551231950b75fc4@uint64;
(* _49 = (__int128 unsigned) _48; *)
vpc v49@uint128 v48@uint64;
(* _50 = _49 + _87; *)
uadd v50 v49 v87;
(* t_51 = t_46 + _50; *)
uadd t51 t46 v50;
(* _52 = (long unsigned int) t_51; *)
cast v52@uint64 t51@uint128;
(* r_31(D)->d[1] = _52; *)
mov r31_8 v52;
(* t_53 = t_51 >> 64; *)
usplit t53 tmp_to_use t51 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v52;
assume tmp_to_use_p = v52 && true;

(* _88 = t_35 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v88 t35 value;

assert true && v88 = tmp_to_use_t35;
assume v88 = tmp_to_use_t35 && true;

(* _55 = (__int128 unsigned) _26; *)
vpc v55@uint128 v26@uint32;
(* _56 = _55 + _88; *)
uadd v56 v55 v88;
(* t_57 = t_53 + _56; *)
uadd t57 t53 v56;
(* _58 = (long unsigned int) t_57; *)
cast v58@uint64 t57@uint128;
(* r_31(D)->d[2] = _58; *)
mov r31_16 v58;
(* t_59 = t_57 >> 64; *)
usplit t59 tmp_to_use t57 64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v58;
assume tmp_to_use_p = v58 && true;

(* _89 = t_37 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v89 t37 value;

assert true && v89 = tmp_to_use_t37;
assume v89 = tmp_to_use_t37 && true;

(* t_61 = t_59 + _89; *)
uadd t61 t59 v89;
(* _62 = (long unsigned int) t_61; *)
(* cast v62@uint64 t61@uint128; *)
split tmp v62 t61 64;
vpc tmp@uint1 tmp;
vpc yes82_p@uint1 yes82;
assert true && tmp = yes82_p;
assume tmp = yes82_p && true;

vpc v62@uint64 v62;
(* r_31(D)->d[3] = _62; *)
mov r31_24 v62;
(* return overflow_39; *)


(* Start with unused lhs *)
mov coverflow overflow39@int32;
mov c0 r31_0@uint64;
mov c1 r31_8@uint64;
mov c2 r31_16@uint64;
mov c3 r31_24@uint64;
(* End with unsed lhs *)


{
  
          limbs 64 [c0, c1, c2, c3]
            =
            (
                (limbs 64 [a0 ,a1 ,a2 ,a3])
                +
                (limbs 64 [b0, b1, b2, b3])
            )
            (mod limbs 64 [
            0xBFD25E8CD0364141,
            0xBAAEDCE6AF48A03B,
            0xFFFFFFFFFFFFFFFE,
            0xFFFFFFFFFFFFFFFF
            ]
         )
      
  &&
  true
}

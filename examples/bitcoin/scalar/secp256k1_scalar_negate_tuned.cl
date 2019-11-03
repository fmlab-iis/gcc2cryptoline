(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_negate_tuned.cl
Verification result:                    [OK]            40.101224 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_negate_tuned.cl"
        User time (seconds): 40.07
        System time (seconds): 0.20
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:40.18
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 135532
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 82665
        Voluntary context switches: 496
        Involuntary context switches: 3412
        Swaps: 0
        File system inputs: 0
        File system outputs: 296
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_negate_tuned.cl
Verification result:                    [OK]            34.251851 seconds
       34.33 real        33.15 user         0.68 sys
 132972544  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    131755  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        15  block output operations
         0  messages sent
         0  messages received
       122  signals received
       236  voluntary context switches
     36920  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) = 
{
  true
  &&
  limbs 64 [a0, a1, a2 , a3] < limbs 64 [
                            0xBFD25E8CD0364141@64,
                            0xBAAEDCE6AF48A03B@64,
                            0xFFFFFFFFFFFFFFFE@64,
                            0xFFFFFFFFFFFFFFFF@64
                        ]
}


(* Start with undefined rhs *)
mov a23_0@uint64 a0;
mov a23_8@uint64 a1;
mov a23_16@uint64 a2;
mov a23_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _24 = a_23(D)->d[0]; *)
mov v24  a23_0;
(* _38 = a_23(D)->d[1]; *)
mov v38  a23_8;
(* _39 = _24 | _38; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v39 v24 v38;
(* _40 = a_23(D)->d[2]; *)
mov v40  a23_16;
(* _41 = _39 | _40; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v41 v39 v40;
(* _42 = a_23(D)->d[3]; *)
mov v42  a23_24;
(* _43 = _41 | _42; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v43 v41 v42;
(* _1 = _43 != 0; *)
(* subb lt_value dontcare v43 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v43;
(* or uint1 v1 lt_value gt_value;  *)
mov v1 gt_value;
vpc v1@uint8 v1@uint1;
(* _2 = (long long unsigned int) _1; *)
vpc v2@uint64 v1@uint8;
(* nonzero_25 = -_2; *)
(* TODO: check negation semantics *)
usubb carry nonzero25 0@uint64 v2;

assert true 
        &&
        or [
            and [
                (nonzero25 = 0@64),
                ((limbs 64 [a0, a1,  a2 ,a3]) = (limbs 64 [0@64, 0@64, 0@64 ,0@64]))
            ],
            and [
                (nonzero25 = 0xFFFFFFFFFFFFFFFF@64),
                ((limbs 64 [a0, a1,  a2 ,a3]) > (limbs 64 [0@64, 0@64, 0@64 ,0@64]))
            ]
        ] ;



(* _3 = ~_24; *)
not uint64 v3 v24;
(* _4 = (__int128 unsigned) _3; *)
vpc v4@uint128 v3@uint64;
(* t_26 = _4 + 13822214165235122498; *)
mov value_lo 0xbfd25e8cd0364142@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd t26 v4 value;
(* _5 = _3 + 13822214165235122498; *)
uadds dontcare v5 v3 0xbfd25e8cd0364142@uint64;
(* _6 = _5 & nonzero_25; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v6 v5 nonzero25;
(* r_27(D)->d[0] = _6; *)
mov r27_0 v6;
(* t_29 = t_26 >> 64; *)
usplit t29 tmp_to_use t26 64;
(* _7 = ~_38; *)
not uint64 v7 v38;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _46 = _8 + 13451932020343611451; *)
mov value_lo 0xbaaedce6af48a03b@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v46 v8 value;
(* t_30 = t_29 + _46; *)
uadd t30 t29 v46;
(* _10 = (long unsigned int) t_30; *)
cast v10@uint64 t30@uint128;
(* _11 = _10 & nonzero_25; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v11 v10 nonzero25;
(* r_27(D)->d[1] = _11; *)
mov r27_8 v11;
(* t_32 = t_30 >> 64; *)
usplit t32 tmp_to_use t30 64;
(* _12 = ~_40; *)
not uint64 v12 v40;
(* _13 = (__int128 unsigned) _12; *)
vpc v13@uint128 v12@uint64;
(* _44 = _13 + 18446744073709551614; *)
mov value_lo 0xfffffffffffffffe@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v44 v13 value;
(* t_33 = t_32 + _44; *)
uadd t33 t32 v44;
(* _15 = (long unsigned int) t_33; *)
cast v15@uint64 t33@uint128;
(* _16 = _15 & nonzero_25; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v16 v15 nonzero25;
(* r_27(D)->d[2] = _16; *)
mov r27_16 v16;
(* t_35 = t_33 >> 64; *)
usplit t35 tmp_to_use t33 64;
(* _17 = ~_42; *)
not uint64 v17 v42;
(* _18 = (__int128 unsigned) _17; *)
vpc v18@uint128 v17@uint64;
(* _45 = _18 + 18446744073709551615; *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v45 v18 value;
(* t_36 = t_35 + _45; *)
uadd t36 t35 v45;
(* _20 = (long unsigned int) t_36; *)
cast v20@uint64 t36@uint128;
(* _21 = _20 & nonzero_25; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v21 v20 nonzero25;
(* r_27(D)->d[3] = _21; *)
mov r27_24 v21;
(* return; *)


(* Start with unused lhs *)
mov c0 r27_0@uint64;
mov c1 r27_8@uint64;
mov c2 r27_16@uint64;
mov c3 r27_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  limbs 64 [0@64, 0@64, 0@64, 0@64]
  =
  (
      (limbs 64 [a0 ,a1 ,a2 ,a3])
      +
      (limbs 64 [c0, c1, c2, c3])
  )
  (mod limbs 64 [
                0xBFD25E8CD0364141@64,
                0xBAAEDCE6AF48A03B@64,
                0xFFFFFFFFFFFFFFFE@64,
                0xFFFFFFFFFFFFFFFF@64
                ]
    )
}

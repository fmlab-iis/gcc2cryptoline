(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl
Verification result:                    [OK]            202.969055 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl"
        User time (seconds): 202.81
        System time (seconds): 0.23
        Percent of CPU this job got: 99%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 3:23.04
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 142340
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 65988
        Voluntary context switches: 407
        Involuntary context switches: 17103
        Swaps: 0
        File system inputs: 0
        File system outputs: 248
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0

===== Verification =====
Arguments: -jobs 24 -qfbv_solver boolector -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl
Verification result:                    [OK]            136.923051 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl"
        User time (seconds): 136.67
        System time (seconds): 0.24
        Percent of CPU this job got: 99%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 2:17.04
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 46316
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 106155
        Voluntary context switches: 373
        Involuntary context switches: 11622
        Swaps: 0
        File system inputs: 0
        File system outputs: 240
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl
Verification result:                    [OK]            96.542416 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl"
        User time (seconds): 96.41
        System time (seconds): 0.19
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 1:36.60
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 74588
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 64565
        Voluntary context switches: 403
        Involuntary context switches: 5232
        Swaps: 0
        File system inputs: 0
        File system outputs: 248
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver stp -qfbv_args --cryptominisat -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl
Verification result:                    [OK]            89.532232 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver stp -qfbv_args --cryptominisat -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl"
        User time (seconds): 89.43
        System time (seconds): 0.15
        Percent of CPU this job got: 99%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 1:29.59
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 74640
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 50906
        Voluntary context switches: 403
        Involuntary context switches: 7517
        Swaps: 0
        File system inputs: 0
        File system outputs: 264
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl
Verification result:			[OK]		261.311062 seconds
      261.46 real       252.91 user         2.17 sys
 121888768  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    101369  page reclaims
      1643  page faults
         0  swaps
        27  block input operations
        22  block output operations
         0  messages sent
         0  messages received
        95  signals received
       235  voluntary context switches
    275758  involuntary context switches
    
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -isafety -slicing ./secp256k1_fe_normalizes_to_zero_tuned.cl
Verification result:			[OK]		259.566300 seconds
      259.67 real       231.36 user         2.19 sys
  63500288  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    219085  page reclaims
       212  page faults
         0  swaps
         0  block input operations
        16  block output operations
         0  messages sent
         0  messages received
        95  signals received
       175  voluntary context switches
    247184  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) = 
{
  true
  &&
   and [
    a0 <=u (2**63)@64, a1 <=u (2**63)@64, a2 <=u (2**63)@64, a3 <=u (2**63)@64,
    a4 <=u (2**63)@64
  ]
}

mov p0 0xFFFFEFFFFFC2F@uint64;
mov p1 0xFFFFFFFFFFFFF@uint64;
mov p2 0xFFFFFFFFFFFFF@uint64;
mov p3 0xFFFFFFFFFFFFF@uint64;
mov p4 0xFFFFFFFFFFFF@uint64;

(* Start with undefined rhs *)
mov r12_0@uint64 a0;
mov r12_8@uint64 a1;
mov r12_16@uint64 a2;
mov r12_24@uint64 a3;
mov r12_32@uint64 a4;
(* mov v6@uint64 _; *)
(* mov z123@uint64 _; *)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_13 = r_12(D)->n[0]; *)
mov t013 r12_0;
(* t1_14 = r_12(D)->n[1]; *)
mov t114 r12_8;
(* t2_15 = r_12(D)->n[2]; *)
mov t215 r12_16;
(* t3_16 = r_12(D)->n[3]; *)
mov t316 r12_24;
(* t4_17 = r_12(D)->n[4]; *)
mov t417 r12_32;
(* x_18 = t4_17 >> 48; *)
usplit x18 tmp_to_use t417 48;
(* t4_19 = t4_17 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t419 t417 0xffffffffffff@uint64;
(* _1 = x_18 * 4294968273; *)
umul v1 x18 0x1000003d1@uint64;
(* t0_20 = _1 + t0_13; *)
uadd t020 v1 t013;
(* _2 = t0_20 >> 52; *)
usplit v2 tmp_to_use t020 52;
(* t1_21 = _2 + t1_14; *)
uadd t121 v2 t114;
(* t0_22 = t0_20 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t022 t020 0xfffffffffffff@uint64;
(* z1_23 = t0_22 ^ 4294968272; *)
(* TODO: Skip translation for bit xor *)
not uint64 nt022 t022;
not uint64 nvalue 4294968272@uint64;
and uint64 vn t022 nvalue;
and uint64 nv nt022 4294968272@uint64;
or uint64 z123 vn nv;
(* _3 = t1_21 >> 52; *)
usplit v3 tmp_to_use t121 52;
(* t2_24 = _3 + t2_15; *)
uadd t224 v3 t215;
(* _7 = t0_20 | t1_21; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v7 t020 t121;
(* _4 = t2_24 >> 52; *)
usplit v4 tmp_to_use t224 52;
(* t3_27 = _4 + t3_16; *)
uadd t327 v4 t316;
(* _37 = _7 | t2_24; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v37 v7 t224;
(* _35 = t1_21 & z1_23; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v35 t121 z123;
(* _5 = t3_27 >> 52; *)
usplit v5 tmp_to_use t327 52;
(* t4_30 = _5 + t4_19; *)
uadd t430 v5 t419;
(* _38 = t3_27 | _37; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v38 t327 v37;
(* z0_32 = _38 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 z032 v38 0xfffffffffffff@uint64;
(* z0_34 = t4_30 | z0_32; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 z034 t430 z032;
(* _6 = t4_30 ^ 4222124650659840; *)
(* TODO: Skip translation for bit xor *)
not uint64 nt430 t430;
not uint64 nvalue 4222124650659840@uint64;
and uint64 vn t430 nvalue;
and uint64 nv nt430 4222124650659840@uint64;
or uint64 v6 vn nv;
(* _25 = t2_24 & _35; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v25 t224 v35;
(* _26 = _25 & t3_27; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v26 v25 t327;
(* _44 = _6 & _26; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v44 v6 v26;
(* _8 = z0_34 == 0; *)
subb lt_value dontcare z034 0x0@uint64;
subb gt_value dontcare 0x0@uint64 z034;
or uint1 v8 lt_value gt_value;
not uint1 v8 v8;
vpc v8@uint8 v8@uint1;
(* _9 = _44 == 4503599627370495; *)
subb lt_value dontcare v44 0xfffffffffffff@uint64;
subb gt_value dontcare 0xfffffffffffff@uint64 v44;
or uint1 v9 lt_value gt_value;
not uint1 v9 v9;
vpc v9@uint8 v9@uint1;
(* _10 = _8 | _9; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint8 v10 v8 v9;
(* _36 = (int) _10; *)
cast v36@int32 v10@uint8;
(* return _36; *)


(* Start with unused lhs *)
(* mov _ t022@uint64; *)
mov is_zero v36@int32;
(* End with unsed lhs *)


{
  true
  &&
  or [
      (and [
          is_zero = 1@32,
          eqmod
              (limbs 52 [0@64, 0@64 ,0@64, 0@64, 0@64])
              (limbs 52 [a0, a1, a2, a3 ,a4])
              (limbs 52 [p0, p1, p2, p3, p4])

      ]),
        (
            and [
                is_zero = 0@32,
                ~(
                          (limbs 52 [0@64, 0@64 ,0@64, 0@64, 0@64])             =
                          ( 
                            umod  
                            (limbs 52 [a0, a1, a2, a3 ,a4])
                            (limbs 52 [p0, p1, p2, p3, p4])
                          )
                    )
            ]
        )
      
  ]
}

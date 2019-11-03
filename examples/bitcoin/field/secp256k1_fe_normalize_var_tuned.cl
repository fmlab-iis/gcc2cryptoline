(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_tuned.cl
Verification result:                    [OK]            446.639887 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_tuned.cl"
        User time (seconds): 446.54
        System time (seconds): 0.43
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 7:26.71
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 176092
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 126688
        Voluntary context switches: 868
        Involuntary context switches: 37645
        Swaps: 0
        File system inputs: 0
        File system outputs: 616
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_tuned.cl
Verification result:                    [OK]            80.205367 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_tuned.cl"
        User time (seconds): 80.20
        System time (seconds): 0.34
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 1:20.28
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 41328
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 144060
        Voluntary context switches: 870
        Involuntary context switches: 6776
        Swaps: 0
        File system inputs: 0
        File system outputs: 624
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_fe_normalize_var_tuned.cl
Verification result:                    [OK]            173.027031 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_fe_normalize_var_tuned.cl"
        User time (seconds): 172.95
        System time (seconds): 0.20
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 2:53.12
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 83548
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 75322
        Voluntary context switches: 790
        Involuntary context switches: 14272
        Swaps: 0
        File system inputs: 0
        File system outputs: 536
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_var_tuned.cl
Verification result:                    [OK]            249.927022 seconds
      250.06 real       223.98 user         3.04 sys
  48021504  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    281918  page reclaims
         1  page faults
         0  swaps
         0  block input operations
        18  block output operations
         0  messages sent
         0  messages received
       211  signals received
       380  voluntary context switches
    295987  involuntary context switches
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
mov r23_0@uint64 a0;
mov r23_8@uint64 a1;
mov r23_16@uint64 a2;
mov r23_24@uint64 a3;
mov r23_32@uint64 a4;
(*
mov t421@uint64 _;
mov v58_0 _;
mov v58_1 _;
mov v60_0 _;
mov v60_1 _;
*)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_24 = r_23(D)->n[0]; *)
mov t024  r23_0;
(* t1_25 = r_23(D)->n[1]; *)
mov t125  r23_8;
(* t2_26 = r_23(D)->n[2]; *)
mov t226  r23_16;
(* t3_27 = r_23(D)->n[3]; *)
mov t327  r23_24;
(* t4_28 = r_23(D)->n[4]; *)
mov t428  r23_32;
(* x_29 = t4_28 >> 48; *)
(* NOTE: merge with t4_30 = t4_28 & 281474976710655; *)
usplit x29 t430 t428 48;
(* t4_30 = t4_28 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t430 t428 48; *)
(* _1 = x_29 * 4294968273; *)
umul v1 x29 0x1000003d1@uint64;
(* t0_31 = _1 + t0_24; *)
uadd t031 v1 t024;
(* _2 = t0_31 >> 52; *)
(* NOTE: merge with t0_33 = t0_31 & 4503599627370495; *)
usplit v2 t033 t031 52;
(* t1_32 = _2 + t1_25; *)
uadd t132 v2 t125;
(* t0_33 = t0_31 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t033 t031 52; *)
(* _3 = t1_32 >> 52; *)
(* NOTE: merge with t1_35 = t1_32 & 4503599627370495; *)
usplit v3 t135 t132 52;
(* t2_34 = _3 + t2_26; *)
uadd t234 v3 t226;
(* t1_35 = t1_32 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t135 t132 52; *)
(* _4 = t2_34 >> 52; *)
(* NOTE: merge with t2_37 = t2_34 & 4503599627370495; *)
usplit v4 t237 t234 52;
(* t3_36 = _4 + t3_27; *)
uadd t336 v4 t327;
(* t2_37 = t2_34 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t237 t234 52; *)
(* m_38 = t1_35 & t2_37; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 m38 t135 t237;
(* _5 = t3_36 >> 52; *)
(* NOTE: merge with t3_40 = t3_36 & 4503599627370495; *)
usplit v5 t340 t336 52;
(* t4_39 = _5 + t4_30; *)
uadd t439 v5 t430;
(* t3_40 = t3_36 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t340 t336 52; *)
(* m_41 = m_38 & t3_40; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 m41 m38 t340;
(* _7 = t4_39 >> 48; *)
usplit v7 tmp_to_use t439 48;
(* _8 = t4_39 == 281474976710655; *)
subc lt_value dontcare t439 0xffffffffffff@uint64;
subc gt_value dontcare 0xffffffffffff@uint64 t439;
or bit v8 lt_value gt_value;
not bit v8 v8;
(* vpc v8@uint8 v8@bit; *)
(* _9 = m_41 == 4503599627370495; *)
subc lt_value dontcare m41 0xfffffffffffff@uint64;
subc gt_value dontcare 0xfffffffffffff@uint64 m41;
or bit v9 lt_value gt_value;
not bit v9 v9;
(* vpc v9@uint8 v9@bit; *)
(* _10 = _8 & _9; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and bit v10 v8 v9;
(* _11 = t0_33 > 4503595332402222; *)
subc v11 dontcare 0xffffefffffc2e@uint64 t033;
(* vpc v11@uint8 v11@uint64; *)
(* _6 = _10 & _11; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and bit v6 v10 v11;
(* _12 = (long unsigned int) _6; *)
vpc v12@uint64 v6;
(* x_42 = _7 | _12; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
vpc v7@uint64 v7;
or uint64 x42 v7 v12;
(* if (x_42 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)
(* NOTE: use qfbv and cmov *)
subc flag dontcare x42 1@uint64;

(* BB's index is 3 *)

(* t0_43 = t0_33 + 4294968273; *)
uadd t043 t033 0x1000003d1@uint64;
(* _13 = t0_43 >> 52; *)
(* NOTE: merge with t0_45 = t0_43 & 4503599627370495; *)
usplit v13 t045 t043 52;
(* t1_44 = _13 + t1_35; *)
uadd t144 v13 t135;
(* t0_45 = t0_43 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t045 t043 52; *)
(* _14 = t1_44 >> 52; *)
(* NOTE: merge with t1_47 = t1_44 & 4503599627370495; *)
usplit v14 t147 t144 52;
(* t2_46 = _14 + t2_37; *)
uadd t246 v14 t237;
(* t1_47 = t1_44 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t147 t144 52; *)
(* _15 = t2_46 >> 52; *)
(* NOTE: merge with t2_49 = t2_46 & 4503599627370495; *)
usplit v15 t249 t246 52;
(* t3_48 = _15 + t3_40; *)
uadd t348 v15 t340;
(* t2_49 = t2_46 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t249 t246 52; *)
(* _16 = t3_48 >> 52; *)
(* NOTE: merge t3_51 = t3_48 & 4503599627370495; *)
usplit v16 t351 t348 52;
(* t4_50 = _16 + t4_39; *)
uadd t450 v16 t439;
(* t3_51 = t3_48 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t351 t348 52; *)
(* t4_52 = t4_50 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and t452 t450 48;

(* BB's index is 4 *)

(* t0_17 = PHI <t0_45(3), t0_33(2)> *)
(* t1_18 = PHI <t1_47(3), t1_35(2)> *)
(* t2_19 = PHI <t2_49(3), t2_37(2)> *)
(* t3_20 = PHI <t3_51(3), t3_40(2)> *)
(* t4_21 = PHI <t4_52(3), t4_39(2)> *)
(* NOTE: use qfbv and cmov *)
cmov t017 flag t045 t033;
cmov t118 flag t147 t135;
cmov t219 flag t249 t237;
cmov t320 flag t351 t340;
cmov t421 flag t452 t439;

(* _58 = {t2_19, t3_20}; *)
(* TODO: Skip translation for constructor *)
(* NOTE: use two 64-bit variables *)
mov v58_0 t219;
mov v58_1 t320;
(* _60 = {t0_17, t1_18}; *)
(* TODO: Skip translation for constructor *)
(* NOTE: use two 64-bit variables *)
mov v60_0 t017;
mov v60_1 t118;
(* MEM[(long unsigned int * )r_23(D)] = _60; *)
mov r23_0 v60_0;
mov r23_8 v60_1;
(* MEM[(long unsigned int * )r_23(D) + 16B] = _58; *)
mov r23_16 v58_0;
mov r23_24 v58_1;
(* r_23(D)->n[4] = t4_21; *)
mov r23_32 t421;
(* return; *)


(* Start with unused lhs *)
mov c0 r23_0@uint64;
mov c1 r23_8@uint64;
mov c2 r23_16@uint64;
mov c3 r23_24@uint64;
mov c4 r23_32@uint64;
(*
mov _ t045@uint64;
mov _ t147@uint64;
mov _ t249@uint64;
mov _ t351@uint64;
mov _ t452@uint64;
mov _ x42@uint64;
*)
(* End with unsed lhs *)


{
  true
&&
  and [
    eqmod (limbs 52 [c0, c1, c2, c3, c4])
          (limbs 52 [a0, a1, a2, a3, a4])
          (limbs 52 [p0, p1, p2, p3, p4]),
    c0 <u (2**52)@64, c1 <u (2**52)@64, c2 <u (2**52)@64, c3 <u (2**52)@64,
    c4 <u (2**52)@64
  ]
}

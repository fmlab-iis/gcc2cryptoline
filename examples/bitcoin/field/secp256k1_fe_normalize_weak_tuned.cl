(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_weak_tuned.cl
Verification result:                    [OK]            145.568092 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_weak_tuned.cl"
        User time (seconds): 145.55
        System time (seconds): 0.35
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 2:25.64
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 123388
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 115977
        Voluntary context switches: 694
        Involuntary context switches: 12087
        Swaps: 0
        File system inputs: 0
        File system outputs: 352
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_weak_tuned.cl
Verification result:                    [OK]            60.707812 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_weak_tuned.cl"
        User time (seconds): 60.70
        System time (seconds): 0.26
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 1:00.79
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 30204
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 98405
        Voluntary context switches: 694
        Involuntary context switches: 5117
        Swaps: 0
        File system inputs: 0
        File system outputs: 352
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_weak_tuned.cl
Verification result:                    [OK]            302.818233 seconds
      302.94 real       267.37 user         2.91 sys
  84393984  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    147400  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        18  block output operations
         0  messages sent
         0  messages received
       171  signals received
       323  voluntary context switches
    301093  involuntary context switches
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_weak_tuned.cl
Verification result:                    [OK]            155.700223 seconds
      155.88 real       137.31 user         2.07 sys
  49061888  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    225576  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        16  block output operations
         0  messages sent
         0  messages received
       170  signals received
       314  voluntary context switches
    181271  involuntary context switches
*)
(* This function performs only one reduction and hence is called weak *)
(* TODO: range precondition needs to be specified *)
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
mov r7_0@uint64 a0;
mov r7_8@uint64 a1;
mov r7_16@uint64 a2;
mov r7_24@uint64 a3;
mov r7_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_8 = r_7(D)->n[0]; *)
mov t08  r7_0;
(* t1_9 = r_7(D)->n[1]; *)
mov t19  r7_8;
(* t2_10 = r_7(D)->n[2]; *)
mov t210  r7_16;
(* t3_11 = r_7(D)->n[3]; *)
mov t311  r7_24;
(* t4_12 = r_7(D)->n[4]; *)
mov t412  r7_32;
(* x_13 = t4_12 >> 48; *)
(* NOTE: merge with t4_14 = t4_12 & 281474976710655; *)
usplit x13 t414 t412 48;
(* t4_14 = t4_12 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t414 t412 48; *)
(* _1 = x_13 * 4294968273; *)
umul v1 x13 0x1000003d1@uint64;
(* t0_15 = _1 + t0_8; *)
uadd t015 v1 t08;
(* _2 = t0_15 >> 52; *)
(* NOTE: merge with t0_17 = t0_15 & 4503599627370495; *)
usplit v2 t017 t015 52;
(* t1_16 = _2 + t1_9; *)
uadd t116 v2 t19;
(* t0_17 = t0_15 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t017 t015 52; *)
(* _3 = t1_16 >> 52; *)
(* NOTE: merge with t1_19 = t1_16 & 4503599627370495; *)
usplit v3 t119 t116 52;
(* t2_18 = _3 + t2_10; *)
uadd t218 v3 t210;
(* t1_19 = t1_16 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t119 t116 52; *)
(* _4 = t2_18 >> 52; *)
(* NOTE: merge with t2_21 = t2_18 & 4503599627370495; *)
usplit v4 t221 t218 52;
(* t3_20 = _4 + t3_11; *)
uadd t320 v4 t311;
(* t2_21 = t2_18 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t221 t218 52; *)
(* _5 = t3_20 >> 52; *)
(* NOTE: merge with t3_23 = t3_20 & 4503599627370495; *)
usplit v5 t323 t320 52;
(* t4_22 = _5 + t4_14; *)
uadd t422 v5 t414;
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t323 t320 52; *)
(* r_7(D)->n[0] = t0_17; *)
mov r7_0 t017;
(* r_7(D)->n[1] = t1_19; *)
mov r7_8 t119;
(* r_7(D)->n[2] = t2_21; *)
mov r7_16 t221;
(* r_7(D)->n[3] = t3_23; *)
mov r7_24 t323;
(* r_7(D)->n[4] = t4_22; *)
mov r7_32 t422;
(* return; *)


(* Start with unused lhs *)
mov c0 r7_0@uint64;
mov c1 r7_8@uint64;
mov c2 r7_16@uint64;
mov c3 r7_24@uint64;
mov c4 r7_32@uint64;
(* End with unsed lhs *)


{
  eqmod (limbs 52 [c0, c1, c2, c3, c4])
          (limbs 52 [a0, a1, a2, a3, a4])
          (limbs 52 [p0, p1, p2, p3, p4])
&&
  and [
    eqmod (limbs 52 [c0, c1, c2, c3, c4])
          (limbs 52 [a0, a1, a2, a3, a4])
          (limbs 52 [p0, p1, p2, p3, p4]),
    c0 <u (2**52)@64, c1 <u (2**52)@64, c2 <u (2**52)@64, c3 <u (2**52)@64,
    c4 <u (2**52)@64
  ]
}

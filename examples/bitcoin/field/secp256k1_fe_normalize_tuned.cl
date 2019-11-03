(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_tuned.cl
Verification result:                    [OK]            444.826836 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_tuned.cl"
        User time (seconds): 444.78
        System time (seconds): 0.40
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 7:24.90
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 176108
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 126562
        Voluntary context switches: 869
        Involuntary context switches: 37474
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
Verification result:                    [OK]            79.104980 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_tuned.cl"
        User time (seconds): 79.10
        System time (seconds): 0.34
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 1:19.18
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 41300
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 143874
        Voluntary context switches: 869
        Involuntary context switches: 6679
        Swaps: 0
        File system inputs: 0
        File system outputs: 616
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
===== Verification =====
Arguments: -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_fe_normalize_tuned.cl
Verification result:                    [OK]            122.704277 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver stp -isafety -slicing ./secp256k1_fe_normalize_tuned.cl"
        User time (seconds): 122.59
        System time (seconds): 0.26
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 2:02.79
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 70828
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 80927
        Voluntary context switches: 851
        Involuntary context switches: 10676
        Swaps: 0
        File system inputs: 0
        File system outputs: 616
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_normalize_tuned.cl
Verification result:                    [OK]            841.290773 seconds
      841.37 real       769.10 user         7.05 sys
 151363584  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    204737  page reclaims
         5  page faults
         0  swaps
         0  block input operations
        23  block output operations
         0  messages sent
         0  messages received
       224  signals received
       415  voluntary context switches
    934269  involuntary context switches
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -isafety -slicing secp256k1_fe_normalize_tuned.cl
Verification result:                    [OK]            147.911290 seconds
      148.01 real       142.18 user         2.06 sys
  46137344  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    303637  page reclaims
       211  page faults
         0  swaps
         0  block input operations
        24  block output operations
         0  messages sent
         0  messages received
       221  signals received
       397  voluntary context switches
    140459  involuntary context switches
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
mov r19_0@uint64 a0;
mov r19_8@uint64 a1;
mov r19_16@uint64 a2;
mov r19_24@uint64 a3;
mov r19_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_20 = r_19(D)->n[0]; *)
mov t020  r19_0;
(* t1_21 = r_19(D)->n[1]; *)
mov t121  r19_8;
(* t2_22 = r_19(D)->n[2]; *)
mov t222  r19_16;
(* t3_23 = r_19(D)->n[3]; *)
mov t323  r19_24;
(* t4_24 = r_19(D)->n[4]; *)
mov t424  r19_32;
(* x_25 = t4_24 >> 48; *)
(* NOTE: merge with t4_26 = t4_24 & 281474976710655 *)
usplit x25 t426 t424 48;
(* t4_26 = t4_24 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t426 t424 48; *)
(* _1 = x_25 * 4294968273; *)
umul v1 x25 0x1000003d1@uint64;
(* t0_27 = _1 + t0_20; *)
uadd t027 v1 t020;
(* _2 = t0_27 >> 52; *)
(* NOTE: merge with t0_29 = t0_27 & 4503599627370495 *)
usplit v2 t029 t027 52;
(* t1_28 = _2 + t1_21; *)
uadd t128 v2 t121;
(* t0_29 = t0_27 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t029 t027 52; *)
(* _3 = t1_28 >> 52; *)
(* NOTE: merge with t1_31 = t1_28 & 4503599627370495 *)
usplit v3 t131 t128 52;
(* t2_30 = _3 + t2_22; *)
uadd t230 v3 t222;
(* t1_31 = t1_28 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t131 t128 52; *)
(* _4 = t2_30 >> 52; *)
(* NOTE: merge with t2_33 = t2_30 & 4503599627370495 *)
usplit v4 t233 t230 52;
(* t3_32 = _4 + t3_23; *)
uadd t332 v4 t323;
(* t2_33 = t2_30 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t233 t230 52; *)
(* m_34 = t1_31 & t2_33; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 m34 t131 t233;
(* _5 = t3_32 >> 52; *)
(* NOTE: merge with t3_36 = t3_32 & 4503599627370495; *)
usplit v5 t336 t332 52;
(* t4_35 = _5 + t4_26; *)
uadd t435 v5 t426;
(* t3_36 = t3_32 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t336 t332 52; *)
(* m_37 = m_34 & t3_36; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 m37 m34 t336;
(* _7 = t4_35 >> 48; *)
usplit v7 tmp_to_use t435 48;
(* _8 = t4_35 == 281474976710655; *)
subb lt_value dontcare t435 0xffffffffffff@uint64;
subb gt_value dontcare 0xffffffffffff@uint64 t435;
or bit v8 lt_value gt_value;
not bit v8 v8;
(* vpc v8@uint8 v8@uint64; *)
(* _9 = m_37 == 4503599627370495; *)
subb lt_value dontcare m37 0xfffffffffffff@uint64;
subb gt_value dontcare 0xfffffffffffff@uint64 m37;
or bit v9 lt_value gt_value;
not bit v9 v9;
(* vpc v9@uint8 v9@uint64; *)
(* _10 = _8 & _9; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and bit v10 v8 v9;
(* _11 = t0_29 > 4503595332402222; *)
subb v11 dontcare 0xffffefffffc2e@uint64 t029;
(* vpc v11@uint8 v11@uint64; *)
(* _6 = _10 & _11; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and bit v6 v10 v11;
(* _12 = (long unsigned int) _6; *)
vpc v12@uint64 v6@bit;
(* x_38 = _7 | _12; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 x38 v7 v12;
(* _13 = x_38 * 4294968273; *)
umul v13 x38 0x1000003d1@uint64;
(* t0_39 = _13 + t0_29; *)
uadd t039 v13 t029;
(* _14 = t0_39 >> 52; *)
(* NOTE: merge with t0_41 = t0_39 & 4503599627370495 *)
usplit v14 t041 t039 52;
(* t1_40 = _14 + t1_31; *)
uadd t140 v14 t131;
(* t0_41 = t0_39 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t041 t039 52; *)
(* _15 = t1_40 >> 52; *)
(* NOTE: merge with t1_43 = t1_40 & 4503599627370495 *)
usplit v15 t143 t140 52;
(* t2_42 = _15 + t2_33; *)
uadd t242 v15 t233;
(* t1_43 = t1_40 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t143 t140 52; *)
(* _16 = t2_42 >> 52; *)
(* NOTE: merge with t2_45 = t2_42 & 4503599627370495 *)
usplit v16 t245 t242 52;
(* t3_44 = _16 + t3_36; *)
uadd t344 v16 t336;
(* t2_45 = t2_42 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t245 t242 52; *)
(* _17 = t3_44 >> 52; *)
(* NOTE: merge with t3_47 = t3_44 & 4503599627370495 *)
usplit v17 t347 t344 52;
(* t4_46 = _17 + t4_35; *)
uadd t446 v17 t435;
(* t3_47 = t3_44 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
(* usplit tmp_and t347 t344 52; *)
(* t4_48 = t4_46 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
(* TODO: heuristic applied, need check *)
usplit tmp_and t448 t446 48;
(* r_19(D)->n[0] = t0_41; *)
mov r19_0 t041;
(* r_19(D)->n[1] = t1_43; *)
mov r19_8 t143;
(* r_19(D)->n[2] = t2_45; *)
mov r19_16 t245;
(* r_19(D)->n[3] = t3_47; *)
mov r19_24 t347;
(* r_19(D)->n[4] = t4_48; *)
mov r19_32 t448;
(* return; *)


(* Start with unused lhs *)
mov c0 r19_0@uint64;
mov c1 r19_8@uint64;
mov c2 r19_16@uint64;
mov c3 r19_24@uint64;
mov c4 r19_32@uint64;
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

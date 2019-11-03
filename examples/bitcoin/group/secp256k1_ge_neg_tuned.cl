(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_ge_neg_tuned.cl
Verification result:                    [OK]            0.396151 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_ge_neg_tuned.cl"
        User time (seconds): 0.50
        System time (seconds): 0.25
        Percent of CPU this job got: 160%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.47
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 11236
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 65562
        Voluntary context switches: 942
        Involuntary context switches: 60
        Swaps: 0
        File system inputs: 0
        File system outputs: 432
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_ge_neg_tuned.cl
Verification result:                    [OK]            0.837173 seconds
        0.92 real         0.48 user         0.64 sys
   6672384  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    177341  page reclaims
         2  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       246  signals received
       447  voluntary context switches
      2544  involuntary context switches
*)
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


(* Start with undefined rhs *)
mov r3_40@uint64 a0;
mov r3_48@uint64 a1;
mov r3_56@uint64 a2;
mov r3_64@uint64 a3;
mov r3_72@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* *r_3(D) = *a_4(D); *)
(* TODO: skipped, no heuristics ,need self translating *)
(* skip, doing things on r_3 *)

(* t0_22 = MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[0]; *)
mov t022 r3_40;
(* t1_23 = MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[1]; *)
mov t123 r3_48;
(* t2_24 = MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[2]; *)
mov t224 r3_56;
(* t3_25 = MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[3]; *)
mov t325 r3_64;
(* t4_26 = MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[4]; *)
mov t426 r3_72;
(* x_27 = t4_26 >> 48; *)
usplit x27 tmp_to_use t426 48;
(* t4_28 = t4_26 & 281474976710655; *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t428 t426 0xffffffffffff@uint64;

assert true && t428 = tmp_to_use;
assume t428 = tmp_to_use && true;

(* _29 = x_27 * 4294968273; *)
umul v29 x27 0x1000003d1@uint64;
(* t0_30 = t0_22 + _29; *)
uadd t030 t022 v29;
(* _31 = t0_30 >> 52; *)
usplit v31 tmp_to_use t030 52;
(* t1_32 = t1_23 + _31; *)
uadd t132 t123 v31;
(* t0_33 = t0_30 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t033 t030 0xfffffffffffff@uint64;

assert true && t033 = tmp_to_use;
assume t033 = tmp_to_use && true;

(* _34 = t1_32 >> 52; *)
usplit v34 tmp_to_use t132 52;
(* t2_35 = t2_24 + _34; *)
uadd t235 t224 v34;
(* t1_36 = t1_32 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t136 t132 0xfffffffffffff@uint64;

assert true && t136 = tmp_to_use;
assume t136 = tmp_to_use && true;

(* _37 = t2_35 >> 52; *)
usplit v37 tmp_to_use t235 52;
(* t3_38 = t3_25 + _37; *)
uadd t338 t325 v37;
(* t2_39 = t2_35 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t239 t235 0xfffffffffffff@uint64;

assert true && t239 = tmp_to_use;
assume t239 = tmp_to_use && true;

(* _40 = t3_38 >> 52; *)
usplit v40 tmp_to_use t338 52;
(* _46 = 1125899906842620 - t4_28; *)
usub v46 0x3fffffffffffc@uint64 t428;
(* t3_42 = t3_38 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t342 t338 0xfffffffffffff@uint64;

assert true && t342 = tmp_to_use;
assume t342 = tmp_to_use && true;

(* _8 = 18014381329608892 - t0_33; *)
usub v8 0x3ffffbfffff0bc@uint64 t033;
(* MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[0] = _8; *)
mov r3_40 v8;
(* _10 = 18014398509481980 - t1_36; *)
usub v10 0x3ffffffffffffc@uint64 t136;
(* MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[1] = _10; *)
mov r3_48 v10;
(* _12 = 18014398509481980 - t2_39; *)
usub v12 0x3ffffffffffffc@uint64 t239;
(* MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[2] = _12; *)
mov r3_56 v12;
(* _14 = 18014398509481980 - t3_42; *)
usub v14 0x3ffffffffffffc@uint64 t342;
(* MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[3] = _14; *)
mov r3_64 v14;
(* _16 = _46 - _40; *)
usub v16 v46 v40;
(* MEM[(struct secp256k1_fe * )r_3(D) + 40B].n[4] = _16; *)
mov r3_72 v16;
(* return; *)


(* Start with unused lhs *)
mov c0 r3_40@uint64;
mov c1 r3_48@uint64;
mov c2 r3_56@uint64;
mov c3 r3_64@uint64;
mov c4 r3_72@uint64;
(* End with unsed lhs *)


{
  (
      limbs 52 [c0, c1, c2, c3, c4]
  )
  =
  (
      0
      -
      limbs 52 [a0, a1, a2, a3, a4]
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  true
}

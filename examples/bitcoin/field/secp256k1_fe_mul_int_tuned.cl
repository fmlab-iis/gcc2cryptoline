(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_mul_int_tuned.cl
Verification result:                    [OK]            0.199742 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_mul_int_tuned.cl"
        User time (seconds): 0.46
        System time (seconds): 0.15
        Percent of CPU this job got: 218%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.28
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 28000
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 63655
        Voluntary context switches: 450
        Involuntary context switches: 54
        Swaps: 0
        File system inputs: 0
        File system outputs: 208
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_mul_int_tuned.cl
Verification result:			[OK]		0.565387 seconds
        0.66 real         0.94 user         0.41 sys
  26013696  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    106498  page reclaims
         2  page faults
         0  swaps
         0  block input operations
        19  block output operations
         0  messages sent
         0  messages received
       107  signals received
       215  voluntary context switches
      3006  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, int32 a14) = 
{
  true
  &&
  and
  [
    a0 < (2**53)@64,
    a1 < (2**53)@64,
    a2 < (2**53)@64,
    a3 < (2**53)@64,
    a4 < (2**49)@64,
    a14 < (9)@32
  ]
}

(* Start with undefined rhs *)
(* mov a14@int32 _; *)
mov r13_0@uint64 a0;
mov r13_8@uint64 a1;
mov r13_16@uint64 a2;
mov r13_24@uint64 a3;
mov r13_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = r_13(D)->n[0]; *)
mov v1  r13_0;
(* _2 = (long unsigned int) a_14(D); *)
(* modified : cast -> vpc *)
(* cast v2@uint64 a14@int32; *)
vpc v2@uint64 a14@int32;
(* _3 = _1 * _2; *)
umul v3 v1 v2;
(* r_13(D)->n[0] = _3; *)
mov r13_0 v3;
(* _4 = r_13(D)->n[1]; *)
mov v4  r13_8;
(* _5 = _2 * _4; *)
umul v5 v2 v4;
(* r_13(D)->n[1] = _5; *)
mov r13_8 v5;
(* _6 = r_13(D)->n[2]; *)
mov v6  r13_16;
(* _7 = _2 * _6; *)
umul v7 v2 v6;
(* r_13(D)->n[2] = _7; *)
mov r13_16 v7;
(* _8 = r_13(D)->n[3]; *)
mov v8  r13_24;
(* _9 = _2 * _8; *)
umul v9 v2 v8;
(* r_13(D)->n[3] = _9; *)
mov r13_24 v9;
(* _10 = r_13(D)->n[4]; *)
mov v10  r13_32;
(* _11 = _2 * _10; *)
umul v11 v2 v10;
(* r_13(D)->n[4] = _11; *)
mov r13_32 v11;
(* return; *)


(* Start with unused lhs *)
mov c0 r13_0@uint64;
mov c1 r13_8@uint64;
mov c2 r13_16@uint64;
mov c3 r13_24@uint64;
mov c4 r13_32@uint64;
(* End with unsed lhs *)


{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      (limbs 52 [a0, a1, a2, a3, a4])
      *
      (a14)
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  true
}


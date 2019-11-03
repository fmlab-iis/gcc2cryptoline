(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_negate_tuned.cl
Verification result:                    [OK]            0.264617 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_negate_tuned.cl"
        User time (seconds): 0.31
        System time (seconds): 0.19
        Percent of CPU this job got: 146%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.34
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 9984
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 43305
        Voluntary context switches: 667
        Involuntary context switches: 61
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_negate_tuned.cl
Verification result:			[OK]		0.564045 seconds
        0.66 real         0.30 user         0.43 sys
   6078464  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    119935  page reclaims
         2  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       165  signals received
       310  voluntary context switches
      2221  involuntary context switches
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
    a4 < (2**49)@64
  ]
}



(* Start with undefined rhs *)
mov a18_0@uint64 a0;
mov a18_8@uint64 a1;
mov a18_16@uint64 a2;
mov a18_24@uint64 a3;
mov a18_32@uint64 a4;
(* mov m16@int32 _; *)
(* End with undefined rhs *)

mov m16 1@int32;


(* BB's index is 2 *)

(* _1 = m_16(D) + 1; *)
sadd v1 m16 0x1@int32;
(* _2 = (long long unsigned int) _1; *)
(* modified cast -> vpc *)
(* cast v2@uint64 v1@int32; *)
vpc v2@uint64 v1@int32;
(* _3 = _2 * 9007190664804446; *)
umul v3 v2 0x1ffffdfffff85e@uint64;
(* _4 = a_18(D)->n[0]; *)
mov v4  a18_0;
(* _5 = _3 - _4; *)
usub v5 v3 v4;
(* r_19(D)->n[0] = _5; *)
mov r19_0 v5;
(* _6 = _2 * 9007199254740990; *)
umul v6 v2 0x1ffffffffffffe@uint64;
(* _7 = a_18(D)->n[1]; *)
mov v7  a18_8;
(* _8 = _6 - _7; *)
usub v8 v6 v7;
(* r_19(D)->n[1] = _8; *)
mov r19_8 v8;
(* _9 = a_18(D)->n[2]; *)
mov v9  a18_16;
(* _10 = _6 - _9; *)
usub v10 v6 v9;
(* r_19(D)->n[2] = _10; *)
mov r19_16 v10;
(* _11 = a_18(D)->n[3]; *)
mov v11  a18_24;
(* _12 = _6 - _11; *)
usub v12 v6 v11;
(* r_19(D)->n[3] = _12; *)
mov r19_24 v12;
(* _13 = _2 * 562949953421310; *)
umul v13 v2 0x1fffffffffffe@uint64;
(* _14 = a_18(D)->n[4]; *)
mov v14  a18_32;
(* _15 = _13 - _14; *)
usub v15 v13 v14;
(* r_19(D)->n[4] = _15; *)
mov r19_32 v15;
(* return; *)


(* Start with unused lhs *)
mov c0 r19_0@uint64;
mov c1 r19_8@uint64;
mov c2 r19_16@uint64;
mov c3 r19_24@uint64;
mov c4 r19_32@uint64;
(* End with unsed lhs *)

{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      (0)
      -
      (limbs 52 [a0, a1, a2, a3, a4])
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  true
}


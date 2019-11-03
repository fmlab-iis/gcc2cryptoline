(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_add_tuned.cl
Verification result:                    [OK]            0.149151 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_add_tuned.cl"
        User time (seconds): 0.19
        System time (seconds): 0.10
        Percent of CPU this job got: 131%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.22
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10036
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 25751
        Voluntary context switches: 401
        Involuntary context switches: 31
        Swaps: 0
        File system inputs: 0
        File system outputs: 192
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_add_tuned.cl
Verification result:			[OK]		0.326234 seconds
        0.45 real         0.19 user         0.28 sys
   5386240  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     69561  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
        92  signals received
       189  voluntary context switches
      1807  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) = 
{
  true
  &&
  and
  [
    a0 < (2**63)@64,
    a1 < (2**63)@64,
    a2 < (2**63)@64,
    a3 < (2**63)@64,
    a4 < (2**49)@64,
    b0 < (2**63)@64,
    b1 < (2**63)@64,
    b2 < (2**63)@64,
    b3 < (2**63)@64,
    b4 < (2**49)@64
  ]
}


(* Start with undefined rhs *)
mov a18_0@uint64 a0;
mov a18_8@uint64 a1;
mov a18_16@uint64 a2;
mov a18_24@uint64 a3;
mov a18_32@uint64 a4;
mov r17_0@uint64 b0;
mov r17_8@uint64 b1;
mov r17_16@uint64 b2;
mov r17_24@uint64 b3;
mov r17_32@uint64 b4;
(* End with undefined rhs *)


(* BB's index is 2 *)

(* vect__1420_24 = MEM[(long unsigned int * )r_17(D)]; *)
mov vect__142024_0 r17_0;
mov vect__142024_1 r17_8;
(* vect__1421_27 = MEM[(long unsigned int * )r_17(D) + 16B]; *)
mov vect__142127_0 r17_16;
mov vect__142127_1 r17_24;
(* vect__2424_30 = MEM[(long unsigned int * )a_18(D)]; *)
mov vect__242430_0 a18_0;
mov vect__242430_1 a18_8;
(* vect__2425_32 = MEM[(long unsigned int * )a_18(D) + 16B]; *)
mov vect__242532_0 a18_16;
mov vect__242532_1 a18_24;
(* vect__3426_34 = vect__1420_24 + vect__2424_30; *)
uadd vect__342634_0 vect__142024_0 vect__242430_0;
uadd vect__342634_1 vect__142024_1 vect__242430_1;
(* vect__3426_35 = vect__1421_27 + vect__2425_32; *)
uadd vect__342635_0 vect__142127_0 vect__242532_0;
uadd vect__342635_1 vect__142127_1 vect__242532_1;
(* MEM[(long unsigned int * )r_17(D)] = vect__3426_34; *)
mov r17_0 vect__342634_0;
mov r17_8 vect__342634_1;
(* MEM[(long unsigned int * )r_17(D) + 16B] = vect__3426_35; *)
mov r17_16 vect__342635_0;
mov r17_24 vect__342635_1;
(* _13 = r_17(D)->n[4]; *)
mov v13  r17_32;
(* _14 = a_18(D)->n[4]; *)
mov v14  a18_32;
(* _15 = _13 + _14; *)
uadd v15 v13 v14;
(* r_17(D)->n[4] = _15; *)
mov r17_32 v15;
(* return; *)


(* Start with unused lhs *)
mov c0 r17_0@uint64;
mov c1 r17_8@uint64;
mov c2 r17_16@uint64;
mov c3 r17_24@uint64;
mov c4 r17_32@uint64;
(* End with unsed lhs *)


{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      (limbs 52 [a0, a1, a2, a3, a4])
      +
      (limbs 52 [b0, b1, b2, b3, b4])
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  true
}

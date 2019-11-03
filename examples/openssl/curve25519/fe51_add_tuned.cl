(* @frege
===== Verification =====
Arguments: -v -jobs 24 -qfbv_solver mathsat -isafety -slicing ./fe51_add_tuned.cl
Parsing Cryptoline file:                [OK]            0.000411 seconds
Checking well-formedness:               [OK]            0.000114 seconds
Transforming to SSA form:               [OK]            0.000052 seconds
Rewriting assignments:                  [OK]            0.000054 seconds
Verifying program safety:
Overall                        [OK]            0.094140 seconds
Verifying range specification:          [OK]            0.032689 seconds
Rewriting value-preserved casting:      [OK]            0.000004 seconds
Verifying algebraic specification:      [OK]            0.025807 seconds
Verification result:                    [OK]            0.153535 seconds
        Command being timed: "verify -v -jobs 24 -qfbv_solver mathsat -isafety -slicing ./fe51_add_tuned.cl"
        User time (seconds): 0.20
        System time (seconds): 0.09
        Percent of CPU this job got: 134%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.22
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10032
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 25950
        Voluntary context switches: 401
        Involuntary context switches: 35
        Swaps: 0
        File system inputs: 0
        File system outputs: 200
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./fe51_add_tuned.cl
Verification result:			[OK]		0.666863 seconds
        0.78 real         0.37 user         0.53 sys
   6209536  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    144381  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       192  signals received
       366  voluntary context switches
      2715  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) = 
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64,
    b0 <u (2**51+2**15)@64,
    b1 <u (2**51+2**15)@64,
    b2 <u (2**51+2**15)@64,
    b3 <u (2**51+2**15)@64,
    b4 <u (2**51+2**15)@64
  ]
}

(* Start with undefined rhs *)
mov f17_0@uint64 a0;
mov f17_8@uint64 a1;
mov f17_16@uint64 a2;
mov f17_24@uint64 a3;
mov f17_32@uint64 a4;
mov g18_0@uint64 b0;
mov g18_8@uint64 b1;
mov g18_16@uint64 b2;
mov g18_24@uint64 b3;
mov g18_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *f_17(D); *)
mov v1 f17_0;
(* _2 = *g_18(D); *)
mov v2 g18_0;
(* _3 = _1 + _2; *)
uadd v3 v1 v2;
(* *h_19(D) = _3; *)
mov h19_0 v3;
(* _4 = MEM[(const uint64_t * )f_17(D) + 8B]; *)
mov v4 f17_8;
(* _5 = MEM[(const uint64_t * )g_18(D) + 8B]; *)
mov v5 g18_8;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(uint64_t * )h_19(D) + 8B] = _6; *)
mov h19_8 v6;
(* _7 = MEM[(const uint64_t * )f_17(D) + 16B]; *)
mov v7 f17_16;
(* _8 = MEM[(const uint64_t * )g_18(D) + 16B]; *)
mov v8 g18_16;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(uint64_t * )h_19(D) + 16B] = _9; *)
mov h19_16 v9;
(* _10 = MEM[(const uint64_t * )f_17(D) + 24B]; *)
mov v10 f17_24;
(* _11 = MEM[(const uint64_t * )g_18(D) + 24B]; *)
mov v11 g18_24;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(uint64_t * )h_19(D) + 24B] = _12; *)
mov h19_24 v12;
(* _13 = MEM[(const uint64_t * )f_17(D) + 32B]; *)
mov v13 f17_32;
(* _14 = MEM[(const uint64_t * )g_18(D) + 32B]; *)
mov v14 g18_32;
(* _15 = _13 + _14; *)
uadd v15 v13 v14;
(* MEM[(uint64_t * )h_19(D) + 32B] = _15; *)
mov h19_32 v15;
(* return; *)


(* Start with unused lhs *)
mov c0 h19_0@uint64;
mov c1 h19_8@uint64;
mov c2 h19_16@uint64;
mov c3 h19_24@uint64;
mov c4 h19_32@uint64;
(* End with unsed lhs *)


{
   (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      +
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
  and [
    c0 <u (2**53)@64,
    c1 <u (2**53)@64,
    c2 <u (2**53)@64,
    c3 <u (2**53)@64,
    c4 <u (2**53)@64
  ]
}

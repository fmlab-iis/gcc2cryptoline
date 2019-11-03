(* @frege
===== Verification =====
Arguments: -v -jobs 24 -qfbv_solver mathsat -isafety -slicing ./fe51_sub_tuned.cl
Parsing Cryptoline file:                [OK]            0.000464 seconds
Checking well-formedness:               [OK]            0.000157 seconds
Transforming to SSA form:               [OK]            0.000066 seconds
Rewriting assignments:                  [OK]            0.000096 seconds
Verifying program safety:
         Round 1 (0 safety conditions, timeout = 300 seconds)
         Overall                        [OK]            0.000066 seconds
Verifying range assertions:             [OK]            0.100313 seconds
Verifying range specification:          [OK]            0.032267 seconds
Rewriting value-preserved casting:      [OK]            0.000003 seconds
Verifying algebraic assertions:         [OK]            0.002679 seconds
Verifying algebraic specification:      [OK]            0.049322 seconds
Verification result:                    [OK]            0.185722 seconds
        Command being timed: "verify -v -jobs 24 -qfbv_solver mathsat -isafety -slicing ./fe51_sub_tuned.cl"
        User time (seconds): 0.24
        System time (seconds): 0.11
        Percent of CPU this job got: 131%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.26
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 11408
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 31066
        Voluntary context switches: 460
        Involuntary context switches: 41
        Swaps: 0
        File system inputs: 0
        File system outputs: 232
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./fe51_sub_tuned.cl
Verification result:			[OK]		0.368272 seconds
        0.49 real         0.23 user         0.31 sys
   6959104  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     83279  page reclaims
        19  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       113  signals received
       215  voluntary context switches
      1584  involuntary context switches
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
mov f22_0@uint64 a0;
mov f22_8@uint64 a1;
mov f22_16@uint64 a2;
mov f22_24@uint64 a3;
mov f22_32@uint64 a4;
mov g23_0@uint64 b0;
mov g23_8@uint64 b1;
mov g23_16@uint64 b2;
mov g23_24@uint64 b3;
mov g23_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *f_22(D); *)
mov v1 f22_0;
(* _2 = *g_23(D); *)
mov v2 g23_0;
(* _3 = _1 - _2; *)
usubb carry v3 v1 v2;
(* _4 = _3 + 4503599627370458; *)
uadds carry1 v4 v3 0xfffffffffffda@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* *h_24(D) = _4; *)
mov h24_0 v4;
(* _5 = MEM[(const uint64_t * )f_22(D) + 8B]; *)
mov v5 f22_8;
(* _6 = MEM[(const uint64_t * )g_23(D) + 8B]; *)
mov v6 g23_8;
(* _7 = _5 - _6; *)
usubb carry v7 v5 v6;
(* _8 = _7 + 4503599627370494; *)
uadds carry1 v8 v7 0xffffffffffffe@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint64_t * )h_24(D) + 8B] = _8; *)
mov h24_8 v8;
(* _9 = MEM[(const uint64_t * )f_22(D) + 16B]; *)
mov v9 f22_16;
(* _10 = MEM[(const uint64_t * )g_23(D) + 16B]; *)
mov v10 g23_16;
(* _11 = _9 - _10; *)
usubb carry v11 v9 v10;
(* _12 = _11 + 4503599627370494; *)
uadds carry1 v12 v11 0xffffffffffffe@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint64_t * )h_24(D) + 16B] = _12; *)
mov h24_16 v12;
(* _13 = MEM[(const uint64_t * )f_22(D) + 24B]; *)
mov v13 f22_24;
(* _14 = MEM[(const uint64_t * )g_23(D) + 24B]; *)
mov v14 g23_24;
(* _15 = _13 - _14; *)
usubb carry v15 v13 v14;
(* _16 = _15 + 4503599627370494; *)
uadds carry1 v16 v15 0xffffffffffffe@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint64_t * )h_24(D) + 24B] = _16; *)
mov h24_24 v16;
(* _17 = MEM[(const uint64_t * )f_22(D) + 32B]; *)
mov v17 f22_32;
(* _18 = MEM[(const uint64_t * )g_23(D) + 32B]; *)
mov v18 g23_32;
(* _19 = _17 - _18; *)
usubb carry v19 v17 v18;
(* _20 = _19 + 4503599627370494; *)
uadds carry1 v20 v19 0xffffffffffffe@uint64;

assert true && carry = carry1;
assume carry = carry1 && true;

(* MEM[(uint64_t * )h_24(D) + 32B] = _20; *)
mov h24_32 v20;
(* return; *)


(* Start with unused lhs *)
mov c0 h24_0@uint64;
mov c1 h24_8@uint64;
mov c2 h24_16@uint64;
mov c3 h24_24@uint64;
mov c4 h24_32@uint64;
(* End with unsed lhs *)


{
   (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      -
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
  true
}

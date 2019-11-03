(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_add_tuned.cl
Verification result:                    [OK]            0.160204 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_add_tuned.cl"
        User time (seconds): 0.20
        System time (seconds): 0.10
        Percent of CPU this job got: 132%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.23
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10044
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 25594
        Voluntary context switches: 403
        Involuntary context switches: 35
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fe_add_tuned.cl
Verification result:			[OK]		0.314343 seconds
        0.48 real         0.18 user         0.27 sys
   5423104  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     69096  page reclaims
       455  page faults
         0  swaps
         7  block input operations
         9  block output operations
         0  messages sent
         0  messages received
        95  signals received
       213  voluntary context switches
      1569  involuntary context switches
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
mov f2_0@uint64 a0;
mov f2_8@uint64 a1;
mov f2_16@uint64 a2;
mov f2_24@uint64 a3;
mov f2_32@uint64 a4;
mov g1_0@uint64 b0;
mov g1_8@uint64 b1;
mov g1_16@uint64 b2;
mov g1_24@uint64 b3;
mov g1_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* x10_5 = MEM[(const uint64_t * )f_2(D) + 32B]; *)
mov x105 f2_32;
(* vect_x5_9.578_25 = MEM[(const uint64_t * )f_2(D)]; *)
mov vect_x5_957825_0 f2_0;
mov vect_x5_957825_1 f2_8;
(* vect_x5_9.579_28 = MEM[(const uint64_t * )f_2(D) + 16B]; *)
mov vect_x5_957928_0 f2_16;
mov vect_x5_957928_1 f2_24;
(* x18_10 = MEM[(const uint64_t * )g_1(D) + 32B]; *)
mov x1810 g1_32;
(* vect_x13_14.582_31 = MEM[(const uint64_t * )g_1(D)]; *)
mov vect_x13_1458231_0 g1_0;
mov vect_x13_1458231_1 g1_8;
(* vect_x13_14.583_33 = MEM[(const uint64_t * )g_1(D) + 16B]; *)
mov vect_x13_1458333_0 g1_16;
mov vect_x13_1458333_1 g1_24;
(* vect__15.584_35 = vect_x5_9.578_25 + vect_x13_14.582_31; *)
uadd vect__1558435_0 vect_x5_957825_0 vect_x13_1458231_0;
uadd vect__1558435_1 vect_x5_957825_1 vect_x13_1458231_1;
(* vect__15.584_36 = vect_x5_9.579_28 + vect_x13_14.583_33; *)
uadd vect__1558436_0 vect_x5_957928_0 vect_x13_1458333_0;
uadd vect__1558436_1 vect_x5_957928_1 vect_x13_1458333_1;
(* MEM[(uint64_t * )h_3(D)] = vect__15.584_35; *)
mov h3_0 vect__1558435_0;
mov h3_8 vect__1558435_1;
(* MEM[(uint64_t * )h_3(D) + 16B] = vect__15.584_36; *)
mov h3_16 vect__1558436_0;
mov h3_24 vect__1558436_1;
(* _19 = x10_5 + x18_10; *)
uadd v19 x105 x1810;
(* MEM[(uint64_t * )h_3(D) + 32B] = _19; *)
mov h3_32 v19;
(* return; *)


(* Start with unused lhs *)
mov c0 h3_0@uint64;
mov c1 h3_8@uint64;
mov c2 h3_16@uint64;
mov c3 h3_24@uint64;
mov c4 h3_32@uint64;
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
  true
}

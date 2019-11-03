(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_sub_tuned.cl
Verification result:                    [OK]            0.269357 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_sub_tuned.cl"
        User time (seconds): 0.36
        System time (seconds): 0.15
        Percent of CPU this job got: 150%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.34
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10412
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 44121
        Voluntary context switches: 655
        Involuntary context switches: 67
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
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fe_sub_tuned.cl
Verification result:			[OK]		0.575967 seconds
        0.68 real         0.32 user         0.44 sys
   6180864  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    120851  page reclaims
         1  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       164  signals received
       316  voluntary context switches
      1667  involuntary context switches
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
(* vect_x5_9.589_30 = MEM[(const uint64_t * )f_2(D)]; *)
mov vect_x5_958930_0 f2_0;
mov vect_x5_958930_1 f2_8;
(* vect_x5_9.590_33 = MEM[(const uint64_t * )f_2(D) + 16B]; *)
mov vect_x5_959033_0 f2_16;
mov vect_x5_959033_1 f2_24;
(* x18_10 = MEM[(const uint64_t * )g_1(D) + 32B]; *)
mov x1810 g1_32;
(* vect_x13_14.594_40 = MEM[(const uint64_t * )g_1(D)]; *)
mov vect_x13_1459440_0 g1_0;
mov vect_x13_1459440_1 g1_8;
(* vect_x13_14.595_42 = MEM[(const uint64_t * )g_1(D) + 16B]; *)
mov vect_x13_1459542_0 g1_16;
mov vect_x13_1459542_1 g1_24;
(* vect__39.591_19 = vect_x5_9.589_30 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__3959119_0 vect_x5_958930_0 0xfffffffffffda@uint64;
uadd vect__3959119_1 vect_x5_958930_1 0xffffffffffffe@uint64;
(* vect__39.591_21 = vect_x5_9.590_33 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__3959121_0 vect_x5_959033_0 0xffffffffffffe@uint64;
uadd vect__3959121_1 vect_x5_959033_1 0xffffffffffffe@uint64;
(* vect__16.596_44 = vect__39.591_19 - vect_x13_14.594_40; *)
usub vect__1659644_0 vect__3959119_0 vect_x13_1459440_0;
usub vect__1659644_1 vect__3959119_1 vect_x13_1459440_1;
(* vect__16.596_45 = vect__39.591_21 - vect_x13_14.595_42; *)
usub vect__1659645_0 vect__3959121_0 vect_x13_1459542_0;
usub vect__1659645_1 vect__3959121_1 vect_x13_1459542_1;
(* MEM[(uint64_t * )h_3(D)] = vect__16.596_44; *)
mov h3_0 vect__1659644_0;
mov h3_8 vect__1659644_1;
(* MEM[(uint64_t * )h_3(D) + 16B] = vect__16.596_45; *)
mov h3_16 vect__1659645_0;
mov h3_24 vect__1659645_1;
(* _35 = x10_5 + 4503599627370494; *)
uadd v35 x105 0xffffffffffffe@uint64;
(* _24 = _35 - x18_10; *)
usub v24 v35 x1810;
(* MEM[(uint64_t * )h_3(D) + 32B] = _24; *)
mov h3_32 v24;
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
      -
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
  true
}

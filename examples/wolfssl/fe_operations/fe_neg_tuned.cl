(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver boolector -qfbv_args "-SE lingeling" -btor -isafety -slicing -isafety_timeout 99999999 ./fe_neg_tuned.cl
Verification result:			[OK]		0.568564 seconds
	Command being timed: "verify -jobs 24 -qfbv_solver boolector -qfbv_args -SE lingeling -btor -isafety -slicing -isafety_timeout 99999999 ./fe_neg_tuned.cl"
	User time (seconds): 0.56
	System time (seconds): 0.32
	Percent of CPU this job got: 134%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.66
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 9312
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 71757
	Voluntary context switches: 1407
	Involuntary context switches: 129
	Swaps: 0
	File system inputs: 0
	File system outputs: 656
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -qfbv_args "-SE lingeling" -btor -isafety -slicing -isafety_timeout 99999999 ./fe_neg_tuned.cl
Verification result:			[OK]		1.286401 seconds
        1.42 real         0.66 user         1.00 sys
   6582272  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    244360  page reclaims
         6  page faults
         0  swaps
         0  block input operations
        12  block output operations
         0  messages sent
         0  messages received
       364  signals received
       675  voluntary context switches
      3196  involuntary context switches
*)
(*
h = -f

Preconditions:
   |f| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.

Postconditions:
   |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.

1.1*2^25 = 36909875
1.1*2^24 = 18454937

*)

proc main (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9) =
{
  true
  &&
  and
  [
    a0 <=s (36909875)@32,
    a0 >=s (-36909875)@32,
    a1 <=s (18454937)@32,
    a1 >=s (-18454937)@32,
    a2 <=s (36909875)@32,
    a2 >=s (-36909875)@32,
    a3 <=s (18454937)@32,
    a3 >=s (-18454937)@32,
    a4 <=s (36909875)@32,
    a4 >=s (-36909875)@32,
    a5 <=s (18454937)@32,
    a5 >=s (-18454937)@32,
    a6 <=s (36909875)@32,
    a6 >=s (-36909875)@32,
    a7 <=s (18454937)@32,
    a7 >=s (-18454937)@32,
    a8 <=s (36909875)@32,
    a8 >=s (-36909875)@32,
    a9 <=s (18454937)@32,
    a9 >=s (-18454937)@32
  ]
}



(* Start with undefined rhs *)
mov f2_0@int32 a0;
mov f2_4@int32 a1;
mov f2_8@int32 a2;
mov f2_12@int32 a3;
mov f2_16@int32 a4;
mov f2_20@int32 a5;
mov f2_24@int32 a6;
mov f2_28@int32 a7;
mov f2_32@int32 a8;
mov f2_36@int32 a9;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f0_3 = *f_2(D); *)
mov f03 f2_0;
(* f1_4 = MEM[(const int32_t * )f_2(D) + 4B]; *)
mov f14 f2_4;
(* f2_5 = MEM[(const int32_t * )f_2(D) + 8B]; *)
mov f25 f2_8;
(* f3_6 = MEM[(const int32_t * )f_2(D) + 12B]; *)
mov f36 f2_12;
(* f4_7 = MEM[(const int32_t * )f_2(D) + 16B]; *)
mov f47 f2_16;
(* f5_8 = MEM[(const int32_t * )f_2(D) + 20B]; *)
mov f58 f2_20;
(* f6_9 = MEM[(const int32_t * )f_2(D) + 24B]; *)
mov f69 f2_24;
(* f7_10 = MEM[(const int32_t * )f_2(D) + 28B]; *)
mov f710 f2_28;
(* f8_11 = MEM[(const int32_t * )f_2(D) + 32B]; *)
mov f811 f2_32;
(* f9_12 = MEM[(const int32_t * )f_2(D) + 36B]; *)
mov f912 f2_36;
(* h0_13 = -f0_3; *)
(* TODO: check negation semantics *)
ssubb carry h013 0@int32 f03;
(* h1_14 = -f1_4; *)
(* TODO: check negation semantics *)
ssubb carry h114 0@int32 f14;
(* h2_15 = -f2_5; *)
(* TODO: check negation semantics *)
ssubb carry h215 0@int32 f25;
(* h3_16 = -f3_6; *)
(* TODO: check negation semantics *)
ssubb carry h316 0@int32 f36;
(* h4_17 = -f4_7; *)
(* TODO: check negation semantics *)
ssubb carry h417 0@int32 f47;
(* h5_18 = -f5_8; *)
(* TODO: check negation semantics *)
ssubb carry h518 0@int32 f58;
(* h6_19 = -f6_9; *)
(* TODO: check negation semantics *)
ssubb carry h619 0@int32 f69;
(* h7_20 = -f7_10; *)
(* TODO: check negation semantics *)
ssubb carry h720 0@int32 f710;
(* h8_21 = -f8_11; *)
(* TODO: check negation semantics *)
ssubb carry h821 0@int32 f811;
(* h9_22 = -f9_12; *)
(* TODO: check negation semantics *)
ssubb carry h922 0@int32 f912;
(* *h_23(D) = h0_13; *)
mov h23_0 h013;
(* MEM[(int32_t * )h_23(D) + 4B] = h1_14; *)
mov h23_4 h114;
(* MEM[(int32_t * )h_23(D) + 8B] = h2_15; *)
mov h23_8 h215;
(* MEM[(int32_t * )h_23(D) + 12B] = h3_16; *)
mov h23_12 h316;
(* MEM[(int32_t * )h_23(D) + 16B] = h4_17; *)
mov h23_16 h417;
(* MEM[(int32_t * )h_23(D) + 20B] = h5_18; *)
mov h23_20 h518;
(* MEM[(int32_t * )h_23(D) + 24B] = h6_19; *)
mov h23_24 h619;
(* MEM[(int32_t * )h_23(D) + 28B] = h7_20; *)
mov h23_28 h720;
(* MEM[(int32_t * )h_23(D) + 32B] = h8_21; *)
mov h23_32 h821;
(* MEM[(int32_t * )h_23(D) + 36B] = h9_22; *)
mov h23_36 h922;
(* return; *)


(* Start with unused lhs *)
mov c0 h23_0@int32;
mov c1 h23_4@int32;
mov c2 h23_8@int32;
mov c3 h23_12@int32;
mov c4 h23_16@int32;
mov c5 h23_20@int32;
mov c6 h23_24@int32;
mov c7 h23_28@int32;
mov c8 h23_32@int32;
mov c9 h23_36@int32;
(* End with unsed lhs *)


{
  (
    c0 +
    c1 * (2**26) +
    c2 * (2**51) +
    c3 * (2**77) +
    c4 * (2**102) +
    c5 * (2**128) +
    c6 * (2**153) +
    c7 * (2**179) +
    c8 * (2**204) +
    c9 * (2**230)
  )
  =
  (
    (0)
    -
    (
      a0 +
      a1 * (2**26) +
      a2 * (2**51) +
      a3 * (2**77) +
      a4 * (2**102) +
      a5 * (2**128) +
      a6 * (2**153) +
      a7 * (2**179) +
      a8 * (2**204) +
      a9 * (2**230)
    )
  )
  (mod (2**255 - 19))
  &&
  and
    [
        c0 <=s (36909875)@32,
        c0 >=s (-36909875)@32,
        c1 <=s (18454937)@32,
        c1 >=s (-18454937)@32,
        c2 <=s (36909875)@32,
        c2 >=s (-36909875)@32,
        c3 <=s (18454937)@32,
        c3 >=s (-18454937)@32,
        c4 <=s (36909875)@32,
        c4 >=s (-36909875)@32,
        c5 <=s (18454937)@32,
        c5 >=s (-18454937)@32,
        c6 <=s (36909875)@32,
        c6 >=s (-36909875)@32,
        c7 <=s (18454937)@32,
        c7 >=s (-18454937)@32,
        c8 <=s (36909875)@32,
        c8 >=s (-36909875)@32,
        c9 <=s (18454937)@32,
        c9 >=s (-18454937)@32
    ]
}

(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver boolector -qfbv_args "-SE lingeling" -btor -isafety -slicing -isafety_timeout 99999999 ./fe_sub_tuned.cl
Verification result:			[OK]		0.591073 seconds
	Command being timed: "verify -jobs 24 -qfbv_solver boolector -qfbv_args -SE lingeling -btor -isafety -slicing -isafety_timeout 99999999 ./fe_sub_tuned.cl"
	User time (seconds): 1.07
	System time (seconds): 0.29
	Percent of CPU this job got: 201%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.68
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 9492
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 72836
	Voluntary context switches: 1404
	Involuntary context switches: 178
	Swaps: 0
	File system inputs: 0
	File system outputs: 648
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -qfbv_args "-SE lingeling" -btor -isafety -slicing -isafety_timeout 99999999 ./fe_sub_tuned.cl
Verification result:			[OK]		1.303676 seconds
        1.43 real         0.99 user         1.00 sys
   6615040  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    245926  page reclaims
         6  page faults
         0  swaps
         0  block input operations
        10  block output operations
         0  messages sent
         0  messages received
       363  signals received
       674  voluntary context switches
      3361  involuntary context switches
*)


(*

/*
h = f - g
Can overlap h with f or g.

Preconditions:
   |f| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
   |g| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.

Postconditions:
   |h| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.
*/


*)

proc main (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9, int32 b0, int32 b1, int32 b2, int32 b3, int32 b4, int32 b5, int32 b6, int32 b7, int32 b8, int32 b9) =
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
    a9 >=s (-18454937)@32,
    b0 <=s (36909875)@32,
    b0 >=s (-36909875)@32,
    b1 <=s (18454937)@32,
    b1 >=s (-18454937)@32,
    b2 <=s (36909875)@32,
    b2 >=s (-36909875)@32,
    b3 <=s (18454937)@32,
    b3 >=s (-18454937)@32,
    b4 <=s (36909875)@32,
    b4 >=s (-36909875)@32,
    b5 <=s (18454937)@32,
    b5 >=s (-18454937)@32,
    b6 <=s (36909875)@32,
    b6 >=s (-36909875)@32,
    b7 <=s (18454937)@32,
    b7 >=s (-18454937)@32,
    b8 <=s (36909875)@32,
    b8 >=s (-36909875)@32,
    b9 <=s (18454937)@32,
    b9 >=s (-18454937)@32
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
mov g13_0@int32 b0;
mov g13_4@int32 b1;
mov g13_8@int32 b2;
mov g13_12@int32 b3;
mov g13_16@int32 b4;
mov g13_20@int32 b5;
mov g13_24@int32 b6;
mov g13_28@int32 b7;
mov g13_32@int32 b8;
mov g13_36@int32 b9;
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
(* g0_14 = *g_13(D); *)
mov g014 g13_0;
(* g1_15 = MEM[(const int32_t * )g_13(D) + 4B]; *)
mov g115 g13_4;
(* g2_16 = MEM[(const int32_t * )g_13(D) + 8B]; *)
mov g216 g13_8;
(* g3_17 = MEM[(const int32_t * )g_13(D) + 12B]; *)
mov g317 g13_12;
(* g4_18 = MEM[(const int32_t * )g_13(D) + 16B]; *)
mov g418 g13_16;
(* g5_19 = MEM[(const int32_t * )g_13(D) + 20B]; *)
mov g519 g13_20;
(* g6_20 = MEM[(const int32_t * )g_13(D) + 24B]; *)
mov g620 g13_24;
(* g7_21 = MEM[(const int32_t * )g_13(D) + 28B]; *)
mov g721 g13_28;
(* g8_22 = MEM[(const int32_t * )g_13(D) + 32B]; *)
mov g822 g13_32;
(* g9_23 = MEM[(const int32_t * )g_13(D) + 36B]; *)
mov g923 g13_36;
(* h0_24 = f0_3 - g0_14; *)
ssub h024 f03 g014;
(* h1_25 = f1_4 - g1_15; *)
ssub h125 f14 g115;
(* h2_26 = f2_5 - g2_16; *)
ssub h226 f25 g216;
(* h3_27 = f3_6 - g3_17; *)
ssub h327 f36 g317;
(* h4_28 = f4_7 - g4_18; *)
ssub h428 f47 g418;
(* h5_29 = f5_8 - g5_19; *)
ssub h529 f58 g519;
(* h6_30 = f6_9 - g6_20; *)
ssub h630 f69 g620;
(* h7_31 = f7_10 - g7_21; *)
ssub h731 f710 g721;
(* h8_32 = f8_11 - g8_22; *)
ssub h832 f811 g822;
(* h9_33 = f9_12 - g9_23; *)
ssub h933 f912 g923;
(* *h_34(D) = h0_24; *)
mov h34_0 h024;
(* MEM[(int32_t * )h_34(D) + 4B] = h1_25; *)
mov h34_4 h125;
(* MEM[(int32_t * )h_34(D) + 8B] = h2_26; *)
mov h34_8 h226;
(* MEM[(int32_t * )h_34(D) + 12B] = h3_27; *)
mov h34_12 h327;
(* MEM[(int32_t * )h_34(D) + 16B] = h4_28; *)
mov h34_16 h428;
(* MEM[(int32_t * )h_34(D) + 20B] = h5_29; *)
mov h34_20 h529;
(* MEM[(int32_t * )h_34(D) + 24B] = h6_30; *)
mov h34_24 h630;
(* MEM[(int32_t * )h_34(D) + 28B] = h7_31; *)
mov h34_28 h731;
(* MEM[(int32_t * )h_34(D) + 32B] = h8_32; *)
mov h34_32 h832;
(* MEM[(int32_t * )h_34(D) + 36B] = h9_33; *)
mov h34_36 h933;
(* return; *)


(* Start with unused lhs *)
mov c0 h34_0@int32;
mov c1 h34_4@int32;
mov c2 h34_8@int32;
mov c3 h34_12@int32;
mov c4 h34_16@int32;
mov c5 h34_20@int32;
mov c6 h34_24@int32;
mov c7 h34_28@int32;
mov c8 h34_32@int32;
mov c9 h34_36@int32;
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
    -
    (
      b0 +
      b1 * (2**26) +
      b2 * (2**51) +
      b3 * (2**77) +
      b4 * (2**102) +
      b5 * (2**128) +
      b6 * (2**153) +
      b7 * (2**179) +
      b8 * (2**204) +
      b9 * (2**230)
    )
  )
  (mod (2**255 - 19))
  &&
  and
  [
    c0 <=s (73819750)@32,
    c0 >=s (-73819750)@32,
    c1 <=s (36909875)@32,
    c1 >=s (-36909875)@32,
    c2 <=s (73819750)@32,
    c2 >=s (-73819750)@32,
    c3 <=s (36909875)@32,
    c3 >=s (-36909875)@32,
    c4 <=s (73819750)@32,
    c4 >=s (-73819750)@32,
    c5 <=s (36909875)@32,
    c5 >=s (-36909875)@32,
    c6 <=s (73819750)@32,
    c6 >=s (-73819750)@32,
    c7 <=s (36909875)@32,
    c7 >=s (-36909875)@32,
    c8 <=s (73819750)@32,
    c8 >=s (-73819750)@32,
    c9 <=s (36909875)@32,
    c9 >=s (-36909875)@32
  ]
}
(* @frege:
         Overall                        [OK]            68949.450399 seconds
Verifying range assertions:             [OK]            3.924229 seconds
Verifying range specification:          [OK]            545.562803 seconds
Rewriting value-preserved casting:      [OK]            0.023125 seconds
Verification result:                    [OK]            69499.207872 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver boolector -btor -isafety -slicing -isafety_timeout 99999999 -v -disable_algebra -re ./curve25519_tuned_with_cuts.cl"
        User time (seconds): 1106233.03
        System time (seconds): 4390.51
        Percent of CPU this job got: 1598%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 19:18:19
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 796696
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 2022455365
        Voluntary context switches: 160426
        Involuntary context switches: 88009928
        Swaps: 0
        File system inputs: 0
        File system outputs: 123512
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @frege without condition3 algebra only
Verification result:			[OK]		8.557462 seconds
	Command being timed: "verify -jobs 24 -qfbv_solver boolector -qfbv_args -SE lingeling -btor -isafety -slicing -isafety_timeout 99999999 -re -v -disable_safety -disable_range ./curve25519_tuned_with_cuts.cl"
	User time (seconds): 7.49
	System time (seconds): 2.21
	Percent of CPU this job got: 112%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:08.66
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 306252
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 603061
	Voluntary context switches: 26458
	Involuntary context switches: 736
	Swaps: 0
	File system inputs: 0
	File system outputs: 202704
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
*)
proc fe_add (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9, int32 b0, int32 b1, int32 b2, int32 b3, int32 b4, int32 b5, int32 b6, int32 b7, int32 b8, int32 b9; int32 c0, int32 c1, int32 c2, int32 c3, int32 c4, int32 c5, int32 c6, int32 c7, int32 c8, int32 c9) =
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
(* h0_24 = f0_3 + g0_14; *)
sadd h024 f03 g014;
(* h1_25 = f1_4 + g1_15; *)
sadd h125 f14 g115;
(* h2_26 = f2_5 + g2_16; *)
sadd h226 f25 g216;
(* h3_27 = f3_6 + g3_17; *)
sadd h327 f36 g317;
(* h4_28 = f4_7 + g4_18; *)
sadd h428 f47 g418;
(* h5_29 = f5_8 + g5_19; *)
sadd h529 f58 g519;
(* h6_30 = f6_9 + g6_20; *)
sadd h630 f69 g620;
(* h7_31 = f7_10 + g7_21; *)
sadd h731 f710 g721;
(* h8_32 = f8_11 + g8_22; *)
sadd h832 f811 g822;
(* h9_33 = f9_12 + g9_23; *)
sadd h933 f912 g923;
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
    +
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

proc fe_sub (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9, int32 b0, int32 b1, int32 b2, int32 b3, int32 b4, int32 b5, int32 b6, int32 b7, int32 b8, int32 b9; int32 c0, int32 c1, int32 c2, int32 c3, int32 c4, int32 c5, int32 c6, int32 c7, int32 c8, int32 c9) =
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

proc fe_mul (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9, int32 b0, int32 b1, int32 b2, int32 b3, int32 b4, int32 b5, int32 b6, int32 b7, int32 b8, int32 b9; int32 c0, int32 c1, int32 c2, int32 c3, int32 c4, int32 c5, int32 c6, int32 c7, int32 c8, int32 c9) =
{
  true
  &&
  and
  [
    a0 <=s (110729625)@32,
    a0 >=s (-110729625)@32,
    a1 <=s (55364812)@32,
    a1 >=s (-55364812)@32,
    a2 <=s (110729625)@32,
    a2 >=s (-110729625)@32,
    a3 <=s (55364812)@32,
    a3 >=s (-55364812)@32,
    a4 <=s (110729625)@32,
    a4 >=s (-110729625)@32,
    a5 <=s (55364812)@32,
    a5 >=s (-55364812)@32,
    a6 <=s (110729625)@32,
    a6 >=s (-110729625)@32,
    a7 <=s (55364812)@32,
    a7 >=s (-55364812)@32,
    a8 <=s (110729625)@32,
    a8 >=s (-110729625)@32,
    a9 <=s (55364812)@32,
    a9 >=s (-55364812)@32,
    b0 <=s (110729625)@32,
    b0 >=s (-110729625)@32,
    b1 <=s (55364812)@32,
    b1 >=s (-55364812)@32,
    b2 <=s (110729625)@32,
    b2 >=s (-110729625)@32,
    b3 <=s (55364812)@32,
    b3 >=s (-55364812)@32,
    b4 <=s (110729625)@32,
    b4 >=s (-110729625)@32,
    b5 <=s (55364812)@32,
    b5 >=s (-55364812)@32,
    b6 <=s (110729625)@32,
    b6 >=s (-110729625)@32,
    b7 <=s (55364812)@32,
    b7 >=s (-55364812)@32,
    b8 <=s (110729625)@32,
    b8 >=s (-110729625)@32,
    b9 <=s (55364812)@32,
    b9 >=s (-55364812)@32
  ]
}


(* Start with undefined rhs *)
mov f151_0@int32 a0;
mov f151_4@int32 a1;
mov f151_8@int32 a2;
mov f151_12@int32 a3;
mov f151_16@int32 a4;
mov f151_20@int32 a5;
mov f151_24@int32 a6;
mov f151_28@int32 a7;
mov f151_32@int32 a8;
mov f151_36@int32 a9;
mov g162_0@int32 b0;
mov g162_4@int32 b1;
mov g162_8@int32 b2;
mov g162_12@int32 b3;
mov g162_16@int32 b4;
mov g162_20@int32 b5;
mov g162_24@int32 b6;
mov g162_28@int32 b7;
mov g162_32@int32 b8;
mov g162_36@int32 b9;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f0_152 = *f_151(D); *)
mov f0152 f151_0;
(* f1_153 = MEM[(const int32_t * )f_151(D) + 4B]; *)
mov f1153 f151_4;
(* f2_154 = MEM[(const int32_t * )f_151(D) + 8B]; *)
mov f2154 f151_8;
(* f3_155 = MEM[(const int32_t * )f_151(D) + 12B]; *)
mov f3155 f151_12;
(* f4_156 = MEM[(const int32_t * )f_151(D) + 16B]; *)
mov f4156 f151_16;
(* f5_157 = MEM[(const int32_t * )f_151(D) + 20B]; *)
mov f5157 f151_20;
(* f6_158 = MEM[(const int32_t * )f_151(D) + 24B]; *)
mov f6158 f151_24;
(* f7_159 = MEM[(const int32_t * )f_151(D) + 28B]; *)
mov f7159 f151_28;
(* f8_160 = MEM[(const int32_t * )f_151(D) + 32B]; *)
mov f8160 f151_32;
(* f9_161 = MEM[(const int32_t * )f_151(D) + 36B]; *)
mov f9161 f151_36;
(* g0_163 = *g_162(D); *)
mov g0163 g162_0;
(* g1_164 = MEM[(const int32_t * )g_162(D) + 4B]; *)
mov g1164 g162_4;
(* g2_165 = MEM[(const int32_t * )g_162(D) + 8B]; *)
mov g2165 g162_8;
(* g3_166 = MEM[(const int32_t * )g_162(D) + 12B]; *)
mov g3166 g162_12;
(* g4_167 = MEM[(const int32_t * )g_162(D) + 16B]; *)
mov g4167 g162_16;
(* g5_168 = MEM[(const int32_t * )g_162(D) + 20B]; *)
mov g5168 g162_20;
(* g6_169 = MEM[(const int32_t * )g_162(D) + 24B]; *)
mov g6169 g162_24;
(* g7_170 = MEM[(const int32_t * )g_162(D) + 28B]; *)
mov g7170 g162_28;
(* g8_171 = MEM[(const int32_t * )g_162(D) + 32B]; *)
mov g8171 g162_32;
(* g9_172 = MEM[(const int32_t * )g_162(D) + 36B]; *)
mov g9172 g162_36;
(* g1_19_173 = g1_164 * 19; *)
smul g1_19173 g1164 0x13@int32;
(* g2_19_174 = g2_165 * 19; *)
smul g2_19174 g2165 0x13@int32;
(* g3_19_175 = g3_166 * 19; *)
smul g3_19175 g3166 0x13@int32;
(* g4_19_176 = g4_167 * 19; *)
smul g4_19176 g4167 0x13@int32;
(* g5_19_177 = g5_168 * 19; *)
smul g5_19177 g5168 0x13@int32;
(* g6_19_178 = g6_169 * 19; *)
smul g6_19178 g6169 0x13@int32;
(* g7_19_179 = g7_170 * 19; *)
smul g7_19179 g7170 0x13@int32;
(* g8_19_180 = g8_171 * 19; *)
smul g8_19180 g8171 0x13@int32;
(* g9_19_181 = g9_172 * 19; *)
smul g9_19181 g9172 0x13@int32;
(* f1_2_182 = f1_153 * 2; *)
smul f1_2182 f1153 0x2@int32;
(* f3_2_183 = f3_155 * 2; *)
smul f3_2183 f3155 0x2@int32;
(* f5_2_184 = f5_157 * 2; *)
smul f5_2184 f5157 0x2@int32;
(* f7_2_185 = f7_159 * 2; *)
smul f7_2185 f7159 0x2@int32;
(* f9_2_186 = f9_161 * 2; *)
smul f9_2186 f9161 0x2@int32;
(* f0g0_187 = f0_152 w* g0_163; *)
smulj f0g0187 f0152 g0163;
(* f0g1_188 = f0_152 w* g1_164; *)
smulj f0g1188 f0152 g1164;
(* f0g2_189 = f0_152 w* g2_165; *)
smulj f0g2189 f0152 g2165;
(* f0g3_190 = f0_152 w* g3_166; *)
smulj f0g3190 f0152 g3166;
(* f0g4_191 = f0_152 w* g4_167; *)
smulj f0g4191 f0152 g4167;
(* f0g5_192 = f0_152 w* g5_168; *)
smulj f0g5192 f0152 g5168;
(* f0g6_193 = f0_152 w* g6_169; *)
smulj f0g6193 f0152 g6169;
(* f0g7_194 = f0_152 w* g7_170; *)
smulj f0g7194 f0152 g7170;
(* f0g8_195 = f0_152 w* g8_171; *)
smulj f0g8195 f0152 g8171;
(* f0g9_196 = f0_152 w* g9_172; *)
smulj f0g9196 f0152 g9172;
(* f1g0_197 = g0_163 w* f1_153; *)
smulj f1g0197 g0163 f1153;
(* f1g1_2_198 = g1_164 w* f1_2_182; *)
smulj f1g1_2198 g1164 f1_2182;
(* f1g2_199 = g2_165 w* f1_153; *)
smulj f1g2199 g2165 f1153;
(* f1g3_2_200 = g3_166 w* f1_2_182; *)
smulj f1g3_2200 g3166 f1_2182;
(* f1g4_201 = g4_167 w* f1_153; *)
smulj f1g4201 g4167 f1153;
(* f1g5_2_202 = g5_168 w* f1_2_182; *)
smulj f1g5_2202 g5168 f1_2182;
(* f1g6_203 = g6_169 w* f1_153; *)
smulj f1g6203 g6169 f1153;
(* f1g7_2_204 = g7_170 w* f1_2_182; *)
smulj f1g7_2204 g7170 f1_2182;
(* f1g8_205 = g8_171 w* f1_153; *)
smulj f1g8205 g8171 f1153;
(* f1g9_38_206 = f1_2_182 w* g9_19_181; *)
smulj f1g9_38206 f1_2182 g9_19181;
(* f2g0_207 = g0_163 w* f2_154; *)
smulj f2g0207 g0163 f2154;
(* f2g1_208 = g1_164 w* f2_154; *)
smulj f2g1208 g1164 f2154;
(* f2g2_209 = g2_165 w* f2_154; *)
smulj f2g2209 g2165 f2154;
(* f2g3_210 = g3_166 w* f2_154; *)
smulj f2g3210 g3166 f2154;
(* f2g4_211 = g4_167 w* f2_154; *)
smulj f2g4211 g4167 f2154;
(* f2g5_212 = g5_168 w* f2_154; *)
smulj f2g5212 g5168 f2154;
(* f2g6_213 = g6_169 w* f2_154; *)
smulj f2g6213 g6169 f2154;
(* f2g7_214 = g7_170 w* f2_154; *)
smulj f2g7214 g7170 f2154;
(* f2g8_19_215 = f2_154 w* g8_19_180; *)
smulj f2g8_19215 f2154 g8_19180;
(* f2g9_19_216 = g9_19_181 w* f2_154; *)
smulj f2g9_19216 g9_19181 f2154;
(* f3g0_217 = g0_163 w* f3_155; *)
smulj f3g0217 g0163 f3155;
(* f3g1_2_218 = g1_164 w* f3_2_183; *)
smulj f3g1_2218 g1164 f3_2183;
(* f3g2_219 = g2_165 w* f3_155; *)
smulj f3g2219 g2165 f3155;
(* f3g3_2_220 = g3_166 w* f3_2_183; *)
smulj f3g3_2220 g3166 f3_2183;
(* f3g4_221 = g4_167 w* f3_155; *)
smulj f3g4221 g4167 f3155;
(* f3g5_2_222 = g5_168 w* f3_2_183; *)
smulj f3g5_2222 g5168 f3_2183;
(* f3g6_223 = g6_169 w* f3_155; *)
smulj f3g6223 g6169 f3155;
(* f3g7_38_224 = f3_2_183 w* g7_19_179; *)
smulj f3g7_38224 f3_2183 g7_19179;
(* f3g8_19_225 = g8_19_180 w* f3_155; *)
smulj f3g8_19225 g8_19180 f3155;
(* f3g9_38_226 = g9_19_181 w* f3_2_183; *)
smulj f3g9_38226 g9_19181 f3_2183;
(* f4g0_227 = g0_163 w* f4_156; *)
smulj f4g0227 g0163 f4156;
(* f4g1_228 = g1_164 w* f4_156; *)
smulj f4g1228 g1164 f4156;
(* f4g2_229 = g2_165 w* f4_156; *)
smulj f4g2229 g2165 f4156;
(* f4g3_230 = g3_166 w* f4_156; *)
smulj f4g3230 g3166 f4156;
(* f4g4_231 = g4_167 w* f4_156; *)
smulj f4g4231 g4167 f4156;
(* f4g5_232 = g5_168 w* f4_156; *)
smulj f4g5232 g5168 f4156;
(* f4g6_19_233 = f4_156 w* g6_19_178; *)
smulj f4g6_19233 f4156 g6_19178;
(* f4g7_19_234 = g7_19_179 w* f4_156; *)
smulj f4g7_19234 g7_19179 f4156;
(* f4g8_19_235 = g8_19_180 w* f4_156; *)
smulj f4g8_19235 g8_19180 f4156;
(* f4g9_19_236 = g9_19_181 w* f4_156; *)
smulj f4g9_19236 g9_19181 f4156;
(* f5g0_237 = g0_163 w* f5_157; *)
smulj f5g0237 g0163 f5157;
(* f5g1_2_238 = g1_164 w* f5_2_184; *)
smulj f5g1_2238 g1164 f5_2184;
(* f5g2_239 = g2_165 w* f5_157; *)
smulj f5g2239 g2165 f5157;
(* f5g3_2_240 = g3_166 w* f5_2_184; *)
smulj f5g3_2240 g3166 f5_2184;
(* f5g4_241 = g4_167 w* f5_157; *)
smulj f5g4241 g4167 f5157;
(* f5g5_38_242 = f5_2_184 w* g5_19_177; *)
smulj f5g5_38242 f5_2184 g5_19177;
(* f5g6_19_243 = g6_19_178 w* f5_157; *)
smulj f5g6_19243 g6_19178 f5157;
(* f5g7_38_244 = g7_19_179 w* f5_2_184; *)
smulj f5g7_38244 g7_19179 f5_2184;
(* f5g8_19_245 = g8_19_180 w* f5_157; *)
smulj f5g8_19245 g8_19180 f5157;
(* f5g9_38_246 = g9_19_181 w* f5_2_184; *)
smulj f5g9_38246 g9_19181 f5_2184;
(* f6g0_247 = g0_163 w* f6_158; *)
smulj f6g0247 g0163 f6158;
(* f6g1_248 = g1_164 w* f6_158; *)
smulj f6g1248 g1164 f6158;
(* f6g2_249 = g2_165 w* f6_158; *)
smulj f6g2249 g2165 f6158;
(* f6g3_250 = g3_166 w* f6_158; *)
smulj f6g3250 g3166 f6158;
(* f6g4_19_251 = f6_158 w* g4_19_176; *)
smulj f6g4_19251 f6158 g4_19176;
(* f6g5_19_252 = g5_19_177 w* f6_158; *)
smulj f6g5_19252 g5_19177 f6158;
(* f6g6_19_253 = g6_19_178 w* f6_158; *)
smulj f6g6_19253 g6_19178 f6158;
(* f6g7_19_254 = g7_19_179 w* f6_158; *)
smulj f6g7_19254 g7_19179 f6158;
(* f6g8_19_255 = g8_19_180 w* f6_158; *)
smulj f6g8_19255 g8_19180 f6158;
(* f6g9_19_256 = g9_19_181 w* f6_158; *)
smulj f6g9_19256 g9_19181 f6158;
(* f7g0_257 = g0_163 w* f7_159; *)
smulj f7g0257 g0163 f7159;
(* f7g1_2_258 = g1_164 w* f7_2_185; *)
smulj f7g1_2258 g1164 f7_2185;
(* f7g2_259 = g2_165 w* f7_159; *)
smulj f7g2259 g2165 f7159;
(* f7g3_38_260 = f7_2_185 w* g3_19_175; *)
smulj f7g3_38260 f7_2185 g3_19175;
(* f7g4_19_261 = g4_19_176 w* f7_159; *)
smulj f7g4_19261 g4_19176 f7159;
(* f7g5_38_262 = g5_19_177 w* f7_2_185; *)
smulj f7g5_38262 g5_19177 f7_2185;
(* f7g6_19_263 = g6_19_178 w* f7_159; *)
smulj f7g6_19263 g6_19178 f7159;
(* f7g7_38_264 = g7_19_179 w* f7_2_185; *)
smulj f7g7_38264 g7_19179 f7_2185;
(* f7g8_19_265 = g8_19_180 w* f7_159; *)
smulj f7g8_19265 g8_19180 f7159;
(* f7g9_38_266 = g9_19_181 w* f7_2_185; *)
smulj f7g9_38266 g9_19181 f7_2185;
(* f8g0_267 = g0_163 w* f8_160; *)
smulj f8g0267 g0163 f8160;
(* f8g1_268 = g1_164 w* f8_160; *)
smulj f8g1268 g1164 f8160;
(* f8g2_19_269 = f8_160 w* g2_19_174; *)
smulj f8g2_19269 f8160 g2_19174;
(* f8g3_19_270 = g3_19_175 w* f8_160; *)
smulj f8g3_19270 g3_19175 f8160;
(* f8g4_19_271 = g4_19_176 w* f8_160; *)
smulj f8g4_19271 g4_19176 f8160;
(* f8g5_19_272 = g5_19_177 w* f8_160; *)
smulj f8g5_19272 g5_19177 f8160;
(* f8g6_19_273 = g6_19_178 w* f8_160; *)
smulj f8g6_19273 g6_19178 f8160;
(* f8g7_19_274 = g7_19_179 w* f8_160; *)
smulj f8g7_19274 g7_19179 f8160;
(* f8g8_19_275 = g8_19_180 w* f8_160; *)
smulj f8g8_19275 g8_19180 f8160;
(* f8g9_19_276 = g9_19_181 w* f8_160; *)
smulj f8g9_19276 g9_19181 f8160;
(* f9g0_277 = g0_163 w* f9_161; *)
smulj f9g0277 g0163 f9161;
(* f9g1_38_278 = f9_2_186 w* g1_19_173; *)
smulj f9g1_38278 f9_2186 g1_19173;
(* f9g2_19_279 = g2_19_174 w* f9_161; *)
smulj f9g2_19279 g2_19174 f9161;
(* f9g3_38_280 = g3_19_175 w* f9_2_186; *)
smulj f9g3_38280 g3_19175 f9_2186;
(* f9g4_19_281 = g4_19_176 w* f9_161; *)
smulj f9g4_19281 g4_19176 f9161;
(* f9g5_38_282 = g5_19_177 w* f9_2_186; *)
smulj f9g5_38282 g5_19177 f9_2186;
(* f9g6_19_283 = g6_19_178 w* f9_161; *)
smulj f9g6_19283 g6_19178 f9161;
(* f9g7_38_284 = g7_19_179 w* f9_2_186; *)
smulj f9g7_38284 g7_19179 f9_2186;
(* f9g8_19_285 = g8_19_180 w* f9_161; *)
smulj f9g8_19285 g8_19180 f9161;
(* f9g9_38_286 = g9_19_181 w* f9_2_186; *)
smulj f9g9_38286 g9_19181 f9_2186;
(* _376 = f0g0_187 + f2g8_19_215; *)
sadd v376 f0g0187 f2g8_19215;
(* _377 = f4g6_19_233 + _376; *)
sadd v377 f4g6_19233 v376;
(* _378 = f6g4_19_251 + _377; *)
sadd v378 f6g4_19251 v377;
(* _379 = f8g2_19_269 + _378; *)
sadd v379 f8g2_19269 v378;
(* _380 = f1g9_38_206 + _379; *)
sadd v380 f1g9_38206 v379;
(* _381 = f3g7_38_224 + _380; *)
sadd v381 f3g7_38224 v380;
(* _382 = f5g5_38_242 + _381; *)
sadd v382 f5g5_38242 v381;
(* _42 = f7g3_38_260 + _382; *)
sadd v42 f7g3_38260 v382;
(* h0_287 = _42 + f9g1_38_278; *)
sadd h0287 v42 f9g1_38278;
(* _43 = f0g1_188 + f1g0_197; *)
sadd v43 f0g1188 f1g0197;
(* _44 = _43 + f2g9_19_216; *)
sadd v44 v43 f2g9_19216;
(* _45 = _44 + f3g8_19_225; *)
sadd v45 v44 f3g8_19225;
(* _46 = _45 + f4g7_19_234; *)
sadd v46 v45 f4g7_19234;
(* _47 = _46 + f5g6_19_243; *)
sadd v47 v46 f5g6_19243;
(* _48 = _47 + f6g5_19_252; *)
sadd v48 v47 f6g5_19252;
(* _49 = _48 + f7g4_19_261; *)
sadd v49 v48 f7g4_19261;
(* _50 = _49 + f8g3_19_270; *)
sadd v50 v49 f8g3_19270;
(* h1_288 = _50 + f9g2_19_279; *)
sadd h1288 v50 f9g2_19279;
(* _362 = f0g2_189 + f2g0_207; *)
sadd v362 f0g2189 f2g0207;
(* _363 = f4g8_19_235 + _362; *)
sadd v363 f4g8_19235 v362;
(* _364 = f6g6_19_253 + _363; *)
sadd v364 f6g6_19253 v363;
(* _365 = f8g4_19_271 + _364; *)
sadd v365 f8g4_19271 v364;
(* _366 = f1g1_2_198 + _365; *)
sadd v366 f1g1_2198 v365;
(* _367 = f3g9_38_226 + _366; *)
sadd v367 f3g9_38226 v366;
(* _368 = f5g7_38_244 + _367; *)
sadd v368 f5g7_38244 v367;
(* _58 = f7g5_38_262 + _368; *)
sadd v58 f7g5_38262 v368;
(* h2_289 = _58 + f9g3_38_280; *)
sadd h2289 v58 f9g3_38280;
(* _59 = f0g3_190 + f1g2_199; *)
sadd v59 f0g3190 f1g2199;
(* _60 = _59 + f2g1_208; *)
sadd v60 v59 f2g1208;
(* _61 = _60 + f3g0_217; *)
sadd v61 v60 f3g0217;
(* _62 = _61 + f4g9_19_236; *)
sadd v62 v61 f4g9_19236;
(* _63 = _62 + f5g8_19_245; *)
sadd v63 v62 f5g8_19245;
(* _64 = _63 + f6g7_19_254; *)
sadd v64 v63 f6g7_19254;
(* _65 = _64 + f7g6_19_263; *)
sadd v65 v64 f7g6_19263;
(* _66 = _65 + f8g5_19_272; *)
sadd v66 v65 f8g5_19272;
(* h3_290 = _66 + f9g4_19_281; *)
sadd h3290 v66 f9g4_19281;
(* _369 = f0g4_191 + f2g2_209; *)
sadd v369 f0g4191 f2g2209;
(* _370 = f4g0_227 + _369; *)
sadd v370 f4g0227 v369;
(* _371 = f6g8_19_255 + _370; *)
sadd v371 f6g8_19255 v370;
(* _372 = f8g6_19_273 + _371; *)
sadd v372 f8g6_19273 v371;
(* _373 = f1g3_2_200 + _372; *)
sadd v373 f1g3_2200 v372;
(* _374 = f3g1_2_218 + _373; *)
sadd v374 f3g1_2218 v373;
(* _375 = f5g9_38_246 + _374; *)
sadd v375 f5g9_38246 v374;
(* _74 = f7g7_38_264 + _375; *)
sadd v74 f7g7_38264 v375;
(* h4_291 = _74 + f9g5_38_282; *)
sadd h4291 v74 f9g5_38282;
(* _75 = f0g5_192 + f1g4_201; *)
sadd v75 f0g5192 f1g4201;
(* _76 = _75 + f2g3_210; *)
sadd v76 v75 f2g3210;
(* _77 = _76 + f3g2_219; *)
sadd v77 v76 f3g2219;
(* _78 = _77 + f4g1_228; *)
sadd v78 v77 f4g1228;
(* _79 = _78 + f5g0_237; *)
sadd v79 v78 f5g0237;
(* _80 = _79 + f6g9_19_256; *)
sadd v80 v79 f6g9_19256;
(* _81 = _80 + f7g8_19_265; *)
sadd v81 v80 f7g8_19265;
(* _82 = _81 + f8g7_19_274; *)
sadd v82 v81 f8g7_19274;
(* h5_292 = _82 + f9g6_19_283; *)
sadd h5292 v82 f9g6_19283;
(* _355 = f0g6_193 + f2g4_211; *)
sadd v355 f0g6193 f2g4211;
(* _356 = f4g2_229 + _355; *)
sadd v356 f4g2229 v355;
(* _357 = f6g0_247 + _356; *)
sadd v357 f6g0247 v356;
(* _358 = f8g8_19_275 + _357; *)
sadd v358 f8g8_19275 v357;
(* _359 = f1g5_2_202 + _358; *)
sadd v359 f1g5_2202 v358;
(* _360 = f3g3_2_220 + _359; *)
sadd v360 f3g3_2220 v359;
(* _361 = f5g1_2_238 + _360; *)
sadd v361 f5g1_2238 v360;
(* _90 = f7g9_38_266 + _361; *)
sadd v90 f7g9_38266 v361;
(* h6_293 = _90 + f9g7_38_284; *)
sadd h6293 v90 f9g7_38284;
(* _91 = f0g7_194 + f1g6_203; *)
sadd v91 f0g7194 f1g6203;
(* _92 = _91 + f2g5_212; *)
sadd v92 v91 f2g5212;
(* _93 = _92 + f3g4_221; *)
sadd v93 v92 f3g4221;
(* _94 = _93 + f4g3_230; *)
sadd v94 v93 f4g3230;
(* _95 = _94 + f5g2_239; *)
sadd v95 v94 f5g2239;
(* _96 = _95 + f6g1_248; *)
sadd v96 v95 f6g1248;
(* _97 = _96 + f7g0_257; *)
sadd v97 v96 f7g0257;
(* _98 = _97 + f8g9_19_276; *)
sadd v98 v97 f8g9_19276;
(* h7_294 = _98 + f9g8_19_285; *)
sadd h7294 v98 f9g8_19285;
(* _348 = f0g8_195 + f2g6_213; *)
sadd v348 f0g8195 f2g6213;
(* _349 = f4g4_231 + _348; *)
sadd v349 f4g4231 v348;
(* _350 = f6g2_249 + _349; *)
sadd v350 f6g2249 v349;
(* _351 = f8g0_267 + _350; *)
sadd v351 f8g0267 v350;
(* _352 = f1g7_2_204 + _351; *)
sadd v352 f1g7_2204 v351;
(* _353 = f3g5_2_222 + _352; *)
sadd v353 f3g5_2222 v352;
(* _354 = f5g3_2_240 + _353; *)
sadd v354 f5g3_2240 v353;
(* _106 = f7g1_2_258 + _354; *)
sadd v106 f7g1_2258 v354;
(* h8_295 = _106 + f9g9_38_286; *)
sadd h8295 v106 f9g9_38286;
(* _107 = f0g9_196 + f1g8_205; *)
sadd v107 f0g9196 f1g8205;
(* _108 = _107 + f2g7_214; *)
sadd v108 v107 f2g7214;
(* _109 = _108 + f3g6_223; *)
sadd v109 v108 f3g6223;
(* _110 = _109 + f4g5_232; *)
sadd v110 v109 f4g5232;
(* _111 = _110 + f5g4_241; *)
sadd v111 v110 f5g4241;
(* _112 = _111 + f6g3_250; *)
sadd v112 v111 f6g3250;
(* _113 = _112 + f7g2_259; *)
sadd v113 v112 f7g2259;
(* _114 = _113 + f8g1_268; *)
sadd v114 v113 f8g1268;
(* h9_296 = _114 + f9g0_277; *)
sadd h9296 v114 f9g0277;
(* _115 = h0_287 + 33554432; *)
sadd v115 h0287 0x2000000@int64;
(* carry0_297 = _115 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry0297 tmp_to_use v115 26;
(* h1_298 = h1_288 + carry0_297; *)
sadd h1298 h1288 carry0297;
(* _116 = _115 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v116 v115 (-0x4000000)@int64;

(* added *)
assert true && v116 = carry0297 * (2**26)@64;
assume v116 = carry0297 * (2**26) && true;

(* h0_299 = h0_287 - _116; *)
ssub h0299 h0287 v116;
(* _117 = h4_291 + 33554432; *)
sadd v117 h4291 0x2000000@int64;
(* carry4_300 = _117 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry4300 tmp_to_use v117 26;
(* h5_301 = h5_292 + carry4_300; *)
sadd h5301 h5292 carry4300;
(* _118 = _117 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v118 v117 (-0x4000000)@int64;

(* added *)
assert true && v118 = carry4300 * (2**26)@64;
assume v118 = carry4300 * (2**26) && true;


(* h4_302 = h4_291 - _118; *)
ssub h4302 h4291 v118;
(* _119 = h1_298 + 16777216; *)
sadd v119 h1298 0x1000000@int64;
(* carry1_303 = _119 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry1303 tmp_to_use v119 25;
(* h2_304 = h2_289 + carry1_303; *)
sadd h2304 h2289 carry1303;
(* _120 = _119 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v120 v119 (-0x2000000)@int64;

(* added *)
assert true && v120 = carry1303 * (2**25)@64;
assume v120 = carry1303 * (2**25) && true;

(* h1_305 = h1_298 - _120; *)
ssub h1305 h1298 v120;
(* _121 = h5_301 + 16777216; *)
sadd v121 h5301 0x1000000@int64;
(* carry5_306 = _121 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry5306 tmp_to_use v121 25;
(* h6_307 = h6_293 + carry5_306; *)
sadd h6307 h6293 carry5306;
(* _122 = _121 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v122 v121 (-0x2000000)@int64;

(* added *)
assert true && v122 = carry5306 * (2**25)@64;
assume v122 = carry5306 * (2**25) && true;


(* h5_308 = h5_301 - _122; *)
ssub h5308 h5301 v122;
(* _123 = h2_304 + 33554432; *)
sadd v123 h2304 0x2000000@int64;
(* carry2_309 = _123 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry2309 tmp_to_use v123 26;
(* h3_310 = h3_290 + carry2_309; *)
sadd h3310 h3290 carry2309;
(* _124 = _123 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v124 v123 (-0x4000000)@int64;

(* added *)
assert true && v124 = carry2309 * (2**26)@64;
assume v124 = carry2309 * (2**26) && true;

(* h2_311 = h2_304 - _124; *)
ssub h2311 h2304 v124;
(* _125 = h6_307 + 33554432; *)
sadd v125 h6307 0x2000000@int64;
(* carry6_312 = _125 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry6312 tmp_to_use v125 26;
(* h7_313 = h7_294 + carry6_312; *)
sadd h7313 h7294 carry6312;
(* _126 = _125 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v126 v125 (-0x4000000)@int64;

(* added *)
assert true && v126 = carry6312 * (2**26)@64;
assume v126 = carry6312 * (2**26) && true;


(* h6_314 = h6_307 - _126; *)
ssub h6314 h6307 v126;
(* _127 = h3_310 + 16777216; *)
sadd v127 h3310 0x1000000@int64;
(* carry3_315 = _127 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry3315 tmp_to_use v127 25;
(* h4_316 = h4_302 + carry3_315; *)
sadd h4316 h4302 carry3315;
(* _128 = _127 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v128 v127 (-0x2000000)@int64;

(* added *)
assert true && v128 = carry3315 * (2**25)@64;
assume v128 = carry3315 * (2**25) && true;

(* h3_317 = h3_310 - _128; *)
ssub h3317 h3310 v128;
(* _129 = h7_313 + 16777216; *)
sadd v129 h7313 0x1000000@int64;
(* carry7_318 = _129 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry7318 tmp_to_use v129 25;
(* h8_319 = h8_295 + carry7_318; *)
sadd h8319 h8295 carry7318;
(* _130 = _129 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v130 v129 (-0x2000000)@int64;

(* added *)
assert true && v130 = carry7318 * (2**25)@64;
assume v130 = carry7318 * (2**25) && true;

(* h7_320 = h7_313 - _130; *)
ssub h7320 h7313 v130;
(* _131 = h4_316 + 33554432; *)
sadd v131 h4316 0x2000000@int64;
(* carry4_321 = _131 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry4321 tmp_to_use v131 26;
(* h5_322 = h5_308 + carry4_321; *)
sadd h5322 h5308 carry4321;
(* _132 = _131 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v132 v131 (-0x4000000)@int64;

(* added *)
assert true && v132 = carry4321 * (2**26)@64;
assume v132 = carry4321 * (2**26) && true;

(* h4_323 = h4_316 - _132; *)
ssub h4323 h4316 v132;
(* _133 = h8_319 + 33554432; *)
sadd v133 h8319 0x2000000@int64;
(* carry8_324 = _133 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry8324 tmp_to_use v133 26;
(* h9_325 = h9_296 + carry8_324; *)
sadd h9325 h9296 carry8324;
(* _134 = _133 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v134 v133 (-0x4000000)@int64;

(* added *)
assert true && v134 = carry8324 * (2**26)@64;
assume v134 = carry8324 * (2**26) && true;

(* h8_326 = h8_319 - _134; *)
ssub h8326 h8319 v134;
(* _135 = h9_325 + 16777216; *)
sadd v135 h9325 0x1000000@int64;
(* carry9_327 = _135 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry9327 tmp_to_use v135 25;
(* _136 = carry9_327 * 19; *)
smul v136 carry9327 0x13@int64;
(* h0_328 = _136 + h0_299; *)
sadd h0328 v136 h0299;
(* _137 = _135 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v137 v135 (-0x2000000)@int64;

(* added *)
assert true && v137 = carry9327 * (2**25)@64;
assume v137 = carry9327 * (2**25) && true;

(* h9_329 = h9_325 - _137; *)
ssub h9329 h9325 v137;
(* _138 = h0_328 + 33554432; *)
sadd v138 h0328 0x2000000@int64;
(* carry0_330 = _138 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry0330 tmp_to_use v138 26;
(* h1_331 = h1_305 + carry0_330; *)
sadd h1331 h1305 carry0330;
(* _139 = _138 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v139 v138 (-0x4000000)@int64;

(* added *)
assert true && v139 = carry0330 * (2**26)@64;
assume v139 = carry0330 * (2**26) && true;

(* h0_332 = h0_328 - _139; *)
ssub h0332 h0328 v139;
(* _140 = (int) h0_332; *)
(* cast v140@int32 h0332@int64; *)
(* added: cast -> vpc *)
vpc v140@int32 h0332@int64;
(* *h_333(D) = _140; *)
mov h333_0 v140;
(* _141 = (int) h1_331; *)
(* cast v141@int32 h1331@int64; *)
(* added: cast -> vpc *)
vpc v141@int32 h1331@int64;
(* MEM[(int32_t * )h_333(D) + 4B] = _141; *)
mov h333_4 v141;
(* _142 = (int) h2_311; *)
(* cast v142@int32 h2311@int64; *)
(* added: cast -> vpc *)
vpc v142@int32 h2311@int64;
(* MEM[(int32_t * )h_333(D) + 8B] = _142; *)
mov h333_8 v142;
(* _143 = (int) h3_317; *)
(* cast v143@int32 h3317@int64; *)
(* added: cast -> vpc *)
vpc v143@int32 h3317@int64;
(* MEM[(int32_t * )h_333(D) + 12B] = _143; *)
mov h333_12 v143;
(* _144 = (int) h4_323; *)
(* cast v144@int32 h4323@int64; *)
(* added: cast -> vpc *)
vpc v144@int32 h4323@int64;
(* MEM[(int32_t * )h_333(D) + 16B] = _144; *)
mov h333_16 v144;
(* _145 = (int) h5_322; *)
(* cast v145@int32 h5322@int64; *)
(* added: cast -> vpc *)
vpc v145@int32 h5322@int64;
(* MEM[(int32_t * )h_333(D) + 20B] = _145; *)
mov h333_20 v145;
(* _146 = (int) h6_314; *)
(* cast v146@int32 h6314@int64; *)
(* added: cast -> vpc *)
vpc v146@int32 h6314@int64;
(* MEM[(int32_t * )h_333(D) + 24B] = _146; *)
mov h333_24 v146;
(* _147 = (int) h7_320; *)
(* cast v147@int32 h7320@int64; *)
(* added: cast -> vpc *)
vpc v147@int32 h7320@int64;
(* MEM[(int32_t * )h_333(D) + 28B] = _147; *)
mov h333_28 v147;
(* _148 = (int) h8_326; *)
(* cast v148@int32 h8326@int64; *)
(* added: cast -> vpc *)
vpc v148@int32 h8326@int64;
(* MEM[(int32_t * )h_333(D) + 32B] = _148; *)
mov h333_32 v148;
(* _149 = (int) h9_329; *)
(* cast v149@int32 h9329@int64; *)
(* added: cast -> vpc *)
vpc v149@int32 h9329@int64;
(* MEM[(int32_t * )h_333(D) + 36B] = _149; *)
mov h333_36 v149;
(* return; *)


(* Start with unused lhs *)
mov c0 h333_0@int32;
mov c1 h333_4@int32;
mov c2 h333_8@int32;
mov c3 h333_12@int32;
mov c4 h333_16@int32;
mov c5 h333_20@int32;
mov c6 h333_24@int32;
mov c7 h333_28@int32;
mov c8 h333_32@int32;
mov c9 h333_36@int32;
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
    *
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
    c0 <=s (33889976)@32,
    c0 >=s (-33889976)@32,
    c1 <=s (16944988)@32,
    c1 >=s (-16944988)@32,
    c2 <=s (33889976)@32,
    c2 >=s (-33889976)@32,
    c3 <=s (16944988)@32,
    c3 >=s (-16944988)@32,
    c4 <=s (33889976)@32,
    c4 >=s (-33889976)@32,
    c5 <=s (16944988)@32,
    c5 >=s (-16944988)@32,
    c6 <=s (33889976)@32,
    c6 >=s (-33889976)@32,
    c7 <=s (16944988)@32,
    c7 >=s (-16944988)@32,
    c8 <=s (33889976)@32,
    c8 >=s (-33889976)@32,
    c9 <=s (16944988)@32,
    c9 >=s (-16944988)@32
  ]
}


proc fe_mul121666 (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9; int32 c0, int32 c1, int32 c2, int32 c3, int32 c4, int32 c5, int32 c6, int32 c7, int32 c8, int32 c9) =
{
  true
  &&
  and
  [
    a0 <=s (73819750)@32,
    a0 >=s (-73819750)@32,
    a1 <=s (36909875)@32,
    a1 >=s (-36909875)@32,
    a2 <=s (73819750)@32,
    a2 >=s (-73819750)@32,
    a3 <=s (36909875)@32,
    a3 >=s (-36909875)@32,
    a4 <=s (73819750)@32,
    a4 >=s (-73819750)@32,
    a5 <=s (36909875)@32,
    a5 >=s (-36909875)@32,
    a6 <=s (73819750)@32,
    a6 >=s (-73819750)@32,
    a7 <=s (36909875)@32,
    a7 >=s (-36909875)@32,
    a8 <=s (73819750)@32,
    a8 >=s (-73819750)@32,
    a9 <=s (36909875)@32,
    a9 >=s (-36909875)@32
  ]
}


(* Start with undefined rhs *)
mov f43_0@int32 a0;
mov f43_4@int32 a1;
mov f43_8@int32 a2;
mov f43_12@int32 a3;
mov f43_16@int32 a4;
mov f43_20@int32 a5;
mov f43_24@int32 a6;
mov f43_28@int32 a7;
mov f43_32@int32 a8;
mov f43_36@int32 a9;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f0_44 = *f_43(D); *)
mov f044 f43_0;
(* f1_45 = MEM[(int32_t * )f_43(D) + 4B]; *)
mov f145 f43_4;
(* f2_46 = MEM[(int32_t * )f_43(D) + 8B]; *)
mov f246 f43_8;
(* f3_47 = MEM[(int32_t * )f_43(D) + 12B]; *)
mov f347 f43_12;
(* f4_48 = MEM[(int32_t * )f_43(D) + 16B]; *)
mov f448 f43_16;
(* f5_49 = MEM[(int32_t * )f_43(D) + 20B]; *)
mov f549 f43_20;
(* f6_50 = MEM[(int32_t * )f_43(D) + 24B]; *)
mov f650 f43_24;
(* f7_51 = MEM[(int32_t * )f_43(D) + 28B]; *)
mov f751 f43_28;
(* f8_52 = MEM[(int32_t * )f_43(D) + 32B]; *)
mov f852 f43_32;
(* f9_53 = MEM[(int32_t * )f_43(D) + 36B]; *)
mov f953 f43_36;
(* h0_54 = f0_44 w* 121666; *)
smulj h054 f044 0x1db42@int32;
(* h1_55 = f1_45 w* 121666; *)
smulj h155 f145 0x1db42@int32;
(* h2_56 = f2_46 w* 121666; *)
smulj h256 f246 0x1db42@int32;
(* h3_57 = f3_47 w* 121666; *)
smulj h357 f347 0x1db42@int32;
(* h4_58 = f4_48 w* 121666; *)
smulj h458 f448 0x1db42@int32;
(* h5_59 = f5_49 w* 121666; *)
smulj h559 f549 0x1db42@int32;
(* h6_60 = f6_50 w* 121666; *)
smulj h660 f650 0x1db42@int32;
(* h7_61 = f7_51 w* 121666; *)
smulj h761 f751 0x1db42@int32;
(* h8_62 = f8_52 w* 121666; *)
smulj h862 f852 0x1db42@int32;
(* h9_63 = f9_53 w* 121666; *)
smulj h963 f953 0x1db42@int32;
(* _11 = h9_63 + 16777216; *)
sadd v11 h963 0x1000000@int64;
(* carry9_64 = _11 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry964 tmp_to_use v11 25;
(* _12 = carry9_64 * 19; *)
smul v12 carry964 0x13@int64;
(* h0_65 = _12 + h0_54; *)
sadd h065 v12 h054;
(* _13 = _11 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v13 v11 (-0x2000000)@int64;

(* added *)
assert true && v13 = carry964 * (2**25)@64;
assume v13 = carry964 * (2**25) && true;

(* h9_66 = h9_63 - _13; *)
ssub h966 h963 v13;
(* _14 = h1_55 + 16777216; *)
sadd v14 h155 0x1000000@int64;
(* carry1_67 = _14 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry167 tmp_to_use v14 25;
(* h2_68 = h2_56 + carry1_67; *)
sadd h268 h256 carry167;
(* _15 = _14 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v15 v14 (-0x2000000)@int64;

(* added *)
assert true && v15 = carry167 * (2**25)@64;
assume v15 = carry167 * (2**25) && true;

(* h1_69 = h1_55 - _15; *)
ssub h169 h155 v15;
(* _16 = h3_57 + 16777216; *)
sadd v16 h357 0x1000000@int64;
(* carry3_70 = _16 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry370 tmp_to_use v16 25;
(* h4_71 = h4_58 + carry3_70; *)
sadd h471 h458 carry370;
(* _17 = _16 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v17 v16 (-0x2000000)@int64;

(* added *)
assert true && v17 = carry370 * (2**25)@64;
assume v17 = carry370 * (2**25) && true;


(* h3_72 = h3_57 - _17; *)
ssub h372 h357 v17;
(* _18 = h5_59 + 16777216; *)
sadd v18 h559 0x1000000@int64;
(* carry5_73 = _18 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry573 tmp_to_use v18 25;
(* h6_74 = h6_60 + carry5_73; *)
sadd h674 h660 carry573;
(* _19 = _18 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v19 v18 (-0x2000000)@int64;

(* added *)
assert true && v19 = carry573 * (2**25)@64;
assume v19 = carry573 * (2**25) && true;


(* h5_75 = h5_59 - _19; *)
ssub h575 h559 v19;
(* _20 = h7_61 + 16777216; *)
sadd v20 h761 0x1000000@int64;
(* carry7_76 = _20 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry776 tmp_to_use v20 25;
(* h8_77 = h8_62 + carry7_76; *)
sadd h877 h862 carry776;
(* _21 = _20 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v21 v20 (-0x2000000)@int64;

(* added *)
assert true && v21 = carry776 * (2**25)@64;
assume v21 = carry776 * (2**25) && true;


(* h7_78 = h7_61 - _21; *)
ssub h778 h761 v21;
(* _22 = h0_65 + 33554432; *)
sadd v22 h065 0x2000000@int64;
(* carry0_79 = _22 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry079 tmp_to_use v22 26;
(* h1_80 = h1_69 + carry0_79; *)
sadd h180 h169 carry079;
(* _23 = _22 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v23 v22 (-0x4000000)@int64;

(* added *)
assert true && v23 = carry079 * (2**26)@64;
assume v23 = carry079 * (2**26) && true;

(* h0_81 = h0_65 - _23; *)
ssub h081 h065 v23;
(* _24 = h2_68 + 33554432; *)
sadd v24 h268 0x2000000@int64;
(* carry2_82 = _24 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry282 tmp_to_use v24 26;
(* h3_83 = h3_72 + carry2_82; *)
sadd h383 h372 carry282;
(* _25 = _24 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v25 v24 (-0x4000000)@int64;

(* added *)
assert true && v25 = carry282 * (2**26)@64;
assume v25 = carry282 * (2**26) && true;

(* h2_84 = h2_68 - _25; *)
ssub h284 h268 v25;
(* _26 = h4_71 + 33554432; *)
sadd v26 h471 0x2000000@int64;
(* carry4_85 = _26 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry485 tmp_to_use v26 26;
(* h5_86 = h5_75 + carry4_85; *)
sadd h586 h575 carry485;
(* _27 = _26 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v27 v26 (-0x4000000)@int64;

(* added *)
assert true && v27 = carry485 * (2**26)@64;
assume v27 = carry485 * (2**26) && true;

(* h4_87 = h4_71 - _27; *)
ssub h487 h471 v27;
(* _28 = h6_74 + 33554432; *)
sadd v28 h674 0x2000000@int64;
(* carry6_88 = _28 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry688 tmp_to_use v28 26;
(* h7_89 = h7_78 + carry6_88; *)
sadd h789 h778 carry688;
(* _29 = _28 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v29 v28 (-0x4000000)@int64;

(* added *)
assert true && v29 = carry688 * (2**26)@64;
assume v29 = carry688 * (2**26) && true;

(* h6_90 = h6_74 - _29; *)
ssub h690 h674 v29;
(* _30 = h8_77 + 33554432; *)
sadd v30 h877 0x2000000@int64;
(* carry8_91 = _30 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry891 tmp_to_use v30 26;
(* h9_92 = h9_66 + carry8_91; *)
sadd h992 h966 carry891;
(* _31 = _30 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v31 v30 (-0x4000000)@int64;

(* added *)
assert true && v31 = carry891 * (2**26)@64;
assume v31 = carry891 * (2**26) && true;

(* h8_93 = h8_77 - _31; *)
ssub h893 h877 v31;
(* _32 = (int) h0_81; *)
(* cast v32@int32 h081@int64; *)
(* added: change cast to vpc *)
vpc v32@int32 h081@int64;
(* *h_94(D) = _32; *)
mov h94_0 v32;
(* _33 = (int) h1_80; *)
(* cast v33@int32 h180@int64; *)
(* added: change cast to vpc *)
vpc v33@int32 h180@int64;
(* MEM[(int32_t * )h_94(D) + 4B] = _33; *)
mov h94_4 v33;
(* _34 = (int) h2_84; *)
(* cast v34@int32 h284@int64; *)
(* added: change cast to vpc *)
vpc v34@int32 h284@int64;
(* MEM[(int32_t * )h_94(D) + 8B] = _34; *)
mov h94_8 v34;
(* _35 = (int) h3_83; *)
(* cast v35@int32 h383@int64; *)
(* added: change cast to vpc *)
vpc v35@int32 h383@int64;
(* MEM[(int32_t * )h_94(D) + 12B] = _35; *)
mov h94_12 v35;
(* _36 = (int) h4_87; *)
(* cast v36@int32 h487@int64; *)
(* added: change cast to vpc *)
vpc v36@int32 h487@int64;
(* MEM[(int32_t * )h_94(D) + 16B] = _36; *)
mov h94_16 v36;
(* _37 = (int) h5_86; *)
(* cast v37@int32 h586@int64; *)
(* added: change cast to vpc *)
vpc v37@int32 h586@int64;
(* MEM[(int32_t * )h_94(D) + 20B] = _37; *)
mov h94_20 v37;
(* _38 = (int) h6_90; *)
(* cast v38@int32 h690@int64; *)
(* added: change cast to vpc *)
vpc v38@int32 h690@int64;
(* MEM[(int32_t * )h_94(D) + 24B] = _38; *)
mov h94_24 v38;
(* _39 = (int) h7_89; *)
(* cast v39@int32 h789@int64; *)
(* added: change cast to vpc *)
vpc v39@int32 h789@int64;
(* MEM[(int32_t * )h_94(D) + 28B] = _39; *)
mov h94_28 v39;
(* _40 = (int) h8_93; *)
(* cast v40@int32 h893@int64; *)
(* added: change cast to vpc *)
vpc v40@int32 h893@int64;
(* MEM[(int32_t * )h_94(D) + 32B] = _40; *)
mov h94_32 v40;
(* _41 = (int) h9_92; *)
(* cast v41@int32 h992@int64; *)
(* added: change cast to vpc *)
vpc v41@int32 h992@int64;
(* MEM[(int32_t * )h_94(D) + 36B] = _41; *)
mov h94_36 v41;
(* return; *)


(* Start with unused lhs *)
mov c0 h94_0@int32;
mov c1 h94_4@int32;
mov c2 h94_8@int32;
mov c3 h94_12@int32;
mov c4 h94_16@int32;
mov c5 h94_20@int32;
mov c6 h94_24@int32;
mov c7 h94_28@int32;
mov c8 h94_32@int32;
mov c9 h94_36@int32;
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
    *
    (121666)
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


proc fe_sq (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9; int32 c0, int32 c1, int32 c2, int32 c3, int32 c4, int32 c5, int32 c6, int32 c7, int32 c8, int32 c9) =
{
  true
  &&
  and
  [
    a0 <=s (110729625)@32,
    a0 >=s (-110729625)@32,
    a1 <=s (55364812)@32,
    a1 >=s (-55364812)@32,
    a2 <=s (110729625)@32,
    a2 >=s (-110729625)@32,
    a3 <=s (55364812)@32,
    a3 >=s (-55364812)@32,
    a4 <=s (110729625)@32,
    a4 >=s (-110729625)@32,
    a5 <=s (55364812)@32,
    a5 >=s (-55364812)@32,
    a6 <=s (110729625)@32,
    a6 >=s (-110729625)@32,
    a7 <=s (55364812)@32,
    a7 >=s (-55364812)@32,
    a8 <=s (110729625)@32,
    a8 >=s (-110729625)@32,
    a9 <=s (55364812)@32,
    a9 >=s (-55364812)@32
  ]
}

(* Start with undefined rhs *)
mov f95_0 a0;
mov f95_4 a1;
mov f95_8 a2;
mov f95_12 a3;
mov f95_16 a4;
mov f95_20 a5;
mov f95_24 a6;
mov f95_28 a7;
mov f95_32 a8;
mov f95_36 a9;
(* End with undefined rhs *)


(* f0_96 = *f_95(D); *)
mov f096 f95_0;
(* f1_97 = MEM[(const int32_t * )f_95(D) + 4B]; *)
mov f197 f95_4;
(* f2_98 = MEM[(const int32_t * )f_95(D) + 8B]; *)
mov f298 f95_8;
(* f3_99 = MEM[(const int32_t * )f_95(D) + 12B]; *)
mov f399 f95_12;
(* f4_100 = MEM[(const int32_t * )f_95(D) + 16B]; *)
mov f4100 f95_16;
(* f5_101 = MEM[(const int32_t * )f_95(D) + 20B]; *)
mov f5101 f95_20;
(* f6_102 = MEM[(const int32_t * )f_95(D) + 24B]; *)
mov f6102 f95_24;
(* f7_103 = MEM[(const int32_t * )f_95(D) + 28B]; *)
mov f7103 f95_28;
(* f8_104 = MEM[(const int32_t * )f_95(D) + 32B]; *)
mov f8104 f95_32;
(* f9_105 = MEM[(const int32_t * )f_95(D) + 36B]; *)
mov f9105 f95_36;
(* f0_2_106 = f0_96 * 2; *)
smul f0_2106 f096 2@int32;
(* f1_2_107 = f1_97 * 2; *)
smul f1_2107 f197 2@int32;
(* f2_2_108 = f2_98 * 2; *)
smul f2_2108 f298 2@int32;
(* f3_2_109 = f3_99 * 2; *)
smul f3_2109 f399 2@int32;
(* f4_2_110 = f4_100 * 2; *)
smul f4_2110 f4100 2@int32;
(* f5_2_111 = f5_101 * 2; *)
smul f5_2111 f5101 2@int32;
(* f6_2_112 = f6_102 * 2; *)
smul f6_2112 f6102 2@int32;
(* f7_2_113 = f7_103 * 2; *)
smul f7_2113 f7103 2@int32;
(* f5_38_114 = f5_101 * 38; *)
smul f5_38114 f5101 38@int32;
(* f6_19_115 = f6_102 * 19; *)
smul f6_19115 f6102 19@int32;
(* f7_38_116 = f7_103 * 38; *)
smul f7_38116 f7103 38@int32;
(* f8_19_117 = f8_104 * 19; *)
smul f8_19117 f8104 19@int32;
(* f9_38_118 = f9_105 * 38; *)
smul f9_38118 f9105 38@int32;
(* f0f0_119 = f0_96 w* f0_96; *)
smulj f0f0119 f096 f096;
(* f0f1_2_120 = f0_2_106 w* f1_97; *)
smulj f0f1_2120 f0_2106 f197;
(* f0f2_2_121 = f0_2_106 w* f2_98; *)
smulj f0f2_2121 f0_2106 f298;
(* f0f3_2_122 = f0_2_106 w* f3_99; *)
smulj f0f3_2122 f0_2106 f399;
(* f0f4_2_123 = f0_2_106 w* f4_100; *)
smulj f0f4_2123 f0_2106 f4100;
(* f0f5_2_124 = f0_2_106 w* f5_101; *)
smulj f0f5_2124 f0_2106 f5101;
(* f0f6_2_125 = f0_2_106 w* f6_102; *)
smulj f0f6_2125 f0_2106 f6102;
(* f0f7_2_126 = f0_2_106 w* f7_103; *)
smulj f0f7_2126 f0_2106 f7103;
(* f0f8_2_127 = f0_2_106 w* f8_104; *)
smulj f0f8_2127 f0_2106 f8104;
(* f0f9_2_128 = f0_2_106 w* f9_105; *)
smulj f0f9_2128 f0_2106 f9105;
(* f1f1_2_129 = f1_97 w* f1_2_107; *)
smulj f1f1_2129 f197 f1_2107;
(* f1f2_2_130 = f2_98 w* f1_2_107; *)
smulj f1f2_2130 f298 f1_2107;
(* f1f3_4_131 = f1_2_107 w* f3_2_109; *)
smulj f1f3_4131 f1_2107 f3_2109;
(* f1f4_2_132 = f4_100 w* f1_2_107; *)
smulj f1f4_2132 f4100 f1_2107;
(* f1f5_4_133 = f1_2_107 w* f5_2_111; *)
smulj f1f5_4133 f1_2107 f5_2111;
(* f1f6_2_134 = f6_102 w* f1_2_107; *)
smulj f1f6_2134 f6102 f1_2107;
(* f1f7_4_135 = f1_2_107 w* f7_2_113; *)
smulj f1f7_4135 f1_2107 f7_2113;
(* f1f8_2_136 = f8_104 w* f1_2_107; *)
smulj f1f8_2136 f8104 f1_2107;
(* f1f9_76_137 = f1_2_107 w* f9_38_118; *)
smulj f1f9_76137 f1_2107 f9_38118;
(* f2f2_138 = f2_98 w* f2_98; *)
smulj f2f2138 f298 f298;
(* f2f3_2_139 = f3_99 w* f2_2_108; *)
smulj f2f3_2139 f399 f2_2108;
(* f2f4_2_140 = f4_100 w* f2_2_108; *)
smulj f2f4_2140 f4100 f2_2108;
(* f2f5_2_141 = f5_101 w* f2_2_108; *)
smulj f2f5_2141 f5101 f2_2108;
(* f2f6_2_142 = f6_102 w* f2_2_108; *)
smulj f2f6_2142 f6102 f2_2108;
(* f2f7_2_143 = f7_103 w* f2_2_108; *)
smulj f2f7_2143 f7103 f2_2108;
(* f2f8_38_144 = f2_2_108 w* f8_19_117; *)
smulj f2f8_38144 f2_2108 f8_19117;
(* f2f9_38_145 = f2_98 w* f9_38_118; *)
smulj f2f9_38145 f298 f9_38118;
(* f3f3_2_146 = f3_99 w* f3_2_109; *)
smulj f3f3_2146 f399 f3_2109;
(* f3f4_2_147 = f4_100 w* f3_2_109; *)
smulj f3f4_2147 f4100 f3_2109;
(* f3f5_4_148 = f3_2_109 w* f5_2_111; *)
smulj f3f5_4148 f3_2109 f5_2111;
(* f3f6_2_149 = f6_102 w* f3_2_109; *)
smulj f3f6_2149 f6102 f3_2109;
(* f3f7_76_150 = f3_2_109 w* f7_38_116; *)
smulj f3f7_76150 f3_2109 f7_38116;
(* f3f8_38_151 = f3_2_109 w* f8_19_117; *)
smulj f3f8_38151 f3_2109 f8_19117;
(* f3f9_76_152 = f3_2_109 w* f9_38_118; *)
smulj f3f9_76152 f3_2109 f9_38118;
(* f4f4_153 = f4_100 w* f4_100; *)
smulj f4f4153 f4100 f4100;
(* f4f5_2_154 = f5_101 w* f4_2_110; *)
smulj f4f5_2154 f5101 f4_2110;
(* f4f6_38_155 = f4_2_110 w* f6_19_115; *)
smulj f4f6_38155 f4_2110 f6_19115;
(* f4f7_38_156 = f4_100 w* f7_38_116; *)
smulj f4f7_38156 f4100 f7_38116;
(* f4f8_38_157 = f8_19_117 w* f4_2_110; *)
smulj f4f8_38157 f8_19117 f4_2110;
(* f4f9_38_158 = f4_100 w* f9_38_118; *)
smulj f4f9_38158 f4100 f9_38118;
(* f5f5_38_159 = f5_101 w* f5_38_114; *)
smulj f5f5_38159 f5101 f5_38114;
(* f5f6_38_160 = f5_2_111 w* f6_19_115; *)
smulj f5f6_38160 f5_2111 f6_19115;
(* f5f7_76_161 = f5_2_111 w* f7_38_116; *)
smulj f5f7_76161 f5_2111 f7_38116;
(* f5f8_38_162 = f5_2_111 w* f8_19_117; *)
smulj f5f8_38162 f5_2111 f8_19117;
(* f5f9_76_163 = f5_2_111 w* f9_38_118; *)
smulj f5f9_76163 f5_2111 f9_38118;
(* f6f6_19_164 = f6_102 w* f6_19_115; *)
smulj f6f6_19164 f6102 f6_19115;
(* f6f7_38_165 = f6_102 w* f7_38_116; *)
smulj f6f7_38165 f6102 f7_38116;
(* f6f8_38_166 = f8_19_117 w* f6_2_112; *)
smulj f6f8_38166 f8_19117 f6_2112;
(* f6f9_38_167 = f6_102 w* f9_38_118; *)
smulj f6f9_38167 f6102 f9_38118;
(* f7f7_38_168 = f7_103 w* f7_38_116; *)
smulj f7f7_38168 f7103 f7_38116;
(* f7f8_38_169 = f7_2_113 w* f8_19_117; *)
smulj f7f8_38169 f7_2113 f8_19117;
(* f7f9_76_170 = f7_2_113 w* f9_38_118; *)
smulj f7f9_76170 f7_2113 f9_38118;
(* f8f8_19_171 = f8_104 w* f8_19_117; *)
smulj f8f8_19171 f8104 f8_19117;
(* f8f9_38_172 = f8_104 w* f9_38_118; *)
smulj f8f9_38172 f8104 f9_38118;
(* f9f9_38_173 = f9_105 w* f9_38_118; *)
smulj f9f9_38173 f9105 f9_38118;
(* _237 = f1f9_76_137 + f2f8_38_144; *)
sadd v237 f1f9_76137 f2f8_38144;
(* _25 = f0f0_119 + _237; *)
sadd v25 f0f0119 v237;
(* _26 = _25 + f3f7_76_150; *)
sadd v26 v25 f3f7_76150;
(* _27 = _26 + f4f6_38_155; *)
sadd v27 v26 f4f6_38155;
(* h0_174 = _27 + f5f5_38_159; *)
sadd h0174 v27 f5f5_38159;
(* _28 = f0f1_2_120 + f2f9_38_145; *)
sadd v28 f0f1_2120 f2f9_38145;
(* _29 = _28 + f3f8_38_151; *)
sadd v29 v28 f3f8_38151;
(* _30 = _29 + f4f7_38_156; *)
sadd v30 v29 f4f7_38156;
(* h1_175 = _30 + f5f6_38_160; *)
sadd h1175 v30 f5f6_38160;
(* _31 = f0f2_2_121 + f1f1_2_129; *)
sadd v31 f0f2_2121 f1f1_2129;
(* _32 = _31 + f3f9_76_152; *)
sadd v32 v31 f3f9_76152;
(* _33 = _32 + f4f8_38_157; *)
sadd v33 v32 f4f8_38157;
(* _34 = _33 + f5f7_76_161; *)
sadd v34 v33 f5f7_76161;
(* h2_176 = _34 + f6f6_19_164; *)
sadd h2176 v34 f6f6_19164;
(* _35 = f0f3_2_122 + f1f2_2_130; *)
sadd v35 f0f3_2122 f1f2_2130;
(* _36 = _35 + f4f9_38_158; *)
sadd v36 v35 f4f9_38158;
(* _37 = _36 + f5f8_38_162; *)
sadd v37 v36 f5f8_38162;
(* h3_177 = _37 + f6f7_38_165; *)
sadd h3177 v37 f6f7_38165;
(* _38 = f0f4_2_123 + f1f3_4_131; *)
sadd v38 f0f4_2123 f1f3_4131;
(* _39 = _38 + f2f2_138; *)
sadd v39 v38 f2f2138;
(* _40 = _39 + f5f9_76_163; *)
sadd v40 v39 f5f9_76163;
(* _41 = _40 + f6f8_38_166; *)
sadd v41 v40 f6f8_38166;
(* h4_178 = _41 + f7f7_38_168; *)
sadd h4178 v41 f7f7_38168;
(* _42 = f0f5_2_124 + f1f4_2_132; *)
sadd v42 f0f5_2124 f1f4_2132;
(* _43 = _42 + f2f3_2_139; *)
sadd v43 v42 f2f3_2139;
(* _44 = _43 + f6f9_38_167; *)
sadd v44 v43 f6f9_38167;
(* h5_179 = _44 + f7f8_38_169; *)
sadd h5179 v44 f7f8_38169;
(* _45 = f0f6_2_125 + f1f5_4_133; *)
sadd v45 f0f6_2125 f1f5_4133;
(* _46 = _45 + f2f4_2_140; *)
sadd v46 v45 f2f4_2140;
(* _47 = _46 + f3f3_2_146; *)
sadd v47 v46 f3f3_2146;
(* _48 = _47 + f7f9_76_170; *)
sadd v48 v47 f7f9_76170;
(* h6_180 = _48 + f8f8_19_171; *)
sadd h6180 v48 f8f8_19171;
(* _49 = f0f7_2_126 + f1f6_2_134; *)
sadd v49 f0f7_2126 f1f6_2134;
(* _50 = _49 + f2f5_2_141; *)
sadd v50 v49 f2f5_2141;
(* _51 = _50 + f3f4_2_147; *)
sadd v51 v50 f3f4_2147;
(* h7_181 = _51 + f8f9_38_172; *)
sadd h7181 v51 f8f9_38172;
(* _52 = f0f8_2_127 + f1f7_4_135; *)
sadd v52 f0f8_2127 f1f7_4135;
(* _235 = _52 + f4f4_153; *)
sadd v235 v52 f4f4153;
(* _236 = f2f6_2_142 + _235; *)
sadd v236 f2f6_2142 v235;
(* _55 = f3f5_4_148 + _236; *)
sadd v55 f3f5_4148 v236;
(* h8_182 = _55 + f9f9_38_173; *)
sadd h8182 v55 f9f9_38173;
(* _56 = f0f9_2_128 + f1f8_2_136; *)
sadd v56 f0f9_2128 f1f8_2136;
(* _57 = _56 + f2f7_2_143; *)
sadd v57 v56 f2f7_2143;
(* _58 = _57 + f3f6_2_149; *)
sadd v58 v57 f3f6_2149;
(* h9_183 = _58 + f4f5_2_154; *)
sadd h9183 v58 f4f5_2154;
(* _59 = h0_174 + 33554432; *)
sadd v59 h0174 33554432@int64;
(* carry0_184 = _59 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry0184 tmp_to_use v59 26;
(* h1_185 = h1_175 + carry0_184; *)
sadd h1185 h1175 carry0184;
(* _60 = _59 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v60 v59 (-67108864)@int64;
assert true && v60 = carry0184 * (2**26)@64;
assume v60 = carry0184 * (2**26) && true;
(* h0_186 = h0_174 - _60; *)
ssub h0186 h0174 v60;
(* _61 = h4_178 + 33554432; *)
sadd v61 h4178 33554432@int64;
(* carry4_187 = _61 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry4187 tmp_to_use v61 26;
(* h5_188 = h5_179 + carry4_187; *)
sadd h5188 h5179 carry4187;
(* _62 = _61 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v62 v61 (-67108864)@int64;
assert true && v62 = carry4187 * (2**26)@64;
assume v62 = carry4187 * (2**26) && true;
(* h4_189 = h4_178 - _62; *)
ssub h4189 h4178 v62;
(* _63 = h1_185 + 16777216; *)
sadd v63 h1185 16777216@int64;
(* carry1_190 = _63 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry1190 tmp_to_use v63 25;
(* h2_191 = h2_176 + carry1_190; *)
sadd h2191 h2176 carry1190;
(* _64 = _63 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v64 v63 (-33554432)@int64;
assert true && v64 = carry1190 * (2**25)@64;
assume v64 = carry1190 * (2**25) && true;
(* h1_192 = h1_185 - _64; *)
ssub h1192 h1185 v64;
(* _65 = h5_188 + 16777216; *)
sadd v65 h5188 16777216@int64;
(* carry5_193 = _65 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry5193 tmp_to_use v65 25;
(* h6_194 = h6_180 + carry5_193; *)
sadd h6194 h6180 carry5193;
(* _66 = _65 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v66 v65 (-33554432)@int64;
assert true && v66 = carry5193 * (2**25)@64;
assume v66 = carry5193 * (2**25) && true;
(* h5_195 = h5_188 - _66; *)
ssub h5195 h5188 v66;
(* _67 = h2_191 + 33554432; *)
sadd v67 h2191 33554432@int64;
(* carry2_196 = _67 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry2196 tmp_to_use v67 26;
(* h3_197 = h3_177 + carry2_196; *)
sadd h3197 h3177 carry2196;
(* _68 = _67 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v68 v67 (-67108864)@int64;
assert true && v68 = carry2196 * (2**26)@64;
assume v68 = carry2196 * (2**26) && true;
(* h2_198 = h2_191 - _68; *)
ssub h2198 h2191 v68;
(* _69 = h6_194 + 33554432; *)
sadd v69 h6194 33554432@int64;
(* carry6_199 = _69 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry6199 tmp_to_use v69 26;
(* h7_200 = h7_181 + carry6_199; *)
sadd h7200 h7181 carry6199;
(* _70 = _69 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v70 v69 (-67108864)@int64;
assert true && v70 = carry6199 * (2**26)@64;
assume v70 = carry6199 * (2**26) && true;
(* h6_201 = h6_194 - _70; *)
ssub h6201 h6194 v70;
(* _71 = h3_197 + 16777216; *)
sadd v71 h3197 16777216@int64;
(* carry3_202 = _71 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry3202 tmp_to_use v71 25;
(* h4_203 = h4_189 + carry3_202; *)
sadd h4203 h4189 carry3202;
(* _72 = _71 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v72 v71 (-33554432)@int64;
assert true && v72 = carry3202 * (2**25)@64;
assume v72 = carry3202 * (2**25) && true;
(* h3_204 = h3_197 - _72; *)
ssub h3204 h3197 v72;
(* _73 = h7_200 + 16777216; *)
sadd v73 h7200 16777216@int64;
(* carry7_205 = _73 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry7205 tmp_to_use v73 25;
(* h8_206 = h8_182 + carry7_205; *)
sadd h8206 h8182 carry7205;
(* _74 = _73 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v74 v73 (-33554432)@int64;
assert true && v74 = carry7205 * (2**25)@64;
assume v74 = carry7205 * (2**25) && true;
(* h7_207 = h7_200 - _74; *)
ssub h7207 h7200 v74;
(* _75 = h4_203 + 33554432; *)
sadd v75 h4203 33554432@int64;
(* carry4_208 = _75 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry4208 tmp_to_use v75 26;
(* h5_209 = h5_195 + carry4_208; *)
sadd h5209 h5195 carry4208;
(* _76 = _75 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v76 v75 (-67108864)@int64;
assert true && v76 = carry4208 * (2**26)@64;
assume v76 = carry4208 * (2**26) && true;
(* h4_210 = h4_203 - _76; *)
ssub h4210 h4203 v76;
(* _77 = h8_206 + 33554432; *)
sadd v77 h8206 33554432@int64;
(* carry8_211 = _77 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry8211 tmp_to_use v77 26;
(* h9_212 = h9_183 + carry8_211; *)
sadd h9212 h9183 carry8211;
(* _78 = _77 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v78 v77 (-67108864)@int64;
assert true && v78 = carry8211 * (2**26)@64;
assume v78 = carry8211 * (2**26) && true;
(* h8_213 = h8_206 - _78; *)
ssub h8213 h8206 v78;
(* _79 = h9_212 + 16777216; *)
sadd v79 h9212 16777216@int64;
(* carry9_214 = _79 >> 25; *)
(* TODO: singed operation, need check *)
ssplit carry9214 tmp_to_use v79 25;
(* _80 = carry9_214 * 19; *)
smul v80 carry9214 19@int64;
(* h0_215 = _80 + h0_186; *)
sadd h0215 v80 h0186;
(* _81 = _79 & -33554432; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4261412864 = 0xFE000000 *)
(* Note: low part 4261412864 = 0b11111110000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v81 v79 (-33554432)@int64;
assert true && v81 = carry9214 * (2**25)@64;
assume v81 = carry9214 * (2**25) && true;
(* h9_216 = h9_212 - _81; *)
ssub h9216 h9212 v81;
(* _82 = h0_215 + 33554432; *)
sadd v82 h0215 33554432@int64;
(* carry0_217 = _82 >> 26; *)
(* TODO: singed operation, need check *)
ssplit carry0217 tmp_to_use v82 26;
(* h1_218 = h1_192 + carry0_217; *)
sadd h1218 h1192 carry0217;
(* _83 = _82 & -67108864; *)
(* TODO: singed operation, need check semantics *)
(* Note: high part 0 = 0x00000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000 *)
(* Note: low part 4227858432 = 0xFC000000 *)
(* Note: low part 4227858432 = 0b11111100000000000000000000000000 *)
(* TODO: check heuristic or self translate *)
and int64 v83 v82 (-67108864)@int64;
assert true && v83 = carry0217 * (2**26)@64;
assume v83 = carry0217 * (2**26) && true;
(* h0_219 = h0_215 - _83; *)
ssub h0219 h0215 v83;
(* _84 = (int) h0_219; *)
vpc int32 v84 h0219;
(* *h_220(D) = _84; *)
mov h220_0 v84;
(* _85 = (int) h1_218; *)
vpc int32 v85 h1218;
(* MEM[(int32_t * )h_220(D) + 4B] = _85; *)
mov h220_4 v85;
(* _86 = (int) h2_198; *)
vpc int32 v86 h2198;
(* MEM[(int32_t * )h_220(D) + 8B] = _86; *)
mov h220_8 v86;
(* _87 = (int) h3_204; *)
vpc int32 v87 h3204;
(* MEM[(int32_t * )h_220(D) + 12B] = _87; *)
mov h220_12 v87;
(* _88 = (int) h4_210; *)
vpc int32 v88 h4210;
(* MEM[(int32_t * )h_220(D) + 16B] = _88; *)
mov h220_16 v88;
(* _89 = (int) h5_209; *)
vpc int32 v89 h5209;
(* MEM[(int32_t * )h_220(D) + 20B] = _89; *)
mov h220_20 v89;
(* _90 = (int) h6_201; *)
vpc int32 v90 h6201;
(* MEM[(int32_t * )h_220(D) + 24B] = _90; *)
mov h220_24 v90;
(* _91 = (int) h7_207; *)
vpc int32 v91 h7207;
(* MEM[(int32_t * )h_220(D) + 28B] = _91; *)
mov h220_28 v91;
(* _92 = (int) h8_213; *)
vpc int32 v92 h8213;
(* MEM[(int32_t * )h_220(D) + 32B] = _92; *)
mov h220_32 v92;
(* _93 = (int) h9_216; *)
vpc int32 v93 h9216;
(* MEM[(int32_t * )h_220(D) + 36B] = _93; *)
mov h220_36 v93;
(* return; *)

(* Start with undefined lhs *)
mov c0 h220_0;
mov c1 h220_4;
mov c2 h220_8;
mov c3 h220_12;
mov c4 h220_16;
mov c5 h220_20;
mov c6 h220_24;
mov c7 h220_28;
mov c8 h220_32;
mov c9 h220_36;
(* End with undefined lhs *)

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
    *
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
    c0 <=s (33889976)@32,
    c0 >=s (-33889976)@32,
    c1 <=s (16944988)@32,
    c1 >=s (-16944988)@32,
    c2 <=s (33889976)@32,
    c2 >=s (-33889976)@32,
    c3 <=s (16944988)@32,
    c3 >=s (-16944988)@32,
    c4 <=s (33889976)@32,
    c4 >=s (-33889976)@32,
    c5 <=s (16944988)@32,
    c5 >=s (-16944988)@32,
    c6 <=s (33889976)@32,
    c6 >=s (-33889976)@32,
    c7 <=s (16944988)@32,
    c7 >=s (-16944988)@32,
    c8 <=s (33889976)@32,
    c8 >=s (-33889976)@32,
    c9 <=s (16944988)@32,
    c9 >=s (-16944988)@32
  ]
}


proc main (int32 x1_0, int32 x1_4, int32 x1_8, int32 x1_12, int32 x1_16, int32 x1_20, int32 x1_24, int32 x1_28, int32 x1_32, int32 x1_36, int32 x2_0, int32 x2_4, int32 x2_8, int32 x2_12, int32 x2_16, int32 x2_20, int32 x2_24, int32 x2_28, int32 x2_32, int32 x2_36, int32 x3_0, int32 x3_4, int32 x3_8, int32 x3_12, int32 x3_16, int32 x3_20, int32 x3_24, int32 x3_28, int32 x3_32, int32 x3_36, int32 z2_0, int32 z2_4, int32 z2_8, int32 z2_12, int32 z2_16, int32 z2_20, int32 z2_24, int32 z2_28, int32 z2_32, int32 z2_36, int32 z3_0, int32 z3_4, int32 z3_8, int32 z3_12, int32 z3_16, int32 z3_20, int32 z3_24, int32 z3_28, int32 z3_32, int32 z3_36) =
{
  true
  &&
  and
  [
    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0 <=s (36909875)@32,
    x2_0 >=s (-36909875)@32,
    x2_4 <=s (18454937)@32,
    x2_4 >=s (-18454937)@32,
    x2_8 <=s (36909875)@32,
    x2_8 >=s (-36909875)@32,
    x2_12 <=s (18454937)@32,
    x2_12 >=s (-18454937)@32,
    x2_16 <=s (36909875)@32,
    x2_16 >=s (-36909875)@32,
    x2_20 <=s (18454937)@32,
    x2_20 >=s (-18454937)@32,
    x2_24 <=s (36909875)@32,
    x2_24 >=s (-36909875)@32,
    x2_28 <=s (18454937)@32,
    x2_28 >=s (-18454937)@32,
    x2_32 <=s (36909875)@32,
    x2_32 >=s (-36909875)@32,
    x2_36 <=s (18454937)@32,
    x2_36 >=s (-18454937)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0 <=s (36909875)@32,
    z2_0 >=s (-36909875)@32,
    z2_4 <=s (18454937)@32,
    z2_4 >=s (-18454937)@32,
    z2_8 <=s (36909875)@32,
    z2_8 >=s (-36909875)@32,
    z2_12 <=s (18454937)@32,
    z2_12 >=s (-18454937)@32,
    z2_16 <=s (36909875)@32,
    z2_16 >=s (-36909875)@32,
    z2_20 <=s (18454937)@32,
    z2_20 >=s (-18454937)@32,
    z2_24 <=s (36909875)@32,
    z2_24 >=s (-36909875)@32,
    z2_28 <=s (18454937)@32,
    z2_28 >=s (-18454937)@32,
    z2_32 <=s (36909875)@32,
    z2_32 >=s (-36909875)@32,
    z2_36 <=s (18454937)@32,
    z2_36 >=s (-18454937)@32,

    z3_0 <=s (36909875)@32,
    z3_0 >=s (-36909875)@32,
    z3_4 <=s (18454937)@32,
    z3_4 >=s (-18454937)@32,
    z3_8 <=s (36909875)@32,
    z3_8 >=s (-36909875)@32,
    z3_12 <=s (18454937)@32,
    z3_12 >=s (-18454937)@32,
    z3_16 <=s (36909875)@32,
    z3_16 >=s (-36909875)@32,
    z3_20 <=s (18454937)@32,
    z3_20 >=s (-18454937)@32,
    z3_24 <=s (36909875)@32,
    z3_24 >=s (-36909875)@32,
    z3_28 <=s (18454937)@32,
    z3_28 >=s (-18454937)@32,
    z3_32 <=s (36909875)@32,
    z3_32 >=s (-36909875)@32,
    z3_36 <=s (18454937)@32,
    z3_36 >=s (-18454937)@32
  ]
}




(* fe_sub (&tmp0, &x3, &z3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)


call fe_sub(x3_0, x3_4 ,x3_8, x3_12, x3_16, x3_20, x3_24, x3_28, x3_32, x3_36, z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36, tmp0_0_v1, tmp0_4_v1 ,tmp0_8_v1, tmp0_12_v1, tmp0_16_v1, tmp0_20_v1, tmp0_24_v1, tmp0_28_v1, tmp0_32_v1, tmp0_36_v1);

cut
    (
    tmp0_0_v1 +
    tmp0_4_v1 * (2**26) +
    tmp0_8_v1 * (2**51) +
    tmp0_12_v1 * (2**77) +
    tmp0_16_v1 * (2**102) +
    tmp0_20_v1 * (2**128) +
    tmp0_24_v1 * (2**153) +
    tmp0_28_v1 * (2**179) +
    tmp0_32_v1 * (2**204) +
    tmp0_36_v1 * (2**230)
  )
  =
  (
    (
      x3_0 +
      x3_4 * (2**26) +
      x3_8 * (2**51) +
      x3_12 * (2**77) +
      x3_16 * (2**102) +
      x3_20 * (2**128) +
      x3_24 * (2**153) +
      x3_28 * (2**179) +
      x3_32 * (2**204) +
      x3_36 * (2**230)
    )
    -
    (
      z3_0 +
      z3_4 * (2**26) +
      z3_8 * (2**51) +
      z3_12 * (2**77) +
      z3_16 * (2**102) +
      z3_20 * (2**128) +
      z3_24 * (2**153) +
      z3_28 * (2**179) +
      z3_32 * (2**204) +
      z3_36 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [
    tmp0_0_v1 <=s (73819750)@32,
    tmp0_0_v1 >=s (-73819750)@32,
    tmp0_4_v1 <=s (36909875)@32,
    tmp0_4_v1 >=s (-36909875)@32,
    tmp0_8_v1 <=s (73819750)@32,
    tmp0_8_v1 >=s (-73819750)@32,
    tmp0_12_v1 <=s (36909875)@32,
    tmp0_12_v1 >=s (-36909875)@32,
    tmp0_16_v1 <=s (73819750)@32,
    tmp0_16_v1 >=s (-73819750)@32,
    tmp0_20_v1 <=s (36909875)@32,
    tmp0_20_v1 >=s (-36909875)@32,
    tmp0_24_v1 <=s (73819750)@32,
    tmp0_24_v1 >=s (-73819750)@32,
    tmp0_28_v1 <=s (36909875)@32,
    tmp0_28_v1 >=s (-36909875)@32,
    tmp0_32_v1 <=s (73819750)@32,
    tmp0_32_v1 >=s (-73819750)@32,
    tmp0_36_v1 <=s (36909875)@32,
    tmp0_36_v1 >=s (-36909875)@32,

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0 <=s (36909875)@32,
    x2_0 >=s (-36909875)@32,
    x2_4 <=s (18454937)@32,
    x2_4 >=s (-18454937)@32,
    x2_8 <=s (36909875)@32,
    x2_8 >=s (-36909875)@32,
    x2_12 <=s (18454937)@32,
    x2_12 >=s (-18454937)@32,
    x2_16 <=s (36909875)@32,
    x2_16 >=s (-36909875)@32,
    x2_20 <=s (18454937)@32,
    x2_20 >=s (-18454937)@32,
    x2_24 <=s (36909875)@32,
    x2_24 >=s (-36909875)@32,
    x2_28 <=s (18454937)@32,
    x2_28 >=s (-18454937)@32,
    x2_32 <=s (36909875)@32,
    x2_32 >=s (-36909875)@32,
    x2_36 <=s (18454937)@32,
    x2_36 >=s (-18454937)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0 <=s (36909875)@32,
    z2_0 >=s (-36909875)@32,
    z2_4 <=s (18454937)@32,
    z2_4 >=s (-18454937)@32,
    z2_8 <=s (36909875)@32,
    z2_8 >=s (-36909875)@32,
    z2_12 <=s (18454937)@32,
    z2_12 >=s (-18454937)@32,
    z2_16 <=s (36909875)@32,
    z2_16 >=s (-36909875)@32,
    z2_20 <=s (18454937)@32,
    z2_20 >=s (-18454937)@32,
    z2_24 <=s (36909875)@32,
    z2_24 >=s (-36909875)@32,
    z2_28 <=s (18454937)@32,
    z2_28 >=s (-18454937)@32,
    z2_32 <=s (36909875)@32,
    z2_32 >=s (-36909875)@32,
    z2_36 <=s (18454937)@32,
    z2_36 >=s (-18454937)@32,

    z3_0 <=s (36909875)@32,
    z3_0 >=s (-36909875)@32,
    z3_4 <=s (18454937)@32,
    z3_4 >=s (-18454937)@32,
    z3_8 <=s (36909875)@32,
    z3_8 >=s (-36909875)@32,
    z3_12 <=s (18454937)@32,
    z3_12 >=s (-18454937)@32,
    z3_16 <=s (36909875)@32,
    z3_16 >=s (-36909875)@32,
    z3_20 <=s (18454937)@32,
    z3_20 >=s (-18454937)@32,
    z3_24 <=s (36909875)@32,
    z3_24 >=s (-36909875)@32,
    z3_28 <=s (18454937)@32,
    z3_28 >=s (-18454937)@32,
    z3_32 <=s (36909875)@32,
    z3_32 >=s (-36909875)@32,
    z3_36 <=s (18454937)@32,
    z3_36 >=s (-18454937)@32

  ]  prove with all ghosts, all cuts;

(* fe_sub (&tmp1, &x2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sub(x2_0, x2_4 ,x2_8, x2_12, x2_16, x2_20, x2_24, x2_28, x2_32, x2_36,z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36,tmp1_0_v1, tmp1_4_v1 ,tmp1_8_v1, tmp1_12_v1, tmp1_16_v1, tmp1_20_v1, tmp1_24_v1, tmp1_28_v1, tmp1_32_v1, tmp1_36_v1);

cut
    (
    tmp1_0_v1 +
    tmp1_4_v1 * (2**26) +
    tmp1_8_v1 * (2**51) +
    tmp1_12_v1 * (2**77) +
    tmp1_16_v1 * (2**102) +
    tmp1_20_v1 * (2**128) +
    tmp1_24_v1 * (2**153) +
    tmp1_28_v1 * (2**179) +
    tmp1_32_v1 * (2**204) +
    tmp1_36_v1 * (2**230)
  )
  =
  (
    (
      x2_0 +
      x2_4 * (2**26) +
      x2_8 * (2**51) +
      x2_12 * (2**77) +
      x2_16 * (2**102) +
      x2_20 * (2**128) +
      x2_24 * (2**153) +
      x2_28 * (2**179) +
      x2_32 * (2**204) +
      x2_36 * (2**230)
    )
    -
    (
      z2_0 +
      z2_4 * (2**26) +
      z2_8 * (2**51) +
      z2_12 * (2**77) +
      z2_16 * (2**102) +
      z2_20 * (2**128) +
      z2_24 * (2**153) +
      z2_28 * (2**179) +
      z2_32 * (2**204) +
      z2_36 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [
    tmp1_0_v1 <=s (73819750)@32,
    tmp1_0_v1 >=s (-73819750)@32,
    tmp1_4_v1 <=s (36909875)@32,
    tmp1_4_v1 >=s (-36909875)@32,
    tmp1_8_v1 <=s (73819750)@32,
    tmp1_8_v1 >=s (-73819750)@32,
    tmp1_12_v1 <=s (36909875)@32,
    tmp1_12_v1 >=s (-36909875)@32,
    tmp1_16_v1 <=s (73819750)@32,
    tmp1_16_v1 >=s (-73819750)@32,
    tmp1_20_v1 <=s (36909875)@32,
    tmp1_20_v1 >=s (-36909875)@32,
    tmp1_24_v1 <=s (73819750)@32,
    tmp1_24_v1 >=s (-73819750)@32,
    tmp1_28_v1 <=s (36909875)@32,
    tmp1_28_v1 >=s (-36909875)@32,
    tmp1_32_v1 <=s (73819750)@32,
    tmp1_32_v1 >=s (-73819750)@32,
    tmp1_36_v1 <=s (36909875)@32,
    tmp1_36_v1 >=s (-36909875)@32,

    (* previous cut *)
    tmp0_0_v1 <=s (73819750)@32,
    tmp0_0_v1 >=s (-73819750)@32,
    tmp0_4_v1 <=s (36909875)@32,
    tmp0_4_v1 >=s (-36909875)@32,
    tmp0_8_v1 <=s (73819750)@32,
    tmp0_8_v1 >=s (-73819750)@32,
    tmp0_12_v1 <=s (36909875)@32,
    tmp0_12_v1 >=s (-36909875)@32,
    tmp0_16_v1 <=s (73819750)@32,
    tmp0_16_v1 >=s (-73819750)@32,
    tmp0_20_v1 <=s (36909875)@32,
    tmp0_20_v1 >=s (-36909875)@32,
    tmp0_24_v1 <=s (73819750)@32,
    tmp0_24_v1 >=s (-73819750)@32,
    tmp0_28_v1 <=s (36909875)@32,
    tmp0_28_v1 >=s (-36909875)@32,
    tmp0_32_v1 <=s (73819750)@32,
    tmp0_32_v1 >=s (-73819750)@32,
    tmp0_36_v1 <=s (36909875)@32,
    tmp0_36_v1 >=s (-36909875)@32,

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0 <=s (36909875)@32,
    x2_0 >=s (-36909875)@32,
    x2_4 <=s (18454937)@32,
    x2_4 >=s (-18454937)@32,
    x2_8 <=s (36909875)@32,
    x2_8 >=s (-36909875)@32,
    x2_12 <=s (18454937)@32,
    x2_12 >=s (-18454937)@32,
    x2_16 <=s (36909875)@32,
    x2_16 >=s (-36909875)@32,
    x2_20 <=s (18454937)@32,
    x2_20 >=s (-18454937)@32,
    x2_24 <=s (36909875)@32,
    x2_24 >=s (-36909875)@32,
    x2_28 <=s (18454937)@32,
    x2_28 >=s (-18454937)@32,
    x2_32 <=s (36909875)@32,
    x2_32 >=s (-36909875)@32,
    x2_36 <=s (18454937)@32,
    x2_36 >=s (-18454937)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0 <=s (36909875)@32,
    z2_0 >=s (-36909875)@32,
    z2_4 <=s (18454937)@32,
    z2_4 >=s (-18454937)@32,
    z2_8 <=s (36909875)@32,
    z2_8 >=s (-36909875)@32,
    z2_12 <=s (18454937)@32,
    z2_12 >=s (-18454937)@32,
    z2_16 <=s (36909875)@32,
    z2_16 >=s (-36909875)@32,
    z2_20 <=s (18454937)@32,
    z2_20 >=s (-18454937)@32,
    z2_24 <=s (36909875)@32,
    z2_24 >=s (-36909875)@32,
    z2_28 <=s (18454937)@32,
    z2_28 >=s (-18454937)@32,
    z2_32 <=s (36909875)@32,
    z2_32 >=s (-36909875)@32,
    z2_36 <=s (18454937)@32,
    z2_36 >=s (-18454937)@32,

    z3_0 <=s (36909875)@32,
    z3_0 >=s (-36909875)@32,
    z3_4 <=s (18454937)@32,
    z3_4 >=s (-18454937)@32,
    z3_8 <=s (36909875)@32,
    z3_8 >=s (-36909875)@32,
    z3_12 <=s (18454937)@32,
    z3_12 >=s (-18454937)@32,
    z3_16 <=s (36909875)@32,
    z3_16 >=s (-36909875)@32,
    z3_20 <=s (18454937)@32,
    z3_20 >=s (-18454937)@32,
    z3_24 <=s (36909875)@32,
    z3_24 >=s (-36909875)@32,
    z3_28 <=s (18454937)@32,
    z3_28 >=s (-18454937)@32,
    z3_32 <=s (36909875)@32,
    z3_32 >=s (-36909875)@32,
    z3_36 <=s (18454937)@32,
    z3_36 >=s (-18454937)@32
  ]  prove with all ghosts, all cuts;

(* fe_add (&x2, &x2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_add(x2_0, x2_4 ,x2_8, x2_12, x2_16, x2_20, x2_24, x2_28, x2_32, x2_36,z2_0, z2_4 ,z2_8, z2_12, z2_16, z2_20, z2_24, z2_28, z2_32, z2_36, x2_0_v2, x2_4_v2 ,x2_8_v2, x2_12_v2, x2_16_v2, x2_20_v2, x2_24_v2, x2_28_v2, x2_32_v2, x2_36_v2);

cut
    (
    x2_0_v2 +
    x2_4_v2 * (2**26) +
    x2_8_v2 * (2**51) +
    x2_12_v2 * (2**77) +
    x2_16_v2 * (2**102) +
    x2_20_v2 * (2**128) +
    x2_24_v2 * (2**153) +
    x2_28_v2 * (2**179) +
    x2_32_v2 * (2**204) +
    x2_36_v2 * (2**230)
  )
  =
  (
    (
      x2_0 +
      x2_4 * (2**26) +
      x2_8 * (2**51) +
      x2_12 * (2**77) +
      x2_16 * (2**102) +
      x2_20 * (2**128) +
      x2_24 * (2**153) +
      x2_28 * (2**179) +
      x2_32 * (2**204) +
      x2_36 * (2**230)
    )
    +
    (
      z2_0 +
      z2_4 * (2**26) +
      z2_8 * (2**51) +
      z2_12 * (2**77) +
      z2_16 * (2**102) +
      z2_20 * (2**128) +
      z2_24 * (2**153) +
      z2_28 * (2**179) +
      z2_32 * (2**204) +
      z2_36 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0 <=s (36909875)@32,
    z2_0 >=s (-36909875)@32,
    z2_4 <=s (18454937)@32,
    z2_4 >=s (-18454937)@32,
    z2_8 <=s (36909875)@32,
    z2_8 >=s (-36909875)@32,
    z2_12 <=s (18454937)@32,
    z2_12 >=s (-18454937)@32,
    z2_16 <=s (36909875)@32,
    z2_16 >=s (-36909875)@32,
    z2_20 <=s (18454937)@32,
    z2_20 >=s (-18454937)@32,
    z2_24 <=s (36909875)@32,
    z2_24 >=s (-36909875)@32,
    z2_28 <=s (18454937)@32,
    z2_28 >=s (-18454937)@32,
    z2_32 <=s (36909875)@32,
    z2_32 >=s (-36909875)@32,
    z2_36 <=s (18454937)@32,
    z2_36 >=s (-18454937)@32,

    z3_0 <=s (36909875)@32,
    z3_0 >=s (-36909875)@32,
    z3_4 <=s (18454937)@32,
    z3_4 >=s (-18454937)@32,
    z3_8 <=s (36909875)@32,
    z3_8 >=s (-36909875)@32,
    z3_12 <=s (18454937)@32,
    z3_12 >=s (-18454937)@32,
    z3_16 <=s (36909875)@32,
    z3_16 >=s (-36909875)@32,
    z3_20 <=s (18454937)@32,
    z3_20 >=s (-18454937)@32,
    z3_24 <=s (36909875)@32,
    z3_24 >=s (-36909875)@32,
    z3_28 <=s (18454937)@32,
    z3_28 >=s (-18454937)@32,
    z3_32 <=s (36909875)@32,
    z3_32 >=s (-36909875)@32,
    z3_36 <=s (18454937)@32,
    z3_36 >=s (-18454937)@32,

    tmp1_0_v1 <=s (73819750)@32,
    tmp1_0_v1 >=s (-73819750)@32,
    tmp1_4_v1 <=s (36909875)@32,
    tmp1_4_v1 >=s (-36909875)@32,
    tmp1_8_v1 <=s (73819750)@32,
    tmp1_8_v1 >=s (-73819750)@32,
    tmp1_12_v1 <=s (36909875)@32,
    tmp1_12_v1 >=s (-36909875)@32,
    tmp1_16_v1 <=s (73819750)@32,
    tmp1_16_v1 >=s (-73819750)@32,
    tmp1_20_v1 <=s (36909875)@32,
    tmp1_20_v1 >=s (-36909875)@32,
    tmp1_24_v1 <=s (73819750)@32,
    tmp1_24_v1 >=s (-73819750)@32,
    tmp1_28_v1 <=s (36909875)@32,
    tmp1_28_v1 >=s (-36909875)@32,
    tmp1_32_v1 <=s (73819750)@32,
    tmp1_32_v1 >=s (-73819750)@32,
    tmp1_36_v1 <=s (36909875)@32,
    tmp1_36_v1 >=s (-36909875)@32,
    tmp0_0_v1 <=s (73819750)@32,
    tmp0_0_v1 >=s (-73819750)@32,
    tmp0_4_v1 <=s (36909875)@32,
    tmp0_4_v1 >=s (-36909875)@32,
    tmp0_8_v1 <=s (73819750)@32,
    tmp0_8_v1 >=s (-73819750)@32,
    tmp0_12_v1 <=s (36909875)@32,
    tmp0_12_v1 >=s (-36909875)@32,
    tmp0_16_v1 <=s (73819750)@32,
    tmp0_16_v1 >=s (-73819750)@32,
    tmp0_20_v1 <=s (36909875)@32,
    tmp0_20_v1 >=s (-36909875)@32,
    tmp0_24_v1 <=s (73819750)@32,
    tmp0_24_v1 >=s (-73819750)@32,
    tmp0_28_v1 <=s (36909875)@32,
    tmp0_28_v1 >=s (-36909875)@32,
    tmp0_32_v1 <=s (73819750)@32,
    tmp0_32_v1 >=s (-73819750)@32,
    tmp0_36_v1 <=s (36909875)@32,
    tmp0_36_v1 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;


(* fe_add (&z2, &x3, &z3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_add(x3_0, x3_4 ,x3_8, x3_12, x3_16, x3_20, x3_24, x3_28, x3_32, x3_36, z3_0, z3_4 ,z3_8, z3_12, z3_16, z3_20, z3_24, z3_28, z3_32, z3_36, z2_0_v2, z2_4_v2 ,z2_8_v2, z2_12_v2, z2_16_v2, z2_20_v2, z2_24_v2, z2_28_v2, z2_32_v2, z2_36_v2);

cut
    (
    z2_0_v2 +
    z2_4_v2 * (2**26) +
    z2_8_v2 * (2**51) +
    z2_12_v2 * (2**77) +
    z2_16_v2 * (2**102) +
    z2_20_v2 * (2**128) +
    z2_24_v2 * (2**153) +
    z2_28_v2 * (2**179) +
    z2_32_v2 * (2**204) +
    z2_36_v2 * (2**230)
  )
  =
  (
    (
      x3_0 +
      x3_4 * (2**26) +
      x3_8 * (2**51) +
      x3_12 * (2**77) +
      x3_16 * (2**102) +
      x3_20 * (2**128) +
      x3_24 * (2**153) +
      x3_28 * (2**179) +
      x3_32 * (2**204) +
      x3_36 * (2**230)
    )
    +
    (
      z3_0 +
      z3_4 * (2**26) +
      z3_8 * (2**51) +
      z3_12 * (2**77) +
      z3_16 * (2**102) +
      z3_20 * (2**128) +
      z3_24 * (2**153) +
      z3_28 * (2**179) +
      z3_32 * (2**204) +
      z3_36 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0_v2 <=s (73819750)@32,
    z2_0_v2 >=s (-73819750)@32,
    z2_4_v2 <=s (36909875)@32,
    z2_4_v2 >=s (-36909875)@32,
    z2_8_v2 <=s (73819750)@32,
    z2_8_v2 >=s (-73819750)@32,
    z2_12_v2 <=s (36909875)@32,
    z2_12_v2 >=s (-36909875)@32,
    z2_16_v2 <=s (73819750)@32,
    z2_16_v2 >=s (-73819750)@32,
    z2_20_v2 <=s (36909875)@32,
    z2_20_v2 >=s (-36909875)@32,
    z2_24_v2 <=s (73819750)@32,
    z2_24_v2 >=s (-73819750)@32,
    z2_28_v2 <=s (36909875)@32,
    z2_28_v2 >=s (-36909875)@32,
    z2_32_v2 <=s (73819750)@32,
    z2_32_v2 >=s (-73819750)@32,
    z2_36_v2 <=s (36909875)@32,
    z2_36_v2 >=s (-36909875)@32,

    z3_0 <=s (36909875)@32,
    z3_0 >=s (-36909875)@32,
    z3_4 <=s (18454937)@32,
    z3_4 >=s (-18454937)@32,
    z3_8 <=s (36909875)@32,
    z3_8 >=s (-36909875)@32,
    z3_12 <=s (18454937)@32,
    z3_12 >=s (-18454937)@32,
    z3_16 <=s (36909875)@32,
    z3_16 >=s (-36909875)@32,
    z3_20 <=s (18454937)@32,
    z3_20 >=s (-18454937)@32,
    z3_24 <=s (36909875)@32,
    z3_24 >=s (-36909875)@32,
    z3_28 <=s (18454937)@32,
    z3_28 >=s (-18454937)@32,
    z3_32 <=s (36909875)@32,
    z3_32 >=s (-36909875)@32,
    z3_36 <=s (18454937)@32,
    z3_36 >=s (-18454937)@32,

    tmp1_0_v1 <=s (73819750)@32,
    tmp1_0_v1 >=s (-73819750)@32,
    tmp1_4_v1 <=s (36909875)@32,
    tmp1_4_v1 >=s (-36909875)@32,
    tmp1_8_v1 <=s (73819750)@32,
    tmp1_8_v1 >=s (-73819750)@32,
    tmp1_12_v1 <=s (36909875)@32,
    tmp1_12_v1 >=s (-36909875)@32,
    tmp1_16_v1 <=s (73819750)@32,
    tmp1_16_v1 >=s (-73819750)@32,
    tmp1_20_v1 <=s (36909875)@32,
    tmp1_20_v1 >=s (-36909875)@32,
    tmp1_24_v1 <=s (73819750)@32,
    tmp1_24_v1 >=s (-73819750)@32,
    tmp1_28_v1 <=s (36909875)@32,
    tmp1_28_v1 >=s (-36909875)@32,
    tmp1_32_v1 <=s (73819750)@32,
    tmp1_32_v1 >=s (-73819750)@32,
    tmp1_36_v1 <=s (36909875)@32,
    tmp1_36_v1 >=s (-36909875)@32,
    tmp0_0_v1 <=s (73819750)@32,
    tmp0_0_v1 >=s (-73819750)@32,
    tmp0_4_v1 <=s (36909875)@32,
    tmp0_4_v1 >=s (-36909875)@32,
    tmp0_8_v1 <=s (73819750)@32,
    tmp0_8_v1 >=s (-73819750)@32,
    tmp0_12_v1 <=s (36909875)@32,
    tmp0_12_v1 >=s (-36909875)@32,
    tmp0_16_v1 <=s (73819750)@32,
    tmp0_16_v1 >=s (-73819750)@32,
    tmp0_20_v1 <=s (36909875)@32,
    tmp0_20_v1 >=s (-36909875)@32,
    tmp0_24_v1 <=s (73819750)@32,
    tmp0_24_v1 >=s (-73819750)@32,
    tmp0_28_v1 <=s (36909875)@32,
    tmp0_28_v1 >=s (-36909875)@32,
    tmp0_32_v1 <=s (73819750)@32,
    tmp0_32_v1 >=s (-73819750)@32,
    tmp0_36_v1 <=s (36909875)@32,
    tmp0_36_v1 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;

(* fe_mul (&z3, &tmp0, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul(tmp0_0_v1, tmp0_4_v1 ,tmp0_8_v1, tmp0_12_v1, tmp0_16_v1, tmp0_20_v1, tmp0_24_v1, tmp0_28_v1, tmp0_32_v1, tmp0_36_v1, x2_0_v2, x2_4_v2 ,x2_8_v2, x2_12_v2, x2_16_v2, x2_20_v2, x2_24_v2, x2_28_v2, x2_32_v2, x2_36_v2, z3_0_v2, z3_4_v2 ,z3_8_v2, z3_12_v2, z3_16_v2, z3_20_v2, z3_24_v2, z3_28_v2, z3_32_v2, z3_36_v2);

cut
  (
    z3_0_v2 +
    z3_4_v2 * (2**26) +
    z3_8_v2 * (2**51) +
    z3_12_v2 * (2**77) +
    z3_16_v2 * (2**102) +
    z3_20_v2 * (2**128) +
    z3_24_v2 * (2**153) +
    z3_28_v2 * (2**179) +
    z3_32_v2 * (2**204) +
    z3_36_v2 * (2**230)
  )
  =
  (
    (
      tmp0_0_v1 +
      tmp0_4_v1 * (2**26) +
      tmp0_8_v1 * (2**51) +
      tmp0_12_v1 * (2**77) +
      tmp0_16_v1 * (2**102) +
      tmp0_20_v1 * (2**128) +
      tmp0_24_v1 * (2**153) +
      tmp0_28_v1 * (2**179) +
      tmp0_32_v1 * (2**204) +
      tmp0_36_v1 * (2**230)
    )
    *
    (
      x2_0_v2 +
      x2_4_v2 * (2**26) +
      x2_8_v2 * (2**51) +
      x2_12_v2 * (2**77) +
      x2_16_v2 * (2**102) +
      x2_20_v2 * (2**128) +
      x2_24_v2 * (2**153) +
      x2_28_v2 * (2**179) +
      x2_32_v2 * (2**204) +
      x2_36_v2 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0_v2 <=s (73819750)@32,
    z2_0_v2 >=s (-73819750)@32,
    z2_4_v2 <=s (36909875)@32,
    z2_4_v2 >=s (-36909875)@32,
    z2_8_v2 <=s (73819750)@32,
    z2_8_v2 >=s (-73819750)@32,
    z2_12_v2 <=s (36909875)@32,
    z2_12_v2 >=s (-36909875)@32,
    z2_16_v2 <=s (73819750)@32,
    z2_16_v2 >=s (-73819750)@32,
    z2_20_v2 <=s (36909875)@32,
    z2_20_v2 >=s (-36909875)@32,
    z2_24_v2 <=s (73819750)@32,
    z2_24_v2 >=s (-73819750)@32,
    z2_28_v2 <=s (36909875)@32,
    z2_28_v2 >=s (-36909875)@32,
    z2_32_v2 <=s (73819750)@32,
    z2_32_v2 >=s (-73819750)@32,
    z2_36_v2 <=s (36909875)@32,
    z2_36_v2 >=s (-36909875)@32,

    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp1_0_v1 <=s (73819750)@32,
    tmp1_0_v1 >=s (-73819750)@32,
    tmp1_4_v1 <=s (36909875)@32,
    tmp1_4_v1 >=s (-36909875)@32,
    tmp1_8_v1 <=s (73819750)@32,
    tmp1_8_v1 >=s (-73819750)@32,
    tmp1_12_v1 <=s (36909875)@32,
    tmp1_12_v1 >=s (-36909875)@32,
    tmp1_16_v1 <=s (73819750)@32,
    tmp1_16_v1 >=s (-73819750)@32,
    tmp1_20_v1 <=s (36909875)@32,
    tmp1_20_v1 >=s (-36909875)@32,
    tmp1_24_v1 <=s (73819750)@32,
    tmp1_24_v1 >=s (-73819750)@32,
    tmp1_28_v1 <=s (36909875)@32,
    tmp1_28_v1 >=s (-36909875)@32,
    tmp1_32_v1 <=s (73819750)@32,
    tmp1_32_v1 >=s (-73819750)@32,
    tmp1_36_v1 <=s (36909875)@32,
    tmp1_36_v1 >=s (-36909875)@32,
    tmp0_0_v1 <=s (73819750)@32,
    tmp0_0_v1 >=s (-73819750)@32,
    tmp0_4_v1 <=s (36909875)@32,
    tmp0_4_v1 >=s (-36909875)@32,
    tmp0_8_v1 <=s (73819750)@32,
    tmp0_8_v1 >=s (-73819750)@32,
    tmp0_12_v1 <=s (36909875)@32,
    tmp0_12_v1 >=s (-36909875)@32,
    tmp0_16_v1 <=s (73819750)@32,
    tmp0_16_v1 >=s (-73819750)@32,
    tmp0_20_v1 <=s (36909875)@32,
    tmp0_20_v1 >=s (-36909875)@32,
    tmp0_24_v1 <=s (73819750)@32,
    tmp0_24_v1 >=s (-73819750)@32,
    tmp0_28_v1 <=s (36909875)@32,
    tmp0_28_v1 >=s (-36909875)@32,
    tmp0_32_v1 <=s (73819750)@32,
    tmp0_32_v1 >=s (-73819750)@32,
    tmp0_36_v1 <=s (36909875)@32,
    tmp0_36_v1 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;

(* fe_mul (&z2, &z2, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul(z2_0_v2, z2_4_v2 ,z2_8_v2, z2_12_v2, z2_16_v2, z2_20_v2, z2_24_v2, z2_28_v2, z2_32_v2, z2_36_v2,tmp1_0_v1, tmp1_4_v1 ,tmp1_8_v1, tmp1_12_v1, tmp1_16_v1, tmp1_20_v1, tmp1_24_v1, tmp1_28_v1, tmp1_32_v1, tmp1_36_v1,z2_0_v3, z2_4_v3 ,z2_8_v3, z2_12_v3, z2_16_v3, z2_20_v3, z2_24_v3, z2_28_v3, z2_32_v3, z2_36_v3);
cut
  (
    z2_0_v3 +
    z2_4_v3 * (2**26) +
    z2_8_v3 * (2**51) +
    z2_12_v3 * (2**77) +
    z2_16_v3 * (2**102) +
    z2_20_v3 * (2**128) +
    z2_24_v3 * (2**153) +
    z2_28_v3 * (2**179) +
    z2_32_v3 * (2**204) +
    z2_36_v3 * (2**230)
  )
  =
  (
    (
      z2_0_v2 +
      z2_4_v2 * (2**26) +
      z2_8_v2 * (2**51) +
      z2_12_v2 * (2**77) +
      z2_16_v2 * (2**102) +
      z2_20_v2 * (2**128) +
      z2_24_v2 * (2**153) +
      z2_28_v2 * (2**179) +
      z2_32_v2 * (2**204) +
      z2_36_v2 * (2**230)
    )
    *
    (
      tmp1_0_v1 +
      tmp1_4_v1 * (2**26) +
      tmp1_8_v1 * (2**51) +
      tmp1_12_v1 * (2**77) +
      tmp1_16_v1 * (2**102) +
      tmp1_20_v1 * (2**128) +
      tmp1_24_v1 * (2**153) +
      tmp1_28_v1 * (2**179) +
      tmp1_32_v1 * (2**204) +
      tmp1_36_v1 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0_v3 <=s (33889976)@32,
    z2_0_v3 >=s (-33889976)@32,
    z2_4_v3 <=s (16944988)@32,
    z2_4_v3 >=s (-16944988)@32,
    z2_8_v3 <=s (33889976)@32,
    z2_8_v3 >=s (-33889976)@32,
    z2_12_v3 <=s (16944988)@32,
    z2_12_v3 >=s (-16944988)@32,
    z2_16_v3 <=s (33889976)@32,
    z2_16_v3 >=s (-33889976)@32,
    z2_20_v3 <=s (16944988)@32,
    z2_20_v3 >=s (-16944988)@32,
    z2_24_v3 <=s (33889976)@32,
    z2_24_v3 >=s (-33889976)@32,
    z2_28_v3 <=s (16944988)@32,
    z2_28_v3 >=s (-16944988)@32,
    z2_32_v3 <=s (33889976)@32,
    z2_32_v3 >=s (-33889976)@32,
    z2_36_v3 <=s (16944988)@32,
    z2_36_v3 >=s (-16944988)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp1_0_v1 <=s (73819750)@32,
    tmp1_0_v1 >=s (-73819750)@32,
    tmp1_4_v1 <=s (36909875)@32,
    tmp1_4_v1 >=s (-36909875)@32,
    tmp1_8_v1 <=s (73819750)@32,
    tmp1_8_v1 >=s (-73819750)@32,
    tmp1_12_v1 <=s (36909875)@32,
    tmp1_12_v1 >=s (-36909875)@32,
    tmp1_16_v1 <=s (73819750)@32,
    tmp1_16_v1 >=s (-73819750)@32,
    tmp1_20_v1 <=s (36909875)@32,
    tmp1_20_v1 >=s (-36909875)@32,
    tmp1_24_v1 <=s (73819750)@32,
    tmp1_24_v1 >=s (-73819750)@32,
    tmp1_28_v1 <=s (36909875)@32,
    tmp1_28_v1 >=s (-36909875)@32,
    tmp1_32_v1 <=s (73819750)@32,
    tmp1_32_v1 >=s (-73819750)@32,
    tmp1_36_v1 <=s (36909875)@32,
    tmp1_36_v1 >=s (-36909875)@32,
    tmp0_0_v1 <=s (73819750)@32,
    tmp0_0_v1 >=s (-73819750)@32,
    tmp0_4_v1 <=s (36909875)@32,
    tmp0_4_v1 >=s (-36909875)@32,
    tmp0_8_v1 <=s (73819750)@32,
    tmp0_8_v1 >=s (-73819750)@32,
    tmp0_12_v1 <=s (36909875)@32,
    tmp0_12_v1 >=s (-36909875)@32,
    tmp0_16_v1 <=s (73819750)@32,
    tmp0_16_v1 >=s (-73819750)@32,
    tmp0_20_v1 <=s (36909875)@32,
    tmp0_20_v1 >=s (-36909875)@32,
    tmp0_24_v1 <=s (73819750)@32,
    tmp0_24_v1 >=s (-73819750)@32,
    tmp0_28_v1 <=s (36909875)@32,
    tmp0_28_v1 >=s (-36909875)@32,
    tmp0_32_v1 <=s (73819750)@32,
    tmp0_32_v1 >=s (-73819750)@32,
    tmp0_36_v1 <=s (36909875)@32,
    tmp0_36_v1 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;

(* fe_sq (&tmp0, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sq(tmp1_0_v1, tmp1_4_v1 ,tmp1_8_v1, tmp1_12_v1, tmp1_16_v1, tmp1_20_v1, tmp1_24_v1, tmp1_28_v1, tmp1_32_v1, tmp1_36_v1, tmp0_0_v2, tmp0_4_v2 ,tmp0_8_v2, tmp0_12_v2, tmp0_16_v2, tmp0_20_v2, tmp0_24_v2, tmp0_28_v2, tmp0_32_v2, tmp0_36_v2);
cut
  (
    tmp0_0_v2 +
    tmp0_4_v2 * (2**26) +
    tmp0_8_v2 * (2**51) +
    tmp0_12_v2 * (2**77) +
    tmp0_16_v2 * (2**102) +
    tmp0_20_v2 * (2**128) +
    tmp0_24_v2 * (2**153) +
    tmp0_28_v2 * (2**179) +
    tmp0_32_v2 * (2**204) +
    tmp0_36_v2 * (2**230)
  )
  =
  (
    sq
    (
      tmp1_0_v1 +
      tmp1_4_v1 * (2**26) +
      tmp1_8_v1 * (2**51) +
      tmp1_12_v1 * (2**77) +
      tmp1_16_v1 * (2**102) +
      tmp1_20_v1 * (2**128) +
      tmp1_24_v1 * (2**153) +
      tmp1_28_v1 * (2**179) +
      tmp1_32_v1 * (2**204) +
      tmp1_36_v1 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0_v3 <=s (33889976)@32,
    z2_0_v3 >=s (-33889976)@32,
    z2_4_v3 <=s (16944988)@32,
    z2_4_v3 >=s (-16944988)@32,
    z2_8_v3 <=s (33889976)@32,
    z2_8_v3 >=s (-33889976)@32,
    z2_12_v3 <=s (16944988)@32,
    z2_12_v3 >=s (-16944988)@32,
    z2_16_v3 <=s (33889976)@32,
    z2_16_v3 >=s (-33889976)@32,
    z2_20_v3 <=s (16944988)@32,
    z2_20_v3 >=s (-16944988)@32,
    z2_24_v3 <=s (33889976)@32,
    z2_24_v3 >=s (-33889976)@32,
    z2_28_v3 <=s (16944988)@32,
    z2_28_v3 >=s (-16944988)@32,
    z2_32_v3 <=s (33889976)@32,
    z2_32_v3 >=s (-33889976)@32,
    z2_36_v3 <=s (16944988)@32,
    z2_36_v3 >=s (-16944988)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v1 <=s (73819750)@32,
    tmp1_0_v1 >=s (-73819750)@32,
    tmp1_4_v1 <=s (36909875)@32,
    tmp1_4_v1 >=s (-36909875)@32,
    tmp1_8_v1 <=s (73819750)@32,
    tmp1_8_v1 >=s (-73819750)@32,
    tmp1_12_v1 <=s (36909875)@32,
    tmp1_12_v1 >=s (-36909875)@32,
    tmp1_16_v1 <=s (73819750)@32,
    tmp1_16_v1 >=s (-73819750)@32,
    tmp1_20_v1 <=s (36909875)@32,
    tmp1_20_v1 >=s (-36909875)@32,
    tmp1_24_v1 <=s (73819750)@32,
    tmp1_24_v1 >=s (-73819750)@32,
    tmp1_28_v1 <=s (36909875)@32,
    tmp1_28_v1 >=s (-36909875)@32,
    tmp1_32_v1 <=s (73819750)@32,
    tmp1_32_v1 >=s (-73819750)@32,
    tmp1_36_v1 <=s (36909875)@32,
    tmp1_36_v1 >=s (-36909875)@32
  ]  prove with all ghosts, all cuts;

(* fe_sq (&tmp1, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sq(x2_0_v2, x2_4_v2 ,x2_8_v2, x2_12_v2, x2_16_v2, x2_20_v2, x2_24_v2, x2_28_v2, x2_32_v2, x2_36_v2,tmp1_0_v2, tmp1_4_v2 ,tmp1_8_v2, tmp1_12_v2, tmp1_16_v2, tmp1_20_v2, tmp1_24_v2, tmp1_28_v2, tmp1_32_v2, tmp1_36_v2);

cut
  (
    tmp1_0_v2 +
    tmp1_4_v2 * (2**26) +
    tmp1_8_v2 * (2**51) +
    tmp1_12_v2 * (2**77) +
    tmp1_16_v2 * (2**102) +
    tmp1_20_v2 * (2**128) +
    tmp1_24_v2 * (2**153) +
    tmp1_28_v2 * (2**179) +
    tmp1_32_v2 * (2**204) +
    tmp1_36_v2 * (2**230)
  )
  =
  (
    sq
    (
      x2_0_v2 +
      x2_4_v2 * (2**26) +
      x2_8_v2 * (2**51) +
      x2_12_v2 * (2**77) +
      x2_16_v2 * (2**102) +
      x2_20_v2 * (2**128) +
      x2_24_v2 * (2**153) +
      x2_28_v2 * (2**179) +
      x2_32_v2 * (2**204) +
      x2_36_v2 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0 <=s (36909875)@32,
    x3_0 >=s (-36909875)@32,
    x3_4 <=s (18454937)@32,
    x3_4 >=s (-18454937)@32,
    x3_8 <=s (36909875)@32,
    x3_8 >=s (-36909875)@32,
    x3_12 <=s (18454937)@32,
    x3_12 >=s (-18454937)@32,
    x3_16 <=s (36909875)@32,
    x3_16 >=s (-36909875)@32,
    x3_20 <=s (18454937)@32,
    x3_20 >=s (-18454937)@32,
    x3_24 <=s (36909875)@32,
    x3_24 >=s (-36909875)@32,
    x3_28 <=s (18454937)@32,
    x3_28 >=s (-18454937)@32,
    x3_32 <=s (36909875)@32,
    x3_32 >=s (-36909875)@32,
    x3_36 <=s (18454937)@32,
    x3_36 >=s (-18454937)@32,

    z2_0_v3 <=s (33889976)@32,
    z2_0_v3 >=s (-33889976)@32,
    z2_4_v3 <=s (16944988)@32,
    z2_4_v3 >=s (-16944988)@32,
    z2_8_v3 <=s (33889976)@32,
    z2_8_v3 >=s (-33889976)@32,
    z2_12_v3 <=s (16944988)@32,
    z2_12_v3 >=s (-16944988)@32,
    z2_16_v3 <=s (33889976)@32,
    z2_16_v3 >=s (-33889976)@32,
    z2_20_v3 <=s (16944988)@32,
    z2_20_v3 >=s (-16944988)@32,
    z2_24_v3 <=s (33889976)@32,
    z2_24_v3 >=s (-33889976)@32,
    z2_28_v3 <=s (16944988)@32,
    z2_28_v3 >=s (-16944988)@32,
    z2_32_v3 <=s (33889976)@32,
    z2_32_v3 >=s (-33889976)@32,
    z2_36_v3 <=s (16944988)@32,
    z2_36_v3 >=s (-16944988)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v2 <=s (33889976)@32,
    tmp1_0_v2 >=s (-33889976)@32,
    tmp1_4_v2 <=s (16944988)@32,
    tmp1_4_v2 >=s (-16944988)@32,
    tmp1_8_v2 <=s (33889976)@32,
    tmp1_8_v2 >=s (-33889976)@32,
    tmp1_12_v2 <=s (16944988)@32,
    tmp1_12_v2 >=s (-16944988)@32,
    tmp1_16_v2 <=s (33889976)@32,
    tmp1_16_v2 >=s (-33889976)@32,
    tmp1_20_v2 <=s (16944988)@32,
    tmp1_20_v2 >=s (-16944988)@32,
    tmp1_24_v2 <=s (33889976)@32,
    tmp1_24_v2 >=s (-33889976)@32,
    tmp1_28_v2 <=s (16944988)@32,
    tmp1_28_v2 >=s (-16944988)@32,
    tmp1_32_v2 <=s (33889976)@32,
    tmp1_32_v2 >=s (-33889976)@32,
    tmp1_36_v2 <=s (16944988)@32,
    tmp1_36_v2 >=s (-16944988)@32

  ]  prove with all ghosts, all cuts;
(* fe_add (&x3, &z3, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_add(z3_0_v2, z3_4_v2 ,z3_8_v2, z3_12_v2, z3_16_v2, z3_20_v2, z3_24_v2, z3_28_v2, z3_32_v2, z3_36_v2, z2_0_v3, z2_4_v3 ,z2_8_v3, z2_12_v3, z2_16_v3, z2_20_v3, z2_24_v3, z2_28_v3, z2_32_v3, z2_36_v3, x3_0_v2, x3_4_v2 ,x3_8_v2, x3_12_v2, x3_16_v2, x3_20_v2, x3_24_v2, x3_28_v2, x3_32_v2, x3_36_v2);

cut
  (
    x3_0_v2 +
    x3_4_v2 * (2**26) +
    x3_8_v2 * (2**51) +
    x3_12_v2 * (2**77) +
    x3_16_v2 * (2**102) +
    x3_20_v2 * (2**128) +
    x3_24_v2 * (2**153) +
    x3_28_v2 * (2**179) +
    x3_32_v2 * (2**204) +
    x3_36_v2 * (2**230)
  )
  =
  (
    (
      z3_0_v2 +
      z3_4_v2 * (2**26) +
      z3_8_v2 * (2**51) +
      z3_12_v2 * (2**77) +
      z3_16_v2 * (2**102) +
      z3_20_v2 * (2**128) +
      z3_24_v2 * (2**153) +
      z3_28_v2 * (2**179) +
      z3_32_v2 * (2**204) +
      z3_36_v2 * (2**230)
    )
    +
    (
      z2_0_v3 +
      z2_4_v3 * (2**26) +
      z2_8_v3 * (2**51) +
      z2_12_v3 * (2**77) +
      z2_16_v3 * (2**102) +
      z2_20_v3 * (2**128) +
      z2_24_v3 * (2**153) +
      z2_28_v3 * (2**179) +
      z2_32_v3 * (2**204) +
      z2_36_v3 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0_v2 <=s (73819750)@32,
    x3_0_v2 >=s (-73819750)@32,
    x3_4_v2 <=s (36909875)@32,
    x3_4_v2 >=s (-36909875)@32,
    x3_8_v2 <=s (73819750)@32,
    x3_8_v2 >=s (-73819750)@32,
    x3_12_v2 <=s (36909875)@32,
    x3_12_v2 >=s (-36909875)@32,
    x3_16_v2 <=s (73819750)@32,
    x3_16_v2 >=s (-73819750)@32,
    x3_20_v2 <=s (36909875)@32,
    x3_20_v2 >=s (-36909875)@32,
    x3_24_v2 <=s (73819750)@32,
    x3_24_v2 >=s (-73819750)@32,
    x3_28_v2 <=s (36909875)@32,
    x3_28_v2 >=s (-36909875)@32,
    x3_32_v2 <=s (73819750)@32,
    x3_32_v2 >=s (-73819750)@32,
    x3_36_v2 <=s (36909875)@32,
    x3_36_v2 >=s (-36909875)@32,

    z2_0_v3 <=s (33889976)@32,
    z2_0_v3 >=s (-33889976)@32,
    z2_4_v3 <=s (16944988)@32,
    z2_4_v3 >=s (-16944988)@32,
    z2_8_v3 <=s (33889976)@32,
    z2_8_v3 >=s (-33889976)@32,
    z2_12_v3 <=s (16944988)@32,
    z2_12_v3 >=s (-16944988)@32,
    z2_16_v3 <=s (33889976)@32,
    z2_16_v3 >=s (-33889976)@32,
    z2_20_v3 <=s (16944988)@32,
    z2_20_v3 >=s (-16944988)@32,
    z2_24_v3 <=s (33889976)@32,
    z2_24_v3 >=s (-33889976)@32,
    z2_28_v3 <=s (16944988)@32,
    z2_28_v3 >=s (-16944988)@32,
    z2_32_v3 <=s (33889976)@32,
    z2_32_v3 >=s (-33889976)@32,
    z2_36_v3 <=s (16944988)@32,
    z2_36_v3 >=s (-16944988)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v2 <=s (33889976)@32,
    tmp1_0_v2 >=s (-33889976)@32,
    tmp1_4_v2 <=s (16944988)@32,
    tmp1_4_v2 >=s (-16944988)@32,
    tmp1_8_v2 <=s (33889976)@32,
    tmp1_8_v2 >=s (-33889976)@32,
    tmp1_12_v2 <=s (16944988)@32,
    tmp1_12_v2 >=s (-16944988)@32,
    tmp1_16_v2 <=s (33889976)@32,
    tmp1_16_v2 >=s (-33889976)@32,
    tmp1_20_v2 <=s (16944988)@32,
    tmp1_20_v2 >=s (-16944988)@32,
    tmp1_24_v2 <=s (33889976)@32,
    tmp1_24_v2 >=s (-33889976)@32,
    tmp1_28_v2 <=s (16944988)@32,
    tmp1_28_v2 >=s (-16944988)@32,
    tmp1_32_v2 <=s (33889976)@32,
    tmp1_32_v2 >=s (-33889976)@32,
    tmp1_36_v2 <=s (16944988)@32,
    tmp1_36_v2 >=s (-16944988)@32

  ]  prove with all ghosts, all cuts;

(* fe_sub (&z2, &z3, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sub(z3_0_v2, z3_4_v2 ,z3_8_v2, z3_12_v2, z3_16_v2, z3_20_v2, z3_24_v2, z3_28_v2, z3_32_v2, z3_36_v2, z2_0_v3, z2_4_v3 ,z2_8_v3, z2_12_v3, z2_16_v3, z2_20_v3, z2_24_v3, z2_28_v3, z2_32_v3, z2_36_v3, z2_0_v4, z2_4_v4 ,z2_8_v4, z2_12_v4, z2_16_v4, z2_20_v4, z2_24_v4, z2_28_v4, z2_32_v4, z2_36_v4);

cut
  (
    z2_0_v4 +
    z2_4_v4 * (2**26) +
    z2_8_v4 * (2**51) +
    z2_12_v4 * (2**77) +
    z2_16_v4 * (2**102) +
    z2_20_v4 * (2**128) +
    z2_24_v4 * (2**153) +
    z2_28_v4 * (2**179) +
    z2_32_v4 * (2**204) +
    z2_36_v4 * (2**230)
  )
  =
  (
    (
      z3_0_v2 +
      z3_4_v2 * (2**26) +
      z3_8_v2 * (2**51) +
      z3_12_v2 * (2**77) +
      z3_16_v2 * (2**102) +
      z3_20_v2 * (2**128) +
      z3_24_v2 * (2**153) +
      z3_28_v2 * (2**179) +
      z3_32_v2 * (2**204) +
      z3_36_v2 * (2**230)
    )
    -
    (
      z2_0_v3 +
      z2_4_v3 * (2**26) +
      z2_8_v3 * (2**51) +
      z2_12_v3 * (2**77) +
      z2_16_v3 * (2**102) +
      z2_20_v3 * (2**128) +
      z2_24_v3 * (2**153) +
      z2_28_v3 * (2**179) +
      z2_32_v3 * (2**204) +
      z2_36_v3 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v2 <=s (73819750)@32,
    x2_0_v2 >=s (-73819750)@32,
    x2_4_v2 <=s (36909875)@32,
    x2_4_v2 >=s (-36909875)@32,
    x2_8_v2 <=s (73819750)@32,
    x2_8_v2 >=s (-73819750)@32,
    x2_12_v2 <=s (36909875)@32,
    x2_12_v2 >=s (-36909875)@32,
    x2_16_v2 <=s (73819750)@32,
    x2_16_v2 >=s (-73819750)@32,
    x2_20_v2 <=s (36909875)@32,
    x2_20_v2 >=s (-36909875)@32,
    x2_24_v2 <=s (73819750)@32,
    x2_24_v2 >=s (-73819750)@32,
    x2_28_v2 <=s (36909875)@32,
    x2_28_v2 >=s (-36909875)@32,
    x2_32_v2 <=s (73819750)@32,
    x2_32_v2 >=s (-73819750)@32,
    x2_36_v2 <=s (36909875)@32,
    x2_36_v2 >=s (-36909875)@32,

    x3_0_v2 <=s (73819750)@32,
    x3_0_v2 >=s (-73819750)@32,
    x3_4_v2 <=s (36909875)@32,
    x3_4_v2 >=s (-36909875)@32,
    x3_8_v2 <=s (73819750)@32,
    x3_8_v2 >=s (-73819750)@32,
    x3_12_v2 <=s (36909875)@32,
    x3_12_v2 >=s (-36909875)@32,
    x3_16_v2 <=s (73819750)@32,
    x3_16_v2 >=s (-73819750)@32,
    x3_20_v2 <=s (36909875)@32,
    x3_20_v2 >=s (-36909875)@32,
    x3_24_v2 <=s (73819750)@32,
    x3_24_v2 >=s (-73819750)@32,
    x3_28_v2 <=s (36909875)@32,
    x3_28_v2 >=s (-36909875)@32,
    x3_32_v2 <=s (73819750)@32,
    x3_32_v2 >=s (-73819750)@32,
    x3_36_v2 <=s (36909875)@32,
    x3_36_v2 >=s (-36909875)@32,

    z2_0_v4 <=s (73819750)@32,
    z2_0_v4 >=s (-73819750)@32,
    z2_4_v4 <=s (36909875)@32,
    z2_4_v4 >=s (-36909875)@32,
    z2_8_v4 <=s (73819750)@32,
    z2_8_v4 >=s (-73819750)@32,
    z2_12_v4 <=s (36909875)@32,
    z2_12_v4 >=s (-36909875)@32,
    z2_16_v4 <=s (73819750)@32,
    z2_16_v4 >=s (-73819750)@32,
    z2_20_v4 <=s (36909875)@32,
    z2_20_v4 >=s (-36909875)@32,
    z2_24_v4 <=s (73819750)@32,
    z2_24_v4 >=s (-73819750)@32,
    z2_28_v4 <=s (36909875)@32,
    z2_28_v4 >=s (-36909875)@32,
    z2_32_v4 <=s (73819750)@32,
    z2_32_v4 >=s (-73819750)@32,
    z2_36_v4 <=s (36909875)@32,
    z2_36_v4 >=s (-36909875)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v2 <=s (33889976)@32,
    tmp1_0_v2 >=s (-33889976)@32,
    tmp1_4_v2 <=s (16944988)@32,
    tmp1_4_v2 >=s (-16944988)@32,
    tmp1_8_v2 <=s (33889976)@32,
    tmp1_8_v2 >=s (-33889976)@32,
    tmp1_12_v2 <=s (16944988)@32,
    tmp1_12_v2 >=s (-16944988)@32,
    tmp1_16_v2 <=s (33889976)@32,
    tmp1_16_v2 >=s (-33889976)@32,
    tmp1_20_v2 <=s (16944988)@32,
    tmp1_20_v2 >=s (-16944988)@32,
    tmp1_24_v2 <=s (33889976)@32,
    tmp1_24_v2 >=s (-33889976)@32,
    tmp1_28_v2 <=s (16944988)@32,
    tmp1_28_v2 >=s (-16944988)@32,
    tmp1_32_v2 <=s (33889976)@32,
    tmp1_32_v2 >=s (-33889976)@32,
    tmp1_36_v2 <=s (16944988)@32,
    tmp1_36_v2 >=s (-16944988)@32

  ]  prove with all ghosts, all cuts;

(* fe_mul (&x2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul(tmp1_0_v2, tmp1_4_v2 ,tmp1_8_v2, tmp1_12_v2, tmp1_16_v2, tmp1_20_v2, tmp1_24_v2, tmp1_28_v2, tmp1_32_v2, tmp1_36_v2, tmp0_0_v2, tmp0_4_v2 ,tmp0_8_v2, tmp0_12_v2, tmp0_16_v2, tmp0_20_v2, tmp0_24_v2, tmp0_28_v2, tmp0_32_v2, tmp0_36_v2, x2_0_v3, x2_4_v3 ,x2_8_v3, x2_12_v3, x2_16_v3, x2_20_v3, x2_24_v3, x2_28_v3, x2_32_v3, x2_36_v3);

cut
  (
    x2_0_v3 +
    x2_4_v3 * (2**26) +
    x2_8_v3 * (2**51) +
    x2_12_v3 * (2**77) +
    x2_16_v3 * (2**102) +
    x2_20_v3 * (2**128) +
    x2_24_v3 * (2**153) +
    x2_28_v3 * (2**179) +
    x2_32_v3 * (2**204) +
    x2_36_v3 * (2**230)
  )
  =
  (
    (
      tmp1_0_v2 +
      tmp1_4_v2 * (2**26) +
      tmp1_8_v2 * (2**51) +
      tmp1_12_v2 * (2**77) +
      tmp1_16_v2 * (2**102) +
      tmp1_20_v2 * (2**128) +
      tmp1_24_v2 * (2**153) +
      tmp1_28_v2 * (2**179) +
      tmp1_32_v2 * (2**204) +
      tmp1_36_v2 * (2**230)
    )
    *
    (
      tmp0_0_v2 +
      tmp0_4_v2 * (2**26) +
      tmp0_8_v2 * (2**51) +
      tmp0_12_v2 * (2**77) +
      tmp0_16_v2 * (2**102) +
      tmp0_20_v2 * (2**128) +
      tmp0_24_v2 * (2**153) +
      tmp0_28_v2 * (2**179) +
      tmp0_32_v2 * (2**204) +
      tmp0_36_v2 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v2 <=s (73819750)@32,
    x3_0_v2 >=s (-73819750)@32,
    x3_4_v2 <=s (36909875)@32,
    x3_4_v2 >=s (-36909875)@32,
    x3_8_v2 <=s (73819750)@32,
    x3_8_v2 >=s (-73819750)@32,
    x3_12_v2 <=s (36909875)@32,
    x3_12_v2 >=s (-36909875)@32,
    x3_16_v2 <=s (73819750)@32,
    x3_16_v2 >=s (-73819750)@32,
    x3_20_v2 <=s (36909875)@32,
    x3_20_v2 >=s (-36909875)@32,
    x3_24_v2 <=s (73819750)@32,
    x3_24_v2 >=s (-73819750)@32,
    x3_28_v2 <=s (36909875)@32,
    x3_28_v2 >=s (-36909875)@32,
    x3_32_v2 <=s (73819750)@32,
    x3_32_v2 >=s (-73819750)@32,
    x3_36_v2 <=s (36909875)@32,
    x3_36_v2 >=s (-36909875)@32,

    z2_0_v4 <=s (73819750)@32,
    z2_0_v4 >=s (-73819750)@32,
    z2_4_v4 <=s (36909875)@32,
    z2_4_v4 >=s (-36909875)@32,
    z2_8_v4 <=s (73819750)@32,
    z2_8_v4 >=s (-73819750)@32,
    z2_12_v4 <=s (36909875)@32,
    z2_12_v4 >=s (-36909875)@32,
    z2_16_v4 <=s (73819750)@32,
    z2_16_v4 >=s (-73819750)@32,
    z2_20_v4 <=s (36909875)@32,
    z2_20_v4 >=s (-36909875)@32,
    z2_24_v4 <=s (73819750)@32,
    z2_24_v4 >=s (-73819750)@32,
    z2_28_v4 <=s (36909875)@32,
    z2_28_v4 >=s (-36909875)@32,
    z2_32_v4 <=s (73819750)@32,
    z2_32_v4 >=s (-73819750)@32,
    z2_36_v4 <=s (36909875)@32,
    z2_36_v4 >=s (-36909875)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v2 <=s (33889976)@32,
    tmp1_0_v2 >=s (-33889976)@32,
    tmp1_4_v2 <=s (16944988)@32,
    tmp1_4_v2 >=s (-16944988)@32,
    tmp1_8_v2 <=s (33889976)@32,
    tmp1_8_v2 >=s (-33889976)@32,
    tmp1_12_v2 <=s (16944988)@32,
    tmp1_12_v2 >=s (-16944988)@32,
    tmp1_16_v2 <=s (33889976)@32,
    tmp1_16_v2 >=s (-33889976)@32,
    tmp1_20_v2 <=s (16944988)@32,
    tmp1_20_v2 >=s (-16944988)@32,
    tmp1_24_v2 <=s (33889976)@32,
    tmp1_24_v2 >=s (-33889976)@32,
    tmp1_28_v2 <=s (16944988)@32,
    tmp1_28_v2 >=s (-16944988)@32,
    tmp1_32_v2 <=s (33889976)@32,
    tmp1_32_v2 >=s (-33889976)@32,
    tmp1_36_v2 <=s (16944988)@32,
    tmp1_36_v2 >=s (-16944988)@32

  ]  prove with all ghosts, all cuts;

(* fe_sub (&tmp1, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sub(tmp1_0_v2, tmp1_4_v2 ,tmp1_8_v2, tmp1_12_v2, tmp1_16_v2, tmp1_20_v2, tmp1_24_v2, tmp1_28_v2, tmp1_32_v2, tmp1_36_v2,tmp0_0_v2, tmp0_4_v2 ,tmp0_8_v2, tmp0_12_v2, tmp0_16_v2, tmp0_20_v2, tmp0_24_v2, tmp0_28_v2, tmp0_32_v2, tmp0_36_v2,tmp1_0_v3, tmp1_4_v3 ,tmp1_8_v3, tmp1_12_v3, tmp1_16_v3, tmp1_20_v3, tmp1_24_v3, tmp1_28_v3, tmp1_32_v3, tmp1_36_v3);

cut
  (
    tmp1_0_v3 +
    tmp1_4_v3 * (2**26) +
    tmp1_8_v3 * (2**51) +
    tmp1_12_v3 * (2**77) +
    tmp1_16_v3 * (2**102) +
    tmp1_20_v3 * (2**128) +
    tmp1_24_v3 * (2**153) +
    tmp1_28_v3 * (2**179) +
    tmp1_32_v3 * (2**204) +
    tmp1_36_v3 * (2**230)
  )
  =
  (
    (
      tmp1_0_v2 +
      tmp1_4_v2 * (2**26) +
      tmp1_8_v2 * (2**51) +
      tmp1_12_v2 * (2**77) +
      tmp1_16_v2 * (2**102) +
      tmp1_20_v2 * (2**128) +
      tmp1_24_v2 * (2**153) +
      tmp1_28_v2 * (2**179) +
      tmp1_32_v2 * (2**204) +
      tmp1_36_v2 * (2**230)
    )
    -
    (
      tmp0_0_v2 +
      tmp0_4_v2 * (2**26) +
      tmp0_8_v2 * (2**51) +
      tmp0_12_v2 * (2**77) +
      tmp0_16_v2 * (2**102) +
      tmp0_20_v2 * (2**128) +
      tmp0_24_v2 * (2**153) +
      tmp0_28_v2 * (2**179) +
      tmp0_32_v2 * (2**204) +
      tmp0_36_v2 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v2 <=s (73819750)@32,
    x3_0_v2 >=s (-73819750)@32,
    x3_4_v2 <=s (36909875)@32,
    x3_4_v2 >=s (-36909875)@32,
    x3_8_v2 <=s (73819750)@32,
    x3_8_v2 >=s (-73819750)@32,
    x3_12_v2 <=s (36909875)@32,
    x3_12_v2 >=s (-36909875)@32,
    x3_16_v2 <=s (73819750)@32,
    x3_16_v2 >=s (-73819750)@32,
    x3_20_v2 <=s (36909875)@32,
    x3_20_v2 >=s (-36909875)@32,
    x3_24_v2 <=s (73819750)@32,
    x3_24_v2 >=s (-73819750)@32,
    x3_28_v2 <=s (36909875)@32,
    x3_28_v2 >=s (-36909875)@32,
    x3_32_v2 <=s (73819750)@32,
    x3_32_v2 >=s (-73819750)@32,
    x3_36_v2 <=s (36909875)@32,
    x3_36_v2 >=s (-36909875)@32,

    z2_0_v4 <=s (73819750)@32,
    z2_0_v4 >=s (-73819750)@32,
    z2_4_v4 <=s (36909875)@32,
    z2_4_v4 >=s (-36909875)@32,
    z2_8_v4 <=s (73819750)@32,
    z2_8_v4 >=s (-73819750)@32,
    z2_12_v4 <=s (36909875)@32,
    z2_12_v4 >=s (-36909875)@32,
    z2_16_v4 <=s (73819750)@32,
    z2_16_v4 >=s (-73819750)@32,
    z2_20_v4 <=s (36909875)@32,
    z2_20_v4 >=s (-36909875)@32,
    z2_24_v4 <=s (73819750)@32,
    z2_24_v4 >=s (-73819750)@32,
    z2_28_v4 <=s (36909875)@32,
    z2_28_v4 >=s (-36909875)@32,
    z2_32_v4 <=s (73819750)@32,
    z2_32_v4 >=s (-73819750)@32,
    z2_36_v4 <=s (36909875)@32,
    z2_36_v4 >=s (-36909875)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;


(* fe_sq (&z2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sq(z2_0_v4, z2_4_v4 ,z2_8_v4, z2_12_v4, z2_16_v4, z2_20_v4, z2_24_v4, z2_28_v4, z2_32_v4, z2_36_v4, z2_0_v5, z2_4_v5 ,z2_8_v5, z2_12_v5, z2_16_v5, z2_20_v5, z2_24_v5, z2_28_v5, z2_32_v5, z2_36_v5);

cut
  (
    z2_0_v5 +
    z2_4_v5 * (2**26) +
    z2_8_v5 * (2**51) +
    z2_12_v5 * (2**77) +
    z2_16_v5 * (2**102) +
    z2_20_v5 * (2**128) +
    z2_24_v5 * (2**153) +
    z2_28_v5 * (2**179) +
    z2_32_v5 * (2**204) +
    z2_36_v5 * (2**230)
  )
  =
  (
    sq
    (
      z2_0_v4 +
      z2_4_v4 * (2**26) +
      z2_8_v4 * (2**51) +
      z2_12_v4 * (2**77) +
      z2_16_v4 * (2**102) +
      z2_20_v4 * (2**128) +
      z2_24_v4 * (2**153) +
      z2_28_v4 * (2**179) +
      z2_32_v4 * (2**204) +
      z2_36_v4 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v2 <=s (73819750)@32,
    x3_0_v2 >=s (-73819750)@32,
    x3_4_v2 <=s (36909875)@32,
    x3_4_v2 >=s (-36909875)@32,
    x3_8_v2 <=s (73819750)@32,
    x3_8_v2 >=s (-73819750)@32,
    x3_12_v2 <=s (36909875)@32,
    x3_12_v2 >=s (-36909875)@32,
    x3_16_v2 <=s (73819750)@32,
    x3_16_v2 >=s (-73819750)@32,
    x3_20_v2 <=s (36909875)@32,
    x3_20_v2 >=s (-36909875)@32,
    x3_24_v2 <=s (73819750)@32,
    x3_24_v2 >=s (-73819750)@32,
    x3_28_v2 <=s (36909875)@32,
    x3_28_v2 >=s (-36909875)@32,
    x3_32_v2 <=s (73819750)@32,
    x3_32_v2 >=s (-73819750)@32,
    x3_36_v2 <=s (36909875)@32,
    x3_36_v2 >=s (-36909875)@32,

    z2_0_v5 <=s (33889976)@32,
    z2_0_v5 >=s (-33889976)@32,
    z2_4_v5 <=s (16944988)@32,
    z2_4_v5 >=s (-16944988)@32,
    z2_8_v5 <=s (33889976)@32,
    z2_8_v5 >=s (-33889976)@32,
    z2_12_v5 <=s (16944988)@32,
    z2_12_v5 >=s (-16944988)@32,
    z2_16_v5 <=s (33889976)@32,
    z2_16_v5 >=s (-33889976)@32,
    z2_20_v5 <=s (16944988)@32,
    z2_20_v5 >=s (-16944988)@32,
    z2_24_v5 <=s (33889976)@32,
    z2_24_v5 >=s (-33889976)@32,
    z2_28_v5 <=s (16944988)@32,
    z2_28_v5 >=s (-16944988)@32,
    z2_32_v5 <=s (33889976)@32,
    z2_32_v5 >=s (-33889976)@32,
    z2_36_v5 <=s (16944988)@32,
    z2_36_v5 >=s (-16944988)@32,


    z3_0_v2 <=s (33889976)@32,
    z3_0_v2 >=s (-33889976)@32,
    z3_4_v2 <=s (16944988)@32,
    z3_4_v2 >=s (-16944988)@32,
    z3_8_v2 <=s (33889976)@32,
    z3_8_v2 >=s (-33889976)@32,
    z3_12_v2 <=s (16944988)@32,
    z3_12_v2 >=s (-16944988)@32,
    z3_16_v2 <=s (33889976)@32,
    z3_16_v2 >=s (-33889976)@32,
    z3_20_v2 <=s (16944988)@32,
    z3_20_v2 >=s (-16944988)@32,
    z3_24_v2 <=s (33889976)@32,
    z3_24_v2 >=s (-33889976)@32,
    z3_28_v2 <=s (16944988)@32,
    z3_28_v2 >=s (-16944988)@32,
    z3_32_v2 <=s (33889976)@32,
    z3_32_v2 >=s (-33889976)@32,
    z3_36_v2 <=s (16944988)@32,
    z3_36_v2 >=s (-16944988)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;

(* fe_mul121666 (&z3, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul121666(tmp1_0_v3, tmp1_4_v3 ,tmp1_8_v3, tmp1_12_v3, tmp1_16_v3, tmp1_20_v3, tmp1_24_v3, tmp1_28_v3, tmp1_32_v3, tmp1_36_v3, z3_0_v3, z3_4_v3 ,z3_8_v3, z3_12_v3, z3_16_v3, z3_20_v3, z3_24_v3, z3_28_v3, z3_32_v3, z3_36_v3);

cut
  (
    z3_0_v3 +
    z3_4_v3 * (2**26) +
    z3_8_v3 * (2**51) +
    z3_12_v3 * (2**77) +
    z3_16_v3 * (2**102) +
    z3_20_v3 * (2**128) +
    z3_24_v3 * (2**153) +
    z3_28_v3 * (2**179) +
    z3_32_v3 * (2**204) +
    z3_36_v3 * (2**230)
  )
  =
  (
    (
      tmp1_0_v3 +
      tmp1_4_v3 * (2**26) +
      tmp1_8_v3 * (2**51) +
      tmp1_12_v3 * (2**77) +
      tmp1_16_v3 * (2**102) +
      tmp1_20_v3 * (2**128) +
      tmp1_24_v3 * (2**153) +
      tmp1_28_v3 * (2**179) +
      tmp1_32_v3 * (2**204) +
      tmp1_36_v3 * (2**230)
    )
    *
    (121666)
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v2 <=s (73819750)@32,
    x3_0_v2 >=s (-73819750)@32,
    x3_4_v2 <=s (36909875)@32,
    x3_4_v2 >=s (-36909875)@32,
    x3_8_v2 <=s (73819750)@32,
    x3_8_v2 >=s (-73819750)@32,
    x3_12_v2 <=s (36909875)@32,
    x3_12_v2 >=s (-36909875)@32,
    x3_16_v2 <=s (73819750)@32,
    x3_16_v2 >=s (-73819750)@32,
    x3_20_v2 <=s (36909875)@32,
    x3_20_v2 >=s (-36909875)@32,
    x3_24_v2 <=s (73819750)@32,
    x3_24_v2 >=s (-73819750)@32,
    x3_28_v2 <=s (36909875)@32,
    x3_28_v2 >=s (-36909875)@32,
    x3_32_v2 <=s (73819750)@32,
    x3_32_v2 >=s (-73819750)@32,
    x3_36_v2 <=s (36909875)@32,
    x3_36_v2 >=s (-36909875)@32,

    z2_0_v5 <=s (33889976)@32,
    z2_0_v5 >=s (-33889976)@32,
    z2_4_v5 <=s (16944988)@32,
    z2_4_v5 >=s (-16944988)@32,
    z2_8_v5 <=s (33889976)@32,
    z2_8_v5 >=s (-33889976)@32,
    z2_12_v5 <=s (16944988)@32,
    z2_12_v5 >=s (-16944988)@32,
    z2_16_v5 <=s (33889976)@32,
    z2_16_v5 >=s (-33889976)@32,
    z2_20_v5 <=s (16944988)@32,
    z2_20_v5 >=s (-16944988)@32,
    z2_24_v5 <=s (33889976)@32,
    z2_24_v5 >=s (-33889976)@32,
    z2_28_v5 <=s (16944988)@32,
    z2_28_v5 >=s (-16944988)@32,
    z2_32_v5 <=s (33889976)@32,
    z2_32_v5 >=s (-33889976)@32,
    z2_36_v5 <=s (16944988)@32,
    z2_36_v5 >=s (-16944988)@32,


    z3_0_v3 <=s (36909875)@32,
    z3_0_v3 >=s (-36909875)@32,
    z3_4_v3 <=s (18454937)@32,
    z3_4_v3 >=s (-18454937)@32,
    z3_8_v3 <=s (36909875)@32,
    z3_8_v3 >=s (-36909875)@32,
    z3_12_v3 <=s (18454937)@32,
    z3_12_v3 >=s (-18454937)@32,
    z3_16_v3 <=s (36909875)@32,
    z3_16_v3 >=s (-36909875)@32,
    z3_20_v3 <=s (18454937)@32,
    z3_20_v3 >=s (-18454937)@32,
    z3_24_v3 <=s (36909875)@32,
    z3_24_v3 >=s (-36909875)@32,
    z3_28_v3 <=s (18454937)@32,
    z3_28_v3 >=s (-18454937)@32,
    z3_32_v3 <=s (36909875)@32,
    z3_32_v3 >=s (-36909875)@32,
    z3_36_v3 <=s (18454937)@32,
    z3_36_v3 >=s (-18454937)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;
(* fe_sq (&x3, &x3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_sq(x3_0_v2, x3_4_v2 ,x3_8_v2, x3_12_v2, x3_16_v2, x3_20_v2, x3_24_v2, x3_28_v2, x3_32_v2, x3_36_v2, x3_0_v3, x3_4_v3 ,x3_8_v3, x3_12_v3, x3_16_v3, x3_20_v3, x3_24_v3, x3_28_v3, x3_32_v3, x3_36_v3);



cut
  (
    x3_0_v3 +
    x3_4_v3 * (2**26) +
    x3_8_v3 * (2**51) +
    x3_12_v3 * (2**77) +
    x3_16_v3 * (2**102) +
    x3_20_v3 * (2**128) +
    x3_24_v3 * (2**153) +
    x3_28_v3 * (2**179) +
    x3_32_v3 * (2**204) +
    x3_36_v3 * (2**230)
  )
  =
  (
    sq
    (
      x3_0_v2 +
      x3_4_v2 * (2**26) +
      x3_8_v2 * (2**51) +
      x3_12_v2 * (2**77) +
      x3_16_v2 * (2**102) +
      x3_20_v2 * (2**128) +
      x3_24_v2 * (2**153) +
      x3_28_v2 * (2**179) +
      x3_32_v2 * (2**204) +
      x3_36_v2 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v3 <=s (33889976)@32,
    x3_0_v3 >=s (-33889976)@32,
    x3_4_v3 <=s (16944988)@32,
    x3_4_v3 >=s (-16944988)@32,
    x3_8_v3 <=s (33889976)@32,
    x3_8_v3 >=s (-33889976)@32,
    x3_12_v3 <=s (16944988)@32,
    x3_12_v3 >=s (-16944988)@32,
    x3_16_v3 <=s (33889976)@32,
    x3_16_v3 >=s (-33889976)@32,
    x3_20_v3 <=s (16944988)@32,
    x3_20_v3 >=s (-16944988)@32,
    x3_24_v3 <=s (33889976)@32,
    x3_24_v3 >=s (-33889976)@32,
    x3_28_v3 <=s (16944988)@32,
    x3_28_v3 >=s (-16944988)@32,
    x3_32_v3 <=s (33889976)@32,
    x3_32_v3 >=s (-33889976)@32,
    x3_36_v3 <=s (16944988)@32,
    x3_36_v3 >=s (-16944988)@32,

    z2_0_v5 <=s (33889976)@32,
    z2_0_v5 >=s (-33889976)@32,
    z2_4_v5 <=s (16944988)@32,
    z2_4_v5 >=s (-16944988)@32,
    z2_8_v5 <=s (33889976)@32,
    z2_8_v5 >=s (-33889976)@32,
    z2_12_v5 <=s (16944988)@32,
    z2_12_v5 >=s (-16944988)@32,
    z2_16_v5 <=s (33889976)@32,
    z2_16_v5 >=s (-33889976)@32,
    z2_20_v5 <=s (16944988)@32,
    z2_20_v5 >=s (-16944988)@32,
    z2_24_v5 <=s (33889976)@32,
    z2_24_v5 >=s (-33889976)@32,
    z2_28_v5 <=s (16944988)@32,
    z2_28_v5 >=s (-16944988)@32,
    z2_32_v5 <=s (33889976)@32,
    z2_32_v5 >=s (-33889976)@32,
    z2_36_v5 <=s (16944988)@32,
    z2_36_v5 >=s (-16944988)@32,


    z3_0_v3 <=s (36909875)@32,
    z3_0_v3 >=s (-36909875)@32,
    z3_4_v3 <=s (18454937)@32,
    z3_4_v3 >=s (-18454937)@32,
    z3_8_v3 <=s (36909875)@32,
    z3_8_v3 >=s (-36909875)@32,
    z3_12_v3 <=s (18454937)@32,
    z3_12_v3 >=s (-18454937)@32,
    z3_16_v3 <=s (36909875)@32,
    z3_16_v3 >=s (-36909875)@32,
    z3_20_v3 <=s (18454937)@32,
    z3_20_v3 >=s (-18454937)@32,
    z3_24_v3 <=s (36909875)@32,
    z3_24_v3 >=s (-36909875)@32,
    z3_28_v3 <=s (18454937)@32,
    z3_28_v3 >=s (-18454937)@32,
    z3_32_v3 <=s (36909875)@32,
    z3_32_v3 >=s (-36909875)@32,
    z3_36_v3 <=s (18454937)@32,
    z3_36_v3 >=s (-18454937)@32,

    tmp0_0_v2 <=s (33889976)@32,
    tmp0_0_v2 >=s (-33889976)@32,
    tmp0_4_v2 <=s (16944988)@32,
    tmp0_4_v2 >=s (-16944988)@32,
    tmp0_8_v2 <=s (33889976)@32,
    tmp0_8_v2 >=s (-33889976)@32,
    tmp0_12_v2 <=s (16944988)@32,
    tmp0_12_v2 >=s (-16944988)@32,
    tmp0_16_v2 <=s (33889976)@32,
    tmp0_16_v2 >=s (-33889976)@32,
    tmp0_20_v2 <=s (16944988)@32,
    tmp0_20_v2 >=s (-16944988)@32,
    tmp0_24_v2 <=s (33889976)@32,
    tmp0_24_v2 >=s (-33889976)@32,
    tmp0_28_v2 <=s (16944988)@32,
    tmp0_28_v2 >=s (-16944988)@32,
    tmp0_32_v2 <=s (33889976)@32,
    tmp0_32_v2 >=s (-33889976)@32,
    tmp0_36_v2 <=s (16944988)@32,
    tmp0_36_v2 >=s (-16944988)@32,

    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32

  ]  prove with all ghosts, all cuts;
(* fe_add (&tmp0, &tmp0, &z3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_add(tmp0_0_v2, tmp0_4_v2 ,tmp0_8_v2, tmp0_12_v2, tmp0_16_v2, tmp0_20_v2, tmp0_24_v2, tmp0_28_v2, tmp0_32_v2, tmp0_36_v2, z3_0_v3, z3_4_v3 ,z3_8_v3, z3_12_v3, z3_16_v3, z3_20_v3, z3_24_v3, z3_28_v3, z3_32_v3, z3_36_v3, tmp0_0_v3, tmp0_4_v3 ,tmp0_8_v3, tmp0_12_v3, tmp0_16_v3, tmp0_20_v3, tmp0_24_v3, tmp0_28_v3, tmp0_32_v3, tmp0_36_v3);

cut
  (
    tmp0_0_v3 +
    tmp0_4_v3 * (2**26) +
    tmp0_8_v3 * (2**51) +
    tmp0_12_v3 * (2**77) +
    tmp0_16_v3 * (2**102) +
    tmp0_20_v3 * (2**128) +
    tmp0_24_v3 * (2**153) +
    tmp0_28_v3 * (2**179) +
    tmp0_32_v3 * (2**204) +
    tmp0_36_v3 * (2**230)
  )
  =
  (
    (
      tmp0_0_v2 +
      tmp0_4_v2 * (2**26) +
      tmp0_8_v2 * (2**51) +
      tmp0_12_v2 * (2**77) +
      tmp0_16_v2 * (2**102) +
      tmp0_20_v2 * (2**128) +
      tmp0_24_v2 * (2**153) +
      tmp0_28_v2 * (2**179) +
      tmp0_32_v2 * (2**204) +
      tmp0_36_v2 * (2**230)
    )
    +
    (
      z3_0_v3 +
      z3_4_v3 * (2**26) +
      z3_8_v3 * (2**51) +
      z3_12_v3 * (2**77) +
      z3_16_v3 * (2**102) +
      z3_20_v3 * (2**128) +
      z3_24_v3 * (2**153) +
      z3_28_v3 * (2**179) +
      z3_32_v3 * (2**204) +
      z3_36_v3 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v3 <=s (33889976)@32,
    x3_0_v3 >=s (-33889976)@32,
    x3_4_v3 <=s (16944988)@32,
    x3_4_v3 >=s (-16944988)@32,
    x3_8_v3 <=s (33889976)@32,
    x3_8_v3 >=s (-33889976)@32,
    x3_12_v3 <=s (16944988)@32,
    x3_12_v3 >=s (-16944988)@32,
    x3_16_v3 <=s (33889976)@32,
    x3_16_v3 >=s (-33889976)@32,
    x3_20_v3 <=s (16944988)@32,
    x3_20_v3 >=s (-16944988)@32,
    x3_24_v3 <=s (33889976)@32,
    x3_24_v3 >=s (-33889976)@32,
    x3_28_v3 <=s (16944988)@32,
    x3_28_v3 >=s (-16944988)@32,
    x3_32_v3 <=s (33889976)@32,
    x3_32_v3 >=s (-33889976)@32,
    x3_36_v3 <=s (16944988)@32,
    x3_36_v3 >=s (-16944988)@32,

    z2_0_v5 <=s (33889976)@32,
    z2_0_v5 >=s (-33889976)@32,
    z2_4_v5 <=s (16944988)@32,
    z2_4_v5 >=s (-16944988)@32,
    z2_8_v5 <=s (33889976)@32,
    z2_8_v5 >=s (-33889976)@32,
    z2_12_v5 <=s (16944988)@32,
    z2_12_v5 >=s (-16944988)@32,
    z2_16_v5 <=s (33889976)@32,
    z2_16_v5 >=s (-33889976)@32,
    z2_20_v5 <=s (16944988)@32,
    z2_20_v5 >=s (-16944988)@32,
    z2_24_v5 <=s (33889976)@32,
    z2_24_v5 >=s (-33889976)@32,
    z2_28_v5 <=s (16944988)@32,
    z2_28_v5 >=s (-16944988)@32,
    z2_32_v5 <=s (33889976)@32,
    z2_32_v5 >=s (-33889976)@32,
    z2_36_v5 <=s (16944988)@32,
    z2_36_v5 >=s (-16944988)@32,


    z3_0_v3 <=s (36909875)@32,
    z3_0_v3 >=s (-36909875)@32,
    z3_4_v3 <=s (18454937)@32,
    z3_4_v3 >=s (-18454937)@32,
    z3_8_v3 <=s (36909875)@32,
    z3_8_v3 >=s (-36909875)@32,
    z3_12_v3 <=s (18454937)@32,
    z3_12_v3 >=s (-18454937)@32,
    z3_16_v3 <=s (36909875)@32,
    z3_16_v3 >=s (-36909875)@32,
    z3_20_v3 <=s (18454937)@32,
    z3_20_v3 >=s (-18454937)@32,
    z3_24_v3 <=s (36909875)@32,
    z3_24_v3 >=s (-36909875)@32,
    z3_28_v3 <=s (18454937)@32,
    z3_28_v3 >=s (-18454937)@32,
    z3_32_v3 <=s (36909875)@32,
    z3_32_v3 >=s (-36909875)@32,
    z3_36_v3 <=s (18454937)@32,
    z3_36_v3 >=s (-18454937)@32,

    tmp0_0_v3 <=s (73819750)@32,
    tmp0_0_v3 >=s (-73819750)@32,
    tmp0_4_v3 <=s (36909875)@32,
    tmp0_4_v3 >=s (-36909875)@32,
    tmp0_8_v3 <=s (73819750)@32,
    tmp0_8_v3 >=s (-73819750)@32,
    tmp0_12_v3 <=s (36909875)@32,
    tmp0_12_v3 >=s (-36909875)@32,
    tmp0_16_v3 <=s (73819750)@32,
    tmp0_16_v3 >=s (-73819750)@32,
    tmp0_20_v3 <=s (36909875)@32,
    tmp0_20_v3 >=s (-36909875)@32,
    tmp0_24_v3 <=s (73819750)@32,
    tmp0_24_v3 >=s (-73819750)@32,
    tmp0_28_v3 <=s (36909875)@32,
    tmp0_28_v3 >=s (-36909875)@32,
    tmp0_32_v3 <=s (73819750)@32,
    tmp0_32_v3 >=s (-73819750)@32,
    tmp0_36_v3 <=s (36909875)@32,
    tmp0_36_v3 >=s (-36909875)@32,
    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32
  ]  prove with all ghosts, all cuts;

(* fe_mul (&z3, &x1, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul(x1_0, x1_4 ,x1_8, x1_12, x1_16, x1_20, x1_24, x1_28, x1_32, x1_36, z2_0_v5, z2_4_v5 ,z2_8_v5, z2_12_v5, z2_16_v5, z2_20_v5, z2_24_v5, z2_28_v5, z2_32_v5, z2_36_v5, z3_0_v4, z3_4_v4 ,z3_8_v4, z3_12_v4, z3_16_v4, z3_20_v4, z3_24_v4, z3_28_v4, z3_32_v4, z3_36_v4);

cut
  (
    z3_0_v4 +
    z3_4_v4 * (2**26) +
    z3_8_v4 * (2**51) +
    z3_12_v4 * (2**77) +
    z3_16_v4 * (2**102) +
    z3_20_v4 * (2**128) +
    z3_24_v4 * (2**153) +
    z3_28_v4 * (2**179) +
    z3_32_v4 * (2**204) +
    z3_36_v4 * (2**230)
  )
  =
  (
    (
      x1_0 +
      x1_4 * (2**26) +
      x1_8 * (2**51) +
      x1_12 * (2**77) +
      x1_16 * (2**102) +
      x1_20 * (2**128) +
      x1_24 * (2**153) +
      x1_28 * (2**179) +
      x1_32 * (2**204) +
      x1_36 * (2**230)
    )
    *
    (
      z2_0_v5 +
      z2_4_v5 * (2**26) +
      z2_8_v5 * (2**51) +
      z2_12_v5 * (2**77) +
      z2_16_v5 * (2**102) +
      z2_20_v5 * (2**128) +
      z2_24_v5 * (2**153) +
      z2_28_v5 * (2**179) +
      z2_32_v5 * (2**204) +
      z2_36_v5 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v3 <=s (33889976)@32,
    x3_0_v3 >=s (-33889976)@32,
    x3_4_v3 <=s (16944988)@32,
    x3_4_v3 >=s (-16944988)@32,
    x3_8_v3 <=s (33889976)@32,
    x3_8_v3 >=s (-33889976)@32,
    x3_12_v3 <=s (16944988)@32,
    x3_12_v3 >=s (-16944988)@32,
    x3_16_v3 <=s (33889976)@32,
    x3_16_v3 >=s (-33889976)@32,
    x3_20_v3 <=s (16944988)@32,
    x3_20_v3 >=s (-16944988)@32,
    x3_24_v3 <=s (33889976)@32,
    x3_24_v3 >=s (-33889976)@32,
    x3_28_v3 <=s (16944988)@32,
    x3_28_v3 >=s (-16944988)@32,
    x3_32_v3 <=s (33889976)@32,
    x3_32_v3 >=s (-33889976)@32,
    x3_36_v3 <=s (16944988)@32,
    x3_36_v3 >=s (-16944988)@32,

    z2_0_v5 <=s (33889976)@32,
    z2_0_v5 >=s (-33889976)@32,
    z2_4_v5 <=s (16944988)@32,
    z2_4_v5 >=s (-16944988)@32,
    z2_8_v5 <=s (33889976)@32,
    z2_8_v5 >=s (-33889976)@32,
    z2_12_v5 <=s (16944988)@32,
    z2_12_v5 >=s (-16944988)@32,
    z2_16_v5 <=s (33889976)@32,
    z2_16_v5 >=s (-33889976)@32,
    z2_20_v5 <=s (16944988)@32,
    z2_20_v5 >=s (-16944988)@32,
    z2_24_v5 <=s (33889976)@32,
    z2_24_v5 >=s (-33889976)@32,
    z2_28_v5 <=s (16944988)@32,
    z2_28_v5 >=s (-16944988)@32,
    z2_32_v5 <=s (33889976)@32,
    z2_32_v5 >=s (-33889976)@32,
    z2_36_v5 <=s (16944988)@32,
    z2_36_v5 >=s (-16944988)@32,

    z3_0_v4 <=s (33889976)@32,
    z3_0_v4 >=s (-33889976)@32,
    z3_4_v4 <=s (16944988)@32,
    z3_4_v4 >=s (-16944988)@32,
    z3_8_v4 <=s (33889976)@32,
    z3_8_v4 >=s (-33889976)@32,
    z3_12_v4 <=s (16944988)@32,
    z3_12_v4 >=s (-16944988)@32,
    z3_16_v4 <=s (33889976)@32,
    z3_16_v4 >=s (-33889976)@32,
    z3_20_v4 <=s (16944988)@32,
    z3_20_v4 >=s (-16944988)@32,
    z3_24_v4 <=s (33889976)@32,
    z3_24_v4 >=s (-33889976)@32,
    z3_28_v4 <=s (16944988)@32,
    z3_28_v4 >=s (-16944988)@32,
    z3_32_v4 <=s (33889976)@32,
    z3_32_v4 >=s (-33889976)@32,
    z3_36_v4 <=s (16944988)@32,
    z3_36_v4 >=s (-16944988)@32,

    tmp0_0_v3 <=s (73819750)@32,
    tmp0_0_v3 >=s (-73819750)@32,
    tmp0_4_v3 <=s (36909875)@32,
    tmp0_4_v3 >=s (-36909875)@32,
    tmp0_8_v3 <=s (73819750)@32,
    tmp0_8_v3 >=s (-73819750)@32,
    tmp0_12_v3 <=s (36909875)@32,
    tmp0_12_v3 >=s (-36909875)@32,
    tmp0_16_v3 <=s (73819750)@32,
    tmp0_16_v3 >=s (-73819750)@32,
    tmp0_20_v3 <=s (36909875)@32,
    tmp0_20_v3 >=s (-36909875)@32,
    tmp0_24_v3 <=s (73819750)@32,
    tmp0_24_v3 >=s (-73819750)@32,
    tmp0_28_v3 <=s (36909875)@32,
    tmp0_28_v3 >=s (-36909875)@32,
    tmp0_32_v3 <=s (73819750)@32,
    tmp0_32_v3 >=s (-73819750)@32,
    tmp0_36_v3 <=s (36909875)@32,
    tmp0_36_v3 >=s (-36909875)@32,

    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32
  ]  prove with all ghosts, all cuts;

(* fe_mul (&z2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe_mul(tmp1_0_v3, tmp1_4_v3 ,tmp1_8_v3, tmp1_12_v3, tmp1_16_v3, tmp1_20_v3, tmp1_24_v3, tmp1_28_v3, tmp1_32_v3, tmp1_36_v3, tmp0_0_v3, tmp0_4_v3 ,tmp0_8_v3, tmp0_12_v3, tmp0_16_v3, tmp0_20_v3, tmp0_24_v3, tmp0_28_v3, tmp0_32_v3, tmp0_36_v3, z2_0_v6, z2_4_v6 ,z2_8_v6, z2_12_v6, z2_16_v6, z2_20_v6, z2_24_v6, z2_28_v6, z2_32_v6, z2_36_v6);

cut
  (
    z2_0_v6 +
    z2_4_v6 * (2**26) +
    z2_8_v6 * (2**51) +
    z2_12_v6 * (2**77) +
    z2_16_v6 * (2**102) +
    z2_20_v6 * (2**128) +
    z2_24_v6 * (2**153) +
    z2_28_v6 * (2**179) +
    z2_32_v6 * (2**204) +
    z2_36_v6 * (2**230)
  )
  =
  (
    (
      tmp1_0_v3 +
      tmp1_4_v3 * (2**26) +
      tmp1_8_v3 * (2**51) +
      tmp1_12_v3 * (2**77) +
      tmp1_16_v3 * (2**102) +
      tmp1_20_v3 * (2**128) +
      tmp1_24_v3 * (2**153) +
      tmp1_28_v3 * (2**179) +
      tmp1_32_v3 * (2**204) +
      tmp1_36_v3 * (2**230)
    )
    *
    (
      tmp0_0_v3 +
      tmp0_4_v3 * (2**26) +
      tmp0_8_v3 * (2**51) +
      tmp0_12_v3 * (2**77) +
      tmp0_16_v3 * (2**102) +
      tmp0_20_v3 * (2**128) +
      tmp0_24_v3 * (2**153) +
      tmp0_28_v3 * (2**179) +
      tmp0_32_v3 * (2**204) +
      tmp0_36_v3 * (2**230)
    )
  )
  (mod (2**255 - 19)) prove with all ghosts, all cuts
  &&
  and
  [

    x1_0 <=s (36909875)@32,
    x1_0 >=s (-36909875)@32,
    x1_4 <=s (18454937)@32,
    x1_4 >=s (-18454937)@32,
    x1_8 <=s (36909875)@32,
    x1_8 >=s (-36909875)@32,
    x1_12 <=s (18454937)@32,
    x1_12 >=s (-18454937)@32,
    x1_16 <=s (36909875)@32,
    x1_16 >=s (-36909875)@32,
    x1_20 <=s (18454937)@32,
    x1_20 >=s (-18454937)@32,
    x1_24 <=s (36909875)@32,
    x1_24 >=s (-36909875)@32,
    x1_28 <=s (18454937)@32,
    x1_28 >=s (-18454937)@32,
    x1_32 <=s (36909875)@32,
    x1_32 >=s (-36909875)@32,
    x1_36 <=s (18454937)@32,
    x1_36 >=s (-18454937)@32,

    x2_0_v3 <=s (33889976)@32,
    x2_0_v3 >=s (-33889976)@32,
    x2_4_v3 <=s (16944988)@32,
    x2_4_v3 >=s (-16944988)@32,
    x2_8_v3 <=s (33889976)@32,
    x2_8_v3 >=s (-33889976)@32,
    x2_12_v3 <=s (16944988)@32,
    x2_12_v3 >=s (-16944988)@32,
    x2_16_v3 <=s (33889976)@32,
    x2_16_v3 >=s (-33889976)@32,
    x2_20_v3 <=s (16944988)@32,
    x2_20_v3 >=s (-16944988)@32,
    x2_24_v3 <=s (33889976)@32,
    x2_24_v3 >=s (-33889976)@32,
    x2_28_v3 <=s (16944988)@32,
    x2_28_v3 >=s (-16944988)@32,
    x2_32_v3 <=s (33889976)@32,
    x2_32_v3 >=s (-33889976)@32,
    x2_36_v3 <=s (16944988)@32,
    x2_36_v3 >=s (-16944988)@32,


    x3_0_v3 <=s (33889976)@32,
    x3_0_v3 >=s (-33889976)@32,
    x3_4_v3 <=s (16944988)@32,
    x3_4_v3 >=s (-16944988)@32,
    x3_8_v3 <=s (33889976)@32,
    x3_8_v3 >=s (-33889976)@32,
    x3_12_v3 <=s (16944988)@32,
    x3_12_v3 >=s (-16944988)@32,
    x3_16_v3 <=s (33889976)@32,
    x3_16_v3 >=s (-33889976)@32,
    x3_20_v3 <=s (16944988)@32,
    x3_20_v3 >=s (-16944988)@32,
    x3_24_v3 <=s (33889976)@32,
    x3_24_v3 >=s (-33889976)@32,
    x3_28_v3 <=s (16944988)@32,
    x3_28_v3 >=s (-16944988)@32,
    x3_32_v3 <=s (33889976)@32,
    x3_32_v3 >=s (-33889976)@32,
    x3_36_v3 <=s (16944988)@32,
    x3_36_v3 >=s (-16944988)@32,

    z2_0_v6 <=s (33889976)@32,
    z2_0_v6 >=s (-33889976)@32,
    z2_4_v6 <=s (16944988)@32,
    z2_4_v6 >=s (-16944988)@32,
    z2_8_v6 <=s (33889976)@32,
    z2_8_v6 >=s (-33889976)@32,
    z2_12_v6 <=s (16944988)@32,
    z2_12_v6 >=s (-16944988)@32,
    z2_16_v6 <=s (33889976)@32,
    z2_16_v6 >=s (-33889976)@32,
    z2_20_v6 <=s (16944988)@32,
    z2_20_v6 >=s (-16944988)@32,
    z2_24_v6 <=s (33889976)@32,
    z2_24_v6 >=s (-33889976)@32,
    z2_28_v6 <=s (16944988)@32,
    z2_28_v6 >=s (-16944988)@32,
    z2_32_v6 <=s (33889976)@32,
    z2_32_v6 >=s (-33889976)@32,
    z2_36_v6 <=s (16944988)@32,
    z2_36_v6 >=s (-16944988)@32,

    z3_0_v4 <=s (33889976)@32,
    z3_0_v4 >=s (-33889976)@32,
    z3_4_v4 <=s (16944988)@32,
    z3_4_v4 >=s (-16944988)@32,
    z3_8_v4 <=s (33889976)@32,
    z3_8_v4 >=s (-33889976)@32,
    z3_12_v4 <=s (16944988)@32,
    z3_12_v4 >=s (-16944988)@32,
    z3_16_v4 <=s (33889976)@32,
    z3_16_v4 >=s (-33889976)@32,
    z3_20_v4 <=s (16944988)@32,
    z3_20_v4 >=s (-16944988)@32,
    z3_24_v4 <=s (33889976)@32,
    z3_24_v4 >=s (-33889976)@32,
    z3_28_v4 <=s (16944988)@32,
    z3_28_v4 >=s (-16944988)@32,
    z3_32_v4 <=s (33889976)@32,
    z3_32_v4 >=s (-33889976)@32,
    z3_36_v4 <=s (16944988)@32,
    z3_36_v4 >=s (-16944988)@32,

    tmp0_0_v3 <=s (73819750)@32,
    tmp0_0_v3 >=s (-73819750)@32,
    tmp0_4_v3 <=s (36909875)@32,
    tmp0_4_v3 >=s (-36909875)@32,
    tmp0_8_v3 <=s (73819750)@32,
    tmp0_8_v3 >=s (-73819750)@32,
    tmp0_12_v3 <=s (36909875)@32,
    tmp0_12_v3 >=s (-36909875)@32,
    tmp0_16_v3 <=s (73819750)@32,
    tmp0_16_v3 >=s (-73819750)@32,
    tmp0_20_v3 <=s (36909875)@32,
    tmp0_20_v3 >=s (-36909875)@32,
    tmp0_24_v3 <=s (73819750)@32,
    tmp0_24_v3 >=s (-73819750)@32,
    tmp0_28_v3 <=s (36909875)@32,
    tmp0_28_v3 >=s (-36909875)@32,
    tmp0_32_v3 <=s (73819750)@32,
    tmp0_32_v3 >=s (-73819750)@32,
    tmp0_36_v3 <=s (36909875)@32,
    tmp0_36_v3 >=s (-36909875)@32,

    tmp1_0_v3 <=s (73819750)@32,
    tmp1_0_v3 >=s (-73819750)@32,
    tmp1_4_v3 <=s (36909875)@32,
    tmp1_4_v3 >=s (-36909875)@32,
    tmp1_8_v3 <=s (73819750)@32,
    tmp1_8_v3 >=s (-73819750)@32,
    tmp1_12_v3 <=s (36909875)@32,
    tmp1_12_v3 >=s (-36909875)@32,
    tmp1_16_v3 <=s (73819750)@32,
    tmp1_16_v3 >=s (-73819750)@32,
    tmp1_20_v3 <=s (36909875)@32,
    tmp1_20_v3 >=s (-36909875)@32,
    tmp1_24_v3 <=s (73819750)@32,
    tmp1_24_v3 >=s (-73819750)@32,
    tmp1_28_v3 <=s (36909875)@32,
    tmp1_28_v3 >=s (-36909875)@32,
    tmp1_32_v3 <=s (73819750)@32,
    tmp1_32_v3 >=s (-73819750)@32,
    tmp1_36_v3 <=s (36909875)@32,
    tmp1_36_v3 >=s (-36909875)@32
  ]  prove with all ghosts, all cuts;
(* fe_tobytes (q_20(D), &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return 0; *)




{
  and [
      (* condition 1 *)
    (
        x2_0_v3 +
        x2_4_v3 * (2**26) +
        x2_8_v3 * (2**51) +
        x2_12_v3 * (2**77) +
        x2_16_v3 * (2**102) +
        x2_20_v3 * (2**128) +
        x2_24_v3 * (2**153) +
        x2_28_v3 * (2**179) +
        x2_32_v3 * (2**204) +
        x2_36_v3 * (2**230)
    )
    =
      (sq (sub
                (sq  (
                    x2_0 +
                    x2_4 * (2**26) +
                    x2_8 * (2**51) +
                    x2_12 * (2**77) +
                    x2_16 * (2**102) +
                    x2_20 * (2**128) +
                    x2_24 * (2**153) +
                    x2_28 * (2**179) +
                    x2_32 * (2**204) +
                    x2_36 * (2**230)
                ))
                (sq (
                    z2_0 +
                    z2_4 * (2**26) +
                    z2_8 * (2**51) +
                    z2_12 * (2**77) +
                    z2_16 * (2**102) +
                    z2_20 * (2**128) +
                    z2_24 * (2**153) +
                    z2_28 * (2**179) +
                    z2_32 * (2**204) +
                    z2_36 * (2**230)
                ))))
      ( mod 2**255 - 19) ,
    (* condition 2 *)
     (
        z2_0_v6 +
        z2_4_v6 * (2**26) +
        z2_8_v6 * (2**51) +
        z2_12_v6 * (2**77) +
        z2_16_v6 * (2**102) +
        z2_20_v6 * (2**128) +
        z2_24_v6 * (2**153) +
        z2_28_v6 * (2**179) +
        z2_32_v6 * (2**204) +
        z2_36_v6 * (2**230)
     )
     =
     (
      mul
       [
         4,
        (
            x2_0 +
            x2_4 * (2**26) +
            x2_8 * (2**51) +
            x2_12 * (2**77) +
            x2_16 * (2**102) +
            x2_20 * (2**128) +
            x2_24 * (2**153) +
            x2_28 * (2**179) +
            x2_32 * (2**204) +
            x2_36 * (2**230)
        ),
        (
            z2_0 +
            z2_4 * (2**26) +
            z2_8 * (2**51) +
            z2_12 * (2**77) +
            z2_16 * (2**102) +
            z2_20 * (2**128) +
            z2_24 * (2**153) +
            z2_28 * (2**179) +
            z2_32 * (2**204) +
            z2_36 * (2**230)
        ),
        add [
                sq
                (
                x2_0 +
                x2_4 * (2**26) +
                x2_8 * (2**51) +
                x2_12 * (2**77) +
                x2_16 * (2**102) +
                x2_20 * (2**128) +
                x2_24 * (2**153) +
                x2_28 * (2**179) +
                x2_32 * (2**204) +
                x2_36 * (2**230)
                ),
                mul [
                    486662,
                    (
                    x2_0 +
                    x2_4 * (2**26) +
                    x2_8 * (2**51) +
                    x2_12 * (2**77) +
                    x2_16 * (2**102) +
                    x2_20 * (2**128) +
                    x2_24 * (2**153) +
                    x2_28 * (2**179) +
                    x2_32 * (2**204) +
                    x2_36 * (2**230)
                    ),
                    (
                    z2_0 +
                    z2_4 * (2**26) +
                    z2_8 * (2**51) +
                    z2_12 * (2**77) +
                    z2_16 * (2**102) +
                    z2_20 * (2**128) +
                    z2_24 * (2**153) +
                    z2_28 * (2**179) +
                    z2_32 * (2**204) +
                    z2_36 * (2**230)
                    )]
                ,
                sq
                (
                    z2_0 +
                    z2_4 * (2**26) +
                    z2_8 * (2**51) +
                    z2_12 * (2**77) +
                    z2_16 * (2**102) +
                    z2_20 * (2**128) +
                    z2_24 * (2**153) +
                    z2_28 * (2**179) +
                    z2_32 * (2**204) +
                    z2_36 * (2**230)
                )
            ]
    ])
    ( mod 2**255 - 19),
    (* condition 3-1 *)
    (
        x3_0_v3 +
        x3_4_v3 * (2**26) +
        x3_8_v3 * (2**51) +
        x3_12_v3 * (2**77) +
        x3_16_v3 * (2**102) +
        x3_20_v3 * (2**128) +
        x3_24_v3 * (2**153) +
        x3_28_v3 * (2**179) +
        x3_32_v3 * (2**204) +
        x3_36_v3 * (2**230)
    )
    =
    (
      mul
      (4)
      (
          sq
          (
              sub
              (
                mul
                (
                    x2_0 +
                    x2_4 * (2**26) +
                    x2_8 * (2**51) +
                    x2_12 * (2**77) +
                    x2_16 * (2**102) +
                    x2_20 * (2**128) +
                    x2_24 * (2**153) +
                    x2_28 * (2**179) +
                    x2_32 * (2**204) +
                    x2_36 * (2**230)
                )
                (
                    x3_0 +
                    x3_4 * (2**26) +
                    x3_8 * (2**51) +
                    x3_12 * (2**77) +
                    x3_16 * (2**102) +
                    x3_20 * (2**128) +
                    x3_24 * (2**153) +
                    x3_28 * (2**179) +
                    x3_32 * (2**204) +
                    x3_36 * (2**230)
                )
              )
              (
                  mul
                  (
                    z2_0 +
                    z2_4 * (2**26) +
                    z2_8 * (2**51) +
                    z2_12 * (2**77) +
                    z2_16 * (2**102) +
                    z2_20 * (2**128) +
                    z2_24 * (2**153) +
                    z2_28 * (2**179) +
                    z2_32 * (2**204) +
                    z2_36 * (2**230)
                  )
                  (
                    z3_0 +
                    z3_4 * (2**26) +
                    z3_8 * (2**51) +
                    z3_12 * (2**77) +
                    z3_16 * (2**102) +
                    z3_20 * (2**128) +
                    z3_24 * (2**153) +
                    z3_28 * (2**179) +
                    z3_32 * (2**204) +
                    z3_36 * (2**230)
                  )
              )
          )
      )
    )
    ( mod 2**255 - 19 ),
    (* condition 3-2 *)
    (
        z3_0_v4 +
        z3_4_v4 * (2**26) +
        z3_8_v4 * (2**51) +
        z3_12_v4 * (2**77) +
        z3_16_v4 * (2**102) +
        z3_20_v4 * (2**128) +
        z3_24_v4 * (2**153) +
        z3_28_v4 * (2**179) +
        z3_32_v4 * (2**204) +
        z3_36_v4 * (2**230)
    )
    =
    (
        mul
        (4)
        (
            mul
            (
                x1_0 +
                x1_4 * (2**26) +
                x1_8 * (2**51) +
                x1_12 * (2**77) +
                x1_16 * (2**102) +
                x1_20 * (2**128) +
                x1_24 * (2**153) +
                x1_28 * (2**179) +
                x1_32 * (2**204) +
                x1_36 * (2**230)
            )
            (
                sq
                (
                    sub
                    (
                        mul
                        (
                            x3_0 +
                            x3_4 * (2**26) +
                            x3_8 * (2**51) +
                            x3_12 * (2**77) +
                            x3_16 * (2**102) +
                            x3_20 * (2**128) +
                            x3_24 * (2**153) +
                            x3_28 * (2**179) +
                            x3_32 * (2**204) +
                            x3_36 * (2**230)
                        )
                        (
                            z2_0 +
                            z2_4 * (2**26) +
                            z2_8 * (2**51) +
                            z2_12 * (2**77) +
                            z2_16 * (2**102) +
                            z2_20 * (2**128) +
                            z2_24 * (2**153) +
                            z2_28 * (2**179) +
                            z2_32 * (2**204) +
                            z2_36 * (2**230)
                        )
                    )
                    (
                        mul
                        (
                            x2_0 +
                            x2_4 * (2**26) +
                            x2_8 * (2**51) +
                            x2_12 * (2**77) +
                            x2_16 * (2**102) +
                            x2_20 * (2**128) +
                            x2_24 * (2**153) +
                            x2_28 * (2**179) +
                            x2_32 * (2**204) +
                            x2_36 * (2**230)
                        )
                        (
                            z3_0 +
                            z3_4 * (2**26) +
                            z3_8 * (2**51) +
                            z3_12 * (2**77) +
                            z3_16 * (2**102) +
                            z3_20 * (2**128) +
                            z3_24 * (2**153) +
                            z3_28 * (2**179) +
                            z3_32 * (2**204) +
                            z3_36 * (2**230)
                        )
                    )
                )
            )
        )
    )
    ( mod 2**255 - 19 )
    (* condition 3 
     (
        mul
        (
            x3_0_v3 +
            x3_4_v3 * (2**26) +
            x3_8_v3 * (2**51) +
            x3_12_v3 * (2**77) +
            x3_16_v3 * (2**102) +
            x3_20_v3 * (2**128) +
            x3_24_v3 * (2**153) +
            x3_28_v3 * (2**179) +
            x3_32_v3 * (2**204) +
            x3_36_v3 * (2**230)
        )
        (
            mul
            (
                x1_0 +
                x1_4 * (2**26) +
                x1_8 * (2**51) +
                x1_12 * (2**77) +
                x1_16 * (2**102) +
                x1_20 * (2**128) +
                x1_24 * (2**153) +
                x1_28 * (2**179) +
                x1_32 * (2**204) +
                x1_36 * (2**230)
            )
            (
                sq
                (
                    sub
                    (
                        mul
                        (
                            x3_0 +
                            x3_4 * (2**26) +
                            x3_8 * (2**51) +
                            x3_12 * (2**77) +
                            x3_16 * (2**102) +
                            x3_20 * (2**128) +
                            x3_24 * (2**153) +
                            x3_28 * (2**179) +
                            x3_32 * (2**204) +
                            x3_36 * (2**230)
                        )
                        (
                            z2_0 +
                            z2_4 * (2**26) +
                            z2_8 * (2**51) +
                            z2_12 * (2**77) +
                            z2_16 * (2**102) +
                            z2_20 * (2**128) +
                            z2_24 * (2**153) +
                            z2_28 * (2**179) +
                            z2_32 * (2**204) +
                            z2_36 * (2**230)
                        )
                    )
                    (
                        mul
                        (
                            x2_0 +
                            x2_4 * (2**26) +
                            x2_8 * (2**51) +
                            x2_12 * (2**77) +
                            x2_16 * (2**102) +
                            x2_20 * (2**128) +
                            x2_24 * (2**153) +
                            x2_28 * (2**179) +
                            x2_32 * (2**204) +
                            x2_36 * (2**230)
                        )
                        (
                            z3_0 +
                            z3_4 * (2**26) +
                            z3_8 * (2**51) +
                            z3_12 * (2**77) +
                            z3_16 * (2**102) +
                            z3_20 * (2**128) +
                            z3_24 * (2**153) +
                            z3_28 * (2**179) +
                            z3_32 * (2**204) +
                            z3_36 * (2**230)
                        )
                    )
                )
            )
        )
     )
     =
     (
        mul
        (
            z3_0_v4 +
            z3_4_v4 * (2**26) +
            z3_8_v4 * (2**51) +
            z3_12_v4 * (2**77) +
            z3_16_v4 * (2**102) +
            z3_20_v4 * (2**128) +
            z3_24_v4 * (2**153) +
            z3_28_v4 * (2**179) +
            z3_32_v4 * (2**204) +
            z3_36_v4 * (2**230)
        )
        (
            sq
            (
                sub
                (
                    mul
                    (
                        x2_0 +
                        x2_4 * (2**26) +
                        x2_8 * (2**51) +
                        x2_12 * (2**77) +
                        x2_16 * (2**102) +
                        x2_20 * (2**128) +
                        x2_24 * (2**153) +
                        x2_28 * (2**179) +
                        x2_32 * (2**204) +
                        x2_36 * (2**230)
                    )
                    (
                        x3_0 +
                        x3_4 * (2**26) +
                        x3_8 * (2**51) +
                        x3_12 * (2**77) +
                        x3_16 * (2**102) +
                        x3_20 * (2**128) +
                        x3_24 * (2**153) +
                        x3_28 * (2**179) +
                        x3_32 * (2**204) +
                        x3_36 * (2**230)
                    )
                )
                (
                    mul
                    (
                        z2_0 +
                        z2_4 * (2**26) +
                        z2_8 * (2**51) +
                        z2_12 * (2**77) +
                        z2_16 * (2**102) +
                        z2_20 * (2**128) +
                        z2_24 * (2**153) +
                        z2_28 * (2**179) +
                        z2_32 * (2**204) +
                        z2_36 * (2**230)
                    )
                    (
                        z3_0 +
                        z3_4 * (2**26) +
                        z3_8 * (2**51) +
                        z3_12 * (2**77) +
                        z3_16 * (2**102) +
                        z3_20 * (2**128) +
                        z3_24 * (2**153) +
                        z3_28 * (2**179) +
                        z3_32 * (2**204) +
                        z3_36 * (2**230)
                    )
                )
            )
        )
     )
     ( mod 2**255 -19 )
     *)

  ] prove with all ghosts, all cuts
  &&
  true
}

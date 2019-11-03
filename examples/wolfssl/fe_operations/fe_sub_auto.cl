proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f2_0@int32 _;
mov f2_4@int32 _;
mov f2_8@int32 _;
mov f2_12@int32 _;
mov f2_16@int32 _;
mov f2_20@int32 _;
mov f2_24@int32 _;
mov f2_28@int32 _;
mov f2_32@int32 _;
mov f2_36@int32 _;
mov g13_0@int32 _;
mov g13_4@int32 _;
mov g13_8@int32 _;
mov g13_12@int32 _;
mov g13_16@int32 _;
mov g13_20@int32 _;
mov g13_24@int32 _;
mov g13_28@int32 _;
mov g13_32@int32 _;
mov g13_36@int32 _;
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
mov _ h34_0@int32;
mov _ h34_4@int32;
mov _ h34_8@int32;
mov _ h34_12@int32;
mov _ h34_16@int32;
mov _ h34_20@int32;
mov _ h34_24@int32;
mov _ h34_28@int32;
mov _ h34_32@int32;
mov _ h34_36@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

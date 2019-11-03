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
mov _ h23_0@int32;
mov _ h23_4@int32;
mov _ h23_8@int32;
mov _ h23_12@int32;
mov _ h23_16@int32;
mov _ h23_20@int32;
mov _ h23_24@int32;
mov _ h23_28@int32;
mov _ h23_32@int32;
mov _ h23_36@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

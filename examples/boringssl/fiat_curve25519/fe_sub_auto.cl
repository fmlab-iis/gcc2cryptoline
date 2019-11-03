proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f2_0@uint64 _;
mov f2_8@uint64 _;
mov f2_16@uint64 _;
mov f2_24@uint64 _;
mov f2_32@uint64 _;
mov g1_0@uint64 _;
mov g1_8@uint64 _;
mov g1_16@uint64 _;
mov g1_24@uint64 _;
mov g1_32@uint64 _;
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
mov _ h3_0@uint64;
mov _ h3_8@uint64;
mov _ h3_16@uint64;
mov _ h3_24@uint64;
mov _ h3_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

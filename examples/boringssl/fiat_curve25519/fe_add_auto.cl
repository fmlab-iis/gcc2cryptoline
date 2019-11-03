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

proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a7_0@uint64 _;
mov a7_8@uint64 _;
mov a7_16@uint64 _;
mov a7_24@uint64 _;
mov a7_32@uint64 _;
mov b9_0@uint64 _;
mov b9_8@uint64 _;
mov b9_16@uint64 _;
mov b9_24@uint64 _;
mov b9_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* xi_8 = *a_7(D); *)
mov xi8 a7_0;
(* yi_10 = *b_9(D); *)
mov yi10 b9_0;
(* _1 = xi_8 + yi_10; *)
uadd v1 xi8 yi10;
(* *a_7(D) = _1; *)
mov a7_0 v1;
(* xi_12 = MEM[(uint64_t * )a_7(D) + 8B]; *)
mov xi12 a7_8;
(* yi_13 = MEM[(uint64_t * )b_9(D) + 8B]; *)
mov yi13 b9_8;
(* _2 = xi_12 + yi_13; *)
uadd v2 xi12 yi13;
(* MEM[(uint64_t * )a_7(D) + 8B] = _2; *)
mov a7_8 v2;
(* xi_15 = MEM[(uint64_t * )a_7(D) + 16B]; *)
mov xi15 a7_16;
(* yi_16 = MEM[(uint64_t * )b_9(D) + 16B]; *)
mov yi16 b9_16;
(* _3 = xi_15 + yi_16; *)
uadd v3 xi15 yi16;
(* MEM[(uint64_t * )a_7(D) + 16B] = _3; *)
mov a7_16 v3;
(* xi_18 = MEM[(uint64_t * )a_7(D) + 24B]; *)
mov xi18 a7_24;
(* yi_19 = MEM[(uint64_t * )b_9(D) + 24B]; *)
mov yi19 b9_24;
(* _4 = xi_18 + yi_19; *)
uadd v4 xi18 yi19;
(* MEM[(uint64_t * )a_7(D) + 24B] = _4; *)
mov a7_24 v4;
(* xi_21 = MEM[(uint64_t * )a_7(D) + 32B]; *)
mov xi21 a7_32;
(* yi_22 = MEM[(uint64_t * )b_9(D) + 32B]; *)
mov yi22 b9_32;
(* _5 = xi_21 + yi_22; *)
uadd v5 xi21 yi22;
(* MEM[(uint64_t * )a_7(D) + 32B] = _5; *)
mov a7_32 v5;
(* return; *)


(* Start with unused lhs *)
mov _ a7_0@uint64;
mov _ a7_8@uint64;
mov _ a7_16@uint64;
mov _ a7_24@uint64;
mov _ a7_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

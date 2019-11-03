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
mov a7_0@uint64 a0;
mov a7_8@uint64 a1;
mov a7_16@uint64 a2;
mov a7_24@uint64 a3;
mov a7_32@uint64 a4;
mov b9_0@uint64 b0;
mov b9_8@uint64 b1;
mov b9_16@uint64 b2;
mov b9_24@uint64 b3;
mov b9_32@uint64 b4;
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
mov c0 a7_0@uint64;
mov c1 a7_8@uint64;
mov c2 a7_16@uint64;
mov c3 a7_24@uint64;
mov c4 a7_32@uint64;
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
  and [
    c0 <u (2**53)@64,
    c1 <u (2**53)@64,
    c2 <u (2**53)@64,
    c3 <u (2**53)@64,
    c4 <u (2**53)@64
  ]
}

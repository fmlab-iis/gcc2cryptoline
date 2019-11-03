proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in16_0@uint64 _;
mov in16_6@uint64 _;
mov in16_12@uint64 _;
mov in16_19@uint64 _;
mov in16_25@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = MEM[(const uint64_t * )in_16(D)]; *)
mov v1 in16_0;
(* _2 = _1 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v2 v1 0x7ffffffffffff@uint64;
(* *output_17(D) = _2; *)
mov output17_0 v2;
(* _3 = MEM[(const uint64_t * )in_16(D) + 6B]; *)
mov v3 in16_6;
(* _4 = _3 >> 3; *)
usplit v4 tmp_to_use v3 3;
(* _5 = _4 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v5 v4 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_17(D) + 8B] = _5; *)
mov output17_8 v5;
(* _6 = MEM[(const uint64_t * )in_16(D) + 12B]; *)
mov v6 in16_12;
(* _7 = _6 >> 6; *)
usplit v7 tmp_to_use v6 6;
(* _8 = _7 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v8 v7 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_17(D) + 16B] = _8; *)
mov output17_16 v8;
(* _9 = MEM[(const uint64_t * )in_16(D) + 19B]; *)
mov v9 in16_19;
(* _10 = _9 >> 1; *)
usplit v10 tmp_to_use v9 1;
(* _11 = _10 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v11 v10 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_17(D) + 24B] = _11; *)
mov output17_24 v11;
(* _12 = MEM[(const uint64_t * )in_16(D) + 25B]; *)
mov v12 in16_25;
(* _13 = _12 >> 4; *)
usplit v13 tmp_to_use v12 4;
(* _14 = _13 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v14 v13 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_17(D) + 32B] = _14; *)
mov output17_32 v14;
(* return; *)


(* Start with unused lhs *)
mov _ output17_0@uint64;
mov _ output17_8@uint64;
mov _ output17_16@uint64;
mov _ output17_24@uint64;
mov _ output17_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

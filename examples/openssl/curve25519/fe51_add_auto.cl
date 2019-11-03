proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f17_0@uint64 _;
mov f17_8@uint64 _;
mov f17_16@uint64 _;
mov f17_24@uint64 _;
mov f17_32@uint64 _;
mov g18_0@uint64 _;
mov g18_8@uint64 _;
mov g18_16@uint64 _;
mov g18_24@uint64 _;
mov g18_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *f_17(D); *)
mov v1 f17_0;
(* _2 = *g_18(D); *)
mov v2 g18_0;
(* _3 = _1 + _2; *)
uadd v3 v1 v2;
(* *h_19(D) = _3; *)
mov h19_0 v3;
(* _4 = MEM[(const uint64_t * )f_17(D) + 8B]; *)
mov v4 f17_8;
(* _5 = MEM[(const uint64_t * )g_18(D) + 8B]; *)
mov v5 g18_8;
(* _6 = _4 + _5; *)
uadd v6 v4 v5;
(* MEM[(uint64_t * )h_19(D) + 8B] = _6; *)
mov h19_8 v6;
(* _7 = MEM[(const uint64_t * )f_17(D) + 16B]; *)
mov v7 f17_16;
(* _8 = MEM[(const uint64_t * )g_18(D) + 16B]; *)
mov v8 g18_16;
(* _9 = _7 + _8; *)
uadd v9 v7 v8;
(* MEM[(uint64_t * )h_19(D) + 16B] = _9; *)
mov h19_16 v9;
(* _10 = MEM[(const uint64_t * )f_17(D) + 24B]; *)
mov v10 f17_24;
(* _11 = MEM[(const uint64_t * )g_18(D) + 24B]; *)
mov v11 g18_24;
(* _12 = _10 + _11; *)
uadd v12 v10 v11;
(* MEM[(uint64_t * )h_19(D) + 24B] = _12; *)
mov h19_24 v12;
(* _13 = MEM[(const uint64_t * )f_17(D) + 32B]; *)
mov v13 f17_32;
(* _14 = MEM[(const uint64_t * )g_18(D) + 32B]; *)
mov v14 g18_32;
(* _15 = _13 + _14; *)
uadd v15 v13 v14;
(* MEM[(uint64_t * )h_19(D) + 32B] = _15; *)
mov h19_32 v15;
(* return; *)


(* Start with unused lhs *)
mov _ h19_0@uint64;
mov _ h19_8@uint64;
mov _ h19_16@uint64;
mov _ h19_24@uint64;
mov _ h19_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

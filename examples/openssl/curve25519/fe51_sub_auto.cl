proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f22_0@uint64 _;
mov f22_8@uint64 _;
mov f22_16@uint64 _;
mov f22_24@uint64 _;
mov f22_32@uint64 _;
mov g23_0@uint64 _;
mov g23_8@uint64 _;
mov g23_16@uint64 _;
mov g23_24@uint64 _;
mov g23_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *f_22(D); *)
mov v1 f22_0;
(* _2 = *g_23(D); *)
mov v2 g23_0;
(* _3 = _1 - _2; *)
usub v3 v1 v2;
(* _4 = _3 + 4503599627370458; *)
uadd v4 v3 0xfffffffffffda@uint64;
(* *h_24(D) = _4; *)
mov h24_0 v4;
(* _5 = MEM[(const uint64_t * )f_22(D) + 8B]; *)
mov v5 f22_8;
(* _6 = MEM[(const uint64_t * )g_23(D) + 8B]; *)
mov v6 g23_8;
(* _7 = _5 - _6; *)
usub v7 v5 v6;
(* _8 = _7 + 4503599627370494; *)
uadd v8 v7 0xffffffffffffe@uint64;
(* MEM[(uint64_t * )h_24(D) + 8B] = _8; *)
mov h24_8 v8;
(* _9 = MEM[(const uint64_t * )f_22(D) + 16B]; *)
mov v9 f22_16;
(* _10 = MEM[(const uint64_t * )g_23(D) + 16B]; *)
mov v10 g23_16;
(* _11 = _9 - _10; *)
usub v11 v9 v10;
(* _12 = _11 + 4503599627370494; *)
uadd v12 v11 0xffffffffffffe@uint64;
(* MEM[(uint64_t * )h_24(D) + 16B] = _12; *)
mov h24_16 v12;
(* _13 = MEM[(const uint64_t * )f_22(D) + 24B]; *)
mov v13 f22_24;
(* _14 = MEM[(const uint64_t * )g_23(D) + 24B]; *)
mov v14 g23_24;
(* _15 = _13 - _14; *)
usub v15 v13 v14;
(* _16 = _15 + 4503599627370494; *)
uadd v16 v15 0xffffffffffffe@uint64;
(* MEM[(uint64_t * )h_24(D) + 24B] = _16; *)
mov h24_24 v16;
(* _17 = MEM[(const uint64_t * )f_22(D) + 32B]; *)
mov v17 f22_32;
(* _18 = MEM[(const uint64_t * )g_23(D) + 32B]; *)
mov v18 g23_32;
(* _19 = _17 - _18; *)
usub v19 v17 v18;
(* _20 = _19 + 4503599627370494; *)
uadd v20 v19 0xffffffffffffe@uint64;
(* MEM[(uint64_t * )h_24(D) + 32B] = _20; *)
mov h24_32 v20;
(* return; *)


(* Start with unused lhs *)
mov _ h24_0@uint64;
mov _ h24_8@uint64;
mov _ h24_16@uint64;
mov _ h24_24@uint64;
mov _ h24_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

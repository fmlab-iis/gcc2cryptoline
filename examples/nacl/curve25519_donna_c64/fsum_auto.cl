proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in12_0@uint64 _;
mov in12_8@uint64 _;
mov in12_16@uint64 _;
mov in12_24@uint64 _;
mov in12_32@uint64 _;
mov output11_0@uint64 _;
mov output11_8@uint64 _;
mov output11_16@uint64 _;
mov output11_24@uint64 _;
mov output11_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _8 = *output_11(D); *)
mov v8 output11_0;
(* _23 = *in_12(D); *)
mov v23 in12_0;
(* _24 = _8 + _23; *)
uadd v24 v8 v23;
(* *output_11(D) = _24; *)
mov output11_0 v24;
(* _36 = MEM[(felem * )output_11(D) + 8B]; *)
mov v36 output11_8;
(* _38 = MEM[(const felem * )in_12(D) + 8B]; *)
mov v38 in12_8;
(* _39 = _36 + _38; *)
uadd v39 v36 v38;
(* MEM[(felem * )output_11(D) + 8B] = _39; *)
mov output11_8 v39;
(* _49 = MEM[(felem * )output_11(D) + 16B]; *)
mov v49 output11_16;
(* _51 = MEM[(const felem * )in_12(D) + 16B]; *)
mov v51 in12_16;
(* _52 = _49 + _51; *)
uadd v52 v49 v51;
(* MEM[(felem * )output_11(D) + 16B] = _52; *)
mov output11_16 v52;
(* _62 = MEM[(felem * )output_11(D) + 24B]; *)
mov v62 output11_24;
(* _64 = MEM[(const felem * )in_12(D) + 24B]; *)
mov v64 in12_24;
(* _65 = _62 + _64; *)
uadd v65 v62 v64;
(* MEM[(felem * )output_11(D) + 24B] = _65; *)
mov output11_24 v65;
(* _4 = MEM[(felem * )output_11(D) + 32B]; *)
mov v4 output11_32;
(* _6 = MEM[(const felem * )in_12(D) + 32B]; *)
mov v6 in12_32;
(* _7 = _4 + _6; *)
uadd v7 v4 v6;
(* MEM[(felem * )output_11(D) + 32B] = _7; *)
mov output11_32 v7;
(* return; *)


(* Start with unused lhs *)
mov _ output11_0@uint64;
mov _ output11_8@uint64;
mov _ output11_16@uint64;
mov _ output11_24@uint64;
mov _ output11_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

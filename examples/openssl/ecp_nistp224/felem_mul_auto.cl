proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in143_0@uint64 _;
mov in143_8@uint64 _;
mov in143_16@uint64 _;
mov in143_24@uint64 _;
mov in244_0@uint64 _;
mov in244_8@uint64 _;
mov in244_16@uint64 _;
mov in244_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in1_43(D); *)
mov v1 in143_0;
(* _3 = *in2_44(D); *)
mov v3 in244_0;
(* _5 = _1 w* _3; *)
umulj v5 v1 v3;
(* *out_45(D) = _5; *)
mov out45_0 v5;
(* _6 = MEM[(const limb * )in2_44(D) + 8B]; *)
mov v6 in244_8;
(* _8 = _1 w* _6; *)
umulj v8 v1 v6;
(* _9 = MEM[(const limb * )in1_43(D) + 8B]; *)
mov v9 in143_8;
(* _11 = _3 w* _9; *)
umulj v11 v3 v9;
(* _12 = _8 + _11; *)
uadd v12 v8 v11;
(* MEM[(widelimb * )out_45(D) + 16B] = _12; *)
mov out45_16 v12;
(* _13 = MEM[(const limb * )in2_44(D) + 16B]; *)
mov v13 in244_16;
(* _15 = _1 w* _13; *)
umulj v15 v1 v13;
(* _16 = _6 w* _9; *)
umulj v16 v6 v9;
(* _17 = _15 + _16; *)
uadd v17 v15 v16;
(* _18 = MEM[(const limb * )in1_43(D) + 16B]; *)
mov v18 in143_16;
(* _20 = _3 w* _18; *)
umulj v20 v3 v18;
(* _21 = _17 + _20; *)
uadd v21 v17 v20;
(* MEM[(widelimb * )out_45(D) + 32B] = _21; *)
mov out45_32 v21;
(* _22 = MEM[(const limb * )in2_44(D) + 24B]; *)
mov v22 in244_24;
(* _24 = _1 w* _22; *)
umulj v24 v1 v22;
(* _25 = _9 w* _13; *)
umulj v25 v9 v13;
(* _54 = _24 + _25; *)
uadd v54 v24 v25;
(* _27 = MEM[(const limb * )in1_43(D) + 24B]; *)
mov v27 in143_24;
(* _29 = _3 w* _27; *)
umulj v29 v3 v27;
(* _30 = _6 w* _18; *)
umulj v30 v6 v18;
(* _53 = _29 + _54; *)
uadd v53 v29 v54;
(* _32 = _30 + _53; *)
uadd v32 v30 v53;
(* MEM[(widelimb * )out_45(D) + 48B] = _32; *)
mov out45_48 v32;
(* _33 = _9 w* _22; *)
umulj v33 v9 v22;
(* _34 = _13 w* _18; *)
umulj v34 v13 v18;
(* _35 = _33 + _34; *)
uadd v35 v33 v34;
(* _36 = _6 w* _27; *)
umulj v36 v6 v27;
(* _37 = _35 + _36; *)
uadd v37 v35 v36;
(* MEM[(widelimb * )out_45(D) + 64B] = _37; *)
mov out45_64 v37;
(* _38 = _18 w* _22; *)
umulj v38 v18 v22;
(* _39 = _13 w* _27; *)
umulj v39 v13 v27;
(* _40 = _38 + _39; *)
uadd v40 v38 v39;
(* MEM[(widelimb * )out_45(D) + 80B] = _40; *)
mov out45_80 v40;
(* _41 = _22 w* _27; *)
umulj v41 v22 v27;
(* MEM[(widelimb * )out_45(D) + 96B] = _41; *)
mov out45_96 v41;
(* return; *)


(* Start with unused lhs *)
mov _ out45_0@uint128;
mov _ out45_16@uint128;
mov _ out45_32@uint128;
mov _ out45_48@uint128;
mov _ out45_64@uint128;
mov _ out45_80@uint128;
mov _ out45_96@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

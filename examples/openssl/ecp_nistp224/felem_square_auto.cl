proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in26_0@uint64 _;
mov in26_8@uint64 _;
mov in26_16@uint64 _;
mov in26_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_26(D); *)
mov v1 in26_0;
(* tmp0_27 = _1 * 2; *)
umul tmp027 v1 0x2@uint64;
(* _2 = MEM[(const limb * )in_26(D) + 8B]; *)
mov v2 in26_8;
(* tmp1_28 = _2 * 2; *)
umul tmp128 v2 0x2@uint64;
(* _3 = MEM[(const limb * )in_26(D) + 16B]; *)
mov v3 in26_16;
(* tmp2_29 = _3 * 2; *)
umul tmp229 v3 0x2@uint64;
(* _5 = _1 w* _1; *)
umulj v5 v1 v1;
(* *out_30(D) = _5; *)
mov out30_0 v5;
(* _7 = _1 w* tmp1_28; *)
umulj v7 v1 tmp128;
(* MEM[(widelimb * )out_30(D) + 16B] = _7; *)
mov out30_16 v7;
(* _9 = _1 w* tmp2_29; *)
umulj v9 v1 tmp229;
(* _11 = _2 w* _2; *)
umulj v11 v2 v2;
(* _12 = _9 + _11; *)
uadd v12 v9 v11;
(* MEM[(widelimb * )out_30(D) + 32B] = _12; *)
mov out30_32 v12;
(* _13 = MEM[(const limb * )in_26(D) + 24B]; *)
mov v13 in26_24;
(* _16 = _13 w* tmp0_27; *)
umulj v16 v13 tmp027;
(* _17 = tmp2_29 w* _2; *)
umulj v17 tmp229 v2;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* MEM[(widelimb * )out_30(D) + 48B] = _18; *)
mov out30_48 v18;
(* _19 = tmp1_28 w* _13; *)
umulj v19 tmp128 v13;
(* _21 = _3 w* _3; *)
umulj v21 v3 v3;
(* _22 = _19 + _21; *)
uadd v22 v19 v21;
(* MEM[(widelimb * )out_30(D) + 64B] = _22; *)
mov out30_64 v22;
(* _23 = tmp2_29 w* _13; *)
umulj v23 tmp229 v13;
(* MEM[(widelimb * )out_30(D) + 80B] = _23; *)
mov out30_80 v23;
(* _24 = _13 w* _13; *)
umulj v24 v13 v13;
(* MEM[(widelimb * )out_30(D) + 96B] = _24; *)
mov out30_96 v24;
(* return; *)


(* Start with unused lhs *)
mov _ out30_0@uint128;
mov _ out30_16@uint128;
mov _ out30_32@uint128;
mov _ out30_48@uint128;
mov _ out30_64@uint128;
mov _ out30_80@uint128;
mov _ out30_96@uint128;
(* End with unsed lhs *)


{
  true
  &&
  true
}

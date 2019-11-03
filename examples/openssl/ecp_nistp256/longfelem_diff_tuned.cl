proc main (uint128 in0, uint128 in1, uint128 in2, uint128 in3, uint128 in4, uint128 in5, uint128 in6, uint128 in7, uint128 out0, uint128 out1, uint128 out2, uint128 out3, uint128 out4, uint128 out5, uint128 out6, uint128 out7) = 
{
  true
  &&
  and [
      in0 < (7 * 2**67)@128,
      in1 < (7 * 2**67)@128,
      in2 < (7 * 2**67)@128,
      in3 < (7 * 2**67)@128,
      in4 < (7 * 2**67)@128,
      in5 < (7 * 2**67)@128,
      in6 < (7 * 2**67)@128,
      in7 < (7 * 2**67)@128,
      out0 < (7 * 2**67)@128,
      out1 < (7 * 2**67)@128,
      out2 < (7 * 2**67)@128,
      out3 < (7 * 2**67)@128,
      out4 < (7 * 2**67)@128,
      out5 < (7 * 2**67)@128,
      out6 < (7 * 2**67)@128,
      out7 < (7 * 2**67)@128
  ]
}


(* Start with undefined rhs *)
mov in43_0@uint128 in0;
mov in43_16@uint128 in1;
mov in43_32@uint128 in2;
mov in43_48@uint128 in3;
mov in43_64@uint128 in4;
mov in43_80@uint128 in5;
mov in43_96@uint128 in6;
mov in43_112@uint128 in7;
mov out34_0@uint128 out0;
mov out34_16@uint128 out1;
mov out34_32@uint128 out2;
mov out34_48@uint128 out3;
mov out34_64@uint128 out4;
mov out34_80@uint128 out5;
mov out34_96@uint128 out6;
mov out34_112@uint128 out7;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *out_34(D); *)
mov v1 out34_0;
(* _2 = _1 + 0x3fffffffffffffff40; *)
uadd v2 v1 0x3fffffffffffffff40@uint128;
(* *out_34(D) = _2; *)
mov out34_0 v2;
(* _3 = MEM[(limb * )out_34(D) + 16B]; *)
mov v3 out34_16;
(* _4 = _3 + 0x400000010000000000; *)
uadd v4 v3 0x400000010000000000@uint128;
(* MEM[(limb * )out_34(D) + 16B] = _4; *)
mov out34_16 v4;
(* _5 = MEM[(limb * )out_34(D) + 32B]; *)
mov v5 out34_32;
(* _6 = _5 + 0x400000000000000000; *)
uadd v6 v5 0x400000000000000000@uint128;
(* MEM[(limb * )out_34(D) + 32B] = _6; *)
mov out34_32 v6;
(* _7 = MEM[(limb * )out_34(D) + 48B]; *)
mov v7 out34_48;
(* _8 = _7 + 0x3ffffffec000000040; *)
uadd v8 v7 0x3ffffffec000000040@uint128;
(* MEM[(limb * )out_34(D) + 48B] = _8; *)
mov out34_48 v8;
(* _9 = MEM[(limb * )out_34(D) + 64B]; *)
mov v9 out34_64;
(* _10 = _9 + 0x3fffffffffffffffc0; *)
uadd v10 v9 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 64B] = _10; *)
mov out34_64 v10;
(* _11 = MEM[(limb * )out_34(D) + 80B]; *)
mov v11 out34_80;
(* _12 = _11 + 0x3fffffffffffffffc0; *)
uadd v12 v11 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 80B] = _12; *)
mov out34_80 v12;
(* _13 = MEM[(limb * )out_34(D) + 96B]; *)
mov v13 out34_96;
(* _14 = _13 + 0x3fffffffffffffffc0; *)
uadd v14 v13 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 96B] = _14; *)
mov out34_96 v14;
(* _15 = MEM[(limb * )out_34(D) + 112B]; *)
mov v15 out34_112;
(* _16 = _15 + 0x3fffffffffffffffc0; *)
uadd v16 v15 0x3fffffffffffffffc0@uint128;
(* MEM[(limb * )out_34(D) + 112B] = _16; *)
mov out34_112 v16;
(* _17 = *in_43(D); *)
mov v17 in43_0;
(* _18 = _2 - _17; *)
usub v18 v2 v17;
(* *out_34(D) = _18; *)
mov out34_0 v18;
(* _19 = MEM[(const limb * )in_43(D) + 16B]; *)
mov v19 in43_16;
(* _20 = _4 - _19; *)
usub v20 v4 v19;
(* MEM[(limb * )out_34(D) + 16B] = _20; *)
mov out34_16 v20;
(* _21 = MEM[(const limb * )in_43(D) + 32B]; *)
mov v21 in43_32;
(* _22 = _6 - _21; *)
usub v22 v6 v21;
(* MEM[(limb * )out_34(D) + 32B] = _22; *)
mov out34_32 v22;
(* _23 = MEM[(const limb * )in_43(D) + 48B]; *)
mov v23 in43_48;
(* _24 = _8 - _23; *)
usub v24 v8 v23;
(* MEM[(limb * )out_34(D) + 48B] = _24; *)
mov out34_48 v24;
(* _25 = MEM[(const limb * )in_43(D) + 64B]; *)
mov v25 in43_64;
(* _26 = _10 - _25; *)
usub v26 v10 v25;
(* MEM[(limb * )out_34(D) + 64B] = _26; *)
mov out34_64 v26;
(* _27 = MEM[(const limb * )in_43(D) + 80B]; *)
mov v27 in43_80;
(* _28 = _12 - _27; *)
usub v28 v12 v27;
(* MEM[(limb * )out_34(D) + 80B] = _28; *)
mov out34_80 v28;
(* _29 = MEM[(const limb * )in_43(D) + 96B]; *)
mov v29 in43_96;
(* _30 = _14 - _29; *)
usub v30 v14 v29;
(* MEM[(limb * )out_34(D) + 96B] = _30; *)
mov out34_96 v30;
(* _31 = MEM[(const limb * )in_43(D) + 112B]; *)
mov v31 in43_112;
(* _32 = _16 - _31; *)
usub v32 v16 v31;
(* MEM[(limb * )out_34(D) + 112B] = _32; *)
mov out34_112 v32;
(* return; *)


(* Start with unused lhs *)
mov c0 out34_0@uint128;
mov c1 out34_16@uint128;
mov c2 out34_32@uint128;
mov c3 out34_48@uint128;
mov c4 out34_64@uint128;
mov c5 out34_80@uint128;
mov c6 out34_96@uint128;
mov c7 out34_112@uint128;
(* End with unsed lhs *)


{
  (limbs 64 [c0, c1, c2, c3, c4, c5, c6, c7])
  =
  (
      (limbs 64 [out0, out1, out2, out3, out4, out5, out6, out7])
      -
      (limbs 64 [in0, in1, in2, in3, in4, in5, in6, in7])
  )
  (mod  (limbs 64 [  18446744073709551615,
                 4294967295,
                 0,
                 18446744069414584321 ]))
  &&
  and [
      c0 <= out0 + (2**70 + 2**40)@128,
      c1 <= out1 + (2**70 + 2**40)@128,
      c2 <= out2 + (2**70 + 2**40)@128,
      c3 <= out3 + (2**70 + 2**40)@128,
      c4 <= out4 + (2**70 + 2**40)@128,
      c5 <= out5 + (2**70 + 2**40)@128,
      c6 <= out6 + (2**70 + 2**40)@128,
      c7 <= out7 + (2**70 + 2**40)@128
  ]
}

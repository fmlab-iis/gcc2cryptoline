proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in35_0@uint64 _;
mov in35_8@uint64 _;
mov in35_16@uint64 _;
mov in35_24@uint64 _;
mov in35_32@uint64 _;
mov scalar36@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_35(D); *)
mov v1 in35_0;
(* a_37 = _1 w* scalar_36(D); *)
umulj a37 v1 scalar36;
(* _4 = (long unsigned int) a_37; *)
cast v4@uint64 a37@uint128;
(* _5 = _4 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v5 v4 0x7ffffffffffff@uint64;
(* *output_38(D) = _5; *)
mov output38_0 v5;
(* _6 = MEM[(const felem * )in_35(D) + 8B]; *)
mov v6 in35_8;
(* _8 = scalar_36(D) w* _6; *)
umulj v8 scalar36 v6;
(* _9 = a_37 >> 51; *)
usplit v9 tmp_to_use a37 51;
(* a_40 = _8 + _9; *)
uadd a40 v8 v9;
(* _10 = (long unsigned int) a_40; *)
cast v10@uint64 a40@uint128;
(* _11 = _10 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v11 v10 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 8B] = _11; *)
mov output38_8 v11;
(* _12 = MEM[(const felem * )in_35(D) + 16B]; *)
mov v12 in35_16;
(* _14 = scalar_36(D) w* _12; *)
umulj v14 scalar36 v12;
(* _15 = a_40 >> 51; *)
usplit v15 tmp_to_use a40 51;
(* a_42 = _14 + _15; *)
uadd a42 v14 v15;
(* _16 = (long unsigned int) a_42; *)
cast v16@uint64 a42@uint128;
(* _17 = _16 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v17 v16 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 16B] = _17; *)
mov output38_16 v17;
(* _18 = MEM[(const felem * )in_35(D) + 24B]; *)
mov v18 in35_24;
(* _20 = scalar_36(D) w* _18; *)
umulj v20 scalar36 v18;
(* _21 = a_42 >> 51; *)
usplit v21 tmp_to_use a42 51;
(* a_44 = _20 + _21; *)
uadd a44 v20 v21;
(* _22 = (long unsigned int) a_44; *)
cast v22@uint64 a44@uint128;
(* _23 = _22 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v23 v22 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 24B] = _23; *)
mov output38_24 v23;
(* _24 = MEM[(const felem * )in_35(D) + 32B]; *)
mov v24 in35_32;
(* _26 = scalar_36(D) w* _24; *)
umulj v26 scalar36 v24;
(* _27 = a_44 >> 51; *)
usplit v27 tmp_to_use a44 51;
(* a_46 = _26 + _27; *)
uadd a46 v26 v27;
(* _28 = (long unsigned int) a_46; *)
cast v28@uint64 a46@uint128;
(* _29 = _28 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v29 v28 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 32B] = _29; *)
mov output38_32 v29;
(* _30 = a_46 >> 51; *)
usplit v30 tmp_to_use a46 51;
(* _31 = (long unsigned int) _30; *)
cast v31@uint64 v30@uint128;
(* _32 = _31 * 19; *)
umul v32 v31 0x13@uint64;
(* _33 = _5 + _32; *)
uadd v33 v5 v32;
(* *output_38(D) = _33; *)
mov output38_0 v33;
(* return; *)


(* Start with unused lhs *)
mov _ output38_0@uint64;
mov _ output38_8@uint64;
mov _ output38_16@uint64;
mov _ output38_24@uint64;
mov _ output38_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

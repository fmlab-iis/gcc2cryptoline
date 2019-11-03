proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov f3_0@uint64 _;
mov f3_8@uint64 _;
mov f3_16@uint64 _;
mov f3_24@uint64 _;
mov f3_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* x10_7 = MEM[(const uint64_t * )f_3(D) + 32B]; *)
mov x107 f3_32;
(* x11_8 = MEM[(const uint64_t * )f_3(D) + 24B]; *)
mov x118 f3_24;
(* x9_9 = MEM[(const uint64_t * )f_3(D) + 16B]; *)
mov x99 f3_16;
(* x7_10 = MEM[(const uint64_t * )f_3(D) + 8B]; *)
mov x710 f3_8;
(* x5_11 = MEM[(const uint64_t * )f_3(D)]; *)
mov x511 f3_0;
(* x20_13 = x5_11 w* 121666; *)
umulj x2013 x511 0x1db42@uint64;
(* x21_15 = x7_10 w* 121666; *)
umulj x2115 x710 0x1db42@uint64;
(* x22_17 = x9_9 w* 121666; *)
umulj x2217 x99 0x1db42@uint64;
(* x23_19 = x11_8 w* 121666; *)
umulj x2319 x118 0x1db42@uint64;
(* x24_21 = x10_7 w* 121666; *)
umulj x2421 x107 0x1db42@uint64;
(* _22 = x20_13 >> 51; *)
usplit v22 tmp_to_use x2013 51;
(* _23 = (long unsigned int) x20_13; *)
cast v23@uint64 x2013@uint128;
(* x34_24 = _23 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3424 v23 0x7ffffffffffff@uint64;
(* x35_26 = x21_15 + _22; *)
uadd x3526 x2115 v22;
(* _27 = x35_26 >> 51; *)
usplit v27 tmp_to_use x3526 51;
(* _28 = (long unsigned int) x35_26; *)
cast v28@uint64 x3526@uint128;
(* x37_29 = _28 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3729 v28 0x7ffffffffffff@uint64;
(* x38_31 = x22_17 + _27; *)
uadd x3831 x2217 v27;
(* _32 = x38_31 >> 51; *)
usplit v32 tmp_to_use x3831 51;
(* _33 = (long unsigned int) x38_31; *)
cast v33@uint64 x3831@uint128;
(* x40_34 = _33 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4034 v33 0x7ffffffffffff@uint64;
(* x41_36 = x23_19 + _32; *)
uadd x4136 x2319 v32;
(* _37 = x41_36 >> 51; *)
usplit v37 tmp_to_use x4136 51;
(* _38 = (long unsigned int) x41_36; *)
cast v38@uint64 x4136@uint128;
(* x43_39 = _38 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4339 v38 0x7ffffffffffff@uint64;
(* x44_41 = x24_21 + _37; *)
uadd x4441 x2421 v37;
(* _42 = x44_41 >> 51; *)
usplit v42 tmp_to_use x4441 51;
(* x45_43 = (uint64_t) _42; *)
cast x4543@uint64 v42@uint128;
(* _44 = (long unsigned int) x44_41; *)
cast v44@uint64 x4441@uint128;
(* x46_45 = _44 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4645 v44 0x7ffffffffffff@uint64;
(* _46 = x45_43 * 19; *)
umul v46 x4543 0x13@uint64;
(* x47_47 = x34_24 + _46; *)
uadd x4747 x3424 v46;
(* x48_48 = x47_47 >> 51; *)
usplit x4848 tmp_to_use x4747 51;
(* x49_49 = x47_47 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4949 x4747 0x7ffffffffffff@uint64;
(* x50_50 = x37_29 + x48_48; *)
uadd x5050 x3729 x4848;
(* x51_51 = x50_50 >> 51; *)
usplit x5151 tmp_to_use x5050 51;
(* x52_52 = x50_50 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x5252 x5050 0x7ffffffffffff@uint64;
(* MEM[(uint64_t * )h_4(D)] = x49_49; *)
mov h4_0 x4949;
(* MEM[(uint64_t * )h_4(D) + 8B] = x52_52; *)
mov h4_8 x5252;
(* _53 = x40_34 + x51_51; *)
uadd v53 x4034 x5151;
(* MEM[(uint64_t * )h_4(D) + 16B] = _53; *)
mov h4_16 v53;
(* MEM[(uint64_t * )h_4(D) + 24B] = x43_39; *)
mov h4_24 x4339;
(* MEM[(uint64_t * )h_4(D) + 32B] = x46_45; *)
mov h4_32 x4645;
(* return; *)


(* Start with unused lhs *)
mov _ h4_0@uint64;
mov _ h4_8@uint64;
mov _ h4_16@uint64;
mov _ h4_24@uint64;
mov _ h4_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

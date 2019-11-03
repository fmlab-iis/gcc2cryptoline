proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov r12_0@uint64 _;
mov r12_8@uint64 _;
mov r12_16@uint64 _;
mov r12_24@uint64 _;
mov r12_32@uint64 _;
mov v6@uint64 _;
mov z123@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_13 = r_12(D)->n[0]; *)
mov t013 r12_0;
(* t1_14 = r_12(D)->n[1]; *)
mov t114 r12_8;
(* t2_15 = r_12(D)->n[2]; *)
mov t215 r12_16;
(* t3_16 = r_12(D)->n[3]; *)
mov t316 r12_24;
(* t4_17 = r_12(D)->n[4]; *)
mov t417 r12_32;
(* x_18 = t4_17 >> 48; *)
usplit x18 tmp_to_use t417 48;
(* t4_19 = t4_17 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t419 t417 0xffffffffffff@uint64;
(* _1 = x_18 * 4294968273; *)
umul v1 x18 0x1000003d1@uint64;
(* t0_20 = _1 + t0_13; *)
uadd t020 v1 t013;
(* _2 = t0_20 >> 52; *)
usplit v2 tmp_to_use t020 52;
(* t1_21 = _2 + t1_14; *)
uadd t121 v2 t114;
(* t0_22 = t0_20 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t022 t020 0xfffffffffffff@uint64;
(* z1_23 = t0_22 ^ 4294968272; *)
(* TODO: Skip translation for bit xor *)
(* _3 = t1_21 >> 52; *)
usplit v3 tmp_to_use t121 52;
(* t2_24 = _3 + t2_15; *)
uadd t224 v3 t215;
(* _7 = t0_20 | t1_21; *)
(* Bitwise or , may need assert and assume *)
or uint64 v7 t020 t121;
(* _4 = t2_24 >> 52; *)
usplit v4 tmp_to_use t224 52;
(* t3_27 = _4 + t3_16; *)
uadd t327 v4 t316;
(* _37 = _7 | t2_24; *)
(* Bitwise or , may need assert and assume *)
or uint64 v37 v7 t224;
(* _35 = t1_21 & z1_23; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v35 t121 z123;
(* _5 = t3_27 >> 52; *)
usplit v5 tmp_to_use t327 52;
(* t4_30 = _5 + t4_19; *)
uadd t430 v5 t419;
(* _38 = t3_27 | _37; *)
(* Bitwise or , may need assert and assume *)
or uint64 v38 t327 v37;
(* z0_32 = _38 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 z032 v38 0xfffffffffffff@uint64;
(* z0_34 = t4_30 | z0_32; *)
(* Bitwise or , may need assert and assume *)
or uint64 z034 t430 z032;
(* _6 = t4_30 ^ 4222124650659840; *)
(* TODO: Skip translation for bit xor *)
(* _25 = t2_24 & _35; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v25 t224 v35;
(* _26 = _25 & t3_27; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v26 v25 t327;
(* _44 = _6 & _26; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v44 v6 v26;
(* _8 = z0_34 == 0; *)
subb lt_value dontcare z034 0x0@uint64;
subb gt_value dontcare 0x0@uint64 z034;
or uint1 v8 lt_value gt_value;
not uint1 v8 v8;
vpc v8@uint8 v8@uint1;
(* _9 = _44 == 4503599627370495; *)
subb lt_value dontcare v44 0xfffffffffffff@uint64;
subb gt_value dontcare 0xfffffffffffff@uint64 v44;
or uint1 v9 lt_value gt_value;
not uint1 v9 v9;
vpc v9@uint8 v9@uint1;
(* _10 = _8 | _9; *)
(* Bitwise or , may need assert and assume *)
or uint8 v10 v8 v9;
(* _36 = (int) _10; *)
cast v36@int32 v10@uint8;
(* return _36; *)


(* Start with unused lhs *)
mov _ t022@uint64;
mov _ v36@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

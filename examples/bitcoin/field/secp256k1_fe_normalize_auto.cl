proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov r19_0@uint64 _;
mov r19_8@uint64 _;
mov r19_16@uint64 _;
mov r19_24@uint64 _;
mov r19_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_20 = r_19(D)->n[0]; *)
mov t020 r19_0;
(* t1_21 = r_19(D)->n[1]; *)
mov t121 r19_8;
(* t2_22 = r_19(D)->n[2]; *)
mov t222 r19_16;
(* t3_23 = r_19(D)->n[3]; *)
mov t323 r19_24;
(* t4_24 = r_19(D)->n[4]; *)
mov t424 r19_32;
(* x_25 = t4_24 >> 48; *)
usplit x25 tmp_to_use t424 48;
(* t4_26 = t4_24 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t426 t424 0xffffffffffff@uint64;
(* _1 = x_25 * 4294968273; *)
umul v1 x25 0x1000003d1@uint64;
(* t0_27 = _1 + t0_20; *)
uadd t027 v1 t020;
(* _2 = t0_27 >> 52; *)
usplit v2 tmp_to_use t027 52;
(* t1_28 = _2 + t1_21; *)
uadd t128 v2 t121;
(* t0_29 = t0_27 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t029 t027 0xfffffffffffff@uint64;
(* _3 = t1_28 >> 52; *)
usplit v3 tmp_to_use t128 52;
(* t2_30 = _3 + t2_22; *)
uadd t230 v3 t222;
(* t1_31 = t1_28 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t131 t128 0xfffffffffffff@uint64;
(* _4 = t2_30 >> 52; *)
usplit v4 tmp_to_use t230 52;
(* t3_32 = _4 + t3_23; *)
uadd t332 v4 t323;
(* t2_33 = t2_30 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t233 t230 0xfffffffffffff@uint64;
(* m_34 = t1_31 & t2_33; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 m34 t131 t233;
(* _5 = t3_32 >> 52; *)
usplit v5 tmp_to_use t332 52;
(* t4_35 = _5 + t4_26; *)
uadd t435 v5 t426;
(* t3_36 = t3_32 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t336 t332 0xfffffffffffff@uint64;
(* m_37 = m_34 & t3_36; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 m37 m34 t336;
(* _7 = t4_35 >> 48; *)
usplit v7 tmp_to_use t435 48;
(* _8 = t4_35 == 281474976710655; *)
subb lt_value dontcare t435 0xffffffffffff@uint64;
subb gt_value dontcare 0xffffffffffff@uint64 t435;
or uint1 v8 lt_value gt_value;
not uint1 v8 v8;
vpc v8@uint8 v8@uint1;
(* _9 = m_37 == 4503599627370495; *)
subb lt_value dontcare m37 0xfffffffffffff@uint64;
subb gt_value dontcare 0xfffffffffffff@uint64 m37;
or uint1 v9 lt_value gt_value;
not uint1 v9 v9;
vpc v9@uint8 v9@uint1;
(* _10 = _8 & _9; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint8 v10 v8 v9;
(* _11 = t0_29 > 4503595332402222; *)
subb v11 dontcare 0xffffefffffc2e@uint64 t029;
vpc v11@uint8 v11@uint1;
(* _6 = _10 & _11; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint8 v6 v10 v11;
(* _12 = (long unsigned int) _6; *)
vpc v12@uint64 v6@uint8;
(* x_38 = _7 | _12; *)
(* Bitwise or , may need assert and assume *)
or uint64 x38 v7 v12;
(* _13 = x_38 * 4294968273; *)
umul v13 x38 0x1000003d1@uint64;
(* t0_39 = _13 + t0_29; *)
uadd t039 v13 t029;
(* _14 = t0_39 >> 52; *)
usplit v14 tmp_to_use t039 52;
(* t1_40 = _14 + t1_31; *)
uadd t140 v14 t131;
(* t0_41 = t0_39 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t041 t039 0xfffffffffffff@uint64;
(* _15 = t1_40 >> 52; *)
usplit v15 tmp_to_use t140 52;
(* t2_42 = _15 + t2_33; *)
uadd t242 v15 t233;
(* t1_43 = t1_40 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t143 t140 0xfffffffffffff@uint64;
(* _16 = t2_42 >> 52; *)
usplit v16 tmp_to_use t242 52;
(* t3_44 = _16 + t3_36; *)
uadd t344 v16 t336;
(* t2_45 = t2_42 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t245 t242 0xfffffffffffff@uint64;
(* _17 = t3_44 >> 52; *)
usplit v17 tmp_to_use t344 52;
(* t4_46 = _17 + t4_35; *)
uadd t446 v17 t435;
(* t3_47 = t3_44 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t347 t344 0xfffffffffffff@uint64;
(* t4_48 = t4_46 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t448 t446 0xffffffffffff@uint64;
(* r_19(D)->n[0] = t0_41; *)
mov r19_0 t041;
(* r_19(D)->n[1] = t1_43; *)
mov r19_8 t143;
(* r_19(D)->n[2] = t2_45; *)
mov r19_16 t245;
(* r_19(D)->n[3] = t3_47; *)
mov r19_24 t347;
(* r_19(D)->n[4] = t4_48; *)
mov r19_32 t448;
(* return; *)


(* Start with unused lhs *)
mov _ r19_0@uint64;
mov _ r19_8@uint64;
mov _ r19_16@uint64;
mov _ r19_24@uint64;
mov _ r19_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

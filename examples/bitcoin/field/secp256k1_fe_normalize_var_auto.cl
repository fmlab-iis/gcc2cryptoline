proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov r23_0@uint64 _;
mov r23_8@uint64 _;
mov r23_16@uint64 _;
mov r23_24@uint64 _;
mov r23_32@uint64 _;
mov t017@uint64 _;
mov t118@uint64 _;
mov t219@uint64 _;
mov t320@uint64 _;
mov t421@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_24 = r_23(D)->n[0]; *)
mov t024 r23_0;
(* t1_25 = r_23(D)->n[1]; *)
mov t125 r23_8;
(* t2_26 = r_23(D)->n[2]; *)
mov t226 r23_16;
(* t3_27 = r_23(D)->n[3]; *)
mov t327 r23_24;
(* t4_28 = r_23(D)->n[4]; *)
mov t428 r23_32;
(* x_29 = t4_28 >> 48; *)
usplit x29 tmp_to_use t428 48;
(* t4_30 = t4_28 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t430 t428 0xffffffffffff@uint64;
(* _1 = x_29 * 4294968273; *)
umul v1 x29 0x1000003d1@uint64;
(* t0_31 = _1 + t0_24; *)
uadd t031 v1 t024;
(* _2 = t0_31 >> 52; *)
usplit v2 tmp_to_use t031 52;
(* t1_32 = _2 + t1_25; *)
uadd t132 v2 t125;
(* t0_33 = t0_31 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t033 t031 0xfffffffffffff@uint64;
(* _3 = t1_32 >> 52; *)
usplit v3 tmp_to_use t132 52;
(* t2_34 = _3 + t2_26; *)
uadd t234 v3 t226;
(* t1_35 = t1_32 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t135 t132 0xfffffffffffff@uint64;
(* _4 = t2_34 >> 52; *)
usplit v4 tmp_to_use t234 52;
(* t3_36 = _4 + t3_27; *)
uadd t336 v4 t327;
(* t2_37 = t2_34 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t237 t234 0xfffffffffffff@uint64;
(* m_38 = t1_35 & t2_37; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 m38 t135 t237;
(* _5 = t3_36 >> 52; *)
usplit v5 tmp_to_use t336 52;
(* t4_39 = _5 + t4_30; *)
uadd t439 v5 t430;
(* t3_40 = t3_36 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t340 t336 0xfffffffffffff@uint64;
(* m_41 = m_38 & t3_40; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 m41 m38 t340;
(* _7 = t4_39 >> 48; *)
usplit v7 tmp_to_use t439 48;
(* _8 = t4_39 == 281474976710655; *)
subb lt_value dontcare t439 0xffffffffffff@uint64;
subb gt_value dontcare 0xffffffffffff@uint64 t439;
or uint1 v8 lt_value gt_value;
not uint1 v8 v8;
vpc v8@uint8 v8@uint1;
(* _9 = m_41 == 4503599627370495; *)
subb lt_value dontcare m41 0xfffffffffffff@uint64;
subb gt_value dontcare 0xfffffffffffff@uint64 m41;
or uint1 v9 lt_value gt_value;
not uint1 v9 v9;
vpc v9@uint8 v9@uint1;
(* _10 = _8 & _9; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint8 v10 v8 v9;
(* _11 = t0_33 > 4503595332402222; *)
subb v11 dontcare 0xffffefffffc2e@uint64 t033;
vpc v11@uint8 v11@uint1;
(* _6 = _10 & _11; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint8 v6 v10 v11;
(* _12 = (long unsigned int) _6; *)
vpc v12@uint64 v6@uint8;
(* x_42 = _7 | _12; *)
(* Bitwise or , may need assert and assume *)
or uint64 x42 v7 v12;
(* if (x_42 != 0) *)
(* Fix: Skip GIMPLE_COND, need to take it into consideration *)
(* Note: True label: <bb 3>, False label: <bb 4> *)

(* BB's index is 3 *)

(* t0_43 = t0_33 + 4294968273; *)
uadd t043 t033 0x1000003d1@uint64;
(* _13 = t0_43 >> 52; *)
usplit v13 tmp_to_use t043 52;
(* t1_44 = _13 + t1_35; *)
uadd t144 v13 t135;
(* t0_45 = t0_43 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t045 t043 0xfffffffffffff@uint64;
(* _14 = t1_44 >> 52; *)
usplit v14 tmp_to_use t144 52;
(* t2_46 = _14 + t2_37; *)
uadd t246 v14 t237;
(* t1_47 = t1_44 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t147 t144 0xfffffffffffff@uint64;
(* _15 = t2_46 >> 52; *)
usplit v15 tmp_to_use t246 52;
(* t3_48 = _15 + t3_40; *)
uadd t348 v15 t340;
(* t2_49 = t2_46 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t249 t246 0xfffffffffffff@uint64;
(* _16 = t3_48 >> 52; *)
usplit v16 tmp_to_use t348 52;
(* t4_50 = _16 + t4_39; *)
uadd t450 v16 t439;
(* t3_51 = t3_48 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t351 t348 0xfffffffffffff@uint64;
(* t4_52 = t4_50 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t452 t450 0xffffffffffff@uint64;
(* goto <bb 4> *)
(* TODO: unconditional jump *)

(* BB's index is 4 *)

(* t0_17 = PHI <t0_45(3), t0_33(2)> *)
(* t1_18 = PHI <t1_47(3), t1_35(2)> *)
(* t2_19 = PHI <t2_49(3), t2_37(2)> *)
(* t3_20 = PHI <t3_51(3), t3_40(2)> *)
(* t4_21 = PHI <t4_52(3), t4_39(2)> *)
(* _58 = {t2_19, t3_20}; *)
mov v58_0 t219;
mov v58_1 t320;
(* _60 = {t0_17, t1_18}; *)
mov v60_0 t017;
mov v60_1 t118;
(* MEM[(long unsigned int * )r_23(D)] = _60; *)
mov r23_0 v60_0;
mov r23_8 v60_1;
(* MEM[(long unsigned int * )r_23(D) + 16B] = _58; *)
mov r23_16 v58_0;
mov r23_24 v58_1;
(* r_23(D)->n[4] = t4_21; *)
mov r23_32 t421;
(* return; *)


(* Start with unused lhs *)
mov _ r23_0@uint64;
mov _ r23_8@uint64;
mov _ r23_16@uint64;
mov _ r23_24@uint64;
mov _ r23_32@uint64;
mov _ t045@uint64;
mov _ t147@uint64;
mov _ t249@uint64;
mov _ t351@uint64;
mov _ t452@uint64;
mov _ x42@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

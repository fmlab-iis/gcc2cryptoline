proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov r7_0@uint64 _;
mov r7_8@uint64 _;
mov r7_16@uint64 _;
mov r7_24@uint64 _;
mov r7_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* t0_8 = r_7(D)->n[0]; *)
mov t08 r7_0;
(* t1_9 = r_7(D)->n[1]; *)
mov t19 r7_8;
(* t2_10 = r_7(D)->n[2]; *)
mov t210 r7_16;
(* t3_11 = r_7(D)->n[3]; *)
mov t311 r7_24;
(* t4_12 = r_7(D)->n[4]; *)
mov t412 r7_32;
(* x_13 = t4_12 >> 48; *)
usplit x13 tmp_to_use t412 48;
(* t4_14 = t4_12 & 281474976710655; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xffffffffffff@uint64 = 0x00ffffffffffff *)
(* Note: 0xffffffffffff@uint64 = 0b00000000000000111111111111111111111111111111111111111111111111 *)
and uint64 t414 t412 0xffffffffffff@uint64;
(* _1 = x_13 * 4294968273; *)
umul v1 x13 0x1000003d1@uint64;
(* t0_15 = _1 + t0_8; *)
uadd t015 v1 t08;
(* _2 = t0_15 >> 52; *)
usplit v2 tmp_to_use t015 52;
(* t1_16 = _2 + t1_9; *)
uadd t116 v2 t19;
(* t0_17 = t0_15 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t017 t015 0xfffffffffffff@uint64;
(* _3 = t1_16 >> 52; *)
usplit v3 tmp_to_use t116 52;
(* t2_18 = _3 + t2_10; *)
uadd t218 v3 t210;
(* t1_19 = t1_16 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t119 t116 0xfffffffffffff@uint64;
(* _4 = t2_18 >> 52; *)
usplit v4 tmp_to_use t218 52;
(* t3_20 = _4 + t3_11; *)
uadd t320 v4 t311;
(* t2_21 = t2_18 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t221 t218 0xfffffffffffff@uint64;
(* _5 = t3_20 >> 52; *)
usplit v5 tmp_to_use t320 52;
(* t4_22 = _5 + t4_14; *)
uadd t422 v5 t414;
(* t3_23 = t3_20 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 t323 t320 0xfffffffffffff@uint64;
(* r_7(D)->n[0] = t0_17; *)
mov r7_0 t017;
(* r_7(D)->n[1] = t1_19; *)
mov r7_8 t119;
(* r_7(D)->n[2] = t2_21; *)
mov r7_16 t221;
(* r_7(D)->n[3] = t3_23; *)
mov r7_24 t323;
(* r_7(D)->n[4] = t4_22; *)
mov r7_32 t422;
(* return; *)


(* Start with unused lhs *)
mov _ r7_0@uint64;
mov _ r7_8@uint64;
mov _ r7_16@uint64;
mov _ r7_24@uint64;
mov _ r7_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

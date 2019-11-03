proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a20_0@uint64 _;
mov a20_8@uint64 _;
mov a20_16@uint64 _;
mov a20_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_20(D)->n[0]; *)
mov v1 a20_0;
(* _2 = _1 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v2 v1 0xfffffffffffff@uint64;
(* r_21(D)->n[0] = _2; *)
mov r21_0 v2;
(* _3 = _1 >> 52; *)
usplit v3 tmp_to_use v1 52;
(* _4 = a_20(D)->n[1]; *)
mov v4 a20_8;
(* _5 = _4 << 12; *)
usplit tmp1 tmp2 v4 52;
shl v5 tmp2 12;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _6 = _5 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v6 v5 0xfffffffffffff@uint64;
(* _7 = _3 | _6; *)
(* Bitwise or , may need assert and assume *)
or uint64 v7 v3 v6;
(* r_21(D)->n[1] = _7; *)
mov r21_8 v7;
(* _8 = _4 >> 40; *)
usplit v8 tmp_to_use v4 40;
(* _9 = a_20(D)->n[2]; *)
mov v9 a20_16;
(* _10 = _9 << 24; *)
usplit tmp1 tmp2 v9 40;
shl v10 tmp2 24;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _11 = _10 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v11 v10 0xfffffffffffff@uint64;
(* _12 = _8 | _11; *)
(* Bitwise or , may need assert and assume *)
or uint64 v12 v8 v11;
(* r_21(D)->n[2] = _12; *)
mov r21_16 v12;
(* _13 = _9 >> 28; *)
usplit v13 tmp_to_use v9 28;
(* _14 = a_20(D)->n[3]; *)
mov v14 a20_24;
(* _15 = _14 << 36; *)
usplit tmp1 tmp2 v14 28;
shl v15 tmp2 36;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _16 = _15 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v16 v15 0xfffffffffffff@uint64;
(* _17 = _13 | _16; *)
(* Bitwise or , may need assert and assume *)
or uint64 v17 v13 v16;
(* r_21(D)->n[3] = _17; *)
mov r21_24 v17;
(* _18 = _14 >> 16; *)
usplit v18 tmp_to_use v14 16;
(* r_21(D)->n[4] = _18; *)
mov r21_32 v18;
(* return; *)


(* Start with unused lhs *)
mov _ r21_0@uint64;
mov _ r21_8@uint64;
mov _ r21_16@uint64;
mov _ r21_24@uint64;
mov _ r21_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

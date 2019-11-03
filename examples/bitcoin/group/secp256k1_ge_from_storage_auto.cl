proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a5_0@uint64 _;
mov a5_8@uint64 _;
mov a5_16@uint64 _;
mov a5_24@uint64 _;
mov a5_32@uint64 _;
mov a5_40@uint64 _;
mov a5_48@uint64 _;
mov a5_56@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _29 = MEM[(const struct secp256k1_fe_storage * )a_5(D)].n[0]; *)
mov v29 a5_0;
(* _30 = _29 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v30 v29 0xfffffffffffff@uint64;
(* MEM[(struct secp256k1_fe * )r_6(D)].n[0] = _30; *)
mov r6_0 v30;
(* _31 = _29 >> 52; *)
usplit v31 tmp_to_use v29 52;
(* _32 = MEM[(const struct secp256k1_fe_storage * )a_5(D)].n[1]; *)
mov v32 a5_8;
(* _33 = _32 << 12; *)
usplit tmp1 tmp2 v32 52;
shl v33 tmp2 12;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _34 = _33 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v34 v33 0xfffffffffffff@uint64;
(* _35 = _31 | _34; *)
(* Bitwise or , may need assert and assume *)
or uint64 v35 v31 v34;
(* MEM[(struct secp256k1_fe * )r_6(D)].n[1] = _35; *)
mov r6_8 v35;
(* _36 = _32 >> 40; *)
usplit v36 tmp_to_use v32 40;
(* _37 = MEM[(const struct secp256k1_fe_storage * )a_5(D)].n[2]; *)
mov v37 a5_16;
(* _38 = _37 << 24; *)
usplit tmp1 tmp2 v37 40;
shl v38 tmp2 24;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _39 = _38 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v39 v38 0xfffffffffffff@uint64;
(* _40 = _36 | _39; *)
(* Bitwise or , may need assert and assume *)
or uint64 v40 v36 v39;
(* MEM[(struct secp256k1_fe * )r_6(D)].n[2] = _40; *)
mov r6_16 v40;
(* _41 = _37 >> 28; *)
usplit v41 tmp_to_use v37 28;
(* _42 = MEM[(const struct secp256k1_fe_storage * )a_5(D)].n[3]; *)
mov v42 a5_24;
(* _43 = _42 << 36; *)
usplit tmp1 tmp2 v42 28;
shl v43 tmp2 36;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _44 = _43 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v44 v43 0xfffffffffffff@uint64;
(* _45 = _41 | _44; *)
(* Bitwise or , may need assert and assume *)
or uint64 v45 v41 v44;
(* MEM[(struct secp256k1_fe * )r_6(D)].n[3] = _45; *)
mov r6_24 v45;
(* _46 = _42 >> 16; *)
usplit v46 tmp_to_use v42 16;
(* MEM[(struct secp256k1_fe * )r_6(D)].n[4] = _46; *)
mov r6_32 v46;
(* _11 = MEM[(const struct secp256k1_fe_storage * )a_5(D) + 32B].n[0]; *)
mov v11 a5_32;
(* _12 = _11 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v12 v11 0xfffffffffffff@uint64;
(* MEM[(struct secp256k1_fe * )r_6(D) + 40B].n[0] = _12; *)
mov r6_40 v12;
(* _13 = _11 >> 52; *)
usplit v13 tmp_to_use v11 52;
(* _14 = MEM[(const struct secp256k1_fe_storage * )a_5(D) + 32B].n[1]; *)
mov v14 a5_40;
(* _15 = _14 << 12; *)
usplit tmp1 tmp2 v14 52;
shl v15 tmp2 12;
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
(* MEM[(struct secp256k1_fe * )r_6(D) + 40B].n[1] = _17; *)
mov r6_48 v17;
(* _18 = _14 >> 40; *)
usplit v18 tmp_to_use v14 40;
(* _19 = MEM[(const struct secp256k1_fe_storage * )a_5(D) + 32B].n[2]; *)
mov v19 a5_48;
(* _20 = _19 << 24; *)
usplit tmp1 tmp2 v19 40;
shl v20 tmp2 24;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _21 = _20 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v21 v20 0xfffffffffffff@uint64;
(* _22 = _18 | _21; *)
(* Bitwise or , may need assert and assume *)
or uint64 v22 v18 v21;
(* MEM[(struct secp256k1_fe * )r_6(D) + 40B].n[2] = _22; *)
mov r6_56 v22;
(* _23 = _19 >> 28; *)
usplit v23 tmp_to_use v19 28;
(* _24 = MEM[(const struct secp256k1_fe_storage * )a_5(D) + 32B].n[3]; *)
mov v24 a5_56;
(* _25 = _24 << 36; *)
usplit tmp1 tmp2 v24 28;
shl v25 tmp2 36;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@64;
assume tmp1 = 0 && true;
(* _26 = _25 & 4503599627370495; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v26 v25 0xfffffffffffff@uint64;
(* _27 = _23 | _26; *)
(* Bitwise or , may need assert and assume *)
or uint64 v27 v23 v26;
(* MEM[(struct secp256k1_fe * )r_6(D) + 40B].n[3] = _27; *)
mov r6_64 v27;
(* _28 = _24 >> 16; *)
usplit v28 tmp_to_use v24 16;
(* MEM[(struct secp256k1_fe * )r_6(D) + 40B].n[4] = _28; *)
mov r6_72 v28;
(* r_6(D)->infinity = 0; *)
mov r6_80 0x0@int32;
(* return; *)


(* Start with unused lhs *)
mov _ r6_0@uint64;
mov _ r6_8@uint64;
mov _ r6_16@uint64;
mov _ r6_24@uint64;
mov _ r6_32@uint64;
mov _ r6_40@uint64;
mov _ r6_48@uint64;
mov _ r6_56@uint64;
mov _ r6_64@uint64;
mov _ r6_72@uint64;
mov _ r6_80@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

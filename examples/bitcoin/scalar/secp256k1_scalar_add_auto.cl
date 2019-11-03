proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a28_0@uint64 _;
mov a28_8@uint64 _;
mov a28_16@uint64 _;
mov a28_24@uint64 _;
mov b29_0@uint64 _;
mov b29_8@uint64 _;
mov b29_16@uint64 _;
mov b29_24@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_28(D)->d[0]; *)
mov v1 a28_0;
(* _2 = (__int128 unsigned) _1; *)
vpc v2@uint128 v1@uint64;
(* _3 = b_29(D)->d[0]; *)
mov v3 b29_0;
(* _4 = (__int128 unsigned) _3; *)
vpc v4@uint128 v3@uint64;
(* t_30 = _2 + _4; *)
uadd t30 v2 v4;
(* _5 = _1 + _3; *)
uadd v5 v1 v3;
(* t_32 = t_30 >> 64; *)
usplit t32 tmp_to_use t30 64;
(* _6 = a_28(D)->d[1]; *)
mov v6 a28_8;
(* _7 = (__int128 unsigned) _6; *)
vpc v7@uint128 v6@uint64;
(* _8 = b_29(D)->d[1]; *)
mov v8 b29_8;
(* _9 = (__int128 unsigned) _8; *)
vpc v9@uint128 v8@uint64;
(* _10 = _7 + _9; *)
uadd v10 v7 v9;
(* t_33 = _10 + t_32; *)
uadd t33 v10 t32;
(* _11 = (long unsigned int) t_33; *)
cast v11@uint64 t33@uint128;
(* t_34 = t_33 >> 64; *)
usplit t34 tmp_to_use t33 64;
(* _12 = a_28(D)->d[2]; *)
mov v12 a28_16;
(* _13 = (__int128 unsigned) _12; *)
vpc v13@uint128 v12@uint64;
(* _14 = b_29(D)->d[2]; *)
mov v14 b29_16;
(* _15 = (__int128 unsigned) _14; *)
vpc v15@uint128 v14@uint64;
(* _16 = _13 + _15; *)
uadd v16 v13 v15;
(* t_35 = _16 + t_34; *)
uadd t35 v16 t34;
(* _17 = (long unsigned int) t_35; *)
cast v17@uint64 t35@uint128;
(* t_36 = t_35 >> 64; *)
usplit t36 tmp_to_use t35 64;
(* _18 = a_28(D)->d[3]; *)
mov v18 a28_24;
(* _19 = (__int128 unsigned) _18; *)
vpc v19@uint128 v18@uint64;
(* _20 = b_29(D)->d[3]; *)
mov v20 b29_24;
(* _21 = (__int128 unsigned) _20; *)
vpc v21@uint128 v20@uint64;
(* _22 = _19 + _21; *)
uadd v22 v19 v21;
(* t_37 = _22 + t_36; *)
uadd t37 v22 t36;
(* _23 = (long unsigned int) t_37; *)
cast v23@uint64 t37@uint128;
(* t_38 = t_37 >> 64; *)
usplit t38 tmp_to_use t37 64;
(* _63 = _23 != 18446744073709551615; *)
subb lt_value dontcare v23 0xffffffffffffffff@uint64;
subb gt_value dontcare 0xffffffffffffffff@uint64 v23;
or uint1 v63 lt_value gt_value;
vpc v63@uint8 v63@uint1;
(* _64 = _17 <= 18446744073709551613; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xfffffffffffffffd@uint64 1@uint64;
subb v64 dontcare v17 tmp_for_compare;
vpc v64@uint8 v64@uint1;
(* _65 = _63 | _64; *)
(* Bitwise or , may need assert and assume *)
or uint8 v65 v63 v64;
(* no_66 = (int) _65; *)
cast no66@int32 v65@uint8;
(* _67 = _17 == 18446744073709551615; *)
subb lt_value dontcare v17 0xffffffffffffffff@uint64;
subb gt_value dontcare 0xffffffffffffffff@uint64 v17;
or uint1 v67 lt_value gt_value;
not uint1 v67 v67;
vpc v67@uint8 v67@uint1;
(* _68 = (int) _67; *)
cast v68@int32 v67@uint8;
(* _69 = ~no_66; *)
not int32 v69 no66;
(* _70 = _68 & _69; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
and int32 v70 v68 v69;
(* _71 = _11 <= 13451932020343611450; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xbaaedce6af48a03a@uint64 1@uint64;
subb v71 dontcare v11 tmp_for_compare;
vpc v71@uint8 v71@uint1;
(* _72 = _65 | _71; *)
(* Bitwise or , may need assert and assume *)
or uint8 v72 v65 v71;
(* no_73 = (int) _72; *)
cast no73@int32 v72@uint8;
(* _74 = _11 > 13451932020343611451; *)
subb v74 dontcare 0xbaaedce6af48a03b@uint64 v11;
vpc v74@uint8 v74@uint1;
(* _76 = ~no_73; *)
not int32 v76 no73;
(* _79 = _5 > 13822214165235122496; *)
subb v79 dontcare 0xbfd25e8cd0364140@uint64 v5;
vpc v79@uint8 v79@uint1;
(* _78 = _74 | _79; *)
(* Bitwise or , may need assert and assume *)
or uint8 v78 v74 v79;
(* _40 = (int) _78; *)
cast v40@int32 v78@uint8;
(* _47 = _40 & _76; *)
(* TODO: Bitwise And , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
and int32 v47 v40 v76;
(* yes_82 = _47 | _70; *)
(* Bitwise or , may need assert and assume *)
(* TODO: signed operation, need check semantics *)
or int32 yes82 v47 v70;
(* _24 = (unsigned int) yes_82; *)
cast v24@uint32 yes82@int32;
(* _25 = (unsigned int) t_38; *)
cast v25@uint32 t38@uint128;
(* _26 = _24 + _25; *)
uadd v26 v24 v25;
(* overflow_39 = (int) _26; *)
cast overflow39@int32 v26@uint32;
(* _54 = (__int128 unsigned) _5; *)
vpc v54@uint128 v5@uint64;
(* _41 = (long unsigned int) _26; *)
vpc v41@uint64 v26@uint32;
(* _42 = _41 * 4624529908474429119; *)
umul v42 v41 0x402da1732fc9bebf@uint64;
(* _43 = (__int128 unsigned) _42; *)
vpc v43@uint128 v42@uint64;
(* t_44 = _43 + _54; *)
uadd t44 v43 v54;
(* _45 = _5 + _42; *)
uadd v45 v5 v42;
(* r_31(D)->d[0] = _45; *)
mov r31_0 v45;
(* t_46 = t_44 >> 64; *)
usplit t46 tmp_to_use t44 64;
(* _87 = t_33 & 18446744073709551615; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 t33 value;
(* _48 = _41 * 4994812053365940164; *)
umul v48 v41 0x4551231950b75fc4@uint64;
(* _49 = (__int128 unsigned) _48; *)
vpc v49@uint128 v48@uint64;
(* _50 = _49 + _87; *)
uadd v50 v49 v87;
(* t_51 = t_46 + _50; *)
uadd t51 t46 v50;
(* _52 = (long unsigned int) t_51; *)
cast v52@uint64 t51@uint128;
(* r_31(D)->d[1] = _52; *)
mov r31_8 v52;
(* t_53 = t_51 >> 64; *)
usplit t53 tmp_to_use t51 64;
(* _88 = t_35 & 18446744073709551615; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v88 t35 value;
(* _55 = (__int128 unsigned) _26; *)
vpc v55@uint128 v26@uint32;
(* _56 = _55 + _88; *)
uadd v56 v55 v88;
(* t_57 = t_53 + _56; *)
uadd t57 t53 v56;
(* _58 = (long unsigned int) t_57; *)
cast v58@uint64 t57@uint128;
(* r_31(D)->d[2] = _58; *)
mov r31_16 v58;
(* t_59 = t_57 >> 64; *)
usplit t59 tmp_to_use t57 64;
(* _89 = t_37 & 18446744073709551615; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v89 t37 value;
(* t_61 = t_59 + _89; *)
uadd t61 t59 v89;
(* _62 = (long unsigned int) t_61; *)
cast v62@uint64 t61@uint128;
(* r_31(D)->d[3] = _62; *)
mov r31_24 v62;
(* return overflow_39; *)


(* Start with unused lhs *)
mov _ overflow39@int32;
mov _ r31_0@uint64;
mov _ r31_8@uint64;
mov _ r31_16@uint64;
mov _ r31_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov bit38@uint32 _;
mov flag37@int32 _;
mov r41_0@uint64 _;
mov r41_8@uint64 _;
mov r41_16@uint64 _;
mov r41_24@uint64 _;
mov v10@uint64 _;
mov v17@uint64 _;
mov v25@uint64 _;
mov v33@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* flag.2_1 = (unsigned int) flag_37(D); *)
cast v1@uint32 flag37@int32;
(* _2 = flag.2_1 + 4294967295; *)
uadd v2 v1 0xffffffff@uint32;
(* _3 = _2 & 256; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0x100@uint32 = 0x000100 *)
(* Note: 0x100@uint32 = 0b000000000000000000000100000000 *)
and uint32 v3 v2 0x100@uint32;
(* bit_39 = _3 + bit_38(D); *)
uadd bit39 v3 bit38;
(* _4 = r_41(D)->d[0]; *)
mov v4 r41_0;
(* _5 = (__int128 unsigned) _4; *)
vpc v5@uint128 v4@uint64;
(* _6 = bit_39 >> 6; *)
usplit v6 tmp_to_use bit39 6;
(* _7 = _6 == 0; *)
subb lt_value dontcare v6 0x0@uint32;
subb gt_value dontcare 0x0@uint32 v6;
or uint1 v7 lt_value gt_value;
not uint1 v7 v7;
vpc v7@uint8 v7@uint1;
(* _8 = (long unsigned int) _7; *)
vpc v8@uint64 v7@uint8;
(* _9 = bit_39 & 63; *)
(* TODO: Bitwise And , may need assert and assume *)
(* Note: 0x3f@uint32 = 0x00003f *)
(* Note: 0x3f@uint32 = 0b000000000000000000000000111111 *)
and uint32 v9 bit39 0x3f@uint32;
(* _10 = _8 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* t_42 = _5 + _11; *)
uadd t42 v5 v11;
(* _12 = _4 + _10; *)
uadd v12 v4 v10;
(* r_41(D)->d[0] = _12; *)
mov r41_0 v12;
(* t_44 = t_42 >> 64; *)
usplit t44 tmp_to_use t42 64;
(* _13 = r_41(D)->d[1]; *)
mov v13 r41_8;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _15 = _6 == 1; *)
subb lt_value dontcare v6 0x1@uint32;
subb gt_value dontcare 0x1@uint32 v6;
or uint1 v15 lt_value gt_value;
not uint1 v15 v15;
vpc v15@uint8 v15@uint1;
(* _16 = (long unsigned int) _15; *)
vpc v16@uint64 v15@uint8;
(* _17 = _16 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _18 = (__int128 unsigned) _17; *)
vpc v18@uint128 v17@uint64;
(* _19 = _14 + _18; *)
uadd v19 v14 v18;
(* t_45 = _19 + t_44; *)
uadd t45 v19 t44;
(* _20 = (long unsigned int) t_45; *)
cast v20@uint64 t45@uint128;
(* r_41(D)->d[1] = _20; *)
mov r41_8 v20;
(* t_47 = t_45 >> 64; *)
usplit t47 tmp_to_use t45 64;
(* _21 = r_41(D)->d[2]; *)
mov v21 r41_16;
(* _22 = (__int128 unsigned) _21; *)
vpc v22@uint128 v21@uint64;
(* _23 = _6 == 2; *)
subb lt_value dontcare v6 0x2@uint32;
subb gt_value dontcare 0x2@uint32 v6;
or uint1 v23 lt_value gt_value;
not uint1 v23 v23;
vpc v23@uint8 v23@uint1;
(* _24 = (long unsigned int) _23; *)
vpc v24@uint64 v23@uint8;
(* _25 = _24 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _26 = (__int128 unsigned) _25; *)
vpc v26@uint128 v25@uint64;
(* _27 = _22 + _26; *)
uadd v27 v22 v26;
(* t_48 = _27 + t_47; *)
uadd t48 v27 t47;
(* _28 = (long unsigned int) t_48; *)
cast v28@uint64 t48@uint128;
(* r_41(D)->d[2] = _28; *)
mov r41_16 v28;
(* t_50 = t_48 >> 64; *)
usplit t50 tmp_to_use t48 64;
(* _29 = r_41(D)->d[3]; *)
mov v29 r41_24;
(* _30 = (__int128 unsigned) _29; *)
vpc v30@uint128 v29@uint64;
(* _31 = _6 == 3; *)
subb lt_value dontcare v6 0x3@uint32;
subb gt_value dontcare 0x3@uint32 v6;
or uint1 v31 lt_value gt_value;
not uint1 v31 v31;
vpc v31@uint8 v31@uint1;
(* _32 = (long unsigned int) _31; *)
vpc v32@uint64 v31@uint8;
(* _33 = _32 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _34 = (__int128 unsigned) _33; *)
vpc v34@uint128 v33@uint64;
(* _35 = _30 + _34; *)
uadd v35 v30 v34;
(* t_51 = _35 + t_50; *)
uadd t51 v35 t50;
(* _36 = (long unsigned int) t_51; *)
cast v36@uint64 t51@uint128;
(* r_41(D)->d[3] = _36; *)
mov r41_24 v36;
(* return; *)


(* Start with unused lhs *)
mov _ r41_0@uint64;
mov _ r41_8@uint64;
mov _ r41_16@uint64;
mov _ r41_24@uint64;
mov _ v16@uint64;
mov _ v24@uint64;
mov _ v32@uint64;
mov _ v8@uint64;
mov _ v9@uint32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

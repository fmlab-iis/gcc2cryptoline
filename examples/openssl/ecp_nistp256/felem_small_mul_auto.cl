proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in22_0@uint128 _;
mov in22_16@uint128 _;
mov in22_32@uint128 _;
mov in22_48@uint128 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _8 = MEM[(const limb * )in2_2(D) + 48B]; *)
mov v8 in22_48;
(* _9 = _8 + 18446744069414584320; *)
mov value_lo 0xffffffff00000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v9 v8 value;
(* _10 = MEM[(const limb * )in2_2(D) + 32B]; *)
mov v10 in22_32;
(* _11 = _10 >> 64; *)
usplit v11 tmp_to_use v10 64;
(* _12 = _9 + _11; *)
uadd v12 v9 v11;
(* _13 = _10 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v13 v10 value;
(* _14 = _13 + 18446673704965373952; *)
mov value_lo 0xffffc00000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v14 v13 value;
(* _15 = *in2_2(D); *)
mov v15 in22_0;
(* _16 = _15 + 18446744073709551615; *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
uadd v16 v15 value;
(* _17 = MEM[(const limb * )in2_2(D) + 16B]; *)
mov v17 in22_16;
(* _18 = _17 + 0x40000000000000000000ffffffff; *)
mov value_lo 0xffffffff@uint64;
mov value_hi 0x400000000000@uint64;
join value value_hi value_lo;
uadd v18 v17 value;
(* _19 = _12 >> 64; *)
usplit v19 tmp_to_use v12 64;
(* a_20 = (u64) _19; *)
cast a20@uint64 v19@uint128;
(* _21 = _12 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v21 v12 value;
(* _23 = _19 << 32; *)
usplit tmp1 tmp2 v19 96;
shl v23 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _79 = _23 - _19; *)
usub v79 v23 v19;
(* _24 = _21 + _79; *)
uadd v24 v21 v79;
(* _25 = _24 >> 64; *)
usplit v25 tmp_to_use v24 64;
(* a_26 = (u64) _25; *)
cast a26@uint64 v25@uint128;
(* b_27 = a_20 + a_26; *)
uadd b27 a20 a26;
(* _28 = _24 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v28 v24 value;
(* _30 = _25 << 32; *)
usplit tmp1 tmp2 v25 96;
shl v30 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _78 = _30 - _25; *)
usub v78 v30 v25;
(* _31 = _28 + _78; *)
uadd v31 v28 v78;
(* _32 = (__int128 unsigned) b_27; *)
vpc v32@uint128 b27@uint64;
(* _33 = _16 + _32; *)
uadd v33 v16 v32;
(* _34 = _32 << 32; *)
usplit tmp1 tmp2 v32 96;
shl v34 tmp2 32;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _35 = _18 - _34; *)
usub v35 v18 v34;
(* _36 = _31 >> 64; *)
usplit v36 tmp_to_use v31 64;
(* high_37 = (u64) _36; *)
cast high37@uint64 v36@uint128;
(* high_38 = -high_37; *)
(* TODO: check negation semantics *)
usubb carry high38 0@uint64 high37;
(* low_39 = (u64) _31; *)
cast low39@uint64 v31@uint128;
(* low.0_40 = (signed long) _31; *)
cast v40@int64 v31@uint128;
(* _41 = low.0_40 >> 63; *)
(* TODO: signed operation, need check *)
ssplit v41 tmp_to_use v40 63;
(* mask_42 = (u64) _41; *)
cast mask42@uint64 v41@int64;
(* low_43 = low_39 & 9223372036854775807; *)
(* Note: 0x7fffffffffffffff@uint64 = 0x7fffffffffffffff *)
(* Note: 0x7fffffffffffffff@uint64 = 0b111111111111111111111111111111111111111111111111111111111111111 *)
and uint64 low43 low39 0x7fffffffffffffff@uint64;
(* low_44 = low_43 + 9223372041149743103; *)
uadd low44 low43 0x80000000ffffffff@uint64;
(* low_45 = ~low_44; *)
not uint64 low45 low44;
(* low.1_46 = (signed long) low_45; *)
cast v46@int64 low45@uint64;
(* _47 = low.1_46 >> 63; *)
(* TODO: signed operation, need check *)
ssplit v47 tmp_to_use v46 63;
(* low_48 = (u64) _47; *)
cast low48@uint64 v47@int64;
(* _49 = mask_42 & low_48; *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
and uint64 v49 mask42 low48;
(* mask_50 = high_38 | _49; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 mask50 high38 v49;
(* _51 = (__int128 unsigned) mask_50; *)
vpc v51@uint128 mask50@uint64;
(* _52 = _33 - _51; *)
usub v52 v33 v51;
(* _53 = mask_50 & 4294967295; *)
(* Note: 0xffffffff@uint64 = 0x000000ffffffff *)
(* Note: 0xffffffff@uint64 = 0b00000000000000000000000000000011111111111111111111111111111111 *)
and uint64 v53 mask50 0xffffffff@uint64;
(* _54 = (__int128 unsigned) _53; *)
vpc v54@uint128 v53@uint64;
(* _55 = _35 - _54; *)
usub v55 v35 v54;
(* _56 = mask_50 & 18446744069414584321; *)
(* Note: 0xffffffff00000001@uint64 = 0xffffffff00000001 *)
(* Note: 0xffffffff00000001@uint64 = 0b1111111111111111111111111111111100000000000000000000000000000001 *)
and uint64 v56 mask50 0xffffffff00000001@uint64;
(* _57 = (__int128 unsigned) _56; *)
vpc v57@uint128 v56@uint64;
(* _58 = _31 - _57; *)
usub v58 v31 v57;
(* _59 = _52 >> 64; *)
usplit v59 tmp_to_use v52 64;
(* _60 = _55 + _59; *)
uadd v60 v55 v59;
(* _61 = (long unsigned int) _52; *)
cast v61@uint64 v52@uint128;
(* _62 = _60 >> 64; *)
usplit v62 tmp_to_use v60 64;
(* _63 = _14 + _62; *)
uadd v63 v14 v62;
(* _64 = (long unsigned int) _60; *)
cast v64@uint64 v60@uint128;
(* _65 = _63 >> 64; *)
usplit v65 tmp_to_use v63 64;
(* _66 = _58 + _65; *)
uadd v66 v58 v65;
(* _67 = (long unsigned int) _63; *)
cast v67@uint64 v63@uint128;
(* MEM[(u64 * )&small2] = _61; *)
mov small2_0 v61;
(* MEM[(u64 * )&small2 + 8B] = _64; *)
mov small2_8 v64;
(* MEM[(u64 * )&small2 + 16B] = _67; *)
mov small2_16 v67;
(* _68 = (long unsigned int) _66; *)
cast v68@uint64 v66@uint128;
(* MEM[(u64 * )&small2 + 24B] = _68; *)
mov small2_24 v68;
(* smallfelem_mul (out_4(D), small1_5(D), &small2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* small2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ small2_0@uint64;
mov _ small2_8@uint64;
mov _ small2_16@uint64;
mov _ small2_24@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

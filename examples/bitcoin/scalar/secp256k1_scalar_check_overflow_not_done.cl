proc secp256k1_scalar_check_overflow (uint64 a0, uint64 a1, uint64 a2, uint64 a3; int32 c0) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a22_0@uint64 a0;
mov a22_8@uint64 a1;
mov a22_16@uint64 a2;
mov a22_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_22(D)->d[3]; *)
mov v1 a22_24;
(* _2 = _1 != 18446744073709551615; *)
subb lt_value1 dontcare v1 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v1; *)
mov v2 lt_value1;

vpc v2@uint8 v2@uint1;
(* _3 = a_22(D)->d[2]; *)
mov v3 a22_16;
(* _4 = _3 <= 18446744073709551613; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xfffffffffffffffd@uint64 1@uint64;
subb v4 dontcare v3 tmp_for_compare;

vpc v4@uint8 v4@uint1;
(* _19 = _2 | _4; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v19 v2 v4; *)
vpc v2_p@uint1 v2;
cmov v19 v2_p 1@uint8 v4;
(* no_23 = (int) _19; *)
vpc v19_p@uint1 v19;
(* vpc no23@int32 v19@uint8; *)
mov no23 v19_p;
(* _5 = _3 == 18446744073709551615; *)
subb lt_value2 dontcare v3 0xffffffffffffffff@uint64;
(* subb gt_value dontcare 0xffffffffffffffff@uint64 v3; *)
mov v5 lt_value2;
not uint1 v5 v5;
vpc v5@uint8 v5@uint1;

assert true && v5 * v4  = 0@8;
assume v5 * v4 =0 && true;

(*
assert true && lt_value = 1@1;
assume lt_value = 1 && true;
*)

(* _6 = (int) _5; *)
(* vpc v6@int32 v5@uint8; *)
vpc v6@uint1 v5@uint8;
(* _7 = ~no_23; *)
not uint1 v7 no23;
(* _8 = _6 & _7; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v8 v6 v7; *)
cmov v8@uint1 v6 v7 0@uint1;
(* _9 = a_22(D)->d[1]; *)
mov v9 a22_8;
(* _10 = _9 <= 13451932020343611450; *)
(* check const + 1 no overflow *)
add tmp_for_compare 0xbaaedce6af48a03a@uint64 1@uint64;
subb v10 dontcare v9 tmp_for_compare;
vpc v10@uint8 v10@uint1;
(* _20 = _10 | _19; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v20 v10 v19; *)
vpc v10_p@uint1 v10;
cmov v20@uint8 v10_p 1@uint8 v19;

(* no_24 = (int) _20; *)
(* cast no24@int32 v20@uint8; *)
vpc no24@uint1 v20;
(* _11 = _9 > 13451932020343611451; *)
subb v11 dontcare 0xbaaedce6af48a03b@uint64 v9;
vpc v11@uint8 v11@uint1;

assert true && v11 * v10  = 0@8;
assume v11 * v10 =0 && true;

(* _13 = ~no_24; *)
(* not int32 v13 no24; *)
not uint1 v13 no24;
(* _15 = a_22(D)->d[0]; *)
mov v15 a22_0;
(* _16 = _15 > 13822214165235122496; *)
subb v16 dontcare 0xbfd25e8cd0364140@uint64 v15;
vpc v16@uint8 v16@uint1;
(* _25 = _11 | _16; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or uint8 v25 v11 v16; *)
vpc v11_p@uint1 v11;
cmov v25 v11_p 1@uint8 v16;

(* _28 = (int) _25; *)
(* cast v28@int32 v25@uint8; *)
vpc v28@uint8 v25@uint8;
(* _27 = _13 & _28; *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* and int32 v27 v13 v28; *)
vpc v13_p@uint1 v13;
cmov v27@uint8 v13_p v28 0@uint8;
(* yes_26 = _8 | _27; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: signed operation, need check semantics *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
(* or int32 yes26 v8 v27; *)
vpc v8_p@uint1 v8;
cmove yes26 v8_p 1@uint8 v27;
vpc yes26@int32 yes26; 
(* return yes_26; *)


(* Start with unused lhs *)
mov c0 yes26@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

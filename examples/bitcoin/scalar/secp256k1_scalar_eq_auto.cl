proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a18_0@uint64 _;
mov a18_8@uint64 _;
mov a18_16@uint64 _;
mov a18_24@uint64 _;
mov b19_0@uint64 _;
mov b19_8@uint64 _;
mov b19_16@uint64 _;
mov b19_24@uint64 _;
mov v10@uint64 _;
mov v14@uint64 _;
mov v3@uint64 _;
mov v6@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_18(D)->d[0]; *)
mov v1 a18_0;
(* _2 = b_19(D)->d[0]; *)
mov v2 b19_0;
(* _3 = _1 ^ _2; *)
(* TODO: Skip translation for bit xor *)
(* _4 = a_18(D)->d[1]; *)
mov v4 a18_8;
(* _5 = b_19(D)->d[1]; *)
mov v5 b19_8;
(* _6 = _4 ^ _5; *)
(* TODO: Skip translation for bit xor *)
(* _7 = _3 | _6; *)
(* Bitwise or , may need assert and assume *)
or uint64 v7 v3 v6;
(* _8 = a_18(D)->d[2]; *)
mov v8 a18_16;
(* _9 = b_19(D)->d[2]; *)
mov v9 b19_16;
(* _10 = _8 ^ _9; *)
(* TODO: Skip translation for bit xor *)
(* _11 = _7 | _10; *)
(* Bitwise or , may need assert and assume *)
or uint64 v11 v7 v10;
(* _12 = a_18(D)->d[3]; *)
mov v12 a18_24;
(* _13 = b_19(D)->d[3]; *)
mov v13 b19_24;
(* _14 = _12 ^ _13; *)
(* TODO: Skip translation for bit xor *)
(* _15 = _11 | _14; *)
(* Bitwise or , may need assert and assume *)
or uint64 v15 v11 v14;
(* _16 = _15 == 0; *)
subb lt_value dontcare v15 0x0@uint64;
subb gt_value dontcare 0x0@uint64 v15;
or uint1 v16 lt_value gt_value;
not uint1 v16 v16;
vpc v16@uint8 v16@uint1;
(* _20 = (int) _16; *)
cast v20@int32 v16@uint8;
(* return _20; *)


(* Start with unused lhs *)
mov _ v1@uint64;
mov _ v12@uint64;
mov _ v13@uint64;
mov _ v2@uint64;
mov _ v20@int32;
mov _ v4@uint64;
mov _ v5@uint64;
mov _ v8@uint64;
mov _ v9@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

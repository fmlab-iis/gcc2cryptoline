proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov n23@int32 _;
mov r22_0@uint64 _;
mov r22_8@uint64 _;
mov r22_16@uint64 _;
mov r22_24@uint64 _;
mov v10@uint64 _;
mov v12@uint64 _;
mov v14@uint64 _;
mov v16@uint64 _;
mov v18@uint64 _;
mov v20@uint64 _;
mov v3@int32 _;
mov v7@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = r_22(D)->d[0]; *)
mov v1 r22_0;
(* _2 = (unsigned int) _1; *)
cast v2@uint32 v1@uint64;
(* _3 = 1 << n_23(D); *)
(* TODO: skip, because shift amount is not constant *)
(* _4 = _3 + -1; *)
sadd v4 v3 (-0x1)@int32;
(* _5 = (unsigned int) _4; *)
cast v5@uint32 v4@int32;
(* _6 = _2 & _5; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint32 v6 v2 v5;
(* ret_24 = (int) _6; *)
cast ret24@int32 v6@uint32;
(* _7 = _1 >> n_23(D); *)
(* TODO: skip, because shift amount is not constant *)
(* _8 = r_22(D)->d[1]; *)
mov v8 r22_8;
(* _9 = 64 - n_23(D); *)
ssub v9 0x40@int32 n23;
(* _10 = _8 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _11 = _7 + _10; *)
uadd v11 v7 v10;
(* r_22(D)->d[0] = _11; *)
mov r22_0 v11;
(* _12 = _8 >> n_23(D); *)
(* TODO: skip, because shift amount is not constant *)
(* _13 = r_22(D)->d[2]; *)
mov v13 r22_16;
(* _14 = _13 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _15 = _12 + _14; *)
uadd v15 v12 v14;
(* r_22(D)->d[1] = _15; *)
mov r22_8 v15;
(* _16 = _13 >> n_23(D); *)
(* TODO: skip, because shift amount is not constant *)
(* _17 = r_22(D)->d[3]; *)
mov v17 r22_24;
(* _18 = _17 << _9; *)
(* TODO: skip, because shift amount is not constant *)
(* _19 = _16 + _18; *)
uadd v19 v16 v18;
(* r_22(D)->d[2] = _19; *)
mov r22_16 v19;
(* _20 = _17 >> n_23(D); *)
(* TODO: skip, because shift amount is not constant *)
(* r_22(D)->d[3] = _20; *)
mov r22_24 v20;
(* return ret_24; *)


(* Start with unused lhs *)
mov _ r22_0@uint64;
mov _ r22_8@uint64;
mov _ r22_16@uint64;
mov _ r22_24@uint64;
mov _ ret24@int32;
mov _ v13@uint64;
mov _ v17@uint64;
mov _ v8@uint64;
mov _ v9@int32;
(* End with unsed lhs *)


{
  true
  &&
  true
}

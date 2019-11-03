proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a31_0@uint64 _;
mov a31_8@uint64 _;
mov a31_16@uint64 _;
mov a31_24@uint64 _;
mov a31_32@uint64 _;
mov flag27@int32 _;
mov r30_0@uint64 _;
mov r30_8@uint64 _;
mov r30_16@uint64 _;
mov r30_24@uint64 _;
mov r30_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _43 = {flag_27(D), flag_27(D), flag_27(D), flag_27(D)}; *)
mov v43_0 flag27;
mov v43_1 flag27;
mov v43_2 flag27;
mov v43_3 flag27;
(* vect__1.433_45 = [vec_unpack_lo_expr] _43; *)
mov vect__143345_0 v43_0;
mov vect__143345_1 v43_1;
(* vect__1.433_46 = [vec_unpack_hi_expr] _43; *)
mov vect__143346_0 v43_2;
mov vect__143346_1 v43_3;
(* _1 = (long unsigned int) flag_27(D); *)
cast v1@uint64 flag27@int32;
(* vect_mask0_28.434_49 = vect__1.433_45 + { 18446744073709551615, 18446744073709551615 }; *)
uadd vect_mask0_2843449_0 vect__143345_0 0xffffffffffffffff@uint64;
uadd vect_mask0_2843449_1 vect__143345_1 0xffffffffffffffff@uint64;
(* vect_mask0_28.434_50 = vect__1.433_46 + { 18446744073709551615, 18446744073709551615 }; *)
uadd vect_mask0_2843450_0 vect__143346_0 0xffffffffffffffff@uint64;
uadd vect_mask0_2843450_1 vect__143346_1 0xffffffffffffffff@uint64;
(* mask0_28 = _1 + 18446744073709551615; *)
uadd mask028 v1 0xffffffffffffffff@uint64;
(* vect__37.440_58 = -vect__1.433_45; *)
(* TODO: check negation semantics *)
usubb carry_0 vect__3744058_0 0@uint64 vect__143345_0;
usubb carry_1 vect__3744058_1 0@uint64 vect__143345_1;
(* vect__37.440_59 = -vect__1.433_46; *)
(* TODO: check negation semantics *)
usubb carry_0 vect__3744059_0 0@uint64 vect__143346_0;
usubb carry_1 vect__3744059_1 0@uint64 vect__143346_1;
(* _37 = -_1; *)
(* TODO: check negation semantics *)
usubb carry v37 0@uint64 v1;
(* vect__2.431_38 = MEM[(long unsigned int * )r_30(D)]; *)
mov vect__243138_0 r30_0;
mov vect__243138_1 r30_8;
(* vect__2.432_41 = MEM[(long unsigned int * )r_30(D) + 16B]; *)
mov vect__243241_0 r30_16;
mov vect__243241_1 r30_24;
(* vect__3.435_51 = vect__2.431_38 & vect_mask0_28.434_49; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__343551_0 vect__243138_0 vect_mask0_2843449_0;
and uint64 vect__343551_1 vect__243138_1 vect_mask0_2843449_1;
(* vect__3.435_52 = vect__2.432_41 & vect_mask0_28.434_50; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__343552_0 vect__243241_0 vect_mask0_2843450_0;
and uint64 vect__343552_1 vect__243241_1 vect_mask0_2843450_1;
(* vect__4.438_54 = MEM[(long unsigned int * )a_31(D)]; *)
mov vect__443854_0 a31_0;
mov vect__443854_1 a31_8;
(* vect__4.439_56 = MEM[(long unsigned int * )a_31(D) + 16B]; *)
mov vect__443956_0 a31_16;
mov vect__443956_1 a31_24;
(* vect__5.441_60 = vect__4.438_54 & vect__37.440_58; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__544160_0 vect__443854_0 vect__3744058_0;
and uint64 vect__544160_1 vect__443854_1 vect__3744058_1;
(* vect__5.441_61 = vect__4.439_56 & vect__37.440_59; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 vect__544161_0 vect__443956_0 vect__3744059_0;
and uint64 vect__544161_1 vect__443956_1 vect__3744059_1;
(* vect__6.442_62 = vect__3.435_51 | vect__5.441_60; *)
(* Bitwise or , may need assert and assume *)
or uint64 vect__644262_0 vect__343551_0 vect__544160_0;
or uint64 vect__644262_1 vect__343551_1 vect__544160_1;
(* vect__6.442_63 = vect__3.435_52 | vect__5.441_61; *)
(* Bitwise or , may need assert and assume *)
or uint64 vect__644263_0 vect__343552_0 vect__544161_0;
or uint64 vect__644263_1 vect__343552_1 vect__544161_1;
(* MEM[(long unsigned int * )r_30(D)] = vect__6.442_62; *)
mov r30_0 vect__644262_0;
mov r30_8 vect__644262_1;
(* MEM[(long unsigned int * )r_30(D) + 16B] = vect__6.442_63; *)
mov r30_16 vect__644263_0;
mov r30_24 vect__644263_1;
(* _22 = r_30(D)->n[4]; *)
mov v22 r30_32;
(* _23 = _22 & mask0_28; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v23 v22 mask028;
(* _24 = a_31(D)->n[4]; *)
mov v24 a31_32;
(* _25 = _24 & _37; *)
(* TODO: Bitwise And , may need assert and assume *)
and uint64 v25 v24 v37;
(* _26 = _23 | _25; *)
(* Bitwise or , may need assert and assume *)
or uint64 v26 v23 v25;
(* r_30(D)->n[4] = _26; *)
mov r30_32 v26;
(* return; *)


(* Start with unused lhs *)
mov _ r30_0@uint64;
mov _ r30_8@uint64;
mov _ r30_16@uint64;
mov _ r30_24@uint64;
mov _ r30_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

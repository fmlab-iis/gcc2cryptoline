proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64,
    b0 <u (2**51+2**15)@64,
    b1 <u (2**51+2**15)@64,
    b2 <u (2**51+2**15)@64,
    b3 <u (2**51+2**15)@64,
    b4 <u (2**51+2**15)@64
  ]
}

(* Start with undefined rhs *)
mov a18_0@uint64 a0;
mov a18_8@uint64 a1;
mov a18_16@uint64 a2;
mov a18_24@uint64 a3;
mov a18_32@uint64 a4;
mov tmp_0@uint64 b0;
mov tmp_8@uint64 b1;
mov tmp_16@uint64 b2;
mov tmp_24@uint64 b3;
mov tmp_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* __builtin_memcpy (&tmp, b_12(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* vect_b0_13.184_31 = MEM[(long unsigned int * )&tmp]; *)
mov vect_b0_1318431_0 tmp_0;
mov vect_b0_1318431_8 tmp_8;
(* vect_b0_13.185_33 = MEM[(long unsigned int * )&tmp + 16B]; *)
mov vect_b0_1318533_0 tmp_16;
mov vect_b0_1318533_8 tmp_24;
(* b4_17 = tmp[4]; *)
mov b417 tmp_32;
(* vect__1.186_37 = vect_b0_13.184_31 + { 18014398509481832, 18014398509481976 }; *)
uadd vect__118637_0 vect_b0_1318431_0 0x3fffffffffff68@uint64;
uadd vect__118637_8 vect_b0_1318431_8 0x3ffffffffffff8@uint64;
(* vect__1.186_38 = vect_b0_13.185_33 + { 18014398509481976, 18014398509481976 }; *)
uadd vect__118638_0 vect_b0_1318533_0 0x3ffffffffffff8@uint64;
uadd vect__118638_8 vect_b0_1318533_8 0x3ffffffffffff8@uint64;
(* _5 = b4_17 + 18014398509481976; *)
uadd v5 b417 0x3ffffffffffff8@uint64;
(* vect_xi_19.189_40 = MEM[(uint64_t * )a_18(D)]; *)
mov vect_xi_1918940_0 a18_0;
mov vect_xi_1918940_8 a18_8;
(* vect_xi_19.190_42 = MEM[(uint64_t * )a_18(D) + 16B]; *)
mov vect_xi_1919042_0 a18_16;
mov vect_xi_1919042_8 a18_24;
(* vect__6.191_44 = vect__1.186_37 - vect_xi_19.189_40; *)
usub vect__619144_0 vect__118637_0 vect_xi_1918940_0;
usub vect__619144_8 vect__118637_8 vect_xi_1918940_8;
(* vect__6.191_45 = vect__1.186_38 - vect_xi_19.190_42; *)
usub vect__619145_0 vect__118638_0 vect_xi_1919042_0;
usub vect__619145_8 vect__118638_8 vect_xi_1919042_8;
(* MEM[(uint64_t * )a_18(D)] = vect__6.191_44; *)
mov a18_0 vect__619144_0;
mov a18_8 vect__619144_8;
(* MEM[(uint64_t * )a_18(D) + 16B] = vect__6.191_45; *)
mov a18_16 vect__619145_0;
mov a18_24 vect__619145_8;
(* xi_27 = MEM[(uint64_t * )a_18(D) + 32B]; *)
mov xi27 a18_32;
(* _10 = _5 - xi_27; *)
usub v10 v5 xi27;
(* MEM[(uint64_t * )a_18(D) + 32B] = _10; *)
mov a18_32 v10;
(* tmp ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov c0 a18_0@uint64;
mov c1 a18_8@uint64;
mov c2 a18_16@uint64;
mov c3 a18_24@uint64;
mov c4 a18_32@uint64;
(* End with unsed lhs *)

{
   (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ b0, b1, b2, b3, b4 ])
      -
      (limbs 51 [ a0, a1, a2, a3, a4])
    )
    (mod (2**255 - 19))
  &&
  true
}

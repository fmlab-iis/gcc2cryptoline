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
mov a18_32@uint64 _;
mov r17_0@uint64 _;
mov r17_8@uint64 _;
mov r17_16@uint64 _;
mov r17_24@uint64 _;
mov r17_32@uint64 _;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* vect__1.420_24 = MEM[(long unsigned int * )r_17(D)]; *)
mov vect__142024_0 r17_0;
mov vect__142024_1 r17_8;
(* vect__1.421_27 = MEM[(long unsigned int * )r_17(D) + 16B]; *)
mov vect__142127_0 r17_16;
mov vect__142127_1 r17_24;
(* vect__2.424_30 = MEM[(long unsigned int * )a_18(D)]; *)
mov vect__242430_0 a18_0;
mov vect__242430_1 a18_8;
(* vect__2.425_32 = MEM[(long unsigned int * )a_18(D) + 16B]; *)
mov vect__242532_0 a18_16;
mov vect__242532_1 a18_24;
(* vect__3.426_34 = vect__1.420_24 + vect__2.424_30; *)
uadd vect__342634_0 vect__142024_0 vect__242430_0;
uadd vect__342634_1 vect__142024_1 vect__242430_1;
(* vect__3.426_35 = vect__1.421_27 + vect__2.425_32; *)
uadd vect__342635_0 vect__142127_0 vect__242532_0;
uadd vect__342635_1 vect__142127_1 vect__242532_1;
(* MEM[(long unsigned int * )r_17(D)] = vect__3.426_34; *)
mov r17_0 vect__342634_0;
mov r17_8 vect__342634_1;
(* MEM[(long unsigned int * )r_17(D) + 16B] = vect__3.426_35; *)
mov r17_16 vect__342635_0;
mov r17_24 vect__342635_1;
(* _13 = r_17(D)->n[4]; *)
mov v13 r17_32;
(* _14 = a_18(D)->n[4]; *)
mov v14 a18_32;
(* _15 = _13 + _14; *)
uadd v15 v13 v14;
(* r_17(D)->n[4] = _15; *)
mov r17_32 v15;
(* return; *)


(* Start with unused lhs *)
mov _ r17_0@uint64;
mov _ r17_8@uint64;
mov _ r17_16@uint64;
mov _ r17_24@uint64;
mov _ r17_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

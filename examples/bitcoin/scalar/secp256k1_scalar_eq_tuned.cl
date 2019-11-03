(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_eq_tuned.cl
Verification result:                    [OK]            0.191007 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_scalar_eq_tuned.cl"
        User time (seconds): 0.22
        System time (seconds): 0.03
        Percent of CPU this job got: 98%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.26
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 14572
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 9993
        Voluntary context switches: 147
        Involuntary context switches: 20
        Swaps: 0
        File system inputs: 0
        File system outputs: 112
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0

*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./secp256k1_scalar_eq_tuned.cl
Verification result:                    [OK]            0.242750 seconds
        0.34 real         0.23 user         0.08 sys
   9797632  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
     21271  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
        25  signals received
        64  voluntary context switches
       697  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a18_0@uint64 a0;
mov a18_8@uint64 a1;
mov a18_16@uint64 a2;
mov a18_24@uint64 a3;
mov b19_0@uint64 b0;
mov b19_8@uint64 b1;
mov b19_16@uint64 b2;
mov b19_24@uint64 b3;
(*
mov v10@uint64 _;
mov v14@uint64 _;
mov v3@uint64 _;
mov v6@uint64 _;
*)
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_18(D)->d[0]; *)
mov v1  a18_0;
(* _2 = b_19(D)->d[0]; *)
mov v2  b19_0;
(* _3 = _1 ^ _2; *)
(* TODO: Skip translation for bit xor *)
not uint64 nv1 v1;
not uint64 nv2 v2;
and uint64 v1nv2 v1 nv2;
and uint64 nv1v2 nv1 v2;
or uint64 v3 v1nv2 nv1v2;
(* _4 = a_18(D)->d[1]; *)
mov v4  a18_8;
(* _5 = b_19(D)->d[1]; *)
mov v5  b19_8;
(* _6 = _4 ^ _5; *)
(* TODO: Skip translation for bit xor *)
not uint64 nv4 v4;
not uint64 nv5 v5;
and uint64 v4nv5 v4 nv5;
and uint64 nv4v5 nv4 v5;
or uint64 v6 v4nv5 nv4v5;
(* _7 = _3 | _6; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v7 v3 v6;
(* _8 = a_18(D)->d[2]; *)
mov v8  a18_16;
(* _9 = b_19(D)->d[2]; *)
mov v9  b19_16;
(* _10 = _8 ^ _9; *)
(* TODO: Skip translation for bit xor *)
not uint64 nv8 v8;
not uint64 nv9 v9;
and uint64 v8nv9 v8 nv9;
and uint64 nv8v9 nv8 v9;
or uint64 v10 v8nv9 nv8v9;
(* _11 = _7 | _10; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v11 v7 v10;
(* _12 = a_18(D)->d[3]; *)
mov v12  a18_24;
(* _13 = b_19(D)->d[3]; *)
mov v13  b19_24;
(* _14 = _12 ^ _13; *)
not uint64 nv12 v12;
not uint64 nv13 v13;
and uint64 v12nv13 v12 nv13;
and uint64 nv12v13 nv12 v13;
or uint64 v14 v12nv13 nv12v13;
(* TODO: Skip translation for bit xor *)
(* _15 = _11 | _14; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v15 v11 v14;
(* _16 = _15 == 0; *)
(* subb lt_value dontcare v15 0x0@uint64; *)
subb gt_value dontcare 0x0@uint64 v15;
(* or uint1 v16 lt_value gt_value; *)
mov v16 gt_value;
not uint1 v16 v16;
vpc v16@uint8 v16@uint1;
(* _20 = (int) _16; *)
cast v20@int32 v16@uint8;
(* return _20; *)


(* Start with unused lhs *)
(*
mov _ v1@uint64;
mov _ v12@uint64;
mov _ v13@uint64;
mov _ v2@uint64;
mov _ v20@int32;
mov _ v4@uint64;
mov _ v5@uint64;
mov _ v8@uint64;
mov _ v9@uint64;
*)
(* End with unsed lhs *)
mov c v20;

{
  true
  &&
  or [
      and [
          (c > 0@32),
          ( (limbs 64 [a0, a1, a2,a3]) = (limbs 64 [b0, b1, b2,b3]))
      ],
       and [
          (c = 0@32),
          ((limbs 64 [a0, a1, a2,a3]) > (limbs 64 [b0, b1, b2,b3]))
      ],
       and [
          (c = 0@32),
          ((limbs 64 [a0, a1, a2,a3]) < (limbs 64 [b0, b1, b2,b3]))
      ]
  ]
}

(*
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_cmov_tuned.cl
Verification result:                    [OK]            0.506527 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_cmov_tuned.cl"
        User time (seconds): 1.53
        System time (seconds): 0.36
        Percent of CPU this job got: 329%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.57
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 29628
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 116244
        Voluntary context switches: 1099
        Involuntary context switches: 145
        Swaps: 0
        File system inputs: 0
        File system outputs: 592
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_cmov_tuned.cl
Verification result:			[OK]		1.660342 seconds
        1.77 real         2.73 user         1.00 sys
  28426240  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    249451  page reclaims
         3  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       302  signals received
       513  voluntary context switches
      6508  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 r0, uint64 r1, uint64 r2, uint64 r3, uint64 r4, int32 flag) = 
{
  true
  &&
  and
  [
    a0 < (8*(2**53-1))@64,
    a1 < (8*(2**53-1))@64,
    a2 < (8*(2**53-1))@64,
    a3 < (8*(2**53-1))@64,
    a4 < (8*(2**49-1))@64,
    r0 < (8*(2**53-1))@64,
    r1 < (8*(2**53-1))@64,
    r2 < (8*(2**53-1))@64,
    r3 < (8*(2**53-1))@64,
    r4 < (8*(2**49-1))@64,
    flag <= 1@32,
    flag >= 0@32
  ]
}


(* Start with undefined rhs *)
mov a31_0@uint64 a0;
mov a31_8@uint64 a1;
mov a31_16@uint64 a2;
mov a31_24@uint64 a3;
mov a31_32@uint64 a4;
mov flag27@int32 flag;
mov r30_0@uint64 r0;
mov r30_8@uint64 r1;
mov r30_16@uint64 r2;
mov r30_24@uint64 r3;
mov r30_32@uint64 r4;
(* End with undefined rhs *)


vpc flag27_bit@uint1 flag27;
(* BB's index is 2 *)

(* _43 = {flag_27(D), flag_27(D), flag_27(D), flag_27(D)}; *)

(* added *)
vpc flag27_p@uint64 flag27;

mov v43_0 flag27_p;
mov v43_1 flag27_p;
mov v43_2 flag27_p;
mov v43_3 flag27_p;
(* vect__1.433_45 = [vec_unpack_lo_expr] _43; *)
mov vect__143345_0 v43_0;
mov vect__143345_1 v43_1;
(* vect__1.433_46 = [vec_unpack_hi_expr] _43; *)
mov vect__143346_0 v43_2;
mov vect__143346_1 v43_3;
(* _1 = (long unsigned int) flag_27(D); *)
(* cast -> vpc *)
vpc v1@uint64 flag27@int32;
(* vect_mask0_28.434_49 = vect__1.433_45 + { 18446744073709551615, 18446744073709551615 }; *)
uadds carry_0 vect_mask0_2843449_0 vect__143345_0 0xffffffffffffffff@uint64;
uadds carry_1 vect_mask0_2843449_1 vect__143345_1 0xffffffffffffffff@uint64;

assert true && carry_0 = flag27_bit;
assume carry_0 = flag27_bit && true;

assert true && carry_1 = flag27_bit;
assume carry_1 = flag27_bit && true;

(* vect_mask0_28.434_50 = vect__1.433_46 + { 18446744073709551615, 18446744073709551615 }; *)
uadds carry_0 vect_mask0_2843450_0 vect__143346_0 0xffffffffffffffff@uint64;
uadds carry_1 vect_mask0_2843450_1 vect__143346_1 0xffffffffffffffff@uint64;

assert true && carry_0 = flag27_bit;
assume carry_0 = flag27_bit && true;

assert true && carry_1 = flag27_bit;
assume carry_1 = flag27_bit && true;

(* mask0_28 = _1 + 18446744073709551615; *)
uadds carry mask028 v1 0xffffffffffffffff@uint64;
(* vect__37.440_58 = -vect__1.433_45; *)
(* TODO: check negation semantics *)
usubb carry_0 vect__3744058_0 0@uint64 vect__143345_0;
usubb carry_1 vect__3744058_1 0@uint64 vect__143345_1;

assert true && carry_0 = flag27_bit;
assume carry_0 = flag27_bit && true;

assert true && carry_1 = flag27_bit;
assume carry_1 = flag27_bit && true;

(* vect__37.440_59 = -vect__1.433_46; *)
(* TODO: check negation semantics *)
usubb carry_0 vect__3744059_0 0@uint64 vect__143346_0;
usubb carry_1 vect__3744059_1 0@uint64 vect__143346_1;

assert true && carry_0 = flag27_bit;
assume carry_0 = flag27_bit && true;

assert true && carry_1 = flag27_bit;
assume carry_1 = flag27_bit && true;

(* _37 = -_1; *)
(* TODO: check negation semantics *)
usubb carry v37 0@uint64 v1;

assert true && carry = flag27_bit;
assume carry = flag27_bit && true;

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

assert true && r30_0 = (1@64 - flag27_p) * r0 + flag27_p * a0;
assume r30_0 = (1 - flag27_p) * r0 + flag27_p * a0 && true;

assert true && r30_8 = (1@64 - flag27_p) * r1 + flag27_p * a1;
assume r30_8 = (1 - flag27_p) * r1 + flag27_p * a1 && true;

assert true && r30_16 = (1@64 - flag27_p) * r2 + flag27_p * a2;
assume r30_16 = (1 - flag27_p) * r2 + flag27_p * a2&& true;

assert true && r30_24 = (1@64 - flag27_p) * r3 + flag27_p * a3;
assume r30_24 = (1 - flag27_p) * r3 + flag27_p * a3 && true;

assert true && r30_32 = (1@64 - flag27_p) * r4 + flag27_p * a4;
assume r30_32 = (1 - flag27_p) * r4 + flag27_p * a4 && true;

(* Start with unused lhs *)
mov c0 r30_0@uint64;
mov c1 r30_8@uint64;
mov c2 r30_16@uint64;
mov c3 r30_24@uint64;
mov c4 r30_32@uint64;
(* End with unsed lhs *)


{
  
    and [
        c0 = (1-flag27) * r0 + flag27 * a0,
        c1 = (1-flag27) * r1 + flag27 * a1,
        c2 = (1-flag27) * r2 + flag27 * a2,
        c3 = (1-flag27) * r3 + flag27 * a3,
        c4 = (1-flag27) * r4 + flag27 * a4
    ]   
  &&
  true
}

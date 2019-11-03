(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fscalar_product_tuned.cl
Verification result:                    [OK]            0.933145 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fscalar_product_tuned.cl"
        User time (seconds): 2.65
        System time (seconds): 0.81
        Percent of CPU this job got: 342%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:01.01
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 108464
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 366439
        Voluntary context switches: 1143
        Involuntary context switches: 328
        Swaps: 0
        File system inputs: 0
        File system outputs: 584
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fscalar_product_tuned.cl
Verification result:			[OK]		3.188245 seconds
        3.33 real         6.48 user         1.64 sys
 104058880  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    455769  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        25  block output operations
         0  messages sent
         0  messages received
       300  signals received
       554  voluntary context switches
     11616  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 scalar) = 
{
  true
  &&
  and [
    a0 <u (2**53)@64,
    a1 <u (2**53)@64,
    a2 <u (2**53)@64,
    a3 <u (2**53)@64,
    a4 <u (2**53)@64,
    scalar <u (121665)@64
  ]
}


(* Start with undefined rhs *)
mov in35_0@uint64 a0;
mov in35_8@uint64 a1;
mov in35_16@uint64 a2;
mov in35_24@uint64 a3;
mov in35_32@uint64 a4;
mov scalar36@uint64 scalar;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_35(D); *)
mov v1 in35_0;
(* a_37 = _1 w* scalar_36(D); *)
umulj a37 v1 scalar36;
(* _4 = (long unsigned int) a_37; *)
cast v4@uint64 a37@uint128;
(* _5 = _4 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v5 v4 0x7ffffffffffff@uint64;
(* *output_38(D) = _5; *)
mov output38_0 v5;
(* _6 = MEM[(const felem * )in_35(D) + 8B]; *)
mov v6 in35_8;
(* _8 = scalar_36(D) w* _6; *)
umulj v8 scalar36 v6;
(* _9 = a_37 >> 51; *)
usplit v9 tmp_to_use a37 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v5;
assume tmp_to_use = v5 && true;

(* a_40 = _8 + _9; *)
uadd a40 v8 v9;
(* _10 = (long unsigned int) a_40; *)
cast v10@uint64 a40@uint128;
(* _11 = _10 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v11 v10 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 8B] = _11; *)
mov output38_8 v11;
(* _12 = MEM[(const felem * )in_35(D) + 16B]; *)
mov v12 in35_16;
(* _14 = scalar_36(D) w* _12; *)
umulj v14 scalar36 v12;
(* _15 = a_40 >> 51; *)
usplit v15 tmp_to_use a40 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v11;
assume tmp_to_use = v11 && true;

(* a_42 = _14 + _15; *)
uadd a42 v14 v15;
(* _16 = (long unsigned int) a_42; *)
cast v16@uint64 a42@uint128;
(* _17 = _16 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v17 v16 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 16B] = _17; *)
mov output38_16 v17;
(* _18 = MEM[(const felem * )in_35(D) + 24B]; *)
mov v18 in35_24;
(* _20 = scalar_36(D) w* _18; *)
umulj v20 scalar36 v18;
(* _21 = a_42 >> 51; *)
usplit v21 tmp_to_use a42 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v17;
assume tmp_to_use = v17 && true;

(* a_44 = _20 + _21; *)
uadd a44 v20 v21;
(* _22 = (long unsigned int) a_44; *)
cast v22@uint64 a44@uint128;
(* _23 = _22 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v23 v22 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 24B] = _23; *)
mov output38_24 v23;
(* _24 = MEM[(const felem * )in_35(D) + 32B]; *)
mov v24 in35_32;
(* _26 = scalar_36(D) w* _24; *)
umulj v26 scalar36 v24;
(* _27 = a_44 >> 51; *)
usplit v27 tmp_to_use a44 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v23;
assume tmp_to_use = v23 && true;

(* a_46 = _26 + _27; *)
uadd a46 v26 v27;
(* _28 = (long unsigned int) a_46; *)
cast v28@uint64 a46@uint128;
(* _29 = _28 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v29 v28 0x7ffffffffffff@uint64;
(* MEM[(felem * )output_38(D) + 32B] = _29; *)
mov output38_32 v29;
(* _30 = a_46 >> 51; *)
usplit v30 tmp_to_use a46 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v29;
assume tmp_to_use = v29 && true;

(* _31 = (long unsigned int) _30; *)
(* ========== cast -> vpc ========== *)
vpc v31@uint64 v30@uint128;
(* _32 = _31 * 19; *)
umul v32 v31 0x13@uint64;
(* _33 = _5 + _32; *)
uadd v33 v5 v32;
(* *output_38(D) = _33; *)
mov output38_0 v33;
(* return; *)


(* Start with unused lhs *)
mov c0 output38_0@uint64;
mov c1 output38_8@uint64;
mov c2 output38_16@uint64;
mov c3 output38_24@uint64;
mov c4 output38_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      *
      (scalar)
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**52)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}
(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_mul121666_tuned.cl
Verification result:                    [OK]            0.569286 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fe_mul121666_tuned.cl"
        User time (seconds): 0.86
        System time (seconds): 0.37
        Percent of CPU this job got: 192%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.64
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 21252
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 104619
        Voluntary context switches: 1327
        Involuntary context switches: 134
        Swaps: 0
        File system inputs: 0
        File system outputs: 752
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fe_mul121666_tuned.cl
Verification result:			[OK]		1.253683 seconds
        1.36 real         0.85 user         1.00 sys
  18182144  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    267000  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       352  signals received
       623  voluntary context switches
      3801  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) =
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64
  ]
}

(* Start with undefined rhs *)
mov f3_0@uint64 a0;
mov f3_8@uint64 a1;
mov f3_16@uint64 a2;
mov f3_24@uint64 a3;
mov f3_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* x10_7 = MEM[(const uint64_t * )f_3(D) + 32B]; *)
mov x107 f3_32;
(* x11_8 = MEM[(const uint64_t * )f_3(D) + 24B]; *)
mov x118 f3_24;
(* x9_9 = MEM[(const uint64_t * )f_3(D) + 16B]; *)
mov x99 f3_16;
(* x7_10 = MEM[(const uint64_t * )f_3(D) + 8B]; *)
mov x710 f3_8;
(* x5_11 = MEM[(const uint64_t * )f_3(D)]; *)
mov x511 f3_0;
(* x20_13 = x5_11 w* 121666; *)
umulj x2013 x511 0x1db42@uint64;
(* x21_15 = x7_10 w* 121666; *)
umulj x2115 x710 0x1db42@uint64;
(* x22_17 = x9_9 w* 121666; *)
umulj x2217 x99 0x1db42@uint64;
(* x23_19 = x11_8 w* 121666; *)
umulj x2319 x118 0x1db42@uint64;
(* x24_21 = x10_7 w* 121666; *)
umulj x2421 x107 0x1db42@uint64;
(* _22 = x20_13 >> 51; *)
usplit v22 tmp_to_use x2013 51;
(* _23 = (long unsigned int) x20_13; *)
cast v23@uint64 x2013@uint128;
(* x34_24 = _23 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3424 v23 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3424 = tmp_to_use_p;
assume x3424 = tmp_to_use && true;

(* x35_26 = x21_15 + _22; *)
uadd x3526 x2115 v22;
(* _27 = x35_26 >> 51; *)
usplit v27 tmp_to_use x3526 51;
(* _28 = (long unsigned int) x35_26; *)
cast v28@uint64 x3526@uint128;
(* x37_29 = _28 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x3729 v28 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x3729 = tmp_to_use_p;
assume x3729 = tmp_to_use && true;


(* x38_31 = x22_17 + _27; *)
uadd x3831 x2217 v27;
(* _32 = x38_31 >> 51; *)
usplit v32 tmp_to_use x3831 51;
(* _33 = (long unsigned int) x38_31; *)
cast v33@uint64 x3831@uint128;
(* x40_34 = _33 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4034 v33 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x4034 = tmp_to_use_p;
assume x4034 = tmp_to_use && true;

(* x41_36 = x23_19 + _32; *)
uadd x4136 x2319 v32;
(* _37 = x41_36 >> 51; *)
usplit v37 tmp_to_use x4136 51;
(* _38 = (long unsigned int) x41_36; *)
cast v38@uint64 x4136@uint128;
(* x43_39 = _38 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4339 v38 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x4339 = tmp_to_use_p;
assume x4339 = tmp_to_use && true;

(* x44_41 = x24_21 + _37; *)
uadd x4441 x2421 v37;
(* _42 = x44_41 >> 51; *)
usplit v42 tmp_to_use x4441 51;
(* x45_43 = (uint64_t) _42; *)
(* =======modified: cast ->vpc ======== *)
vpc x4543@uint64 v42@uint128;
(* _44 = (long unsigned int) x44_41; *)
cast v44@uint64 x4441@uint128;
(* x46_45 = _44 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4645 v44 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x4645 = tmp_to_use_p;
assume x4645 = tmp_to_use && true;

(* _46 = x45_43 * 19; *)
umul v46 x4543 0x13@uint64;
(* x47_47 = x34_24 + _46; *)
uadd x4747 x3424 v46;
(* x48_48 = x47_47 >> 51; *)
usplit x4848 tmp_to_use x4747 51;
(* x49_49 = x47_47 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x4949 x4747 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x4949 = tmp_to_use_p;
assume x4949 = tmp_to_use && true;


(* x50_50 = x37_29 + x48_48; *)
uadd x5050 x3729 x4848;
(* x51_51 = x50_50 >> 51; *)
usplit x5151 tmp_to_use x5050 51;
(* x52_52 = x50_50 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 x5252 x5050 0x7ffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && x5252 = tmp_to_use_p;
assume x5252 = tmp_to_use && true;

(* MEM[(uint64_t * )h_4(D)] = x49_49; *)
mov h4_0 x4949;
(* MEM[(uint64_t * )h_4(D) + 8B] = x52_52; *)
mov h4_8 x5252;
(* _53 = x40_34 + x51_51; *)
uadd v53 x4034 x5151;
(* MEM[(uint64_t * )h_4(D) + 16B] = _53; *)
mov h4_16 v53;
(* MEM[(uint64_t * )h_4(D) + 24B] = x43_39; *)
mov h4_24 x4339;
(* MEM[(uint64_t * )h_4(D) + 32B] = x46_45; *)
mov h4_32 x4645;
(* return; *)


(* Start with unused lhs *)
mov c0 h4_0@uint64;
mov c1 h4_8@uint64;
mov c2 h4_16@uint64;
mov c3 h4_24@uint64;
mov c4 h4_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      *
      (121666)
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**51+2**15)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}
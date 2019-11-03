(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_from_storage_tuned.cl
Verification result:                    [OK]            0.260043 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_from_storage_tuned.cl"
        User time (seconds): 0.33
        System time (seconds): 0.16
        Percent of CPU this job got: 151%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.33
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10736
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 45043
        Voluntary context switches: 639
        Involuntary context switches: 62
        Swaps: 0
        File system inputs: 0
        File system outputs: 288
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing secp256k1_fe_from_storage_tuned.cl
Verification result:			[OK]		0.577648 seconds
        0.68 real         0.32 user         0.47 sys
   6475776  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    122398  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         8  block output operations
         0  messages sent
         0  messages received
       166  signals received
       302  voluntary context switches
      2098  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov a20_0@uint64 a0;
mov a20_8@uint64 a1;
mov a20_16@uint64 a2;
mov a20_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = a_20(D)->n[0]; *)
mov v1 a20_0;
(* _2 = _1 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v2 v1 0xfffffffffffff@uint64;
(* r_21(D)->n[0] = _2; *)
mov r21_0 v2;
(* _3 = _1 >> 52; *)
usplit v3 tmp_to_use v1 52;

assert true && tmp_to_use = v2;
assume tmp_to_use = v2 && true;

(* _4 = a_20(D)->n[1]; *)
mov v4 a20_8;
(* _5 = _4 << 12; *)
usplit tmp1 tmp2 v4 52;
shl v5 tmp2 12;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _6 = _5 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v6 v5 0xfffffffffffff@uint64;

(* _7 = _3 | _6; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v7 v3 v6;

assert true && v7 = v3 + v6;
assume v7 = v3 + v6 && true;


(* r_21(D)->n[1] = _7; *)
mov r21_8 v7;
(* _8 = _4 >> 40; *)
usplit v8 tmp_to_use v4 40;

assert true && v6 = tmp_to_use * (2**12)@64;
assume v6 = tmp_to_use * (2**12) && true;

(* _9 = a_20(D)->n[2]; *)
mov v9 a20_16;
(* _10 = _9 << 24; *)
usplit tmp1 tmp2 v9 40;
shl v10 tmp2 24;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _11 = _10 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v11 v10 0xfffffffffffff@uint64;
(* _12 = _8 | _11; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v12 v8 v11;

assert true && v12 = v8 + v11;
assume v12 = v8 + v11 && true;

(* r_21(D)->n[2] = _12; *)
mov r21_16 v12;
(* _13 = _9 >> 28; *)
usplit v13 tmp_to_use v9 28;

assert true && v11 = tmp_to_use * (2**24)@64;
assume v11 = tmp_to_use * (2**24) && true;

(* _14 = a_20(D)->n[3]; *)
mov v14 a20_24;
(* _15 = _14 << 36; *)
usplit tmp1 tmp2 v14 28;
shl v15 tmp2 36;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@64; *)
(* assume tmp1 = 0 && true; *)
(* _16 = _15 & 4503599627370495; *)
(* Note: 0xfffffffffffff@uint64 = 0x0fffffffffffff *)
(* Note: 0xfffffffffffff@uint64 = 0b00000000001111111111111111111111111111111111111111111111111111 *)
and uint64 v16 v15 0xfffffffffffff@uint64;
(* _17 = _13 | _16; *)
(* TODO: Bit Or, may need assert and assume *)
(* TODO: two operand are variable, need self tranlsate for algebra checking *)
or uint64 v17 v13 v16;

assert true && v17 = v13 + v16;
assume v17 = v13 + v16 && true;

(* r_21(D)->n[3] = _17; *)
mov r21_24 v17;
(* _18 = _14 >> 16; *)
usplit v18 tmp_to_use v14 16;

assert true && v16 = tmp_to_use * (2**36)@64;
assume v16 = tmp_to_use * (2**36) && true;

(* r_21(D)->n[4] = _18; *)
mov r21_32 v18;
(* return; *)


(* Start with unused lhs *)
mov c0 r21_0@uint64;
mov c1 r21_8@uint64;
mov c2 r21_16@uint64;
mov c3 r21_24@uint64;
mov c4 r21_32@uint64;
(* End with unsed lhs *)


{
  (
      limbs 52 [c0, c1, c2, c3, c4]
  )
  =
  (
      limbs 64 [a0, a1, a2, a3]
  )
  &&
  true
}

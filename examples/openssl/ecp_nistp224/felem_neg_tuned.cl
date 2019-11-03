(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_neg_tuned.cl
Verification result:                    [OK]            0.473586 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_neg_tuned.cl"
        User time (seconds): 0.64
        System time (seconds): 0.31
        Percent of CPU this job got: 175%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.55
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 11156
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 82054
        Voluntary context switches: 1148
        Involuntary context switches: 113
        Swaps: 0
        File system inputs: 0
        File system outputs: 608
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0

*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_neg_tuned.cl
Verification result:			[OK]		1.097173 seconds
        1.20 real         0.60 user         0.86 sys
   6819840  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    222843  page reclaims
         0  page faults
         0  swaps
         0  block input operations
         9  block output operations
         0  messages sent
         0  messages received
       306  signals received
       540  voluntary context switches
      3863  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) = 
{
  true
  &&
  and [
    a0 <u (2**57)@64,
    a1 <u (2**57)@64,
    a2 <u (2**57)@64,
    a3 <u (2**57)@64
  ]
}

(* Start with undefined rhs *)
mov in3_0@uint64 a0;
mov in3_8@uint64 a1;
mov in3_16@uint64 a2;
mov in3_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _7 = *in_3(D); *)
mov v7 in3_0;
(* _8 = (__int128 unsigned) _7; *)
vpc v8@uint128 v7@uint64;
(* _10 = MEM[(const limb * )in_3(D) + 8B]; *)
mov v10 in3_8;
(* _11 = (__int128 unsigned) _10; *)
vpc v11@uint128 v10@uint64;
(* _13 = MEM[(const limb * )in_3(D) + 16B]; *)
mov v13 in3_16;
(* _14 = (__int128 unsigned) _13; *)
vpc v14@uint128 v13@uint64;
(* _16 = MEM[(const limb * )in_3(D) + 24B]; *)
mov v16 in3_24;
(* _17 = (__int128 unsigned) _16; *)
vpc v17@uint128 v16@uint64;
(* _18 = 18446744073709551360 - _17; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
usub v18 value v17;
(* _23 = 0x80000000000000010000000000008100 - _8; *)
mov value_lo 0x8100@uint64;
mov value_hi 0x8000000000000001@uint64;
join value value_hi value_lo;
usub v23 value v8;
(* _22 = 0x7fffffffffffff80ff7effffffffff00 - _11; *)
mov value_lo 0xff7effffffffff00@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
usub v22 value v11;
(* _28 = 0x7fffffffffffff80ffffffffffffff00 - _14; *)
mov value_lo 0xffffffffffffff00@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
usub v28 value v14;
(* _51 = _28 >> 56; *)
usplit v51 tmp_to_use v28 56;
(* _52 = _18 + _51; *)
uadd v52 v18 v51;
(* _53 = _28 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v53 v28 value;

assert true && v53 = tmp_to_use;
assume v53 = tmp_to_use && true;

(* _54 = _52 >> 56; *)
usplit v54 tmp_to_use v52 56;
(* _55 = _52 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v55 v52 value;

assert true && v55 = tmp_to_use;
assume v55 = tmp_to_use && true;

(* _58 = _54 << 40; *)
usplit tmp1 tmp2 v54 88;
shl v58 tmp2 40;
(* TODO: check tmp1 heuristic *)
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
(* _25 = _22 + _58; *)
uadd v25 v22 v58;
(* _61 = _23 - _54; *)
usub v61 v23 v54;
(* _62 = _61 >> 56; *)
usplit v62 tmp_to_use v61 56;
(* _63 = _25 + _62; *)
uadd v63 v25 v62;
(* _64 = (long unsigned int) _61; *)
cast v64@uint64 v61@uint128;
(* _65 = _64 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v65 v64 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v65 = tmp_to_use_p;
assume v65 = tmp_to_use && true;

(* *out_4(D) = _65; *)
mov out4_0 v65;
(* _66 = _63 >> 56; *)
usplit v66 tmp_to_use v63 56;
(* _67 = _53 + _66; *)
uadd v67 v53 v66;
(* _68 = (long unsigned int) _63; *)
cast v68@uint64 v63@uint128;
(* _69 = _68 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v69 v68 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v69 = tmp_to_use_p;
assume v69 = tmp_to_use && true;

(* MEM[(limb * )out_4(D) + 8B] = _69; *)
mov out4_8 v69;
(* _70 = _67 >> 56; *)
usplit v70 tmp_to_use v67 56;
(* _71 = _55 + _70; *)
uadd v71 v55 v70;
(* _72 = (long unsigned int) _67; *)
cast v72@uint64 v67@uint128;
(* _73 = _72 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v73 v72 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v73 = tmp_to_use_p;
assume v73 = tmp_to_use && true;

(* MEM[(limb * )out_4(D) + 16B] = _73; *)
mov out4_16 v73;
(* _74 = (long unsigned int) _71; *)
vpc v74@uint64 v71@uint128;
(* MEM[(limb * )out_4(D) + 24B] = _74; *)
mov out4_24 v74;
(* return; *)


(* Start with unused lhs *)
mov c0 out4_0@uint64;
mov c1 out4_8@uint64;
mov c2 out4_16@uint64;
mov c3 out4_24@uint64;
(* End with unsed lhs *)


{
  (limbs 56 [a0, a1, a2, a3])
  =
  (
      0
      -
      limbs 56 [c0, c1, c2, c3]
  )
  (mod (2**224 - 2**96 + 1))
  &&
  true
}

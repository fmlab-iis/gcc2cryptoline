(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_square_reduce_tuned.cl
Verification result:                    [OK]            1.815781 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_square_reduce_tuned.cl"
        User time (seconds): 8.30
        System time (seconds): 1.99
        Percent of CPU this job got: 545%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:01.88
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 198864
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 865574
        Voluntary context switches: 2114
        Involuntary context switches: 1035
        Swaps: 0
        File system inputs: 0
        File system outputs: 1520
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_square_reduce_tuned.cl
Verification result:			[OK]		7.530555 seconds
        7.64 real        17.54 user         3.85 sys
 195842048  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   1034909  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        23  block output operations
         0  messages sent
         0  messages received
       597  signals received
      1034  voluntary context switches
     26916  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) = 
{
  true
  &&
  and [
    a0 <u (2**60)@64,
    a1 <u (2**60)@64,
    a2 <u (2**60)@64,
    a3 <u (2**60)@64
  ]
}



(* Start with undefined rhs *)
mov in2_0@uint64 a0;
mov in2_8@uint64 a1;
mov in2_16@uint64 a2;
mov in2_24@uint64 a3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _59 = *in_2(D); *)
mov v59 in2_0;
(* tmp0_60 = _59 * 2; *)
umul tmp060 v59 0x2@uint64;
(* _61 = MEM[(const limb * )in_2(D) + 8B]; *)
mov v61 in2_8;
(* tmp1_62 = _61 * 2; *)
umul tmp162 v61 0x2@uint64;
(* _63 = MEM[(const limb * )in_2(D) + 16B]; *)
mov v63 in2_16;
(* tmp2_64 = _63 * 2; *)
umul tmp264 v63 0x2@uint64;
(* _66 = _59 w* _59; *)
umulj v66 v59 v59;
(* _68 = _59 w* tmp1_62; *)
umulj v68 v59 tmp162;
(* _70 = _59 w* tmp2_64; *)
umulj v70 v59 tmp264;
(* _72 = _61 w* _61; *)
umulj v72 v61 v61;
(* _90 = _72 + 0x7fffffffffffff800000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
uadd v90 v72 value;
(* _74 = MEM[(const limb * )in_2(D) + 24B]; *)
mov v74 in2_24;
(* _77 = _74 w* tmp0_60; *)
umulj v77 v74 tmp060;
(* _78 = tmp2_64 w* _61; *)
umulj v78 tmp264 v61;
(* _79 = _77 + _78; *)
uadd v79 v77 v78;
(* _80 = tmp1_62 w* _74; *)
umulj v80 tmp162 v74;
(* _82 = _63 w* _63; *)
umulj v82 v63 v63;
(* _84 = tmp2_64 w* _74; *)
umulj v84 tmp264 v74;
(* _85 = _74 w* _74; *)
umulj v85 v74 v74;
(* _8 = _66 + 0x80000000000000000000000000008000; *)
mov value_lo 0x8000@uint64;
mov value_hi 0x8000000000000000@uint64;
join value value_hi value_lo;
uadd v8 v66 value;
(* _10 = _68 + 0x7fffffffffffff7fff80000000000000; *)
mov value_lo 0xff80000000000000@uint64;
mov value_hi 0x7fffffffffffff7f@uint64;
join value value_hi value_lo;
uadd v10 v68 value;
(* _12 = _70 + _90; *)
uadd v12 v70 v90;
(* _16 = _85 >> 16; *)
usplit v16 tmp_to_use v85 16;
(* _91 = _16 + _80; *)
uadd v91 v16 v80;
(* _17 = _82 + _91; *)
uadd v17 v82 v91;
(* _18 = _85 << 40; *)
usplit tmp1 tmp2 v85 88;
shl v18 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _19 = _18 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v19 v18 value;

assert true && v19 = tmp_to_use * (2**40)@128;
assume v19 = tmp_to_use * (2**40) && true;


(* _20 = _19 + _79; *)
uadd v20 v19 v79;
(* _21 = _12 - _85; *)
usub v21 v12 v85;
(* _23 = _84 >> 16; *)
usplit v23 tmp_to_use v84 16;
(* _24 = _20 + _23; *)
uadd v24 v20 v23;
(* _25 = _84 << 40; *)
usplit tmp1 tmp2 v84 88;
shl v25 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _26 = _25 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v26 v25 value;

assert true && v26 = tmp_to_use * (2**40)@128;
assume v26 = tmp_to_use * (2**40) && true;


(* _27 = _21 + _26; *)
uadd v27 v21 v26;
(* _28 = _10 - _84; *)
usub v28 v10 v84;
(* _29 = _17 >> 16; *)
usplit v29 tmp_to_use v17 16;
(* _30 = _27 + _29; *)
uadd v30 v27 v29;
(* _31 = _17 << 40; *)
usplit tmp1 tmp2 v17 88;
shl v31 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _32 = _31 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v32 v31 value;

assert true && v32 = tmp_to_use * (2**40)@128;
assume v32 = tmp_to_use * (2**40) && true;


(* _33 = _28 + _32; *)
uadd v33 v28 v32;
(* _34 = _8 - _17; *)
usub v34 v8 v17;
(* _35 = _30 >> 56; *)
usplit v35 tmp_to_use v30 56;
(* _36 = _24 + _35; *)
uadd v36 v24 v35;
(* _37 = _30 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v37 v30 value;

assert true && v37 = tmp_to_use;
assume v37 = tmp_to_use && true;


(* _38 = _36 >> 56; *)
usplit v38 tmp_to_use v36 56;
(* _39 = _36 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v39 v36 value;

assert true && v39 = tmp_to_use;
assume v39 = tmp_to_use && true;


(* _40 = _36 >> 72; *)
usplit v40 tmp_to_use v36 72;
(* _41 = _37 + _40; *)
uadd v41 v37 v40;
(* _42 = _38 << 40; *)
usplit tmp1 tmp2 v38 88;
shl v42 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _43 = _42 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v43 v42 value;


assert 
    true 
    &&
    (
        v43 
        +
        ((v40 * (2**40)@128) * (2**16)@128)
    )
    =
    (v38 * (2**40)@128);
assume
    (
        v43
        +
        ((v40 * 2**40) * 2**16)
    )
    =
    (v38 * (2**40))
    &&
    true;



(* _44 = _33 + _43; *)
uadd v44 v33 v43;
(* _45 = _34 - _38; *)
usub v45 v34 v38;
(* _46 = _45 >> 56; *)
usplit v46 tmp_to_use v45 56;
(* _47 = _44 + _46; *)
uadd v47 v44 v46;
(* _48 = (long unsigned int) _45; *)
cast v48@uint64 v45@uint128;
(* _49 = _48 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v49 v48 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v49 = tmp_to_use_p;
assume v49 = tmp_to_use  && true;


(* *out_4(D) = _49; *)
mov out4_0 v49;
(* _50 = _47 >> 56; *)
usplit v50 tmp_to_use v47 56;
(* _51 = _41 + _50; *)
uadd v51 v41 v50;
(* _52 = (long unsigned int) _47; *)
cast v52@uint64 v47@uint128;
(* _53 = _52 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v53 v52 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v53 = tmp_to_use_p;
assume v53 = tmp_to_use  && true;

(* MEM[(limb * )out_4(D) + 8B] = _53; *)
mov out4_8 v53;
(* _54 = _51 >> 56; *)
usplit v54 tmp_to_use v51 56;
(* _55 = _39 + _54; *)
uadd v55 v39 v54;
(* _56 = (long unsigned int) _51; *)
cast v56@uint64 v51@uint128;
(* _57 = _56 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v57 v56 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v57 = tmp_to_use_p;
assume v57 = tmp_to_use  && true;

(* MEM[(limb * )out_4(D) + 16B] = _57; *)
mov out4_16 v57;
(* _58 = (long unsigned int) _55; *)
vpc v58@uint64 v55@uint128;
(* MEM[(limb * )out_4(D) + 24B] = _58; *)
mov out4_24 v58;
(* return; *)


(* Start with unused lhs *)
mov c0 out4_0@uint64;
mov c1 out4_8@uint64;
mov c2 out4_16@uint64;
mov c3 out4_24@uint64;
(* End with unsed lhs *)


{
  (
      limbs 56 [c0, c1, c2, c3]
  )
  =
  (
      sq
      (limbs 56 [a0, a1, a2, a3])
  )
  (mod (2**224 - 2**96 + 1))
  &&
  and 
  [
      c0 <u (2**56)@64,
      c1 <u (2**56)@64,
      c2 <u (2**56)@64,
      c3 <u ((2**56)@64 + (2**16)@64)
  ]
}

(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_mul_reduce_tuned.cl
Verification result:                    [OK]            3.207539 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_mul_reduce_tuned.cl"
        User time (seconds): 14.43
        System time (seconds): 3.06
        Percent of CPU this job got: 531%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:03.28
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 322540
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 1430300
        Voluntary context switches: 2288
        Involuntary context switches: 1669
        Swaps: 0
        File system inputs: 0
        File system outputs: 1680
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_mul_reduce_tuned.cl
Verification result:			[OK]		13.055317 seconds
       13.18 real        31.06 user         5.46 sys
 321814528  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   1534471  page reclaims
         3  page faults
         0  swaps
         0  block input operations
        56  block output operations
         0  messages sent
         0  messages received
       633  signals received
      1112  voluntary context switches
     49350  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) = 
{
  true
  &&
  and [
    a0 <u (2**60)@64,
    a1 <u (2**60)@64,
    a2 <u (2**60)@64,
    a3 <u (2**60)@64,
    b0 <u (2**59)@64,
    b1 <u (2**59)@64,
    b2 <u (2**59)@64,
    b3 <u (2**59)@64
  ]
}

(* Start with undefined rhs *)
mov in12_0@uint64 a0;
mov in12_8@uint64 a1;
mov in12_16@uint64 a2;
mov in12_24@uint64 a3;
mov in23_0@uint64 b0;
mov in23_8@uint64 b1;
mov in23_16@uint64 b2;
mov in23_24@uint64 b3;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _60 = *in1_2(D); *)
mov v60 in12_0;
(* _62 = *in2_3(D); *)
mov v62 in23_0;
(* _64 = _60 w* _62; *)
umulj v64 v60 v62;
(* _65 = MEM[(const limb * )in2_3(D) + 8B]; *)
mov v65 in23_8;
(* _67 = _60 w* _65; *)
umulj v67 v60 v65;
(* _68 = MEM[(const limb * )in1_2(D) + 8B]; *)
mov v68 in12_8;
(* _70 = _62 w* _68; *)
umulj v70 v62 v68;
(* _71 = _67 + _70; *)
uadd v71 v67 v70;
(* _72 = MEM[(const limb * )in2_3(D) + 16B]; *)
mov v72 in23_16;
(* _74 = _60 w* _72; *)
umulj v74 v60 v72;
(* _75 = _65 w* _68; *)
umulj v75 v65 v68;
(* _76 = _74 + _75; *)
uadd v76 v74 v75;
(* _77 = MEM[(const limb * )in1_2(D) + 16B]; *)
mov v77 in12_16;
(* _79 = _62 w* _77; *)
umulj v79 v62 v77;
(* _12 = _76 + 0x7fffffffffffff800000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
uadd v12 v76 value;
(* _81 = MEM[(const limb * )in2_3(D) + 24B]; *)
mov v81 in23_24;
(* _83 = _60 w* _81; *)
umulj v83 v60 v81;
(* _84 = _68 w* _72; *)
umulj v84 v68 v72;
(* _106 = _83 + _84; *)
uadd v106 v83 v84;
(* _86 = MEM[(const limb * )in1_2(D) + 24B]; *)
mov v86 in12_24;
(* _88 = _62 w* _86; *)
umulj v88 v62 v86;
(* _89 = _65 w* _77; *)
umulj v89 v65 v77;
(* _107 = _88 + _106; *)
uadd v107 v88 v106;
(* _91 = _89 + _107; *)
uadd v91 v89 v107;
(* _92 = _68 w* _81; *)
umulj v92 v68 v81;
(* _93 = _72 w* _77; *)
umulj v93 v72 v77;
(* _94 = _92 + _93; *)
uadd v94 v92 v93;
(* _95 = _65 w* _86; *)
umulj v95 v65 v86;
(* _96 = _94 + _95; *)
uadd v96 v94 v95;
(* _97 = _77 w* _81; *)
umulj v97 v77 v81;
(* _98 = _72 w* _86; *)
umulj v98 v72 v86;
(* _99 = _97 + _98; *)
uadd v99 v97 v98;
(* _100 = _81 w* _86; *)
umulj v100 v81 v86;
(* _9 = _64 + 0x80000000000000000000000000008000; *)
mov value_lo 0x8000@uint64;
mov value_hi 0x8000000000000000@uint64;
join value value_hi value_lo;
uadd v9 v64 value;
(* _11 = _71 + 0x7fffffffffffff7fff80000000000000; *)
mov value_lo 0xff80000000000000@uint64;
mov value_hi 0x7fffffffffffff7f@uint64;
join value value_hi value_lo;
uadd v11 v71 value;
(* _13 = _12 + _79; *)
uadd v13 v12 v79;
(* _17 = _100 >> 16; *)
usplit v17 tmp_to_use v100 16;
(* _18 = _17 + _96; *)
uadd v18 v17 v96;
(* _19 = _100 << 40; *)
usplit tmp1 tmp2 v100 88;
shl v19 tmp2 40;
(* false *)
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _20 = _19 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v20 v19 value;

assert true && v20 = tmp_to_use * (2**40)@128;
assume v20 = tmp_to_use * (2**40) && true;

(* _21 = _20 + _91; *)
uadd v21 v20 v91;
(* _22 = _13 - _100; *)
usub v22 v13 v100;
(* _24 = _99 >> 16; *)
usplit v24 tmp_to_use v99 16;
(* _25 = _21 + _24; *)
uadd v25 v21 v24;
(* _26 = _99 << 40; *)
usplit tmp1 tmp2 v99 88;
shl v26 tmp2 40;
(* false *)
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _27 = _26 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v27 v26 value;

assert true && v27 = tmp_to_use * (2**40)@128;
assume v27 = tmp_to_use * (2**40) && true;

(* _28 = _22 + _27; *)
uadd v28 v22 v27;
(* _29 = _11 - _99; *)
usub v29 v11 v99;
(* _30 = _18 >> 16; *)
usplit v30 tmp_to_use v18 16;
(* _31 = _28 + _30; *)
uadd v31 v28 v30;
(* _32 = _18 << 40; *)
usplit tmp1 tmp2 v18 88;
shl v32 tmp2 40;
(* false *)
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _33 = _32 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v33 v32 value;

assert true && v33 = tmp_to_use * (2**40)@128;
assume v33 = tmp_to_use * (2**40) && true;

(* _34 = _29 + _33; *)
uadd v34 v29 v33;
(* _35 = _9 - _18; *)
usub v35 v9 v18;
(* _36 = _31 >> 56; *)
usplit v36 tmp_to_use v31 56;
(* _37 = _25 + _36; *)
uadd v37 v25 v36;
(* _38 = _31 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v38 v31 value;

assert true && v38 = tmp_to_use;
assume v38 = tmp_to_use && true;

(* _39 = _37 >> 56; *)
usplit v39 tmp_to_use v37 56;
(* _40 = _37 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v40 v37 value;

assert true && v40 = tmp_to_use;
assume v40 = tmp_to_use && true;

(* _41 = _37 >> 72; *)
usplit v41 tmp_to_use v37 72;
(* _42 = _38 + _41; *)
uadd v42 v38 v41;
(* _43 = _39 << 40; *)
usplit tmp1 tmp2 v39 88;
shl v43 tmp2 40;
(* false *)
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _44 = _43 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v44 v43 value;

assert 
    true 
    &&
    (
        v44 
        +
        ((v41 * (2**40)@128) * (2**16)@128)
    )
    =
    (v39 * (2**40)@128);
assume
    (
        v44 
        +
        ((v41 * 2**40) * 2**16)
    )
    =
    (v39 * (2**40))
    &&
    true;


(* _45 = _34 + _44; *)
uadd v45 v34 v44;
(* _46 = _35 - _39; *)
usub v46 v35 v39;
(* _47 = _46 >> 56; *)
usplit v47 tmp_to_use v46 56;
(* _48 = _45 + _47; *)
uadd v48 v45 v47;
(* _49 = (long unsigned int) _46; *)
cast v49@uint64 v46@uint128;
(* _50 = _49 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v50 v49 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v50 = tmp_to_use_p;
assume v50 = tmp_to_use && true;

(* *out_5(D) = _50; *)
mov out5_0 v50;
(* _51 = _48 >> 56; *)
usplit v51 tmp_to_use v48 56;
(* _52 = _42 + _51; *)
uadd v52 v42 v51;
(* _53 = (long unsigned int) _48; *)
cast v53@uint64 v48@uint128;
(* _54 = _53 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v54 v53 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v54 = tmp_to_use_p;
assume v54 = tmp_to_use && true;

(* MEM[(limb * )out_5(D) + 8B] = _54; *)
mov out5_8 v54;
(* _55 = _52 >> 56; *)
usplit v55 tmp_to_use v52 56;
(* _56 = _40 + _55; *)
uadd v56 v40 v55;
(* _57 = (long unsigned int) _52; *)
cast v57@uint64 v52@uint128;
(* _58 = _57 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v58 v57 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v58 = tmp_to_use_p;
assume v58 = tmp_to_use && true;

(* MEM[(limb * )out_5(D) + 16B] = _58; *)
mov out5_16 v58;
(* _59 = (long unsigned int) _56; *)
vpc v59@uint64 v56@uint128;
(* MEM[(limb * )out_5(D) + 24B] = _59; *)
mov out5_24 v59;
(* return; *)


(* Start with unused lhs *)
mov c0 out5_0@uint64;
mov c1 out5_8@uint64;
mov c2 out5_16@uint64;
mov c3 out5_24@uint64;
(* End with unsed lhs *)


{
  (
      limbs 56 [c0, c1, c2, c3]
  )
  =
  (
      (limbs 56 [a0, a1, a2, a3])
      *
      (limbs 56 [b0, b1, b2, b3])
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

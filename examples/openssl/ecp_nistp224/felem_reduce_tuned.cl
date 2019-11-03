(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_reduce_tuned.cl
Verification result:                    [OK]            0.815194 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing felem_reduce_tuned.cl"
        User time (seconds): 1.14
        System time (seconds): 0.60
        Percent of CPU this job got: 196%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.89
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 17376
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 155903
        Voluntary context switches: 1918
        Involuntary context switches: 218
        Swaps: 0
        File system inputs: 0
        File system outputs: 1248
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./felem_reduce_tuned.cl
Verification result:			[OK]		1.861760 seconds
        1.96 real         1.23 user         1.49 sys
  13774848  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    396560  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        11  block output operations
         0  messages sent
         0  messages received
       525  signals received
       897  voluntary context switches
      5822  involuntary context switches
*)
proc main (uint128 a0, uint128 a1, uint128 a2, uint128 a3, uint128 a4, uint128 a5, uint128 a6) = 
{
  true
  &&
  and [
    a0 <u (2**126)@128,
    a1 <u (2**126)@128,
    a2 <u (2**126)@128,
    a3 <u (2**126)@128,
    a4 <u (2**126)@128,
    a5 <u (2**126)@128,
    a6 <u (2**126)@128
  ]
}


(* Start with undefined rhs *)
mov in54_0@uint128 a0;
mov in54_16@uint128 a1;
mov in54_32@uint128 a2;
mov in54_48@uint128 a3;
mov in54_64@uint128 a4;
mov in54_80@uint128 a5;
mov in54_96@uint128 a6;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_54(D); *)
mov v1 in54_0;
(* _2 = _1 + 0x80000000000000000000000000008000; *)
mov value_lo 0x8000@uint64;
mov value_hi 0x8000000000000000@uint64;
join value value_hi value_lo;
uadd v2 v1 value;
(* _3 = MEM[(const widelimb * )in_54(D) + 16B]; *)
mov v3 in54_16;
(* _4 = _3 + 0x7fffffffffffff7fff80000000000000; *)
mov value_lo 0xff80000000000000@uint64;
mov value_hi 0x7fffffffffffff7f@uint64;
join value value_hi value_lo;
uadd v4 v3 value;
(* _5 = MEM[(const widelimb * )in_54(D) + 32B]; *)
mov v5 in54_32;
(* _6 = _5 + 0x7fffffffffffff800000000000000000; *)
mov value_lo 0x0@uint64;
mov value_hi 0x7fffffffffffff80@uint64;
join value value_hi value_lo;
uadd v6 v5 value;
(* _7 = MEM[(const widelimb * )in_54(D) + 48B]; *)
mov v7 in54_48;
(* _8 = MEM[(const widelimb * )in_54(D) + 64B]; *)
mov v8 in54_64;
(* _9 = MEM[(const widelimb * )in_54(D) + 96B]; *)
mov v9 in54_96;
(* _10 = _9 >> 16; *)
usplit v10 tmp_to_use v9 16;
(* _11 = _8 + _10; *)
uadd v11 v8 v10;
(* _12 = _9 << 40; *)
usplit tmp1 tmp2 v9 88;
shl v12 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _13 = _12 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v13 v12 value;

assert true && v13 = tmp_to_use * (2**40)@128;
assume v13 = tmp_to_use * (2**40) && true;

(* _15 = _6 - _9; *)
usub v15 v6 v9;
(* _16 = MEM[(const widelimb * )in_54(D) + 80B]; *)
mov v16 in54_80;
(* _17 = _16 >> 16; *)
usplit v17 tmp_to_use v16 16;
(* _64 = _7 + _17; *)
uadd v64 v7 v17;
(* _18 = _13 + _64; *)
uadd v18 v13 v64;
(* _19 = _16 << 40; *)
usplit tmp1 tmp2 v16 88;
shl v19 tmp2 40;
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

(* _21 = _15 + _20; *)
uadd v21 v15 v20;
(* _22 = _4 - _16; *)
usub v22 v4 v16;
(* _23 = _11 >> 16; *)
usplit v23 tmp_to_use v11 16;
(* _24 = _21 + _23; *)
uadd v24 v21 v23;
(* _25 = _11 << 40; *)
usplit tmp1 tmp2 v11 88;
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

(* _27 = _22 + _26; *)
uadd v27 v22 v26;
(* _28 = _2 - _11; *)
usub v28 v2 v11;
(* _29 = _24 >> 56; *)
usplit v29 tmp_to_use v24 56;
(* _30 = _18 + _29; *)
uadd v30 v18 v29;
(* _31 = _24 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v31 v24 value;

assert true && v31 = tmp_to_use ;
assume v31 = tmp_to_use &&  true ;

(* _32 = _30 >> 56; *)
usplit v32 tmp_to_use v30 56;
(* _33 = _30 & 72057594037927935; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: low part 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v33 v30 value;

assert true && v33 = tmp_to_use ;
assume v33 = tmp_to_use && true;

(* _34 = _30 >> 72; *)
usplit v34 tmp_to_use v30 72;
(* _35 = _31 + _34; *)
uadd v35 v31 v34;
(* _36 = _32 << 40; *)
usplit tmp1 tmp2 v32 88;
shl v36 tmp2 40;
(* TODO: check tmp1 heuristic *)
(* assert true && tmp1 = 0@128; *)
(* assume tmp1 = 0 && true; *)
(* _37 = _36 & 72056494526300160; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0xffff0000000000 *)
(* Note: low part 0xffff0000000000@uint64 = 0b00000011111111111111110000000000000000000000000000000000000000 *)
mov value_lo 0xffff0000000000@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v37 v36 value;

(* NOTE: the following assertion is required for verifying algebraic specification *)

assert 
    true 
    &&
    (
        v37 
        +
        ((v34 * (2**40)@128) * (2**16)@128)
    )
    =
    (v32 * (2**40)@128);
assume
    (
        v37 
        +
        ((v34 * 2**40) * 2**16)
    )
    =
    (v32 * (2**40))
    &&
    true;


(* _38 = _27 + _37; *)
uadd v38 v27 v37;
(* _39 = _28 - _32; *)
usub v39 v28 v32;
(* _40 = _39 >> 56; *)
usplit v40 tmp_to_use v39 56;
(* _41 = _38 + _40; *)
uadd v41 v38 v40;
(* _42 = (long unsigned int) _39; *)
cast v42@uint64 v39@uint128;
(* _43 = _42 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v43 v42 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v43 = tmp_to_use_p ;
assume v43 = tmp_to_use && true;

(* *out_55(D) = _43; *)
mov out55_0 v43;
(* _44 = _41 >> 56; *)
usplit v44 tmp_to_use v41 56;
(* _45 = _35 + _44; *)
uadd v45 v35 v44;
(* _46 = (long unsigned int) _41; *)
cast v46@uint64 v41@uint128;
(* _47 = _46 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v47 v46 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v47 = tmp_to_use_p ;
assume v47 = tmp_to_use && true;

(* MEM[(limb * )out_55(D) + 8B] = _47; *)
mov out55_8 v47;
(* _48 = _45 >> 56; *)
usplit v48 tmp_to_use v45 56;
(* _49 = _33 + _48; *)
uadd v49 v33 v48;
(* _50 = (long unsigned int) _45; *)
cast v50@uint64 v45@uint128;
(* _51 = _50 & 72057594037927935; *)
(* Note: 0xffffffffffffff@uint64 = 0xffffffffffffff *)
(* Note: 0xffffffffffffff@uint64 = 0b00000011111111111111111111111111111111111111111111111111111111 *)
and uint64 v51 v50 0xffffffffffffff@uint64;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && v51 = tmp_to_use_p;
assume v51 = tmp_to_use && true;

(* MEM[(limb * )out_55(D) + 16B] = _51; *)
mov out55_16 v51;
(* _52 = (long unsigned int) _49; *)
vpc v52@uint64 v49@uint128;
(* MEM[(limb * )out_55(D) + 24B] = _52; *)
mov out55_24 v52;
(* return; *)


(* Start with unused lhs *)
mov c0 out55_0@uint64;
mov c1 out55_8@uint64;
mov c2 out55_16@uint64;
mov c3 out55_24@uint64;
(* End with unsed lhs *)


{
  (limbs 56 [c0, c1 , c2, c3])
  =
  (limbs 56 [a0, a1, a2, a3, a4, a5, a6])
  (mod (2**224 - 2**96 + 1))
  &&
 and 
  [
      c0 <u (2**56)@64,
      c1 <u (2**56)@64,
      c2 <u (2**56)@64,
      c3 <u (2**56 + 2**16)@64
  ]
}

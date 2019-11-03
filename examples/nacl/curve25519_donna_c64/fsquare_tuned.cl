(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fsquare_tuned.cl
Verification result:                    [OK]            2.549283 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fsquare_tuned.cl"
        User time (seconds): 9.04
        System time (seconds): 2.17
        Percent of CPU this job got: 427%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:02.62
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 301020
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 965379
        Voluntary context switches: 1987
        Involuntary context switches: 1085
        Swaps: 0
        File system inputs: 0
        File system outputs: 1272
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fsquare_tuned.cl
Verification result:			[OK]		8.523660 seconds
        8.64 real        19.24 user         3.88 sys
 284897280  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
   1084322  page reclaims
         1  page faults
         0  swaps
         0  block input operations
        36  block output operations
         0  messages sent
         0  messages received
       544  signals received
       964  voluntary context switches
     24081  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) = 
{
  true
  &&
  and [
    a0 <u (2**53)@64,
    a1 <u (2**53)@64,
    a2 <u (2**53)@64,
    a3 <u (2**53)@64,
    a4 <u (2**53)@64
  ]
}



(* Start with undefined rhs *)
mov in70_0@uint64 a0;
mov in70_8@uint64 a1;
mov in70_16@uint64 a2;
mov in70_24@uint64 a3;
mov in70_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_70(D); *)
mov v1 in70_0;
(* _3 = _1 w* _1; *)
umulj v3 v1 v1;
(* _4 = MEM[(const felem * )in_70(D) + 8B]; *)
mov v4 in70_8;
(* _6 = _1 w* _4; *)
umulj v6 v1 v4;
(* _7 = _6 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v7 v6 value;
(* _8 = MEM[(const felem * )in_70(D) + 16B]; *)
mov v8 in70_16;
(* _10 = _1 w* _8; *)
umulj v10 v1 v8;
(* _11 = _10 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v11 v10 value;
(* _12 = _4 w* _4; *)
umulj v12 v4 v4;
(* _14 = MEM[(const felem * )in_70(D) + 24B]; *)
mov v14 in70_24;
(* _16 = _1 w* _14; *)
umulj v16 v1 v14;
(* _17 = _4 w* _8; *)
umulj v17 v4 v8;
(* _18 = _16 + _17; *)
uadd v18 v16 v17;
(* _19 = _18 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v19 v18 value;
(* _20 = MEM[(const felem * )in_70(D) + 32B]; *)
mov v20 in70_32;
(* _22 = _1 w* _20; *)
umulj v22 v1 v20;
(* _23 = _4 w* _14; *)
umulj v23 v4 v14;
(* _24 = _22 + _23; *)
uadd v24 v22 v23;
(* _25 = _24 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v25 v24 value;
(* _26 = _8 w* _8; *)
umulj v26 v8 v8;
(* _27 = _25 + _26; *)
uadd v27 v25 v26;
(* _28 = _4 w* _20; *)
umulj v28 v4 v20;
(* _29 = _8 w* _14; *)
umulj v29 v8 v14;
(* _30 = _28 + _29; *)
uadd v30 v28 v29;
(* _31 = _8 w* _20; *)
umulj v31 v8 v20;
(* _32 = _31 * 2; *)
mov value_lo 0x2@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v32 v31 value;
(* _33 = _14 w* _14; *)
umulj v33 v14 v14;
(* _34 = _32 + _33; *)
uadd v34 v32 v33;
(* _35 = _14 w* _20; *)
umulj v35 v14 v20;
(* _36 = _20 w* _20; *)
umulj v36 v20 v20;
(* _37 = _30 * 38; *)
mov value_lo 0x26@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v37 v30 value;
(* _38 = _3 + _37; *)
uadd v38 v3 v37;
(* _39 = _34 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v39 v34 value;
(* _40 = _7 + _39; *)
uadd v40 v7 v39;
(* _41 = _35 * 38; *)
mov value_lo 0x26@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v41 v35 value;
(* _78 = _11 + _41; *)
uadd v78 v11 v41;
(* _42 = _12 + _78; *)
uadd v42 v12 v78;
(* _43 = _36 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v43 v36 value;
(* _44 = _19 + _43; *)
uadd v44 v19 v43;
(* _45 = _38 >> 51; *)
usplit v45 tmp_to_use v38 51;
(* _46 = _40 + _45; *)
uadd v46 v40 v45;
(* _47 = _38 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v47 v38 value;

assert true && v47 = tmp_to_use;
assume v47 = tmp_to_use && true;

(* _48 = _46 >> 51; *)
usplit v48 tmp_to_use v46 51;
(* _49 = _42 + _48; *)
uadd v49 v42 v48;
(* _50 = _46 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v50 v46 value;

assert true && v50 = tmp_to_use;
assume v50 = tmp_to_use && true;

(* _51 = _49 >> 51; *)
usplit v51 tmp_to_use v49 51;
(* _52 = _44 + _51; *)
uadd v52 v44 v51;
(* _53 = _49 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v53 v49 value;

assert true && v53 = tmp_to_use;
assume v53 = tmp_to_use && true;

(* _54 = _52 >> 51; *)
usplit v54 tmp_to_use v52 51;
(* _55 = _27 + _54; *)
uadd v55 v27 v54;
(* _56 = _52 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v56 v52 value;

assert true && v56 = tmp_to_use;
assume v56 = tmp_to_use && true;

(* _57 = _55 >> 51; *)
usplit v57 tmp_to_use v55 51;
(* _58 = _57 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v58 v57 value;
(* _59 = _47 + _58; *)
uadd v59 v47 v58;
(* _60 = _55 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v60 v55 value;

assert true && v60 = tmp_to_use;
assume v60 = tmp_to_use && true;

(* _61 = _59 >> 51; *)
usplit v61 tmp_to_use v59 51;
(* _62 = _50 + _61; *)
uadd v62 v50 v61;
(* _63 = _59 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v63 v59 value;

assert true && v63 = tmp_to_use;
assume v63 = tmp_to_use && true;

(* _64 = (long unsigned int) _63; *)
(* ========== cast -> vpc ========== *)
vpc v64@uint64 v63@uint128;
(* *output_71(D) = _64; *)
mov output71_0 v64;
(* _65 = (long unsigned int) _62; *)
(* ========== cast -> vpc ========== *)
vpc v65@uint64 v62@uint128;
(* MEM[(felem * )output_71(D) + 8B] = _65; *)
mov output71_8 v65;
(* _66 = (long unsigned int) _53; *)
(* ========== cast -> vpc ========== *)
vpc v66@uint64 v53@uint128;
(* MEM[(felem * )output_71(D) + 16B] = _66; *)
mov output71_16 v66;
(* _67 = (long unsigned int) _56; *)
(* ========== cast -> vpc ========== *)
vpc v67@uint64 v56@uint128;
(* MEM[(felem * )output_71(D) + 24B] = _67; *)
mov output71_24 v67;
(* _68 = (long unsigned int) _60; *)
(* ========== cast -> vpc ========== *)
vpc v68@uint64 v60@uint128;
(* MEM[(felem * )output_71(D) + 32B] = _68; *)
mov output71_32 v68;
(* return; *)


(* Start with unused lhs *)
mov c0 output71_0@uint64;
mov c1 output71_8@uint64;
mov c2 output71_16@uint64;
mov c3 output71_24@uint64;
mov c4 output71_32@uint64;
(* End with unsed lhs *)



{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      sq
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**51)@64,
        c1 <u (2**51 + 2**15)@64,
        c2 <u (2**51)@64,
        c3 <u (2**51)@64,
        c4 <u (2**51)@64
    ]
}
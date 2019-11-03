(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing -v -disable_safety -disable_range ./fmonty_tuned.cl
Parsing Cryptoline file:                [OK]            0.012116 seconds
Checking well-formedness:               [OK]            0.002491 seconds
Transforming to SSA form:               [OK]            0.001338 seconds
Rewriting assignments:                  [OK]            0.025278 seconds
Rewriting value-preserved casting:      [OK]            0.003844 seconds
Verifying algebraic assertions:         [OK]            0.030871 seconds
Verifying algebraic specification:      [OK]            448.148295 seconds
Verification result:                    [OK]            448.225462 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing -v -disable_safety -disable_range ./fmonty_tuned.cl"
        User time (seconds): 424.44
        System time (seconds): 25.83
        Percent of CPU this job got: 100%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 7:28.30
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 32907444
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 16065696
        Voluntary context switches: 5700
        Involuntary context switches: 37727
        Swaps: 0
        File system inputs: 0
        File system outputs: 43024
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)


proc fsum (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) = 
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64,
    b0 <u (2**51+2**15)@64,
    b1 <u (2**51+2**15)@64,
    b2 <u (2**51+2**15)@64,
    b3 <u (2**51+2**15)@64,
    b4 <u (2**51+2**15)@64
  ]
}


(* Start with undefined rhs *)
mov in12_0@uint64 b0;
mov in12_8@uint64 b1;
mov in12_16@uint64 b2;
mov in12_24@uint64 b3;
mov in12_32@uint64 b4;
mov output11_0@uint64 a0;
mov output11_8@uint64 a1;
mov output11_16@uint64 a2;
mov output11_24@uint64 a3;
mov output11_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _8 = *output_11(D); *)
mov v8 output11_0;
(* _23 = *in_12(D); *)
mov v23 in12_0;
(* _24 = _8 + _23; *)
uadd v24 v8 v23;
(* *output_11(D) = _24; *)
mov output11_0 v24;
(* _36 = MEM[(felem * )output_11(D) + 8B]; *)
mov v36 output11_8;
(* _38 = MEM[(const felem * )in_12(D) + 8B]; *)
mov v38 in12_8;
(* _39 = _36 + _38; *)
uadd v39 v36 v38;
(* MEM[(felem * )output_11(D) + 8B] = _39; *)
mov output11_8 v39;
(* _49 = MEM[(felem * )output_11(D) + 16B]; *)
mov v49 output11_16;
(* _51 = MEM[(const felem * )in_12(D) + 16B]; *)
mov v51 in12_16;
(* _52 = _49 + _51; *)
uadd v52 v49 v51;
(* MEM[(felem * )output_11(D) + 16B] = _52; *)
mov output11_16 v52;
(* _62 = MEM[(felem * )output_11(D) + 24B]; *)
mov v62 output11_24;
(* _64 = MEM[(const felem * )in_12(D) + 24B]; *)
mov v64 in12_24;
(* _65 = _62 + _64; *)
uadd v65 v62 v64;
(* MEM[(felem * )output_11(D) + 24B] = _65; *)
mov output11_24 v65;
(* _4 = MEM[(felem * )output_11(D) + 32B]; *)
mov v4 output11_32;
(* _6 = MEM[(const felem * )in_12(D) + 32B]; *)
mov v6 in12_32;
(* _7 = _4 + _6; *)
uadd v7 v4 v6;
(* MEM[(felem * )output_11(D) + 32B] = _7; *)
mov output11_32 v7;
(* return; *)


(* Start with unused lhs *)
mov c0 output11_0@uint64;
mov c1 output11_8@uint64;
mov c2 output11_16@uint64;
mov c3 output11_24@uint64;
mov c4 output11_32@uint64;
(* End with unsed lhs *)


{
   (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      +
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
   and [
    c0 <u (2**53)@64,
    c1 <u (2**53)@64,
    c2 <u (2**53)@64,
    c3 <u (2**53)@64,
    c4 <u (2**53)@64
  ]
}

proc fdifference_backwards (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) = 
{
  true
  &&
  and [
    a0 <u (2**51+2**15)@64,
    a1 <u (2**51+2**15)@64,
    a2 <u (2**51+2**15)@64,
    a3 <u (2**51+2**15)@64,
    a4 <u (2**51+2**15)@64,
    b0 <u (2**51+2**15)@64,
    b1 <u (2**51+2**15)@64,
    b2 <u (2**51+2**15)@64,
    b3 <u (2**51+2**15)@64,
    b4 <u (2**51+2**15)@64
  ]
}

(* Start with undefined rhs *)
vpc iin52_0@int64 a0;
vpc iin52_8@int64 a1;
vpc iin52_16@int64 a2;
vpc iin52_24@int64 a3;
vpc iin52_32@int64 a4;
vpc ioutput53_0@int64 b0;
vpc ioutput53_8@int64 b1;
vpc ioutput53_16@int64 b2;
vpc ioutput53_24@int64 b3;
vpc ioutput53_32@int64 b4;
(* End with undefined rhs *)




(* BB's index is 2 *)

(* _1 = MEM[(const int64_t * )iin_52(D)]; *)
mov v1 iin52_0;
(* _2 = MEM[(int64_t * )ioutput_53(D)]; *)
mov v2 ioutput53_0;
(* _3 = _1 - _2; *)
ssub v3 v1 v2;
(* MEM[(int64_t * )ioutput_53(D)] = _3; *)
mov ioutput53_0 v3;
(* _4 = MEM[(const int64_t * )iin_52(D) + 8B]; *)
mov v4 iin52_8;
(* _5 = MEM[(int64_t * )ioutput_53(D) + 8B]; *)
mov v5 ioutput53_8;
(* _6 = _4 - _5; *)
ssub v6 v4 v5;
(* MEM[(int64_t * )ioutput_53(D) + 8B] = _6; *)
mov ioutput53_8 v6;
(* _7 = MEM[(const int64_t * )iin_52(D) + 16B]; *)
mov v7 iin52_16;
(* _8 = MEM[(int64_t * )ioutput_53(D) + 16B]; *)
mov v8 ioutput53_16;
(* _9 = _7 - _8; *)
ssub v9 v7 v8;
(* MEM[(int64_t * )ioutput_53(D) + 16B] = _9; *)
mov ioutput53_16 v9;
(* _10 = MEM[(const int64_t * )iin_52(D) + 24B]; *)
mov v10 iin52_24;
(* _11 = MEM[(int64_t * )ioutput_53(D) + 24B]; *)
mov v11 ioutput53_24;
(* _12 = _10 - _11; *)
ssub v12 v10 v11;
(* MEM[(int64_t * )ioutput_53(D) + 24B] = _12; *)
mov ioutput53_24 v12;
(* _13 = MEM[(const int64_t * )iin_52(D) + 32B]; *)
mov v13 iin52_32;
(* _14 = MEM[(int64_t * )ioutput_53(D) + 32B]; *)
mov v14 ioutput53_32;
(* _15 = _13 - _14; *)
ssub v15 v13 v14;
(* t_59 = _3 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t59 tmp_to_use v3 63; *)
split signbit_v3 discard v3 63;
cast signbit_v3@uint1 signbit_v3;
(* t59 combine with others *)
(* _16 = t_59 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v16 t59 0x8000000000000@int64; *)
cmove v16 signbit_v3 (2**51)@int64 (0)@int64;
(* _17 = _3 + _16; *)
sadd v17 v3 v16;
(* _18 = t_59 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v18 t59 0x1@int64; *)
cmove v18 signbit_v3 (1)@int64 (0)@int64;
(* _19 = _6 - _18; *)
ssub v19 v6 v18;
(* t_60 = _19 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t60 tmp_to_use v19 63; *)
split signbit_v19 discard v19 63;
cast signbit_v19@uint1 signbit_v19;
(* t60 combine with others *)
(* _20 = t_60 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v20 t60 0x8000000000000@int64; *)
cmove v20 signbit_v19 (2**51)@int64 (0)@int64;
(* _21 = _19 + _20; *)
sadd v21 v19 v20;
(* _22 = t_60 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v22 t60 0x1@int64; *)
cmove v22 signbit_v19 (1)@int64 (0)@int64;
(* _23 = _9 - _22; *)
ssub v23 v9 v22;
(* t_61 = _23 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t61 tmp_to_use v23 63; *)
split signbit_v23 discard v23 63;
cast signbit_v23@uint1 signbit_v23;
(* t61 combine with others *)
(* _24 = t_61 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v24 t61 0x8000000000000@int64; *)
cmove v24 signbit_v23 (2**51)@int64 (0)@int64;
(* _25 = _23 + _24; *)
sadd v25 v23 v24;
(* _26 = t_61 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v26 t61 0x1@int64; *)
cmove v26 signbit_v23 (1)@int64 (0)@int64;
(* _27 = _12 - _26; *)
ssub v27 v12 v26;
(* t_62 = _27 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t62 tmp_to_use v27 63; *)
split signbit_v27 discard v27 63;
cast signbit_v27@uint1 signbit_v27;

(* _28 = t_62 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v28 t62 0x8000000000000@int64; *)
cmove v28 signbit_v27 (2**51)@int64 (0)@int64;
(* _29 = _27 + _28; *)
sadd v29 v27 v28;
(* _30 = t_62 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v30 t62 0x1@int64; *)
cmove v30 signbit_v27 (1)@int64 (0)@int64;
(* _31 = _15 - _30; *)
ssub v31 v15 v30;
(* t_63 = _31 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t63 tmp_to_use v31 63; *)

split signbit_v31 discard v31 63;
cast signbit_v31@uint1 signbit_v31;

(* _32 = t_63 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v32 t63 0x8000000000000@int64; *)
cmove v32 signbit_v31 (2**51)@int64 (0)@int64;
(* _33 = _31 + _32; *)
sadd v33 v31 v32;
(* _34 = t_63 & 19; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x13@int64 = 0x00000000000013 *)
(* Note: 0x13@int64 = 0b00000000000000000000000000000000000000000000000000000000010011 *)
(* and int64 v34 t63 0x13@int64; *)
cmove v34 signbit_v31 (0x13)@int64 (0)@int64;
(* _35 = _17 - _34; *)
ssub v35 v17 v34;
(* t_64 = _35 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t64 tmp_to_use v35 63; *)

split signbit_v35 discard v35 63;
cast signbit_v35@uint1 signbit_v35;

(* _36 = t_64 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v36 t64 0x8000000000000@int64; *)
cmove v36 signbit_v35 (2**51)@int64 (0)@int64;
(* _37 = _35 + _36; *)
sadd v37 v35 v36;
(* MEM[(int64_t * )ioutput_53(D)] = _37; *)
mov ioutput53_0 v37;
(* _38 = t_64 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v38 t64 0x1@int64; *)
cmove v38 signbit_v35 (1)@int64 (0)@int64;
(* _39 = _21 - _38; *)
ssub v39 v21 v38;
(* t_66 = _39 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t66 tmp_to_use v39 63; *)

split signbit_v39 discard v39 63;
cast signbit_v39@uint1 signbit_v39;

(* _40 = t_66 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v40 t66 0x8000000000000@int64; *)
cmove v40 signbit_v39 (2**51)@int64 (0)@int64;
(* _41 = _39 + _40; *)
sadd v41 v39 v40;
(* MEM[(int64_t * )ioutput_53(D) + 8B] = _41; *)
mov ioutput53_8 v41;
(* _42 = t_66 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v42 t66 0x1@int64; *)
cmove v42 signbit_v39 (1)@int64 (0)@int64;
(* _43 = _25 - _42; *)
ssub v43 v25 v42;
(* t_68 = _43 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t68 tmp_to_use v43 63; *)

split signbit_v43 discard v43 63;
cast signbit_v43@uint1 signbit_v43;

(* _44 = t_68 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v44 t68 0x8000000000000@int64; *)
cmove v44 signbit_v43 (2**51)@int64 (0)@int64;
(* _45 = _43 + _44; *)
sadd v45 v43 v44;
(* MEM[(int64_t * )ioutput_53(D) + 16B] = _45; *)
mov ioutput53_16 v45;
(* _46 = t_68 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v46 t68 0x1@int64; *)
cmove v46 signbit_v43 (1)@int64 (0)@int64;
(* _47 = _29 - _46; *)
ssub v47 v29 v46;
(* t_70 = _47 >> 63; *)
(* TODO: signed operation, need check *)
(* ssplit t70 tmp_to_use v47 63; *)

split signbit_v47 discard v47 63;
cast signbit_v47@uint1 signbit_v47;

(* _48 = t_70 & 2251799813685248; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x8000000000000@int64 = 0x08000000000000 *)
(* Note: 0x8000000000000@int64 = 0b00000000001000000000000000000000000000000000000000000000000000 *)
(* and int64 v48 t70 0x8000000000000@int64;  *)
cmove v48 signbit_v47 (2**51)@int64 (0)@int64;
(* _49 = _47 + _48; *)
sadd v49 v47 v48;
(* MEM[(int64_t * )ioutput_53(D) + 24B] = _49; *)
mov ioutput53_24 v49;
(* _50 = t_70 & 1; *)
(* TODO: signed operation, need check semantics *)
(* Note: 0x1@int64 = 0x00000000000001 *)
(* Note: 0x1@int64 = 0b00000000000000000000000000000000000000000000000000000000000001 *)
(* and int64 v50 t70 0x1@int64; *)
cmove v50 signbit_v47 (1)@int64 (0)@int64;
(* _51 = _33 - _50; *)
ssub v51 v33 v50;
(* MEM[(int64_t * )ioutput_53(D) + 32B] = _51; *)
mov ioutput53_32 v51;
(* return; *)


(* Start with unused lhs *)
vpc c0@uint64 ioutput53_0@int64;
vpc c1@uint64 ioutput53_8@int64;
vpc c2@uint64 ioutput53_16@int64;
vpc c3@uint64 ioutput53_24@int64;
vpc c4@uint64 ioutput53_32@int64; (* failed safety check *)
(* End with unsed lhs *)


{
   (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      -
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
   true
}

proc fmul (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) = 
{
  true
  &&
  and [
    a0 <u (2**53)@64,
    a1 <u (2**53)@64,
    a2 <u (2**53)@64,
    a3 <u (2**53)@64,
    a4 <u (2**53)@64,
    b0 <u (2**53)@64,
    b1 <u (2**53)@64,
    b2 <u (2**53)@64,
    b3 <u (2**53)@64,
    b4 <u (2**53)@64
  ]
}

(* Start with undefined rhs *)
mov in299_0@uint64 a0;
mov in299_8@uint64 a1;
mov in299_16@uint64 a2;
mov in299_24@uint64 a3;
mov in299_32@uint64 a4;
mov in98_0@uint64 b0;
mov in98_8@uint64 b1;
mov in98_16@uint64 b2;
mov in98_24@uint64 b3;
mov in98_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _1 = *in_98(D); *)
mov v1 in98_0;
(* _3 = *in2_99(D); *)
mov v3 in299_0;
(* _5 = _1 w* _3; *)
umulj v5 v1 v3;
(* _6 = MEM[(const felem * )in2_99(D) + 8B]; *)
mov v6 in299_8;
(* _8 = _1 w* _6; *)
umulj v8 v1 v6;
(* _9 = MEM[(const felem * )in_98(D) + 8B]; *)
mov v9 in98_8;
(* _11 = _3 w* _9; *)
umulj v11 v3 v9;
(* _12 = _8 + _11; *)
uadd v12 v8 v11;
(* _13 = MEM[(const felem * )in2_99(D) + 16B]; *)
mov v13 in299_16;
(* _15 = _1 w* _13; *)
umulj v15 v1 v13;
(* _16 = MEM[(const felem * )in_98(D) + 16B]; *)
mov v16 in98_16;
(* _18 = _3 w* _16; *)
umulj v18 v3 v16;
(* _19 = _15 + _18; *)
uadd v19 v15 v18;
(* _20 = _6 w* _9; *)
umulj v20 v6 v9;
(* _21 = _19 + _20; *)
uadd v21 v19 v20;
(* _22 = MEM[(const felem * )in2_99(D) + 24B]; *)
mov v22 in299_24;
(* _24 = _1 w* _22; *)
umulj v24 v1 v22;
(* _25 = MEM[(const felem * )in_98(D) + 24B]; *)
mov v25 in98_24;
(* _27 = _3 w* _25; *)
umulj v27 v3 v25;
(* _110 = _24 + _27; *)
uadd v110 v24 v27;
(* _29 = _6 w* _16; *)
umulj v29 v6 v16;
(* _30 = _9 w* _13; *)
umulj v30 v9 v13;
(* _111 = _29 + _110; *)
uadd v111 v29 v110;
(* _32 = _30 + _111; *)
uadd v32 v30 v111;
(* _33 = MEM[(const felem * )in2_99(D) + 32B]; *)
mov v33 in299_32;
(* _35 = _1 w* _33; *)
umulj v35 v1 v33;
(* _36 = MEM[(const felem * )in_98(D) + 32B]; *)
mov v36 in98_32;
(* _38 = _3 w* _36; *)
umulj v38 v3 v36;
(* _107 = _35 + _38; *)
uadd v107 v35 v38;
(* _40 = _9 w* _22; *)
umulj v40 v9 v22;
(* _41 = _6 w* _25; *)
umulj v41 v6 v25;
(* _106 = _40 + _107; *)
uadd v106 v40 v107;
(* _43 = _41 + _106; *)
uadd v43 v41 v106;
(* _44 = _13 w* _16; *)
umulj v44 v13 v16;
(* _45 = _43 + _44; *)
uadd v45 v43 v44;
(* _46 = _6 w* _36; *)
umulj v46 v6 v36;
(* _47 = _9 w* _33; *)
umulj v47 v9 v33;
(* _114 = _46 + _47; *)
uadd v114 v46 v47;
(* _49 = _13 w* _25; *)
umulj v49 v13 v25;
(* _50 = _16 w* _22; *)
umulj v50 v16 v22;
(* _115 = _49 + _114; *)
uadd v115 v49 v114;
(* _52 = _50 + _115; *)
uadd v52 v50 v115;
(* _53 = _13 w* _36; *)
umulj v53 v13 v36;
(* _54 = _16 w* _33; *)
umulj v54 v16 v33;
(* _55 = _53 + _54; *)
uadd v55 v53 v54;
(* _56 = _22 w* _25; *)
umulj v56 v22 v25;
(* _57 = _55 + _56; *)
uadd v57 v55 v56;
(* _58 = _25 w* _33; *)
umulj v58 v25 v33;
(* _59 = _22 w* _36; *)
umulj v59 v22 v36;
(* _60 = _58 + _59; *)
uadd v60 v58 v59;
(* _62 = _52 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v62 v52 value;
(* _63 = _5 + _62; *)
uadd v63 v5 v62;
(* _64 = _57 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v64 v57 value;
(* _65 = _12 + _64; *)
uadd v65 v12 v64;
(* _66 = _60 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v66 v60 value;
(* _67 = _21 + _66; *)
uadd v67 v21 v66;
(* _39 = _33 w* _36; *)
umulj v39 v33 v36;
(* _68 = _39 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v68 v39 value;
(* _69 = _32 + _68; *)
uadd v69 v32 v68;
(* _70 = _63 >> 51; *)
usplit v70 tmp_to_use v63 51;
(* _71 = _65 + _70; *)
uadd v71 v65 v70;
(* _72 = _63 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v72 v63 value;

assert true && v72 = tmp_to_use;
assume v72 = tmp_to_use && true;

(* _73 = _71 >> 51; *)
usplit v73 tmp_to_use v71 51;
(* _74 = _67 + _73; *)
uadd v74 v67 v73;
(* _75 = _71 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v75 v71 value;

assert true && v75 = tmp_to_use;
assume v75 = tmp_to_use && true;

(* _76 = _74 >> 51; *)
usplit v76 tmp_to_use v74 51;
(* _77 = _69 + _76; *)
uadd v77 v69 v76;
(* _78 = _74 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v78 v74 value;

assert true && v78 = tmp_to_use;
assume v78 = tmp_to_use && true;

(* _79 = _77 >> 51; *)
usplit v79 tmp_to_use v77 51;
(* _80 = _45 + _79; *)
uadd v80 v45 v79;
(* _81 = _77 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v81 v77 value;

assert true && v81 = tmp_to_use;
assume v81 = tmp_to_use && true;

(* _82 = _80 >> 51; *)
usplit v82 tmp_to_use v80 51;
(* _83 = _82 * 19; *)
mov value_lo 0x13@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
umul v83 v82 value;
(* _84 = _72 + _83; *)
uadd v84 v72 v83;
(* _85 = _80 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v85 v80 value;

assert true && v85 = tmp_to_use;
assume v85 = tmp_to_use && true;

(* _86 = _84 >> 51; *)
usplit v86 tmp_to_use v84 51;
(* _87 = _75 + _86; *)
uadd v87 v75 v86;
(* _88 = _84 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v88 v84 value;

assert true && v88 = tmp_to_use;
assume v88 = tmp_to_use && true;

(* _89 = _87 >> 51; *)
usplit v89 tmp_to_use v87 51;
(* _90 = _78 + _89; *)
uadd v90 v78 v89;
(* _91 = _87 & 2251799813685247; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: low part 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
mov value_lo 0x7ffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v91 v87 value;

assert true && v91 = tmp_to_use;
assume v91 = tmp_to_use && true;

(* _92 = (long unsigned int) _88; *)
(* ========== cast -> vpc ========== *)
vpc v92@uint64 v88@uint128;
(* *output_100(D) = _92; *)
mov output100_0 v92;
(* _93 = (long unsigned int) _91; *)
(* ========== cast -> vpc ========== *)
vpc v93@uint64 v91@uint128;
(* MEM[(felem * )output_100(D) + 8B] = _93; *)
mov output100_8 v93;
(* _94 = (long unsigned int) _90; *)
(* ========== cast -> vpc ========== *)
vpc v94@uint64 v90@uint128;
(* MEM[(felem * )output_100(D) + 16B] = _94; *)
mov output100_16 v94;
(* _95 = (long unsigned int) _81; *)
(* ========== cast -> vpc ========== *)
vpc v95@uint64 v81@uint128;
(* MEM[(felem * )output_100(D) + 24B] = _95; *)
mov output100_24 v95;
(* _96 = (long unsigned int) _85; *)
(* ========== cast -> vpc ========== *)
vpc v96@uint64 v85@uint128;
(* MEM[(felem * )output_100(D) + 32B] = _96; *)
mov output100_32 v96;
(* return; *)


(* Start with unused lhs *)
mov c0 output100_0@uint64;
mov c1 output100_8@uint64;
mov c2 output100_16@uint64;
mov c3 output100_24@uint64;
mov c4 output100_32@uint64;
(* End with unsed lhs *)


{
    (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      *
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
    and [
        c0 <u (2**51)@64,
        c1 <u (2**51)@64,
        c2 <u (2**51 + 2**15)@64,
        c3 <u (2**51)@64,
        c4 <u (2**51)@64
    ]
}

proc fsquare (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) = 
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

proc main (uint64 X0, uint64 X1, uint64 X2, uint64 X3, uint64 X4, uint64 Z0, uint64 Z1, uint64 Z2, uint64 Z3, uint64 Z4, uint64 XP0, uint64 XP1, uint64 XP2, uint64 XP3, uint64 XP4, uint64 ZP0, uint64 ZP1, uint64 ZP2, uint64 ZP3, uint64 ZP4, uint64 QMQP0, uint64 QMQP1, uint64 QMQP2, uint64 QMQP3, uint64 QMQP4) = 
{
  true
  &&
  and [
      X0    < (2**51)@64,
      X1    < (2**51)@64,
      X2    < (2**51)@64,
      X3    < (2**51)@64,
      X4    < (2**51)@64,

      Z0    < (2**51)@64,
      Z1    < (2**51)@64,
      Z2    < (2**51)@64,
      Z3    < (2**51)@64,
      Z4    < (2**51)@64,

      XP0    < (2**51)@64,
      XP1    < (2**51)@64,
      XP2    < (2**51)@64,
      XP3    < (2**51)@64,
      XP4    < (2**51)@64,

      ZP0    < (2**51)@64,
      ZP1    < (2**51)@64,
      ZP2    < (2**51)@64,
      ZP3    < (2**51)@64,
      ZP4    < (2**51)@64,

      QMQP0    < (2**51)@64,
      QMQP1    < (2**51)@64,
      QMQP2    < (2**51)@64,
      QMQP3    < (2**51)@64,
      QMQP4    < (2**51)@64
  ]
}


(* Start with undefined rhs *)
(*
mov zz_0@uint64 _;
mov zz_8@uint64 _;
mov zz_16@uint64 _;
mov zz_24@uint64 _;
mov zz_32@uint64 _;
*)
(* End with undefined rhs *)

mov x2_0 X0;
mov x2_8 X1;
mov x2_16 X2;
mov x2_24 X3;
mov x2_32 X4;

mov z3_0 Z0;
mov z3_8 Z1;
mov z3_16 Z2;
mov z3_24 Z3;
mov z3_32 Z4;

mov xprime_6_0 XP0;
mov xprime_6_8 XP1;
mov xprime_6_16 XP2;
mov xprime_6_24 XP3;
mov xprime_6_32 XP4;

mov zprime_7_0 ZP0;
mov zprime_7_8 ZP1;
mov zprime_7_16 ZP2;
mov zprime_7_24 ZP3;
mov zprime_7_32 ZP4;

mov qmqp_18_0 QMQP0;
mov qmqp_18_8 QMQP1;
mov qmqp_18_16 QMQP2;
mov qmqp_18_24 QMQP3;
mov qmqp_18_32 QMQP4;


(* BB's index is 2 *)

(* __builtin_memcpy (&origx, x_2(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

mov origx_0 x2_0;
mov origx_8 x2_8;
mov origx_16 x2_16;
mov origx_24 x2_24;
mov origx_32 x2_32;

(* fsum (x_2(D), z_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsum(z3_0, z3_8, z3_16, z3_24, z3_32, x2_0, x2_8, x2_16, x2_24, x2_32, x2_0, x2_8, x2_16, x2_24, x2_32);
(* fdifference_backwards (z_3(D), &origx); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fdifference_backwards(origx_0, origx_8, origx_16, origx_24, origx_32, z3_0, z3_8, z3_16, z3_24, z3_32, z3_0, z3_8, z3_16, z3_24, z3_32);
(* __builtin_memcpy (&origxprime, xprime_6(D), 40); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

mov origxprime_0 xprime_6_0;
mov origxprime_8 xprime_6_8;
mov origxprime_16 xprime_6_16;
mov origxprime_24 xprime_6_24;
mov origxprime_32 xprime_6_32;

(* fsum (xprime_6(D), zprime_7(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsum(zprime_7_0, zprime_7_8, zprime_7_16, zprime_7_24, zprime_7_32, xprime_6_0, xprime_6_8, xprime_6_16, xprime_6_24, xprime_6_32, xprime_6_0, xprime_6_8, xprime_6_16, xprime_6_24, xprime_6_32);
(* fdifference_backwards (zprime_7(D), &origxprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fdifference_backwards(origxprime_0, origxprime_8, origxprime_16, origxprime_24, origxprime_32, zprime_7_0, zprime_7_8, zprime_7_16, zprime_7_24, zprime_7_32, zprime_7_0, zprime_7_8, zprime_7_16, zprime_7_24, zprime_7_32);
(* fmul (&xxprime, xprime_6(D), z_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fmul(z3_0, z3_8, z3_16, z3_24, z3_32, xprime_6_0, xprime_6_8, xprime_6_16, xprime_6_24, xprime_6_32, xxprime_0, xxprime_8, xxprime_16, xxprime_24, xxprime_32);
(* fmul (&zzprime, x_2(D), zprime_7(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fmul(x2_0, x2_8, x2_16, x2_24, x2_32, zprime_7_0, zprime_7_8, zprime_7_16, zprime_7_24, zprime_7_32, zzprime_0, zzprime_8, zzprime_16, zzprime_24, zzprime_32);
(* MEM[(char * {ref-all})&origxprime] = MEM[(char * {ref-all})&xxprime]; *)
(* TODO: skipped, no heuristics ,need self translating *)

mov origxprime_0 xxprime_0;
mov origxprime_8 xxprime_8;
mov origxprime_16 xxprime_16;
mov origxprime_24 xxprime_24;
mov origxprime_32 xxprime_32;

(* fsum (&xxprime, &zzprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsum(zzprime_0, zzprime_8, zzprime_16, zzprime_24, zzprime_32, xxprime_0, xxprime_8, xxprime_16, xxprime_24, xxprime_32, xxprime_0, xxprime_8, xxprime_16, xxprime_24, xxprime_32);
(* fdifference_backwards (&zzprime, &origxprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fdifference_backwards(origxprime_0, origxprime_8, origxprime_16, origxprime_24, origxprime_32, zzprime_0, zzprime_8, zzprime_16, zzprime_24, zzprime_32, zzprime_0, zzprime_8, zzprime_16, zzprime_24, zzprime_32);
(* fsquare (x3_14(D), &xxprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsquare(xxprime_0, xxprime_8, xxprime_16, xxprime_24, xxprime_32, x314_0, x314_8, x314_16, x314_24, x314_32);
(* fsquare (&zzzprime, &zzprime); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsquare(zzprime_0, zzprime_8, zzprime_16, zzprime_24, zzprime_32, zzzprime_0, zzzprime_8, zzzprime_16, zzzprime_24, zzzprime_32);
(* fmul (z3_17(D), &zzzprime, qmqp_18(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fmul(zzzprime_0, zzzprime_8, zzzprime_16, zzzprime_24, zzzprime_32, qmqp_18_0, qmqp_18_8, qmqp_18_16, qmqp_18_24, qmqp_18_32, z317_0, z317_8, z317_16, z317_24, z317_32);
(* fsquare (&xx, x_2(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsquare(x2_0, x2_8, x2_16, x2_24, x2_32, xx_0, xx_8 ,xx_16, xx_24, xx_32);
(* fsquare (&zz, z_3(D)); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsquare(z3_0, z3_8, z3_16, z3_24, z3_32, zz_0, zz_8, zz_16, zz_24, zz_32);
(* fmul (x2_22(D), &xx, &zz); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fmul(xx_0, xx_8, xx_16, xx_24, xx_32, zz_0, zz_8, zz_16, zz_24, zz_32, x222_0, x222_8, x222_16, x222_24, x222_32);
(* fdifference_backwards (&zz, &xx); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fdifference_backwards(xx_0, xx_8, xx_16, xx_24, xx_32, zz_0, zz_8, zz_16, zz_24, zz_32, zz_0, zz_8, zz_16, zz_24, zz_32);
(* _40 = MEM[(const felem * )&zz]; *)
mov v40 zz_0;
(* a_43 = _40 w* 121665; *)
umulj a43 v40 0x1db41@uint64;
(* _44 = (long unsigned int) a_43; *)
cast v44@uint64 a43@uint128;
(* _45 = _44 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v45 v44 0x7ffffffffffff@uint64;
(* _46 = MEM[(const felem * )&zz + 8B]; *)
mov v46 zz_8;
(* _48 = _46 w* 121665; *)
umulj v48 v46 0x1db41@uint64;
(* _49 = a_43 >> 51; *)
usplit v49 tmp_to_use a43 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v45;
assume tmp_to_use = v45 && true;

(* a_50 = _48 + _49; *)
uadd a50 v48 v49;
(* _51 = (long unsigned int) a_50; *)
cast v51@uint64 a50@uint128;
(* _52 = _51 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v52 v51 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 8B] = _52; *)
mov zzz_8 v52;
(* _53 = MEM[(const felem * )&zz + 16B]; *)
mov v53 zz_16;
(* _55 = _53 w* 121665; *)
umulj v55 v53 0x1db41@uint64;
(* _56 = a_50 >> 51; *)
usplit v56 tmp_to_use a50 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v52;
assume tmp_to_use = v52 && true;

(* a_57 = _55 + _56; *)
uadd a57 v55 v56;
(* _58 = (long unsigned int) a_57; *)
cast v58@uint64 a57@uint128;
(* _59 = _58 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v59 v58 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 16B] = _59; *)
mov zzz_16 v59;
(* _60 = MEM[(const felem * )&zz + 24B]; *)
mov v60 zz_24;
(* _62 = _60 w* 121665; *)
umulj v62 v60 0x1db41@uint64;
(* _63 = a_57 >> 51; *)
usplit v63 tmp_to_use a57 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v59;
assume tmp_to_use = v59 && true;

(* a_64 = _62 + _63; *)
uadd a64 v62 v63;
(* _65 = (long unsigned int) a_64; *)
cast v65@uint64 a64@uint128;
(* _66 = _65 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v66 v65 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 24B] = _66; *)
mov zzz_24 v66;
(* _67 = MEM[(const felem * )&zz + 32B]; *)
mov v67 zz_32;
(* _69 = _67 w* 121665; *)
umulj v69 v67 0x1db41@uint64;
(* _70 = a_64 >> 51; *)
usplit v70 tmp_to_use a64 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v66;
assume tmp_to_use = v66 && true;

(* a_71 = _69 + _70; *)
uadd a71 v69 v70;
(* _72 = (long unsigned int) a_71; *)
cast v72@uint64 a71@uint128;
(* _73 = _72 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 v73 v72 0x7ffffffffffff@uint64;
(* MEM[(felem * )&zzz + 32B] = _73; *)
mov zzz_32 v73;
(* _74 = a_71 >> 51; *)
usplit v74 tmp_to_use a71 51;

vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = v73;
assume tmp_to_use = v73 && true;

(* _75 = (long unsigned int) _74; *)
vpc v75@uint64 v74@uint128;
(* _76 = _75 * 19; *)
umul v76 v75 0x13@uint64;
(* _77 = _45 + _76; *)
uadd v77 v45 v76;
(* MEM[(felem * )&zzz] = _77; *)
mov zzz_0 v77;
(* fsum (&zzz, &xx); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fsum(xx_0, xx_8, xx_16, xx_24, xx_32, zzz_0, zzz_8, zzz_16, zzz_24, zzz_32,zzz_0, zzz_8, zzz_16, zzz_24, zzz_32);
(* fmul (z2_27(D), &zz, &zzz); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fmul(zz_0, zz_8, zz_16, zz_24, zz_32, zzz_0, zzz_8, zzz_16, zzz_24, zzz_32, z227_0, z227_8, z227_16, z227_24, z227_32);
(* origx ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* origxprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zzz ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* xx ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zz ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* xxprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zzprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* zzzprime ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ zzz_0@uint64;
mov _ zzz_8@uint64;
mov _ zzz_16@uint64;
mov _ zzz_24@uint64;
mov _ zzz_32@uint64;
(* End with unsed lhs *)

mov X2p0 x222_0;
mov X2p1 x222_8;
mov X2p2 x222_16;
mov X2p3 x222_24;
mov X2p4 x222_32;

mov Z2Final0 z227_0;
mov Z2Final1 z227_8;
mov Z2Final2 z227_16;
mov Z2Final3 z227_24;
mov Z2Final4 z227_32;

mov X3Final0 x314_0;
mov X3Final1 x314_8;
mov X3Final2 x314_16;
mov X3Final3 x314_24;
mov X3Final4 x314_32;

mov Z3Final0 z317_0;
mov Z3Final1 z317_8;
mov Z3Final2 z317_16;
mov Z3Final3 z317_24;
mov Z3Final4 z317_32;



{
  and 
  [
    (* condition 1 *)
    eqmod
    (limbs 51 [X2p0, X2p1, X2p2, X2p3, X2p4])
    (sq (sub
            (sq (limbs 51 [X0, X1, X2, X3, X4]))
            (sq (limbs 51 [Z0, Z1,Z2, Z3, Z4]))))
    (2**255 - 19),
    (* condition 2 *)
    eqmod
    (limbs 51 [Z2Final0, Z2Final1, Z2Final2, Z2Final3, Z2Final4])
    (mul
    [
        4,
        limbs 51 [X0, X1, X2, X3, X4],
        limbs 51 [Z0, Z1,Z2, Z3, Z4],
        add [
            sq (limbs 51 [X0, X1, X2, X3, X4]),
            mul 
                [
                    486662,
                    limbs 51 [X0, X1, X2, X3, X4],
                    limbs 51 [Z0, Z1,Z2, Z3, Z4]
                ],
                sq (limbs 51 [Z0, Z1,Z2, Z3, Z4])
            ]
    ])
    (2**255 - 19),
    (* condition 3-1 *)

     eqmod
     (limbs 51 [X3Final0, X3Final1, X3Final2, X3Final3, X3Final4])
     (mul (4)
             (sq (sub (mul (limbs 51 [X0, X1, X2, X3, X4]) (limbs 51 [XP0, XP1, XP2, XP3, XP4]))
                            (mul (limbs 51 [Z0, Z1,Z2, Z3, Z4]) (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4])))))
     (2**255 - 19),

     (* condition 3-2 *)

     eqmod
     (limbs 51 [Z3Final0, Z3Final1, Z3Final2, Z3Final3, Z3Final4])
     (mul (4)
             (mul (limbs 51 [QMQP0, QMQP1, QMQP2, QMQP3, QMQP4])
                     (sq (sub (mul (limbs 51 [XP0, XP1, XP2, XP3, XP4]) (limbs 51 [Z0, Z1,Z2, Z3, Z4]))
                                    (mul (limbs 51 [X0, X1, X2, X3, X4]) (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4]))))))
     (2**255 - 19),
    (* condition 3 *)
    eqmod
    (mul (limbs 51 [X3Final0, X3Final1, X3Final2, X3Final3, X3Final4])
            (mul (limbs 51 [QMQP0, QMQP1, QMQP2, QMQP3, QMQP4])
                    (sq (sub (mul (limbs 51 [XP0, XP1, XP2, XP3, XP4])
                                            (limbs 51 [Z0, Z1,Z2, Z3, Z4]))
                                    (mul (limbs 51 [X0, X1, X2, X3, X4])
                                            (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4]))))))
    (mul (limbs 51 [Z3Final0, Z3Final1, Z3Final2, Z3Final3, Z3Final4])
            (sq (sub (mul (limbs 51 [X0, X1, X2, X3, X4])
                                    (limbs 51 [XP0, XP1, XP2, XP3, XP4]))
                            (mul (limbs 51 [Z0, Z1,Z2, Z3, Z4])
                                    (limbs 51 [ZP0, ZP1, ZP2, ZP3, ZP4])))))
    (2**255 - 19)
  ]
  &&
  true
}

(* @frege 
===== Verification =====
Arguments: -jobs 24 -qfbv_solver boolector -qfbv_args "-SE lingeling" -btor -isafety -slicing -isafety_timeout 99999999 ./fe_mul121666_tuend.cl
Verification result:			[OK]		3.548717 seconds
	Command being timed: "verify -jobs 24 -qfbv_solver boolector -qfbv_args -SE lingeling -btor -isafety -slicing -isafety_timeout 99999999 ./fe_mul121666_tuend.cl"
	User time (seconds): 37.35
	System time (seconds): 1.06
	Percent of CPU this job got: 1056%
	Elapsed (wall clock) time (h:mm:ss or m:ss): 0:03.63
	Average shared text size (kbytes): 0
	Average unshared data size (kbytes): 0
	Average stack size (kbytes): 0
	Average total size (kbytes): 0
	Maximum resident set size (kbytes): 13744
	Average resident set size (kbytes): 0
	Major (requiring I/O) page faults: 0
	Minor (reclaiming a frame) page faults: 361261
	Voluntary context switches: 3218
	Involuntary context switches: 3524
	Swaps: 0
	File system inputs: 0
	File system outputs: 1592
	Socket messages sent: 0
	Socket messages received: 0
	Signals delivered: 0
	Page size (bytes): 4096
	Exit status: 0
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver boolector -qfbv_args "-SE lingeling" -btor -isafety -slicing -isafety_timeout 99999999 ./fe_mul121666_tuend.cl
Verification result:			[OK]		18.678097 seconds
       18.79 real        60.46 user         3.53 sys
  17649664  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    875911  page reclaims
        61  page faults
         0  swaps
         0  block input operations
        25  block output operations
         0  messages sent
         0  messages received
       886  signals received
      1591  voluntary context switches
     44660  involuntary context switches
*)
(*
/*
h = f * 121666
Can overlap h with f.

Preconditions:
   |f| bounded by 1.1*2^26,1.1*2^25,1.1*2^26,1.1*2^25,etc.

Postconditions:
   |h| bounded by 1.1*2^25,1.1*2^24,1.1*2^25,1.1*2^24,etc.
*/

1.1*2^26 = 73819750
1.1*2^25 = 36909875
1.1*2^24 = 18454937

*)

proc main (int32 a0, int32 a1, int32 a2, int32 a3, int32 a4, int32 a5, int32 a6, int32 a7, int32 a8, int32 a9) =
{
  true
  &&
  and
  [
    a0 <=s (73819750)@32,
    a0 >=s (-73819750)@32,
    a1 <=s (36909875)@32,
    a1 >=s (-36909875)@32,
    a2 <=s (73819750)@32,
    a2 >=s (-73819750)@32,
    a3 <=s (36909875)@32,
    a3 >=s (-36909875)@32,
    a4 <=s (73819750)@32,
    a4 >=s (-73819750)@32,
    a5 <=s (36909875)@32,
    a5 >=s (-36909875)@32,
    a6 <=s (73819750)@32,
    a6 >=s (-73819750)@32,
    a7 <=s (36909875)@32,
    a7 >=s (-36909875)@32,
    a8 <=s (73819750)@32,
    a8 >=s (-73819750)@32,
    a9 <=s (36909875)@32,
    a9 >=s (-36909875)@32
  ]
}


(* Start with undefined rhs *)
mov f43_0@int32 a0;
mov f43_4@int32 a1;
mov f43_8@int32 a2;
mov f43_12@int32 a3;
mov f43_16@int32 a4;
mov f43_20@int32 a5;
mov f43_24@int32 a6;
mov f43_28@int32 a7;
mov f43_32@int32 a8;
mov f43_36@int32 a9;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f0_44 = *f_43(D); *)
mov f044 f43_0;
(* f1_45 = MEM[(int32_t * )f_43(D) + 4B]; *)
mov f145 f43_4;
(* f2_46 = MEM[(int32_t * )f_43(D) + 8B]; *)
mov f246 f43_8;
(* f3_47 = MEM[(int32_t * )f_43(D) + 12B]; *)
mov f347 f43_12;
(* f4_48 = MEM[(int32_t * )f_43(D) + 16B]; *)
mov f448 f43_16;
(* f5_49 = MEM[(int32_t * )f_43(D) + 20B]; *)
mov f549 f43_20;
(* f6_50 = MEM[(int32_t * )f_43(D) + 24B]; *)
mov f650 f43_24;
(* f7_51 = MEM[(int32_t * )f_43(D) + 28B]; *)
mov f751 f43_28;
(* f8_52 = MEM[(int32_t * )f_43(D) + 32B]; *)
mov f852 f43_32;
(* f9_53 = MEM[(int32_t * )f_43(D) + 36B]; *)
mov f953 f43_36;
(* h0_54 = f0_44 w* 121666; *)
smulj h054 f044 0x1db42@int32;
(* h1_55 = f1_45 w* 121666; *)
smulj h155 f145 0x1db42@int32;
(* h2_56 = f2_46 w* 121666; *)
smulj h256 f246 0x1db42@int32;
(* h3_57 = f3_47 w* 121666; *)
smulj h357 f347 0x1db42@int32;
(* h4_58 = f4_48 w* 121666; *)
smulj h458 f448 0x1db42@int32;
(* h5_59 = f5_49 w* 121666; *)
smulj h559 f549 0x1db42@int32;
(* h6_60 = f6_50 w* 121666; *)
smulj h660 f650 0x1db42@int32;
(* h7_61 = f7_51 w* 121666; *)
smulj h761 f751 0x1db42@int32;
(* h8_62 = f8_52 w* 121666; *)
smulj h862 f852 0x1db42@int32;
(* h9_63 = f9_53 w* 121666; *)
smulj h963 f953 0x1db42@int32;
(* _11 = h9_63 + 16777216; *)
sadd v11 h963 0x1000000@int64;
(* carry9_64 = _11 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry964 tmp_to_use v11 25;
(* _12 = carry9_64 * 19; *)
smul v12 carry964 0x13@int64;
(* h0_65 = _12 + h0_54; *)
sadd h065 v12 h054;
(* _13 = _11 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v13 v11 (-0x2000000)@int64;

(* added *)
assert true && v13 = carry964 * (2**25)@64;
assume v13 = carry964 * (2**25) && true;

(* h9_66 = h9_63 - _13; *)
ssub h966 h963 v13;
(* _14 = h1_55 + 16777216; *)
sadd v14 h155 0x1000000@int64;
(* carry1_67 = _14 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry167 tmp_to_use v14 25;
(* h2_68 = h2_56 + carry1_67; *)
sadd h268 h256 carry167;
(* _15 = _14 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v15 v14 (-0x2000000)@int64;

(* added *)
assert true && v15 = carry167 * (2**25)@64;
assume v15 = carry167 * (2**25) && true;

(* h1_69 = h1_55 - _15; *)
ssub h169 h155 v15;
(* _16 = h3_57 + 16777216; *)
sadd v16 h357 0x1000000@int64;
(* carry3_70 = _16 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry370 tmp_to_use v16 25;
(* h4_71 = h4_58 + carry3_70; *)
sadd h471 h458 carry370;
(* _17 = _16 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v17 v16 (-0x2000000)@int64;

(* added *)
assert true && v17 = carry370 * (2**25)@64;
assume v17 = carry370 * (2**25) && true;


(* h3_72 = h3_57 - _17; *)
ssub h372 h357 v17;
(* _18 = h5_59 + 16777216; *)
sadd v18 h559 0x1000000@int64;
(* carry5_73 = _18 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry573 tmp_to_use v18 25;
(* h6_74 = h6_60 + carry5_73; *)
sadd h674 h660 carry573;
(* _19 = _18 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v19 v18 (-0x2000000)@int64;

(* added *)
assert true && v19 = carry573 * (2**25)@64;
assume v19 = carry573 * (2**25) && true;


(* h5_75 = h5_59 - _19; *)
ssub h575 h559 v19;
(* _20 = h7_61 + 16777216; *)
sadd v20 h761 0x1000000@int64;
(* carry7_76 = _20 >> 25; *)
(* TODO: signed operation, need check *)
ssplit carry776 tmp_to_use v20 25;
(* h8_77 = h8_62 + carry7_76; *)
sadd h877 h862 carry776;
(* _21 = _20 & -33554432; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x2000000)@int64 = 0xfffffffffe000000 *)
(* Note: (-0x2000000)@int64 = 0b1111111111111111111111111111111111111110000000000000000000000000 *)
and int64 v21 v20 (-0x2000000)@int64;

(* added *)
assert true && v21 = carry776 * (2**25)@64;
assume v21 = carry776 * (2**25) && true;


(* h7_78 = h7_61 - _21; *)
ssub h778 h761 v21;
(* _22 = h0_65 + 33554432; *)
sadd v22 h065 0x2000000@int64;
(* carry0_79 = _22 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry079 tmp_to_use v22 26;
(* h1_80 = h1_69 + carry0_79; *)
sadd h180 h169 carry079;
(* _23 = _22 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v23 v22 (-0x4000000)@int64;

(* added *)
assert true && v23 = carry079 * (2**26)@64;
assume v23 = carry079 * (2**26) && true;

(* h0_81 = h0_65 - _23; *)
ssub h081 h065 v23;
(* _24 = h2_68 + 33554432; *)
sadd v24 h268 0x2000000@int64;
(* carry2_82 = _24 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry282 tmp_to_use v24 26;
(* h3_83 = h3_72 + carry2_82; *)
sadd h383 h372 carry282;
(* _25 = _24 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v25 v24 (-0x4000000)@int64;

(* added *)
assert true && v25 = carry282 * (2**26)@64;
assume v25 = carry282 * (2**26) && true;

(* h2_84 = h2_68 - _25; *)
ssub h284 h268 v25;
(* _26 = h4_71 + 33554432; *)
sadd v26 h471 0x2000000@int64;
(* carry4_85 = _26 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry485 tmp_to_use v26 26;
(* h5_86 = h5_75 + carry4_85; *)
sadd h586 h575 carry485;
(* _27 = _26 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v27 v26 (-0x4000000)@int64;

(* added *)
assert true && v27 = carry485 * (2**26)@64;
assume v27 = carry485 * (2**26) && true;

(* h4_87 = h4_71 - _27; *)
ssub h487 h471 v27;
(* _28 = h6_74 + 33554432; *)
sadd v28 h674 0x2000000@int64;
(* carry6_88 = _28 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry688 tmp_to_use v28 26;
(* h7_89 = h7_78 + carry6_88; *)
sadd h789 h778 carry688;
(* _29 = _28 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v29 v28 (-0x4000000)@int64;

(* added *)
assert true && v29 = carry688 * (2**26)@64;
assume v29 = carry688 * (2**26) && true;

(* h6_90 = h6_74 - _29; *)
ssub h690 h674 v29;
(* _30 = h8_77 + 33554432; *)
sadd v30 h877 0x2000000@int64;
(* carry8_91 = _30 >> 26; *)
(* TODO: signed operation, need check *)
ssplit carry891 tmp_to_use v30 26;
(* h9_92 = h9_66 + carry8_91; *)
sadd h992 h966 carry891;
(* _31 = _30 & -67108864; *)
(* TODO: signed operation, need check semantics *)
(* TODO: check heuristic or self translate *)
(* Note: (-0x4000000)@int64 = 0xfffffffffc000000 *)
(* Note: (-0x4000000)@int64 = 0b1111111111111111111111111111111111111100000000000000000000000000 *)
and int64 v31 v30 (-0x4000000)@int64;

(* added *)
assert true && v31 = carry891 * (2**26)@64;
assume v31 = carry891 * (2**26) && true;

(* h8_93 = h8_77 - _31; *)
ssub h893 h877 v31;
(* _32 = (int) h0_81; *)
(* cast v32@int32 h081@int64; *)
(* added: change cast to vpc *)
vpc v32@int32 h081@int64;
(* *h_94(D) = _32; *)
mov h94_0 v32;
(* _33 = (int) h1_80; *)
(* cast v33@int32 h180@int64; *)
(* added: change cast to vpc *)
vpc v33@int32 h180@int64;
(* MEM[(int32_t * )h_94(D) + 4B] = _33; *)
mov h94_4 v33;
(* _34 = (int) h2_84; *)
(* cast v34@int32 h284@int64; *)
(* added: change cast to vpc *)
vpc v34@int32 h284@int64;
(* MEM[(int32_t * )h_94(D) + 8B] = _34; *)
mov h94_8 v34;
(* _35 = (int) h3_83; *)
(* cast v35@int32 h383@int64; *)
(* added: change cast to vpc *)
vpc v35@int32 h383@int64;
(* MEM[(int32_t * )h_94(D) + 12B] = _35; *)
mov h94_12 v35;
(* _36 = (int) h4_87; *)
(* cast v36@int32 h487@int64; *)
(* added: change cast to vpc *)
vpc v36@int32 h487@int64;
(* MEM[(int32_t * )h_94(D) + 16B] = _36; *)
mov h94_16 v36;
(* _37 = (int) h5_86; *)
(* cast v37@int32 h586@int64; *)
(* added: change cast to vpc *)
vpc v37@int32 h586@int64;
(* MEM[(int32_t * )h_94(D) + 20B] = _37; *)
mov h94_20 v37;
(* _38 = (int) h6_90; *)
(* cast v38@int32 h690@int64; *)
(* added: change cast to vpc *)
vpc v38@int32 h690@int64;
(* MEM[(int32_t * )h_94(D) + 24B] = _38; *)
mov h94_24 v38;
(* _39 = (int) h7_89; *)
(* cast v39@int32 h789@int64; *)
(* added: change cast to vpc *)
vpc v39@int32 h789@int64;
(* MEM[(int32_t * )h_94(D) + 28B] = _39; *)
mov h94_28 v39;
(* _40 = (int) h8_93; *)
(* cast v40@int32 h893@int64; *)
(* added: change cast to vpc *)
vpc v40@int32 h893@int64;
(* MEM[(int32_t * )h_94(D) + 32B] = _40; *)
mov h94_32 v40;
(* _41 = (int) h9_92; *)
(* cast v41@int32 h992@int64; *)
(* added: change cast to vpc *)
vpc v41@int32 h992@int64;
(* MEM[(int32_t * )h_94(D) + 36B] = _41; *)
mov h94_36 v41;
(* return; *)


(* Start with unused lhs *)
mov c0 h94_0@int32;
mov c1 h94_4@int32;
mov c2 h94_8@int32;
mov c3 h94_12@int32;
mov c4 h94_16@int32;
mov c5 h94_20@int32;
mov c6 h94_24@int32;
mov c7 h94_28@int32;
mov c8 h94_32@int32;
mov c9 h94_36@int32;
(* End with unsed lhs *)


{
  (
    c0 +
    c1 * (2**26) +
    c2 * (2**51) +
    c3 * (2**77) +
    c4 * (2**102) +
    c5 * (2**128) +
    c6 * (2**153) +
    c7 * (2**179) +
    c8 * (2**204) +
    c9 * (2**230)
  )
  =
  (
    (
      a0 +
      a1 * (2**26) +
      a2 * (2**51) +
      a3 * (2**77) +
      a4 * (2**102) +
      a5 * (2**128) +
      a6 * (2**153) +
      a7 * (2**179) +
      a8 * (2**204) +
      a9 * (2**230)
    )
    *
    (121666)
  )
  (mod (2**255 - 19))
  &&
  and
  [
    c0 <=s (36909875)@32,
    c0 >=s (-36909875)@32,
    c1 <=s (18454937)@32,
    c1 >=s (-18454937)@32,
    c2 <=s (36909875)@32,
    c2 >=s (-36909875)@32,
    c3 <=s (18454937)@32,
    c3 >=s (-18454937)@32,
    c4 <=s (36909875)@32,
    c4 >=s (-36909875)@32,
    c5 <=s (18454937)@32,
    c5 >=s (-18454937)@32,
    c6 <=s (36909875)@32,
    c6 >=s (-36909875)@32,
    c7 <=s (18454937)@32,
    c7 >=s (-18454937)@32,
    c8 <=s (36909875)@32,
    c8 >=s (-36909875)@32,
    c9 <=s (18454937)@32,
    c9 >=s (-18454937)@32
  ]
}

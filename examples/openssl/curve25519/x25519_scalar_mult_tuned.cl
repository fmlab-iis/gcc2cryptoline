(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing ./x25519_scalar_mult_tuned.cl
Verification result:                    [OK]            259.179328 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing ./x25519_scalar_mult_tuned.cl"
        User time (seconds): 920.96
        System time (seconds): 95.35
        Percent of CPU this job got: 391%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 4:19.42
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 5511676
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 37417041
        Voluntary context switches: 914843
        Involuntary context switches: 83057
        Swaps: 0
        File system inputs: 0
        File system outputs: 7164288
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0
*)
(* @mac
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing ./x25519_scalar_mult_tuned.cl
Verification result:			[OK]		1151.446406 seconds
     1152.17 real      2272.33 user       164.04 sys
4958420992  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
  36109414  page reclaims
      2419  page faults
         0  swaps
       837  block input operations
       931  block output operations
         0  messages sent
         0  messages received
      6217  signals received
    454703  voluntary context switches
   3499002  involuntary context switches 
*)

proc fe51_mul (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
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
mov f47_0@uint64 a0;
mov f47_8@uint64 a1;
mov f47_16@uint64 a2;
mov f47_24@uint64 a3;
mov f47_32@uint64 a4;
mov g49_0@uint64 b0;
mov g49_8@uint64 b1;
mov g49_16@uint64 b2;
mov g49_24@uint64 b3;
mov g49_32@uint64 b4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* f_i_48 = *f_47(D); *)
mov f_i48 f47_0;
(* g0_50 = *g_49(D); *)
mov g050 g49_0;
(* h0_51 = f_i_48 w* g0_50; *)
umulj h051 f_i48 g050;
(* g1_52 = MEM[(const uint64_t * )g_49(D) + 8B]; *)
mov g152 g49_8;
(* h1_53 = f_i_48 w* g1_52; *)
umulj h153 f_i48 g152;
(* g2_54 = MEM[(const uint64_t * )g_49(D) + 16B]; *)
mov g254 g49_16;
(* h2_55 = f_i_48 w* g2_54; *)
umulj h255 f_i48 g254;
(* g3_56 = MEM[(const uint64_t * )g_49(D) + 24B]; *)
mov g356 g49_24;
(* h3_57 = f_i_48 w* g3_56; *)
umulj h357 f_i48 g356;
(* g4_58 = MEM[(const uint64_t * )g_49(D) + 32B]; *)
mov g458 g49_32;
(* h4_59 = f_i_48 w* g4_58; *)
umulj h459 f_i48 g458;
(* f_i_60 = MEM[(const uint64_t * )f_47(D) + 8B]; *)
mov f_i60 f47_8;
(* g4_61 = g4_58 * 19; *)
umul g461 g458 19@uint64;
(* _62 = f_i_60 w* g4_61; *)
umulj v62 f_i60 g461;
(* h0_63 = h0_51 + _62; *)
uadd h063 h051 v62;
(* _9 = g0_50 w* f_i_60; *)
umulj v9 g050 f_i60;
(* h1_64 = _9 + h1_53; *)
uadd h164 v9 h153;
(* _10 = g1_52 w* f_i_60; *)
umulj v10 g152 f_i60;
(* h2_65 = _10 + h2_55; *)
uadd h265 v10 h255;
(* _11 = g2_54 w* f_i_60; *)
umulj v11 g254 f_i60;
(* h3_66 = _11 + h3_57; *)
uadd h366 v11 h357;
(* _12 = g3_56 w* f_i_60; *)
umulj v12 g356 f_i60;
(* h4_67 = _12 + h4_59; *)
uadd h467 v12 h459;
(* f_i_68 = MEM[(const uint64_t * )f_47(D) + 16B]; *)
mov f_i68 f47_16;
(* g3_69 = g3_56 * 19; *)
umul g369 g356 19@uint64;
(* _70 = f_i_68 w* g3_69; *)
umulj v70 f_i68 g369;
(* h0_71 = h0_63 + _70; *)
uadd h071 h063 v70;
(* _15 = g4_61 w* f_i_68; *)
umulj v15 g461 f_i68;
(* h1_72 = _15 + h1_64; *)
uadd h172 v15 h164;
(* _16 = g0_50 w* f_i_68; *)
umulj v16 g050 f_i68;
(* h2_73 = _16 + h2_65; *)
uadd h273 v16 h265;
(* _17 = g1_52 w* f_i_68; *)
umulj v17 g152 f_i68;
(* h3_74 = _17 + h3_66; *)
uadd h374 v17 h366;
(* _18 = g2_54 w* f_i_68; *)
umulj v18 g254 f_i68;
(* h4_75 = _18 + h4_67; *)
uadd h475 v18 h467;
(* f_i_76 = MEM[(const uint64_t * )f_47(D) + 24B]; *)
mov f_i76 f47_24;
(* g2_77 = g2_54 * 19; *)
umul g277 g254 19@uint64;
(* _78 = f_i_76 w* g2_77; *)
umulj v78 f_i76 g277;
(* h0_79 = h0_71 + _78; *)
uadd h079 h071 v78;
(* _21 = g3_69 w* f_i_76; *)
umulj v21 g369 f_i76;
(* h1_80 = _21 + h1_72; *)
uadd h180 v21 h172;
(* _22 = g4_61 w* f_i_76; *)
umulj v22 g461 f_i76;
(* h2_81 = _22 + h2_73; *)
uadd h281 v22 h273;
(* _23 = g0_50 w* f_i_76; *)
umulj v23 g050 f_i76;
(* h3_82 = _23 + h3_74; *)
uadd h382 v23 h374;
(* _24 = g1_52 w* f_i_76; *)
umulj v24 g152 f_i76;
(* h4_83 = _24 + h4_75; *)
uadd h483 v24 h475;
(* f_i_84 = MEM[(const uint64_t * )f_47(D) + 32B]; *)
mov f_i84 f47_32;
(* g1_85 = g1_52 * 19; *)
umul g185 g152 19@uint64;
(* _86 = f_i_84 w* g1_85; *)
umulj v86 f_i84 g185;
(* h0_87 = h0_79 + _86; *)
uadd h087 h079 v86;
(* _27 = g2_77 w* f_i_84; *)
umulj v27 g277 f_i84;
(* h1_88 = _27 + h1_80; *)
uadd h188 v27 h180;
(* _28 = g3_69 w* f_i_84; *)
umulj v28 g369 f_i84;
(* h2_89 = _28 + h2_81; *)
uadd h289 v28 h281;
(* _29 = g4_61 w* f_i_84; *)
umulj v29 g461 f_i84;
(* h3_90 = _29 + h3_82; *)
uadd h390 v29 h382;
(* _30 = g0_50 w* f_i_84; *)
umulj v30 g050 f_i84;
(* h4_91 = _30 + h4_83; *)
uadd h491 v30 h483;
(* _31 = h2_89 >> 51; *)
usplit v31 tmp_to_use h289 51;
(* _112 = _31 & 18446744073709551615; *)
(* Note: high part 0 = 0x0000000000000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 18446744073709551615 = 0xFFFFFFFFFFFFFFFF *)
(* Note: low part 18446744073709551615 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
mov value_lo 0xFFFFFFFFFFFFFFFF@uint64;
mov value_hi 0x0000000000000000@uint64;
join value value_hi value_lo;
and uint128 v112 v31 value;

assert true && v112 = v31;
assume v112 = v31 && true;

(* h3_92 = h3_90 + _112; *)
uadd h392 h390 v112;
(* _32 = (long unsigned int) h2_89; *)
cast v32@uint64 h289@uint128;
(* g2_93 = _32 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g293 v32 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g293 = tmp_to_use2;
assume g293 = tmp_to_use2 && true;

(* _33 = h0_87 >> 51; *)
usplit v33 tmp_to_use h087 51;
(* _113 = _33 & 18446744073709551615; *)
(* Note: high part 0 = 0x0000000000000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 18446744073709551615 = 0xFFFFFFFFFFFFFFFF *)
(* Note: low part 18446744073709551615 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
mov value_lo 0xFFFFFFFFFFFFFFFF@uint64;
mov value_hi 0x0000000000000000@uint64;
join value value_hi value_lo;
and uint128 v113 v33 value;


assert true && v113 = v33;
assume v113 = v33 && true;


(* h1_94 = h1_88 + _113; *)
uadd h194 h188 v113;
(* _34 = (long unsigned int) h0_87; *)
cast v34@uint64 h087@uint128;
(* g0_95 = _34 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g095 v34 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g095 = tmp_to_use2;
assume g095 = tmp_to_use2 && true;

(* _35 = h3_92 >> 51; *)
usplit v35 tmp_to_use h392 51;
(* _114 = _35 & 18446744073709551615; *)
(* Note: high part 0 = 0x0000000000000000 *)
(* Note: high part 0 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 18446744073709551615 = 0xFFFFFFFFFFFFFFFF *)
(* Note: low part 18446744073709551615 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
mov value_lo 0xFFFFFFFFFFFFFFFF@uint64;
mov value_hi 0x0000000000000000@uint64;
join value value_hi value_lo;
and uint128 v114 v35 value;

assert true && v114 = v35;
assume v114 = v35 && true;

(* h4_96 = h4_91 + _114; *)
uadd h496 h491 v114;
(* _36 = (long unsigned int) h3_92; *)
cast v36@uint64 h392@uint128;
(* g3_97 = _36 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g397 v36 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g397 = tmp_to_use2;
assume g397 = tmp_to_use2 && true;


(* _37 = h1_94 >> 51; *)
usplit v37 tmp_to_use h194 51;
(* _38 = (long unsigned int) _37; *)
vpc v38@uint64 v37@uint128;
(* g2_98 = _38 + g2_93; *)
uadd g298 v38 g293;
(* _39 = (long unsigned int) h1_94; *)
cast v39@uint64 h194@uint128;
(* g1_99 = _39 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g199 v39 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g199 = tmp_to_use2;
assume g199 = tmp_to_use2 && true;

(* _40 = h4_96 >> 51; *)
usplit v40 tmp_to_use h496 51;
(* _41 = (long unsigned int) _40; *)
vpc v41@uint64 v40@uint128;
(* _42 = _41 * 19; *)
umul v42 v41 19@uint64;
(* g0_100 = _42 + g0_95; *)
uadd g0100 v42 g095;
(* _43 = (long unsigned int) h4_96; *)
cast v43@uint64 h496@uint128;
(* g4_101 = _43 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g4101 v43 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g4101 = tmp_to_use2;
assume g4101 = tmp_to_use2 && true;

(* _44 = g2_98 >> 51; *)
usplit v44 tmp_to_use g298 51;
(* g3_102 = _44 + g3_97; *)
uadd g3102 v44 g397;
(* g2_103 = g2_98 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g2103 g298 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g2103 = tmp_to_use2;
assume g2103 = tmp_to_use2 && true;

(* _45 = g0_100 >> 51; *)
usplit v45 tmp_to_use g0100 51;
(* g1_104 = _45 + g1_99; *)
uadd g1104 v45 g199;
(* g0_105 = g0_100 & 2251799813685247; *)
(* Note: 2251799813685247 = 0x0007FFFFFFFFFFFF *)
(* Note: 2251799813685247 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
(* TODO: check heuristic or self translate *)
and uint64 g0105 g0100 0x0007FFFFFFFFFFFF@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g0105 = tmp_to_use2;
assume g0105 = tmp_to_use && true;

(* *h_106(D) = g0_105; *)
mov h106_0 g0105;
(* MEM[(uint64_t * )h_106(D) + 8B] = g1_104; *)
mov h106_8 g1104;
(* MEM[(uint64_t * )h_106(D) + 16B] = g2_103; *)
mov h106_16 g2103;
(* MEM[(uint64_t * )h_106(D) + 24B] = g3_102; *)
mov h106_24 g3102;
(* MEM[(uint64_t * )h_106(D) + 32B] = g4_101; *)
mov h106_32 g4101;
(* return; *)


(* Start with unused lhs *)
mov c0 h106_0@uint64;
mov c1 h106_8@uint64;
mov c2 h106_16@uint64;
mov c3 h106_24@uint64;
mov c4 h106_32@uint64;
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
        c0 <u (2**51+2**15)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}

proc fe51_sq (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4; uint64 c0, uint64 c1, uint64 c2, uint64 c3, uint64 c4) =
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
mov f37_0@uint64 a0;
mov f37_8@uint64 a1;
mov f37_16@uint64 a2;
mov f37_24@uint64 a3;
mov f37_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* g0_38 = *f_37(D); *)
mov g038 f37_0;
(* g1_39 = MEM[(const uint64_t * )f_37(D) + 8B]; *)
mov g139 f37_8;
(* g2_40 = MEM[(const uint64_t * )f_37(D) + 16B]; *)
mov g240 f37_16;
(* g3_41 = MEM[(const uint64_t * )f_37(D) + 24B]; *)
mov g341 f37_24;
(* g4_42 = MEM[(const uint64_t * )f_37(D) + 32B]; *)
mov g442 f37_32;
(* h0_43 = g0_38 w* g0_38; *)
umulj h043 g038 g038;
(* g0_44 = g0_38 * 2; *)
umul g044 g038 0x2@uint64;
(* h1_45 = g0_44 w* g1_39; *)
umulj h145 g044 g139;
(* h2_46 = g0_44 w* g2_40; *)
umulj h246 g044 g240;
(* h3_47 = g0_44 w* g3_41; *)
umulj h347 g044 g341;
(* h4_48 = g0_44 w* g4_42; *)
umulj h448 g044 g442;
(* g4_50 = g4_42 * 19; *)
umul g450 g442 0x13@uint64;
(* _51 = g4_42 w* g4_50; *)
umulj v51 g442 g450;
(* h3_52 = h3_47 + _51; *)
uadd h352 h347 v51;
(* _8 = g1_39 w* g1_39; *)
umulj v8 g139 g139;
(* g1_54 = g1_39 * 2; *)
umul g154 g139 0x2@uint64;
(* _10 = g2_40 w* g1_54; *)
umulj v10 g240 g154;
(* h3_55 = _10 + h3_52; *)
uadd h355 v10 h352;
(* _11 = g3_41 w* g1_54; *)
umulj v11 g341 g154;
(* h4_56 = _11 + h4_48; *)
uadd h456 v11 h448;
(* _12 = g4_50 w* g1_54; *)
umulj v12 g450 g154;
(* g3_59 = g3_41 * 19; *)
umul g359 g341 0x13@uint64;
(* _60 = g3_41 w* g3_59; *)
umulj v60 g341 g359;
(* h1_61 = h1_45 + _60; *)
uadd h161 h145 v60;
(* _14 = g3_41 * 2; *)
umul v14 g341 0x2@uint64;
(* _16 = g4_50 w* _14; *)
umulj v16 g450 v14;
(* _88 = _16 + h2_46; *)
uadd v88 v16 h246;
(* h2_62 = _8 + _88; *)
uadd h262 v8 v88;
(* _17 = g2_40 w* g2_40; *)
umulj v17 g240 g240;
(* h4_63 = _17 + h4_56; *)
uadd h463 v17 h456;
(* g2_64 = g2_40 * 2; *)
umul g264 g240 0x2@uint64;
(* _19 = g3_59 w* g2_64; *)
umulj v19 g359 g264;
(* _89 = _12 + _19; *)
uadd v89 v12 v19;
(* h0_65 = h0_43 + _89; *)
uadd h065 h043 v89;
(* _20 = g4_50 w* g2_64; *)
umulj v20 g450 g264;
(* h1_66 = _20 + h1_61; *)
uadd h166 v20 h161;
(* _21 = h2_62 >> 51; *)
usplit v21 tmp_to_use h262 51;
(* _49 = _21 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v49 v21 value;

assert true && v49 = v21;
assume v49 = v21 && true;

(* h3_67 = _49 + h3_55; *)
uadd h367 v49 h355;
(* _22 = (long unsigned int) h2_62; *)
cast v22@uint64 h262@uint128;
(* g2_68 = _22 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g268 v22 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g268 = tmp_to_use2;
assume g268 = tmp_to_use && true;

(* _23 = h0_65 >> 51; *)
usplit v23 tmp_to_use h065 51;
(* _58 = _23 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v58 v23 value;

assert true && v58 = v23;
assume v58 = v23 && true;

(* h1_69 = _58 + h1_66; *)
uadd h169 v58 h166;
(* _24 = (long unsigned int) h0_65; *)
cast v24@uint64 h065@uint128;
(* g0_70 = _24 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g070 v24 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g070 = tmp_to_use2;
assume g070 = tmp_to_use && true;

(* _25 = h3_67 >> 51; *)
usplit v25 tmp_to_use h367 51;
(* _87 = _25 & 18446744073709551615; *)
(* Note: high part 0x0@uint64 = 0x00000000000000 *)
(* Note: high part 0x0@uint64 = 0b00000000000000000000000000000000000000000000000000000000000000 *)
(* Note: low part 0xffffffffffffffff@uint64 = 0xffffffffffffffff *)
(* Note: low part 0xffffffffffffffff@uint64 = 0b1111111111111111111111111111111111111111111111111111111111111111 *)
mov value_lo 0xffffffffffffffff@uint64;
mov value_hi 0x0@uint64;
join value value_hi value_lo;
and uint128 v87 v25 value;

assert true && v87 = v25;
assume v87 = v25 && true;

(* h4_71 = h4_63 + _87; *)
uadd h471 h463 v87;
(* _26 = (long unsigned int) h3_67; *)
cast v26@uint64 h367@uint128;
(* g3_72 = _26 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g372 v26 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g372 = tmp_to_use2;
assume g372 = tmp_to_use && true;

(* _27 = h1_69 >> 51; *)
usplit v27 tmp_to_use h169 51;
(* _28 = (long unsigned int) _27; *)
vpc v28@uint64 v27@uint128;
(* g2_73 = _28 + g2_68; *)
uadd g273 v28 g268;
(* _29 = (long unsigned int) h1_69; *)
cast v29@uint64 h169@uint128;
(* g1_74 = _29 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g174 v29 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g174 = tmp_to_use2;
assume g174 = tmp_to_use && true;

(* _30 = h4_71 >> 51; *)
usplit v30 tmp_to_use h471 51;
(* _31 = (long unsigned int) _30; *)
vpc v31@uint64 v30@uint128;
(* _32 = _31 * 19; *)
umul v32 v31 0x13@uint64;
(* g0_75 = _32 + g0_70; *)
uadd g075 v32 g070;
(* _33 = (long unsigned int) h4_71; *)
cast v33@uint64 h471@uint128;
(* g4_76 = _33 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g476 v33 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g476 = tmp_to_use2;
assume g476 = tmp_to_use && true;

(* _34 = g2_73 >> 51; *)
usplit v34 tmp_to_use g273 51;
(* g3_77 = _34 + g3_72; *)
uadd g377 v34 g372;
(* g2_78 = g2_73 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g278 g273 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g278 = tmp_to_use2;
assume g278 = tmp_to_use && true;

(* _35 = g0_75 >> 51; *)
usplit v35 tmp_to_use g075 51;
(* g1_79 = _35 + g1_74; *)
uadd g179 v35 g174;
(* g0_80 = g0_75 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b00000000000111111111111111111111111111111111111111111111111111 *)
and uint64 g080 g075 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g080 = tmp_to_use2;
assume g080 = tmp_to_use && true;

(* *h_81(D) = g0_80; *)
mov h81_0 g080;
(* MEM[(uint64_t * )h_81(D) + 8B] = g1_79; *)
mov h81_8 g179;
(* MEM[(uint64_t * )h_81(D) + 16B] = g2_78; *)
mov h81_16 g278;
(* MEM[(uint64_t * )h_81(D) + 24B] = g3_77; *)
mov h81_24 g377;
(* MEM[(uint64_t * )h_81(D) + 32B] = g4_76; *)
mov h81_32 g476;
(* return; *)


(* Start with unused lhs *)
mov c0 h81_0@uint64;
mov c1 h81_8@uint64;
mov c2 h81_16@uint64;
mov c3 h81_24@uint64;
mov c4 h81_32@uint64;
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
        c0 <u (2**51+2**15)@64,
        c1 <u (2**51+2**15)@64,
        c2 <u (2**51+2**15)@64,
        c3 <u (2**51+2**15)@64,
        c4 <u (2**51+2**15)@64
    ]
}




proc main (uint64 X1|0..4,uint64 X2|0..4, uint64 X3|0..4, uint64 Z2|0..4, uint64 Z3|0..4) = 
{
  true
  &&
  and 
  [
    X1_0 <u (2**51+2**15)@64,
    X1_1 <u (2**51+2**15)@64,
    X1_2 <u (2**51+2**15)@64,
    X1_3 <u (2**51+2**15)@64,
    X1_4 <u (2**51+2**15)@64,
    X2_0 <u (2**51+2**15)@64,
    X2_1 <u (2**51+2**15)@64,
    X2_2 <u (2**51+2**15)@64,
    X2_3 <u (2**51+2**15)@64,
    X2_4 <u (2**51+2**15)@64,
    X3_0 <u (2**51+2**15)@64,
    X3_1 <u (2**51+2**15)@64,
    X3_2 <u (2**51+2**15)@64,
    X3_3 <u (2**51+2**15)@64,
    X3_4 <u (2**51+2**15)@64,
    Z2_0 <u (2**51+2**15)@64,
    Z2_1 <u (2**51+2**15)@64,
    Z2_2 <u (2**51+2**15)@64,
    Z2_3 <u (2**51+2**15)@64,
    Z2_4 <u (2**51+2**15)@64,
    Z3_0 <u (2**51+2**15)@64,
    Z3_1 <u (2**51+2**15)@64,
    Z3_2 <u (2**51+2**15)@64,
    Z3_3 <u (2**51+2**15)@64,
    Z3_4 <u (2**51+2**15)@64
  ]
}


(* Start with undefined rhs *)
mov x2_0@uint64 X2_0;
mov x2_8@uint64 X2_1;
mov x2_16@uint64 X2_2;
mov x2_24@uint64 X2_3;
mov x2_32@uint64 X2_4;
mov x3_0@uint64 X3_0;
mov x3_8@uint64 X3_1;
mov x3_16@uint64 X3_2;
mov x3_24@uint64 X3_3;
mov x3_32@uint64 X3_4;
mov z2_0@uint64 Z2_0;
mov z2_8@uint64 Z2_1;
mov z2_16@uint64 Z2_2;
mov z2_24@uint64 Z2_3;
mov z2_32@uint64 Z2_4;
mov z3_0@uint64 Z3_0;
mov z3_8@uint64 Z3_1;
mov z3_16@uint64 Z3_2;
mov z3_24@uint64 Z3_3;
mov z3_32@uint64 Z3_4;
(* End with undefined rhs *)

mov x1_0@uint64 X1_0;
mov x1_8@uint64 X1_1;
mov x1_16@uint64 X1_2;
mov x1_24@uint64 X1_3;
mov x1_32@uint64 X1_4;


(* BB's index is 2 *)

(* vect__111.467_232 = MEM[(const uint64_t * )&x3]; *)
mov vect__111467232_0 x3_0;
mov vect__111467232_1 x3_8;
(* vect__111.468_234 = MEM[(const uint64_t * )&x3 + 16B]; *)
mov vect__111468234_0 x3_16;
mov vect__111468234_1 x3_24;
(* vect__112.471_236 = MEM[(const uint64_t * )&z3]; *)
mov vect__112471236_0 z3_0;
mov vect__112471236_1 z3_8;
(* vect__112.472_238 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect__112472238_0 z3_16;
mov vect__112472238_1 z3_24;
(* vect__258.476_105 = vect__111.467_232 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__258476105_0 vect__111467232_0 0xfffffffffffda@uint64;
uadd vect__258476105_1 vect__111467232_1 0xffffffffffffe@uint64;
(* vect__258.476_109 = vect__111.468_234 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__258476109_0 vect__111468234_0 0xffffffffffffe@uint64;
uadd vect__258476109_1 vect__111468234_1 0xffffffffffffe@uint64;
(* vect__114.477_56 = vect__258.476_105 - vect__112.471_236; *)
usub vect__11447756_0 vect__258476105_0 vect__112471236_0;
usub vect__11447756_1 vect__258476105_1 vect__112471236_1;
(* vect__114.477_58 = vect__258.476_109 - vect__112.472_238; *)
usub vect__11447758_0 vect__258476109_0 vect__112472238_0;
usub vect__11447758_1 vect__258476109_1 vect__112472238_1;
(* MEM[(uint64_t * )&tmp0] = vect__114.477_56; *)
mov tmp0_0 vect__11447756_0;
mov tmp0_8 vect__11447756_1;
(* MEM[(uint64_t * )&tmp0 + 16B] = vect__114.477_58; *)
mov tmp0_16 vect__11447758_0;
mov tmp0_24 vect__11447758_1;
(* _127 = MEM[(const uint64_t * )&x3 + 32B]; *)
mov v127 x3_32;
(* _128 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov v128 z3_32;
(* _254 = _127 + 4503599627370494; *)
uadd v254 v127 0xffffffffffffe@uint64;
(* _130 = _254 - _128; *)
usub v130 v254 v128;
(* MEM[(uint64_t * )&tmp0 + 32B] = _130; *)
mov tmp0_32 v130;
(* vect__91.456_187 = MEM[(const uint64_t * )&x2]; *)
mov vect__91456187_0 x2_0;
mov vect__91456187_1 x2_8;
(* vect__91.457_197 = MEM[(const uint64_t * )&x2 + 16B]; *)
mov vect__91457197_0 x2_16;
mov vect__91457197_1 x2_24;
(* vect__92.460_223 = MEM[(const uint64_t * )&z2]; *)
mov vect__92460223_0 z2_0;
mov vect__92460223_1 z2_8;
(* vect__92.461_225 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect__92461225_0 z2_16;
mov vect__92461225_1 z2_24;
(* vect__253.480_46 = vect__91.456_187 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__25348046_0 vect__91456187_0 0xfffffffffffda@uint64;
uadd vect__25348046_1 vect__91456187_1 0xffffffffffffe@uint64;
(* vect__253.480_50 = vect__91.457_197 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__25348050_0 vect__91457197_0 0xffffffffffffe@uint64;
uadd vect__25348050_1 vect__91457197_1 0xffffffffffffe@uint64;
(* vect__94.481_54 = vect__253.480_46 - vect__92.460_223; *)
usub vect__9448154_0 vect__25348046_0 vect__92460223_0;
usub vect__9448154_1 vect__25348046_1 vect__92460223_1;
(* vect__94.481_259 = vect__253.480_50 - vect__92.461_225; *)
usub vect__94481259_0 vect__25348050_0 vect__92461225_0;
usub vect__94481259_1 vect__25348050_1 vect__92461225_1;
(* MEM[(uint64_t * )&tmp1] = vect__94.481_54; *)
mov tmp1_0 vect__9448154_0;
mov tmp1_8 vect__9448154_1;
(* MEM[(uint64_t * )&tmp1 + 16B] = vect__94.481_259; *)
mov tmp1_16 vect__94481259_0;
mov tmp1_24 vect__94481259_1;
(* _107 = MEM[(const uint64_t * )&x2 + 32B]; *)
mov v107 x2_32;
(* _108 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov v108 z2_32;
(* _249 = _107 + 4503599627370494; *)
uadd v249 v107 0xffffffffffffe@uint64;
(* _110 = _249 - _108; *)
usub v110 v249 v108;
(* MEM[(uint64_t * )&tmp1 + 32B] = _110; *)
mov tmp1_32 v110;
(* vect__86.462_227 = vect__91.456_187 + vect__92.460_223; *)
uadd vect__86462227_0 vect__91456187_0 vect__92460223_0;
uadd vect__86462227_1 vect__91456187_1 vect__92460223_1;
(* vect__86.462_228 = vect__91.457_197 + vect__92.461_225; *)
uadd vect__86462228_0 vect__91457197_0 vect__92461225_0;
uadd vect__86462228_1 vect__91457197_1 vect__92461225_1;
(* MEM[(uint64_t * )&x2] = vect__86.462_227; *)
mov x2_0 vect__86462227_0;
mov x2_8 vect__86462227_1;
(* MEM[(uint64_t * )&x2 + 16B] = vect__86.462_228; *)
mov x2_16 vect__86462228_0;
mov x2_24 vect__86462228_1;
(* _90 = _107 + _108; *)
uadd v90 v107 v108;
(* MEM[(uint64_t * )&x2 + 32B] = _90; *)
mov x2_32 v90;
(* vect__81.473_117 = vect__111.467_232 + vect__112.471_236; *)
uadd vect__81473117_0 vect__111467232_0 vect__112471236_0;
uadd vect__81473117_1 vect__111467232_1 vect__112471236_1;
(* vect__81.473_121 = vect__111.468_234 + vect__112.472_238; *)
uadd vect__81473121_0 vect__111468234_0 vect__112472238_0;
uadd vect__81473121_1 vect__111468234_1 vect__112472238_1;
(* MEM[(uint64_t * )&z2] = vect__81.473_117; *)
mov z2_0 vect__81473117_0;
mov z2_8 vect__81473117_1;
(* MEM[(uint64_t * )&z2 + 16B] = vect__81.473_121; *)
mov z2_16 vect__81473121_0;
mov z2_24 vect__81473121_1;
(* _85 = _127 + _128; *)
uadd v85 v127 v128;
(* MEM[(uint64_t * )&z2 + 32B] = _85; *)
mov z2_32 v85;
(* fe51_mul (&z3, &tmp0, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_mul(tmp0_0,tmp0_8,tmp0_16,tmp0_24,tmp0_32,x2_0,x2_8,x2_16,x2_24,x2_32,z3_0,z3_8,z3_16,z3_24,z3_32);
(* fe51_mul (&z2, &z2, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_mul(z2_0,z2_8,z2_16,z2_24,z2_32,tmp1_0,tmp1_8,tmp1_16,tmp1_24,tmp1_32,z2_0,z2_8,z2_16,z2_24,z2_32);
(* fe51_sq (&tmp0, &tmp1); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_sq(tmp1_0,tmp1_8,tmp1_16,tmp1_24,tmp1_32,tmp0_0,tmp0_8,tmp0_16,tmp0_24,tmp0_32);
(* fe51_sq (&tmp1, &x2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_sq(x2_0,x2_8,x2_16,x2_24,x2_32,tmp1_0,tmp1_8,tmp1_16,tmp1_24,tmp1_32);
(* vect__66.486_263 = MEM[(const uint64_t * )&z3]; *)
mov vect__66486263_0 z3_0;
mov vect__66486263_1 z3_8;
(* vect__66.487_265 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect__66487265_0 z3_16;
mov vect__66487265_1 z3_24;
(* vect__67.491_271 = MEM[(const uint64_t * )&z2]; *)
mov vect__67491271_0 z2_0;
mov vect__67491271_1 z2_8;
(* vect__67.492_273 = MEM[(const uint64_t * )&z2 + 16B]; *)
mov vect__67492273_0 z2_16;
mov vect__67492273_1 z2_24;
(* vect__68.496_280 = vect__66.486_263 + vect__67.491_271; *)
uadd vect__68496280_0 vect__66486263_0 vect__67491271_0;
uadd vect__68496280_1 vect__66486263_1 vect__67491271_1;
(* vect__68.496_281 = vect__66.487_265 + vect__67.492_273; *)
uadd vect__68496281_0 vect__66487265_0 vect__67492273_0;
uadd vect__68496281_1 vect__66487265_1 vect__67492273_1;
(* MEM[(uint64_t * )&x3] = vect__68.496_280; *)
mov x3_0 vect__68496280_0;
mov x3_8 vect__68496280_1;
(* MEM[(uint64_t * )&x3 + 16B] = vect__68.496_281; *)
mov x3_16 vect__68496281_0;
mov x3_24 vect__68496281_1;
(* _78 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov v78 z3_32;
(* _79 = MEM[(const uint64_t * )&z2 + 32B]; *)
mov v79 z2_32;
(* _80 = _78 + _79; *)
uadd v80 v78 v79;
(* MEM[(uint64_t * )&x3 + 32B] = _80; *)
mov x3_32 v80;
(* vect__248.488_269 = vect__66.486_263 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__248488269_0 vect__66486263_0 0xfffffffffffda@uint64;
uadd vect__248488269_1 vect__66486263_1 0xffffffffffffe@uint64;
(* vect__248.488_270 = vect__66.487_265 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__248488270_0 vect__66487265_0 0xffffffffffffe@uint64;
uadd vect__248488270_1 vect__66487265_1 0xffffffffffffe@uint64;
(* vect__57.493_275 = vect__248.488_269 - vect__67.491_271; *)
usub vect__57493275_0 vect__248488269_0 vect__67491271_0;
usub vect__57493275_1 vect__248488269_1 vect__67491271_1;
(* vect__57.493_276 = vect__248.488_270 - vect__67.492_273; *)
usub vect__57493276_0 vect__248488270_0 vect__67492273_0;
usub vect__57493276_1 vect__248488270_1 vect__67492273_1;
(* MEM[(uint64_t * )&z2] = vect__57.493_275; *)
mov z2_0 vect__57493275_0;
mov z2_8 vect__57493275_1;
(* MEM[(uint64_t * )&z2 + 16B] = vect__57.493_276; *)
mov z2_16 vect__57493276_0;
mov z2_24 vect__57493276_1;
(* _244 = _78 + 4503599627370494; *)
uadd v244 v78 0xffffffffffffe@uint64;
(* _65 = _244 - _79; *)
usub v65 v244 v79;
(* MEM[(uint64_t * )&z2 + 32B] = _65; *)
mov z2_32 v65;
(* fe51_mul (&x2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)

call fe51_mul(tmp1_0,tmp1_8,tmp1_16,tmp1_24,tmp1_32,tmp0_0,tmp0_8,tmp0_16,tmp0_24,tmp0_32,x2_0,x2_8,x2_16,x2_24,x2_32);

mov X2p_0 x2_0;
mov X2p_1 x2_8;
mov X2p_2 x2_16;
mov X2p_3 x2_24;
mov X2p_4 x2_32;

(* vect__36.501_285 = MEM[(const uint64_t * )&tmp1]; *)
mov vect__36501285_0 tmp1_0;
mov vect__36501285_1 tmp1_8;
(* vect__36.502_287 = MEM[(const uint64_t * )&tmp1 + 16B]; *)
mov vect__36502287_0 tmp1_16;
mov vect__36502287_1 tmp1_24;
(* vect__37.506_293 = MEM[(const uint64_t * )&tmp0]; *)
mov vect__37506293_0 tmp0_0;
mov vect__37506293_1 tmp0_8;
(* vect__37.507_295 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect__37507295_0 tmp0_16;
mov vect__37507295_1 tmp0_24;
(* vect__243.503_291 = vect__36.501_285 + { 4503599627370458, 4503599627370494 }; *)
uadd vect__243503291_0 vect__36501285_0 0xfffffffffffda@uint64;
uadd vect__243503291_1 vect__36501285_1 0xffffffffffffe@uint64;
(* vect__243.503_292 = vect__36.502_287 + { 4503599627370494, 4503599627370494 }; *)
uadd vect__243503292_0 vect__36502287_0 0xffffffffffffe@uint64;
uadd vect__243503292_1 vect__36502287_1 0xffffffffffffe@uint64;
(* vect__39.508_297 = vect__243.503_291 - vect__37.506_293; *)
usub vect__39508297_0 vect__243503291_0 vect__37506293_0;
usub vect__39508297_1 vect__243503291_1 vect__37506293_1;
(* vect__39.508_298 = vect__243.503_292 - vect__37.507_295; *)
usub vect__39508298_0 vect__243503292_0 vect__37507295_0;
usub vect__39508298_1 vect__243503292_1 vect__37507295_1;
(* MEM[(uint64_t * )&tmp1] = vect__39.508_297; *)
mov tmp1_0 vect__39508297_0;
mov tmp1_8 vect__39508297_1;
(* MEM[(uint64_t * )&tmp1 + 16B] = vect__39.508_298; *)
mov tmp1_16 vect__39508298_0;
mov tmp1_24 vect__39508298_1;
(* _52 = MEM[(const uint64_t * )&tmp1 + 32B]; *)
mov v52 tmp1_32;
(* _53 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov v53 tmp0_32;
(* _239 = _52 + 4503599627370494; *)
uadd v239 v52 0xffffffffffffe@uint64;
(* _55 = _239 - _53; *)
usub v55 v239 v53;
(* MEM[(uint64_t * )&tmp1 + 32B] = _55; *)
mov tmp1_32 v55;
(* fe51_sq (&z2, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_sq(z2_0,z2_8,z2_16,z2_24,z2_32,z2_0,z2_8,z2_16,z2_24,z2_32);
(* _171 = MEM[(uint64_t * )&tmp1]; *)
mov v171 tmp1_0;
(* h0_173 = _171 w* 121666; *)
umulj h0173 v171 0x1db42@uint64;
(* _174 = MEM[(uint64_t * )&tmp1 + 8B]; *)
mov v174 tmp1_8;
(* h1_176 = _174 w* 121666; *)
umulj h1176 v174 0x1db42@uint64;
(* _177 = MEM[(uint64_t * )&tmp1 + 16B]; *)
mov v177 tmp1_16;
(* h2_179 = _177 w* 121666; *)
umulj h2179 v177 0x1db42@uint64;
(* _180 = MEM[(uint64_t * )&tmp1 + 24B]; *)
mov v180 tmp1_24;
(* h3_182 = _180 w* 121666; *)
umulj h3182 v180 0x1db42@uint64;
(* _183 = MEM[(uint64_t * )&tmp1 + 32B]; *)
mov v183 tmp1_32;
(* h4_185 = _183 w* 121666; *)
umulj h4185 v183 0x1db42@uint64;
(* _186 = h2_179 >> 51; *)
usplit v186 tmp_to_use h2179 51;
(* h3_188 = h3_182 + _186; *)
uadd h3188 h3182 v186;
(* _189 = (long unsigned int) h2_179; *)
cast v189@uint64 h2179@uint128;
(* g2_190 = _189 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g2190 v189 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g2190 = tmp_to_use2;
assume g2190 = tmp_to_use && true;

(* _191 = h0_173 >> 51; *)
usplit v191 tmp_to_use h0173 51;
(* h1_193 = h1_176 + _191; *)
uadd h1193 h1176 v191;
(* _194 = (long unsigned int) h0_173; *)
cast v194@uint64 h0173@uint128;
(* g0_195 = _194 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g0195 v194 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g0195 = tmp_to_use2;
assume g0195 = tmp_to_use && true;

(* _196 = h3_188 >> 51; *)
usplit v196 tmp_to_use h3188 51;
(* h4_198 = h4_185 + _196; *)
uadd h4198 h4185 v196;
(* _199 = (long unsigned int) h3_188; *)
cast v199@uint64 h3188@uint128;
(* g3_20 = _199 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g320 v199 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g320 = tmp_to_use2;
assume g320 = tmp_to_use && true;

(* _201 = h1_193 >> 51; *)
usplit v201 tmp_to_use h1193 51;
(* _202 = (long unsigned int) _201; *)
vpc v202@uint64 v201@uint128;
(* g2_203 = g2_190 + _202; *)
uadd g2203 g2190 v202;
(* _204 = (long unsigned int) h1_193; *)
cast v204@uint64 h1193@uint128;
(* g1_205 = _204 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g1205 v204 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g1205 = tmp_to_use2;
assume g1205 = tmp_to_use && true;

(* _206 = h4_198 >> 51; *)
usplit v206 tmp_to_use h4198 51;
(* _207 = (long unsigned int) _206; *)
vpc v207@uint64 v206@uint128;
(* _208 = _207 * 19; *)
umul v208 v207 0x13@uint64;
(* g0_209 = g0_195 + _208; *)
uadd g0209 g0195 v208;
(* _210 = (long unsigned int) h4_198; *)
cast v210@uint64 h4198@uint128;
(* g4_211 = _210 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g4211 v210 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g4211 = tmp_to_use2;
assume g4211 = tmp_to_use && true;

(* _212 = g2_203 >> 51; *)
usplit v212 tmp_to_use g2203 51;
(* g3_213 = g3_20 + _212; *)
uadd g3213 g320 v212;
(* g2_214 = g2_203 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g2214 g2203 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g2214 = tmp_to_use2;
assume g2214 = tmp_to_use && true;

(* _215 = g0_209 >> 51; *)
usplit v215 tmp_to_use g0209 51;
(* g1_216 = g1_205 + _215; *)
uadd g1216 g1205 v215;
(* g0_217 = g0_209 & 2251799813685247; *)
(* Note: 0x7ffffffffffff@uint64 = 0x07ffffffffffff *)
(* Note: 0x7ffffffffffff@uint64 = 0b000000111111111111111111111111111111111111111111111111111 *)
and uint64 g0217 g0209 0x7ffffffffffff@uint64;

vpc uint64 tmp_to_use2 tmp_to_use;
assert true && g0217 = tmp_to_use2;
assume g0217 = tmp_to_use && true;

(* MEM[(uint64_t * )&z3] = g0_217; *)
mov z3_0 g0217;
(* MEM[(uint64_t * )&z3 + 8B] = g1_216; *)
mov z3_8 g1216;
(* MEM[(uint64_t * )&z3 + 16B] = g2_214; *)
mov z3_16 g2214;
(* MEM[(uint64_t * )&z3 + 24B] = g3_213; *)
mov z3_24 g3213;
(* MEM[(uint64_t * )&z3 + 32B] = g4_211; *)
mov z3_32 g4211;
(* fe51_sq (&x3, &x3); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_sq(x3_0,x3_8,x3_16,x3_24,x3_32,x3_0,x3_8,x3_16,x3_24,x3_32);
(* vect__21.513_302 = MEM[(const uint64_t * )&tmp0]; *)
mov vect__21513302_0 tmp0_0;
mov vect__21513302_1 tmp0_8;
(* vect__21.514_304 = MEM[(const uint64_t * )&tmp0 + 16B]; *)
mov vect__21514304_0 tmp0_16;
mov vect__21514304_1 tmp0_24;
(* vect__22.517_306 = MEM[(const uint64_t * )&z3]; *)
mov vect__22517306_0 z3_0;
mov vect__22517306_1 z3_8;
(* vect__22.518_308 = MEM[(const uint64_t * )&z3 + 16B]; *)
mov vect__22518308_0 z3_16;
mov vect__22518308_1 z3_24;
(* vect__23.519_310 = vect__21.513_302 + vect__22.517_306; *)
uadd vect__23519310_0 vect__21513302_0 vect__22517306_0;
uadd vect__23519310_1 vect__21513302_1 vect__22517306_1;
(* vect__23.519_311 = vect__21.514_304 + vect__22.518_308; *)
uadd vect__23519311_0 vect__21514304_0 vect__22518308_0;
uadd vect__23519311_1 vect__21514304_1 vect__22518308_1;
(* MEM[(uint64_t * )&tmp0] = vect__23.519_310; *)
mov tmp0_0 vect__23519310_0;
mov tmp0_8 vect__23519310_1;
(* MEM[(uint64_t * )&tmp0 + 16B] = vect__23.519_311; *)
mov tmp0_16 vect__23519311_0;
mov tmp0_24 vect__23519311_1;
(* _33 = MEM[(const uint64_t * )&tmp0 + 32B]; *)
mov v33 tmp0_32;
(* _34 = MEM[(const uint64_t * )&z3 + 32B]; *)
mov v34 z3_32;
(* _35 = _33 + _34; *)
uadd v35 v33 v34;
(* MEM[(uint64_t * )&tmp0 + 32B] = _35; *)
mov tmp0_32 v35;
(* fe51_mul (&z3, &x1, &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_mul(x1_0,x1_8,x1_16,x1_24,x1_32,z2_0,z2_8,z2_16,z2_24,z2_32,z3_0,z3_8,z3_16,z3_24,z3_32);
(* fe51_mul (&z2, &tmp1, &tmp0); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
call fe51_mul(tmp1_0,tmp1_8,tmp1_16,tmp1_24,tmp1_32,tmp0_0,tmp0_8,tmp0_16,tmp0_24,tmp0_32,z2_0,z2_8,z2_16,z2_24,z2_32);
(* fe51_tobytes (out_12(D), &z2); *)
(* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte *)
(* x1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z2 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* x3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* z3 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp0 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* tmp1 ={v} {CLOBBER}; *)
(* TODO: Skip translation for constructor *)
(* return; *)


(* Start with unused lhs *)
mov _ tmp0_0@uint64;
mov _ tmp0_8@uint64;
mov _ tmp0_16@uint64;
mov _ tmp0_24@uint64;
mov _ tmp0_32@uint64;
mov X2Final_0 x2_0@uint64;
mov X2Final_1 x2_8@uint64;
mov X2Final_2 x2_16@uint64;
mov X2Final_3 x2_24@uint64;
mov X2Final_4 x2_32@uint64;
mov X3Final_0 x3_0@uint64;
mov X3Final_1 x3_8@uint64;
mov X3Final_2 x3_16@uint64;
mov X3Final_3 x3_24@uint64;
mov X3Final_4 x3_32@uint64;
mov Z2Final_0 z2_0@uint64;
mov Z2Final_1 z2_8@uint64;
mov Z2Final_2 z2_16@uint64;
mov Z2Final_3 z2_24@uint64;
mov Z2Final_4 z2_32@uint64;
(* End with unsed lhs *)

mov Z3Final_0 z3_0@uint64;
mov Z3Final_1 z3_8@uint64;
mov Z3Final_2 z3_16@uint64;
mov Z3Final_3 z3_24@uint64;
mov Z3Final_4 z3_32@uint64;

{
  and 
  [
     (* condition 1 *)
      eqmod
      (limbs 51 [X2p_0, X2p_1, X2p_2, X2p_3, X2p_4])
      (sq (sub
                (sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]))
                (sq (limbs 51 [Z2_0, Z2_1,Z2_2, Z2_3, Z2_4]))))
      (2**255 - 19) ,

    (* condition 2 *)
    eqmod
    (limbs 51 [Z2Final_0, Z2Final_1, Z2Final_2, Z2Final_3, Z2Final_4])
    (mul
    [
        4,
        limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4],
        limbs 51 [Z2_0, Z2_1, Z2_2 ,Z2_3, Z2_4],
        add [
            sq (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]),
            mul 
                [
                    486662,
                    limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4],
                    limbs 51 [Z2_0, Z2_1, Z2_2 ,Z2_3, Z2_4]
                ],
                sq (limbs 51 [Z2_0, Z2_1, Z2_2 ,Z2_3, Z2_4])
            ]
    ])
    (2**255 - 19),

    (* condition 3-1 *)

     eqmod
     (limbs 51 [X3Final_0, X3Final_1, X3Final_2, X3Final_3, X3Final_4])
     (mul (4)
             (sq (sub (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]) (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                            (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]) (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
     (2**255 - 19),

    (* condition 3-2 *)

     eqmod
     (limbs 51 [Z3Final_0, Z3Final_1, Z3Final_2, Z3Final_3, Z3Final_4])
     (mul (4)
             (mul (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4])
                     (sq (sub (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]) (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
                                    (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4]) (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))))
     (2**255 - 19),

     (* condition 3 *)

    eqmod
    (mul (limbs 51 [X3Final_0, X3Final_1, X3Final_2, X3Final_3, X3Final_4])
            (mul (limbs 51 [X1_0, X1_1, X1_2, X1_3, X1_4])
                    (sq (sub (mul (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4])
                                            (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4]))
                                    (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                                            (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4]))))))
    (mul (limbs 51 [Z3Final_0, Z3Final_1, Z3Final_2, Z3Final_3, Z3Final_4])
            (sq (sub (mul (limbs 51 [X2_0, X2_1, X2_2, X2_3, X2_4])
                                    (limbs 51 [X3_0, X3_1, X3_2, X3_3, X3_4]))
                            (mul (limbs 51 [Z2_0, Z2_1, Z2_2, Z2_3, Z2_4])
                                    (limbs 51 [Z3_0, Z3_1, Z3_2, Z3_3, Z3_4])))))
    (2**255 - 19)
  ]
  &&
  true
}

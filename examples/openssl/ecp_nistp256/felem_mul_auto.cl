proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov in12_0@uint128 _;
mov in12_16@uint128 _;
mov in12_32@uint128 _;
mov in12_48@uint128 _;
mov small2_0@uint64 _;
mov small2_8@uint64 _;
mov small2_16@uint64 _;
mov small2_24@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _98 = MEM[(const limb *)in1_2(D) + 48B]; */
mov v98 in12_48;
/* _99 = _98 + 18446744069414584320; */
uadd v99 v98 0xffffffff00000000@uint128;
/* _100 = MEM[(const limb *)in1_2(D) + 32B]; */
mov v100 in12_32;
/* _101 = _100 >> 64; */
usplit v101 tmp_to_use v100 64;
/* _102 = _99 + _101; */
uadd v102 v99 v101;
/* _103 = _100 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v103 v100 0xffffffffffffffff@uint128;
/* _104 = _103 + 18446673704965373952; */
uadd v104 v103 0xffffc00000000000@uint128;
/* _105 = *in1_2(D); */
mov v105 in12_0;
/* _106 = _105 + 18446744073709551615; */
uadd v106 v105 0xffffffffffffffff@uint128;
/* _107 = MEM[(const limb *)in1_2(D) + 16B]; */
mov v107 in12_16;
/* _108 = _107 + 0x40000000000000000000ffffffff; */
uadd v108 v107 0x40000000000000000000ffffffff@uint128;
/* _109 = _102 >> 64; */
usplit v109 tmp_to_use v102 64;
/* a_110 = (u64) _109; */
cast a110@uint64 v109@uint128;
/* _111 = _102 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v111 v102 0xffffffffffffffff@uint128;
/* _113 = _109 << 32; */
usplit tmp1 tmp2 v109 96;
shl v113 tmp2 32;
/* TODO: check tmp1 heuristic */
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
/* _179 = _113 - _109; */
usub v179 v113 v109;
/* _114 = _111 + _179; */
uadd v114 v111 v179;
/* _115 = _114 >> 64; */
usplit v115 tmp_to_use v114 64;
/* a_116 = (u64) _115; */
cast a116@uint64 v115@uint128;
/* b_117 = a_110 + a_116; */
uadd b117 a110 a116;
/* _118 = _114 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v118 v114 0xffffffffffffffff@uint128;
/* _120 = _115 << 32; */
usplit tmp1 tmp2 v115 96;
shl v120 tmp2 32;
/* TODO: check tmp1 heuristic */
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
/* _178 = _120 - _115; */
usub v178 v120 v115;
/* _121 = _118 + _178; */
uadd v121 v118 v178;
/* _122 = (__int128 unsigned) b_117; */
vpc v122@uint128 b117@uint64;
/* _123 = _106 + _122; */
uadd v123 v106 v122;
/* _124 = _122 << 32; */
usplit tmp1 tmp2 v122 96;
shl v124 tmp2 32;
/* TODO: check tmp1 heuristic */
assert true && tmp1 = 0@128;
assume tmp1 = 0 && true;
/* _125 = _108 - _124; */
usub v125 v108 v124;
/* _126 = _121 >> 64; */
usplit v126 tmp_to_use v121 64;
/* high_127 = (u64) _126; */
cast high127@uint64 v126@uint128;
/* high_128 = -high_127; */
/* TODO: check negation semantics */
usubb carry high128 0@uint64 high127;
/* low_129 = (u64) _121; */
cast low129@uint64 v121@uint128;
/* low0_130 = (signed long) _121; */
cast v130@int64 v121@uint128;
/* _131 = low0_130 >> 63; */
/* TODO: signed operation, need check */
ssplit v131 tmp_to_use v130 63;
/* mask_132 = (u64) _131; */
cast mask132@uint64 v131@int64;
/* low_133 = low_129 & 9223372036854775807; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 low133 low129 0x7fffffffffffffff@uint64;
/* low_134 = low_133 + 9223372041149743103; */
uadd low134 low133 0x80000000ffffffff@uint64;
/* low_135 = ~low_134; */
not uint64 low135 low134;
/* low1_136 = (signed long) low_135; */
cast v136@int64 low135@uint64;
/* _137 = low1_136 >> 63; */
/* TODO: signed operation, need check */
ssplit v137 tmp_to_use v136 63;
/* low_138 = (u64) _137; */
cast low138@uint64 v137@int64;
/* _139 = mask_132 & low_138; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v139 mask132 low138;
/* mask_140 = high_128 | _139; */
/* TODO: Bitwise And/Or , may need assert and assume */
or uint64 mask140 high128 v139;
/* _141 = (__int128 unsigned) mask_140; */
vpc v141@uint128 mask140@uint64;
/* _142 = _123 - _141; */
usub v142 v123 v141;
/* _143 = mask_140 & 4294967295; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v143 mask140 0xffffffff@uint64;
/* _144 = (__int128 unsigned) _143; */
vpc v144@uint128 v143@uint64;
/* _145 = _125 - _144; */
usub v145 v125 v144;
/* _146 = mask_140 & 18446744069414584321; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint64 v146 mask140 0xffffffff00000001@uint64;
/* _147 = (__int128 unsigned) _146; */
vpc v147@uint128 v146@uint64;
/* _148 = _121 - _147; */
usub v148 v121 v147;
/* _149 = _142 >> 64; */
usplit v149 tmp_to_use v142 64;
/* _150 = _145 + _149; */
uadd v150 v145 v149;
/* _152 = _150 >> 64; */
usplit v152 tmp_to_use v150 64;
/* _153 = _104 + _152; */
uadd v153 v104 v152;
/* _155 = _153 >> 64; */
usplit v155 tmp_to_use v153 64;
/* _156 = _148 + _155; */
uadd v156 v148 v155;
/* felem_shrink (&small2, in2_4(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* _159 = _142 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v159 v142 0xffffffffffffffff@uint128;
/* _12 = MEM[(const u64 *)&small2]; */
mov v12 small2_0;
/* _13 = (__int128 unsigned) _12; */
vpc v13@uint128 v12@uint64;
/* a_14 = _13 * _159; */
umul a14 v13 v159;
/* _15 = a_14 >> 64; */
usplit v15 tmp_to_use a14 64;
/* _16 = a_14 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v16 a14 0xffffffffffffffff@uint128;
/* *out_6(D) = _16; */
mov out6_0 v16;
/* _17 = MEM[(const u64 *)&small2 + 8B]; */
mov v17 small2_8;
/* _18 = (__int128 unsigned) _17; */
vpc v18@uint128 v17@uint64;
/* a_19 = _18 * _159; */
umul a19 v18 v159;
/* _20 = a_19 >> 64; */
usplit v20 tmp_to_use a19 64;
/* _21 = a_19 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v21 a19 0xffffffffffffffff@uint128;
/* _22 = _15 + _21; */
uadd v22 v15 v21;
/* _160 = _150 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v160 v150 0xffffffffffffffff@uint128;
/* a_25 = _13 * _160; */
umul a25 v13 v160;
/* _26 = a_25 >> 64; */
usplit v26 tmp_to_use a25 64;
/* _27 = a_25 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v27 a25 0xffffffffffffffff@uint128;
/* _28 = _22 + _27; */
uadd v28 v22 v27;
/* MEM[(limb *)out_6(D) + 16B] = _28; */
mov out6_16 v28;
/* _30 = MEM[(const u64 *)&small2 + 16B]; */
mov v30 small2_16;
/* _31 = (__int128 unsigned) _30; */
vpc v31@uint128 v30@uint64;
/* a_32 = _31 * _159; */
umul a32 v31 v159;
/* _33 = a_32 >> 64; */
usplit v33 tmp_to_use a32 64;
/* _34 = a_32 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v34 a32 0xffffffffffffffff@uint128;
/* _177 = _20 + _34; */
uadd v177 v20 v34;
/* _35 = _26 + _177; */
uadd v35 v26 v177;
/* a_36 = _18 * _160; */
umul a36 v18 v160;
/* _37 = a_36 >> 64; */
usplit v37 tmp_to_use a36 64;
/* _38 = a_36 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v38 a36 0xffffffffffffffff@uint128;
/* _39 = _35 + _38; */
uadd v39 v35 v38;
/* _161 = _153 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v161 v153 0xffffffffffffffff@uint128;
/* a_43 = _13 * _161; */
umul a43 v13 v161;
/* _44 = a_43 >> 64; */
usplit v44 tmp_to_use a43 64;
/* _45 = a_43 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v45 a43 0xffffffffffffffff@uint128;
/* _46 = _39 + _45; */
uadd v46 v39 v45;
/* MEM[(limb *)out_6(D) + 32B] = _46; */
mov out6_32 v46;
/* _48 = MEM[(const u64 *)&small2 + 24B]; */
mov v48 small2_24;
/* _49 = (__int128 unsigned) _48; */
vpc v49@uint128 v48@uint64;
/* a_50 = _49 * _159; */
umul a50 v49 v159;
/* _51 = a_50 >> 64; */
usplit v51 tmp_to_use a50 64;
/* _52 = a_50 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v52 a50 0xffffffffffffffff@uint128;
/* _174 = _33 + _52; */
uadd v174 v33 v52;
/* _175 = _37 + _174; */
uadd v175 v37 v174;
/* a_54 = _31 * _160; */
umul a54 v31 v160;
/* _55 = a_54 >> 64; */
usplit v55 tmp_to_use a54 64;
/* _56 = a_54 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v56 a54 0xffffffffffffffff@uint128;
/* _176 = _56 + _175; */
uadd v176 v56 v175;
/* _57 = _44 + _176; */
uadd v57 v44 v176;
/* a_59 = _18 * _161; */
umul a59 v18 v161;
/* _60 = a_59 >> 64; */
usplit v60 tmp_to_use a59 64;
/* _61 = a_59 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v61 a59 0xffffffffffffffff@uint128;
/* _62 = _57 + _61; */
uadd v62 v57 v61;
/* _162 = _156 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v162 v156 0xffffffffffffffff@uint128;
/* a_66 = _13 * _162; */
umul a66 v13 v162;
/* _67 = a_66 >> 64; */
usplit v67 tmp_to_use a66 64;
/* _68 = a_66 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v68 a66 0xffffffffffffffff@uint128;
/* _69 = _62 + _68; */
uadd v69 v62 v68;
/* MEM[(limb *)out_6(D) + 48B] = _69; */
mov out6_48 v69;
/* a_71 = _49 * _160; */
umul a71 v49 v160;
/* _72 = a_71 >> 64; */
usplit v72 tmp_to_use a71 64;
/* _73 = a_71 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v73 a71 0xffffffffffffffff@uint128;
/* _7 = _55 + _73; */
uadd v7 v55 v73;
/* _171 = _7 + _51; */
uadd v171 v7 v51;
/* _172 = _60 + _171; */
uadd v172 v60 v171;
/* a_75 = _31 * _161; */
umul a75 v31 v161;
/* _76 = a_75 >> 64; */
usplit v76 tmp_to_use a75 64;
/* _77 = a_75 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v77 a75 0xffffffffffffffff@uint128;
/* _173 = _77 + _172; */
uadd v173 v77 v172;
/* _78 = _67 + _173; */
uadd v78 v67 v173;
/* a_80 = _18 * _162; */
umul a80 v18 v162;
/* _81 = a_80 >> 64; */
usplit v81 tmp_to_use a80 64;
/* _82 = a_80 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v82 a80 0xffffffffffffffff@uint128;
/* _83 = _78 + _82; */
uadd v83 v78 v82;
/* MEM[(limb *)out_6(D) + 64B] = _83; */
mov out6_64 v83;
/* a_85 = _49 * _161; */
umul a85 v49 v161;
/* _86 = a_85 >> 64; */
usplit v86 tmp_to_use a85 64;
/* _87 = a_85 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v87 a85 0xffffffffffffffff@uint128;
/* _64 = _76 + _87; */
uadd v64 v76 v87;
/* _3 = _64 + _72; */
uadd v3 v64 v72;
/* _88 = _3 + _81; */
uadd v88 v3 v81;
/* a_89 = _31 * _162; */
umul a89 v31 v162;
/* _90 = a_89 >> 64; */
usplit v90 tmp_to_use a89 64;
/* _91 = a_89 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v91 a89 0xffffffffffffffff@uint128;
/* _92 = _88 + _91; */
uadd v92 v88 v91;
/* MEM[(limb *)out_6(D) + 80B] = _92; */
mov out6_80 v92;
/* a_94 = _49 * _162; */
umul a94 v49 v162;
/* _95 = a_94 >> 64; */
usplit v95 tmp_to_use a94 64;
/* _96 = a_94 & 18446744073709551615; */
/* TODO: Bitwise And/Or , may need assert and assume */
and uint128 v96 a94 0xffffffffffffffff@uint128;
/* _41 = _90 + _96; */
uadd v41 v90 v96;
/* _97 = _41 + _86; */
uadd v97 v41 v86;
/* MEM[(limb *)out_6(D) + 96B] = _97; */
mov out6_96 v97;
/* MEM[(limb *)out_6(D) + 112B] = _95; */
mov out6_112 v95;
/* small2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* return; */


/* Start with unused lhs */
mov _ out6_0@uint128;
mov _ out6_16@uint128;
mov _ out6_32@uint128;
mov _ out6_48@uint128;
mov _ out6_64@uint128;
mov _ out6_80@uint128;
mov _ out6_96@uint128;
mov _ out6_112@uint128;
/* End with unsed lhs */


{
  true
  &&
  true
}

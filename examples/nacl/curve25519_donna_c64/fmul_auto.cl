proc main () = 
{
  true
  &&
  true
}


(* Start with undefined rhs *)
mov in299_0@uint64 _;
mov in299_8@uint64 _;
mov in299_16@uint64 _;
mov in299_24@uint64 _;
mov in299_32@uint64 _;
mov in98_0@uint64 _;
mov in98_8@uint64 _;
mov in98_16@uint64 _;
mov in98_24@uint64 _;
mov in98_32@uint64 _;
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
(* _92 = (long unsigned int) _88; *)
cast v92@uint64 v88@uint128;
(* *output_100(D) = _92; *)
mov output100_0 v92;
(* _93 = (long unsigned int) _91; *)
cast v93@uint64 v91@uint128;
(* MEM[(felem * )output_100(D) + 8B] = _93; *)
mov output100_8 v93;
(* _94 = (long unsigned int) _90; *)
cast v94@uint64 v90@uint128;
(* MEM[(felem * )output_100(D) + 16B] = _94; *)
mov output100_16 v94;
(* _95 = (long unsigned int) _81; *)
cast v95@uint64 v81@uint128;
(* MEM[(felem * )output_100(D) + 24B] = _95; *)
mov output100_24 v95;
(* _96 = (long unsigned int) _85; *)
cast v96@uint64 v85@uint128;
(* MEM[(felem * )output_100(D) + 32B] = _96; *)
mov output100_32 v96;
(* return; *)


(* Start with unused lhs *)
mov _ output100_0@uint64;
mov _ output100_8@uint64;
mov _ output100_16@uint64;
mov _ output100_24@uint64;
mov _ output100_32@uint64;
(* End with unsed lhs *)


{
  true
  &&
  true
}

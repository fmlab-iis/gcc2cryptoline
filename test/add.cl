proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov op117_0@uint64 _;
mov op117_8@uint64 _;
mov op117_16@uint64 _;
mov op117_24@uint64 _;
mov op117_32@uint64 _;
mov op218_0@uint64 _;
mov op218_8@uint64 _;
mov op218_16@uint64 _;
mov op218_24@uint64 _;
mov op218_32@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _1 = *op1_17(D); */
mov v1 op117_0;
/* _2 = *op2_18(D); */
mov v2 op218_0;
/* _3 = _1 + _2; */
uadd v3 v1 v2;
/* *sum_19(D) = _3; */
mov sum19_0 v3;
/* _4 = MEM[(limb *)op1_17(D) + 8B]; */
mov v4 op117_8;
/* _5 = MEM[(limb *)op2_18(D) + 8B]; */
mov v5 op218_8;
/* _6 = _4 + _5; */
uadd v6 v4 v5;
/* *sum_19(D) = _6; */
mov sum19_0 v6;
/* _7 = MEM[(limb *)op1_17(D) + 16B]; */
mov v7 op117_16;
/* _8 = MEM[(limb *)op2_18(D) + 16B]; */
mov v8 op218_16;
/* _9 = _7 + _8; */
uadd v9 v7 v8;
/* *sum_19(D) = _9; */
mov sum19_0 v9;
/* _10 = MEM[(limb *)op1_17(D) + 24B]; */
mov v10 op117_24;
/* _11 = MEM[(limb *)op2_18(D) + 24B]; */
mov v11 op218_24;
/* _12 = _10 + _11; */
uadd v12 v10 v11;
/* *sum_19(D) = _12; */
mov sum19_0 v12;
/* _13 = MEM[(limb *)op1_17(D) + 32B]; */
mov v13 op117_32;
/* _14 = MEM[(limb *)op2_18(D) + 32B]; */
mov v14 op218_32;
/* _15 = _13 + _14; */
uadd v15 v13 v14;
/* *sum_19(D) = _15; */
mov sum19_0 v15;
/* return; */


/* Start with unused lhs */
mov _ sum19_0@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

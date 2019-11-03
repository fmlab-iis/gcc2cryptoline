proc main ( uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
            uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
{
  true
  &&
  and[
    a0 <u (2**51)@64,
    a1 <u (2**51)@64,
    a2 <u (2**51)@64,
    a3 <u (2**51)@64,
    a4 <u (2**51)@64,
    b0 <u (2**51)@64,
    b1 <u (2**51)@64,
    b2 <u (2**51)@64,
    b3 <u (2**51)@64,
    b4 <u (2**51)@64
  ]
}


/* Start with undefined rhs */
mov op117_0@uint64 a0;
mov op117_8@uint64 a1;
mov op117_16@uint64 a2;
mov op117_24@uint64 a3;
mov op117_32@uint64 a4;
mov op218_0@uint64 b0;
mov op218_8@uint64 b1;
mov op218_16@uint64 b2;
mov op218_24@uint64 b3;
mov op218_32@uint64 b4;
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
/* MEM[(limb *)sum_19(D) + 8B] = _6; */
mov sum19_8 v6;
/* _7 = MEM[(limb *)op1_17(D) + 16B]; */
mov v7 op117_16;
/* _8 = MEM[(limb *)op2_18(D) + 16B]; */
mov v8 op218_16;
/* _9 = _7 + _8; */
uadd v9 v7 v8;
/* MEM[(limb *)sum_19(D) + 16B] = _9; */
mov sum19_16 v9;
/* _10 = MEM[(limb *)op1_17(D) + 24B]; */
mov v10 op117_24;
/* _11 = MEM[(limb *)op2_18(D) + 24B]; */
mov v11 op218_24;
/* _12 = _10 + _11; */
uadd v12 v10 v11;
/* MEM[(limb *)sum_19(D) + 24B] = _12; */
mov sum19_24 v12;
/* _13 = MEM[(limb *)op1_17(D) + 32B]; */
mov v13 op117_32;
/* _14 = MEM[(limb *)op2_18(D) + 32B]; */
mov v14 op218_32;
/* _15 = _13 + _14; */
uadd v15 v13 v14;
/* MEM[(limb *)sum_19(D) + 32B] = _15; */
mov sum19_32 v15;
/* return; */


/* Start with unused lhs */
mov c0 sum19_0@uint64;
mov c1 sum19_8@uint64;
mov c2 sum19_16@uint64;
mov c3 sum19_24@uint64;
mov c4 sum19_32@uint64;
/* End with unsed lhs */


{
  (limbs 51 [c0, c1, c2, c3, c4])
  =
  (
    (limbs 51 [a0, a1, a2, a3, a4])
    +
    (limbs 51 [b0, b1, b2, b3, b4])
  )
  (mod (2**255 - 19)) /* can omit this line here */
  &&
  and [
    c0 <u (2**52)@64,
    c1 <u (2**52)@64,
    c2 <u (2**52)@64,
    c3 <u (2**52)@64,
    c4 <u (2**52)@64
  ]
}

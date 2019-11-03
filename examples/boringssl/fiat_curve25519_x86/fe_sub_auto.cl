proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov f5_0@uint32 _;
mov f5_4@uint32 _;
mov f5_8@uint32 _;
mov f5_12@uint32 _;
mov f5_16@uint32 _;
mov f5_20@uint32 _;
mov f5_24@uint32 _;
mov f5_28@uint32 _;
mov f5_32@uint32 _;
mov f5_36@uint32 _;
mov g4_0@uint32 _;
mov g4_4@uint32 _;
mov g4_8@uint32 _;
mov g4_12@uint32 _;
mov g4_16@uint32 _;
mov g4_20@uint32 _;
mov g4_24@uint32 _;
mov g4_28@uint32 _;
mov g4_32@uint32 _;
mov g4_36@uint32 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* x20_9 = MEM[(const uint32_t *)f_5(D) + 36B]; */
mov x209 f5_36;
/* x21_10 = MEM[(const uint32_t *)f_5(D) + 32B]; */
mov x2110 f5_32;
/* vect_x5_18601_8 = MEM[(const uint32_t *)f_5(D)]; */
mov vect_x5_186018_0 f5_0;
mov vect_x5_186018_4 f5_4;
mov vect_x5_186018_8 f5_8;
mov vect_x5_186018_12 f5_12;
/* vect_x5_18602_1 = MEM[(const uint32_t *)f_5(D) + 16B]; */
mov vect_x5_186021_0 f5_16;
mov vect_x5_186021_4 f5_20;
mov vect_x5_186021_8 f5_24;
mov vect_x5_186021_12 f5_28;
/* x38_19 = MEM[(const uint32_t *)g_4(D) + 36B]; */
mov x3819 g4_36;
/* x39_20 = MEM[(const uint32_t *)g_4(D) + 32B]; */
mov x3920 g4_32;
/* vect_x23_28606_29 = MEM[(const uint32_t *)g_4(D)]; */
mov vect_x23_2860629_0 g4_0;
mov vect_x23_2860629_4 g4_4;
mov vect_x23_2860629_8 g4_8;
mov vect_x23_2860629_12 g4_12;
/* vect_x23_28607_33 = MEM[(const uint32_t *)g_4(D) + 16B]; */
mov vect_x23_2860733_0 g4_16;
mov vect_x23_2860733_4 g4_20;
mov vect_x23_2860733_8 g4_24;
mov vect_x23_2860733_12 g4_28;
/* vect__74603_62 = vect_x5_18601_8 + { 134217690, 67108862, 134217726, 67108862 }; */
uadd vect__7460362_0 vect_x5_186018_0 0x7ffffda@uint32;
uadd vect__7460362_4 vect_x5_186018_4 0x3fffffe@uint32;
uadd vect__7460362_8 vect_x5_186018_8 0x7fffffe@uint32;
uadd vect__7460362_12 vect_x5_186018_12 0x3fffffe@uint32;
/* vect__74603_63 = vect_x5_18602_1 + { 134217726, 67108862, 134217726, 67108862 }; */
uadd vect__7460363_0 vect_x5_186021_0 0x7fffffe@uint32;
uadd vect__7460363_4 vect_x5_186021_4 0x3fffffe@uint32;
uadd vect__7460363_8 vect_x5_186021_8 0x7fffffe@uint32;
uadd vect__7460363_12 vect_x5_186021_12 0x3fffffe@uint32;
/* vect__30608_37 = vect__74603_62 - vect_x23_28606_29; */
usub vect__3060837_0 vect__7460362_0 vect_x23_2860629_0;
usub vect__3060837_4 vect__7460362_4 vect_x23_2860629_4;
usub vect__3060837_8 vect__7460362_8 vect_x23_2860629_8;
usub vect__3060837_12 vect__7460362_12 vect_x23_2860629_12;
/* vect__30608_39 = vect__74603_63 - vect_x23_28607_33; */
usub vect__3060839_0 vect__7460363_0 vect_x23_2860733_0;
usub vect__3060839_4 vect__7460363_4 vect_x23_2860733_4;
usub vect__3060839_8 vect__7460363_8 vect_x23_2860733_8;
usub vect__3060839_12 vect__7460363_12 vect_x23_2860733_12;
/* MEM[(uint32_t *)h_6(D)] = vect__30608_37; */
mov h6_0 vect__3060837_0;
mov h6_4 vect__3060837_4;
mov h6_8 vect__3060837_8;
mov h6_12 vect__3060837_12;
/* MEM[(uint32_t *)h_6(D) + 16B] = vect__30608_39; */
mov h6_16 vect__3060839_0;
mov h6_20 vect__3060839_4;
mov h6_24 vect__3060839_8;
mov h6_28 vect__3060839_12;
/* _66 = x21_10 + 134217726; */
uadd v66 x2110 0x7fffffe@uint32;
/* _46 = _66 - x39_20; */
usub v46 v66 x3920;
/* MEM[(uint32_t *)h_6(D) + 32B] = _46; */
mov h6_32 v46;
/* _65 = x20_9 + 67108862; */
uadd v65 x209 0x3fffffe@uint32;
/* _48 = _65 - x38_19; */
usub v48 v65 x3819;
/* MEM[(uint32_t *)h_6(D) + 36B] = _48; */
mov h6_36 v48;
/* return; */


/* Start with unused lhs */
mov _ h6_0@uint32;
mov _ h6_4@uint32;
mov _ h6_8@uint32;
mov _ h6_12@uint32;
mov _ h6_16@uint32;
mov _ h6_20@uint32;
mov _ h6_24@uint32;
mov _ h6_28@uint32;
mov _ h6_32@uint32;
mov _ h6_36@uint32;
/* End with unsed lhs */


{
  true
  &&
  true
}

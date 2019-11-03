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
/* vect_x5_18590_8 = MEM[(const uint32_t *)f_5(D)]; */
mov vect_x5_185908_0 f5_0;
mov vect_x5_185908_4 f5_4;
mov vect_x5_185908_8 f5_8;
mov vect_x5_185908_12 f5_12;
/* vect_x5_18591_1 = MEM[(const uint32_t *)f_5(D) + 16B]; */
mov vect_x5_185911_0 f5_16;
mov vect_x5_185911_4 f5_20;
mov vect_x5_185911_8 f5_24;
mov vect_x5_185911_12 f5_28;
/* x38_19 = MEM[(const uint32_t *)g_4(D) + 36B]; */
mov x3819 g4_36;
/* x39_20 = MEM[(const uint32_t *)g_4(D) + 32B]; */
mov x3920 g4_32;
/* vect_x23_28594_51 = MEM[(const uint32_t *)g_4(D)]; */
mov vect_x23_2859451_0 g4_0;
mov vect_x23_2859451_4 g4_4;
mov vect_x23_2859451_8 g4_8;
mov vect_x23_2859451_12 g4_12;
/* vect_x23_28595_53 = MEM[(const uint32_t *)g_4(D) + 16B]; */
mov vect_x23_2859553_0 g4_16;
mov vect_x23_2859553_4 g4_20;
mov vect_x23_2859553_8 g4_24;
mov vect_x23_2859553_12 g4_28;
/* vect__29596_55 = vect_x5_18590_8 + vect_x23_28594_51; */
uadd vect__2959655_0 vect_x5_185908_0 vect_x23_2859451_0;
uadd vect__2959655_4 vect_x5_185908_4 vect_x23_2859451_4;
uadd vect__2959655_8 vect_x5_185908_8 vect_x23_2859451_8;
uadd vect__2959655_12 vect_x5_185908_12 vect_x23_2859451_12;
/* vect__29596_56 = vect_x5_18591_1 + vect_x23_28595_53; */
uadd vect__2959656_0 vect_x5_185911_0 vect_x23_2859553_0;
uadd vect__2959656_4 vect_x5_185911_4 vect_x23_2859553_4;
uadd vect__2959656_8 vect_x5_185911_8 vect_x23_2859553_8;
uadd vect__2959656_12 vect_x5_185911_12 vect_x23_2859553_12;
/* MEM[(uint32_t *)h_6(D)] = vect__29596_55; */
mov h6_0 vect__2959655_0;
mov h6_4 vect__2959655_4;
mov h6_8 vect__2959655_8;
mov h6_12 vect__2959655_12;
/* MEM[(uint32_t *)h_6(D) + 16B] = vect__29596_56; */
mov h6_16 vect__2959656_0;
mov h6_20 vect__2959656_4;
mov h6_24 vect__2959656_8;
mov h6_28 vect__2959656_12;
/* _37 = x21_10 + x39_20; */
uadd v37 x2110 x3920;
/* MEM[(uint32_t *)h_6(D) + 32B] = _37; */
mov h6_32 v37;
/* _38 = x20_9 + x38_19; */
uadd v38 x209 x3819;
/* MEM[(uint32_t *)h_6(D) + 36B] = _38; */
mov h6_36 v38;
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

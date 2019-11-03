proc main (
           uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4,
           uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9,
           uint32 b0, uint32 b1, uint32 b2, uint32 b3, uint32 b4,
           uint32 b5, uint32 b6, uint32 b7, uint32 b8, uint32 b9
          ) =
{
  true
  &&
  and [
   a0 <=u (0x4666666)@32,
   a1 <=u (0x2333333)@32,
   a2 <=u (0x4666666)@32,
   a3 <=u (0x2333333)@32,
   a4 <=u (0x4666666)@32,
   a5 <=u (0x2333333)@32,
   a6 <=u (0x4666666)@32,
   a7 <=u (0x2333333)@32,
   a8 <=u (0x4666666)@32,
   a9 <=u (0x2333333)@32,
   b0 <=u (0x4666666)@32,
   b1 <=u (0x2333333)@32,
   b2 <=u (0x4666666)@32,
   b3 <=u (0x2333333)@32,
   b4 <=u (0x4666666)@32,
   b5 <=u (0x2333333)@32,
   b6 <=u (0x4666666)@32,
   b7 <=u (0x2333333)@32,
   b8 <=u (0x4666666)@32,
   b9 <=u (0x2333333)@32
  ]
}


/* Start with undefined rhs */
mov f5_0@uint32 a0;
mov f5_4@uint32 a1;
mov f5_8@uint32 a2;
mov f5_12@uint32 a3;
mov f5_16@uint32 a4;
mov f5_20@uint32 a5;
mov f5_24@uint32 a6;
mov f5_28@uint32 a7;
mov f5_32@uint32 a8;
mov f5_36@uint32 a9;
mov g4_0@uint32 b0;
mov g4_4@uint32 b1;
mov g4_8@uint32 b2;
mov g4_12@uint32 b3;
mov g4_16@uint32 b4;
mov g4_20@uint32 b5;
mov g4_24@uint32 b6;
mov g4_28@uint32 b7;
mov g4_32@uint32 b8;
mov g4_36@uint32 b9;
/* End with undefined rhs */

/* BB's index is 2 */

/* x20_9 = MEM[(const uint32_t *) f_5(D) + 36B]; */
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
mov c0 h6_0@uint32;
mov c1 h6_4@uint32;
mov c2 h6_8@uint32;
mov c3 h6_12@uint32;
mov c4 h6_16@uint32;
mov c5 h6_20@uint32;
mov c6 h6_24@uint32;
mov c7 h6_28@uint32;
mov c8 h6_32@uint32;
mov c9 h6_36@uint32;
/* End with unsed lhs */

{
  (
    c0 +
    c1 * (2**26) + c2 * (2**51) +
    c3 * (2**77) + c4 * (2**102) +
    c5 * (2**128) + c6 * (2**153) +
    c7 * (2**179) + c8 * (2**204) +
    c9 * (2**230)
  )
  =
  (
    (
      a0 +
      a1 * (2**26) + a2 * (2**51) +
      a3 * (2**77) + a4 * (2**102) +
      a5 * (2**128) + a6 * (2**153) +
      a7 * (2**179) + a8 * (2**204) +
      a9 * (2**230)
    )
    +
    (
      b0 +
      b1 * (2**26) + b2 * (2**51) +
      b3 * (2**77) + b4 * (2**102) +
      b5 * (2**128) + b6 * (2**153) +
      b7 * (2**179) + b8 * (2**204) +
      b9 * (2**230)
    )
  )
  (mod (2**255 - 19))
  &&
  and
  [
    c0 <=u (0xd333332)@32,
    c1 <=u (0x6999999)@32,
    c2 <=u (0xd333332)@32,
    c3 <=u (0x6999999)@32,
    c4 <=u (0xd333332)@32,
    c5 <=u (0x6999999)@32,
    c6 <=u (0xd333332)@32,
    c7 <=u (0x6999999)@32,
    c8 <=u (0xd333332)@32,
    c9 <=u (0x6999999)@32
  ]
}

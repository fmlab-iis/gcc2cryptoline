proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov a62_0@uint64 _;
mov a62_8@uint64 _;
mov a62_16@uint64 _;
mov a62_24@uint64 _;
mov b63_0@uint64 _;
mov b63_8@uint64 _;
mov b63_16@uint64 _;
mov b63_24@uint64 _;
mov tmpb241_0@uint64 _;
mov tmpb680_0@uint64 _;
mov tmpb821_0@uint64 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* _545 = *a_62(D); */
mov v545 a62_0;
/* _547 = *b_63(D); */
mov v547 b63_0;
/* r_549 = _545 w* _547; */
umulj r549 v545 v547;
/* _550 = (long long unsigned int) r_549; */
cast v550@uint64 r549@uint128;
/* _557 = r_549 >> 64; */
usplit v557 tmp_to_use r549 64;
/* _558 = (long long unsigned int) _557; */
cast v558@uint64 v557@uint128;
/* *c_60(D) = _550; */
mov c60_0 v550;
/* _660 = *a_62(D); */
mov v660 a62_0;
/* _662 = MEM[(const dig_t *)b_63(D) + 8B]; */
mov v662 b63_8;
/* r_664 = _660 w* _662; */
umulj r664 v660 v662;
/* _665 = (long long unsigned int) r_664; */
cast v665@uint64 r664@uint128;
/* _447 = ADD_OVERFLOW (_558, _665); */
adds carry v447_REAL v558 v665;
adc v447_IMAGE 0@uint64 0@uint64 carry;
/* r0_666 = REALPART_EXPR <_447>; */
mov r0666 v447_REAL;
/* _349 = IMAGPART_EXPR <_447>; */
mov v349 v447_IMAGE;
/* _667 = _349 != 0; */
subb gt_value dontcare 0x0@uint64 v349;
mov v667 gt_value;
vpc v667@uint8 v667@uint1;
/* _668 = (long long unsigned int) _667; */
vpc v668@uint64 v667@uint8;
/* _672 = r_664 >> 64; */
usplit v672 tmp_to_use r664 64;
/* _673 = (long long unsigned int) _672; */
cast v673@uint64 v672@uint128;
/* _374 = ADD_OVERFLOW (_668, _673); */
adds carry v374_REAL v668 v673;
adc v374_IMAGE 0@uint64 0@uint64 carry;
/* r1_674 = REALPART_EXPR <_374>; */
mov r1674 v374_REAL;
/* _64 = IMAGPART_EXPR <_374>; */
mov v64 v374_IMAGE;
/* _675 = _64 != 0; */
subb gt_value dontcare 0x0@uint64 v64;
mov v675 gt_value;
vpc v675@uint8 v675@uint1;
/* _676 = (long long unsigned int) _675; */
vpc v676@uint64 v675@uint8;
/* tmpb_680 = b_63(D); */
mov tmpb680 b63_0;
/* _686 = MEM[(const dig_t *)a_62(D) + 8B]; */
mov v686 a62_8;
/* _688 = *tmpb_680; */
mov v688 tmpb680_0;
/* r_690 = _686 w* _688; */
umulj r690 v686 v688;
/* _691 = (long long unsigned int) r_690; */
cast v691@uint64 r690@uint128;
/* _43 = ADD_OVERFLOW (r0_666, _691); */
adds carry v43_REAL r0666 v691;
adc v43_IMAGE 0@uint64 0@uint64 carry;
/* r0_692 = REALPART_EXPR <_43>; */
mov r0692 v43_REAL;
/* _303 = IMAGPART_EXPR <_43>; */
mov v303 v43_IMAGE;
/* _693 = _303 != 0; */
subb gt_value dontcare 0x0@uint64 v303;
mov v693 gt_value;
vpc v693@uint8 v693@uint1;
/* _694 = (long long unsigned int) _693; */
vpc v694@uint64 v693@uint8;
/* _213 = ADD_OVERFLOW (r1_674, _694); */
adds carry v213_REAL r1674 v694;
adc v213_IMAGE 0@uint64 0@uint64 carry;
/* r1_695 = REALPART_EXPR <_213>; */
mov r1695 v213_REAL;
/* _774 = IMAGPART_EXPR <_213>; */
mov v774 v213_IMAGE;
/* _696 = _774 != 0; */
subb gt_value dontcare 0x0@uint64 v774;
mov v696 gt_value;
vpc v696@uint8 v696@uint1;
/* _697 = (long long unsigned int) _696; */
vpc v697@uint64 v696@uint8;
/* _698 = r_690 >> 64; */
usplit v698 tmp_to_use r690 64;
/* _699 = (long long unsigned int) _698; */
cast v699@uint64 v698@uint128;
/* _795 = ADD_OVERFLOW (r1_695, _699); */
adds carry v795_REAL r1695 v699;
adc v795_IMAGE 0@uint64 0@uint64 carry;
/* r1_700 = REALPART_EXPR <_795>; */
mov r1700 v795_REAL;
/* _659 = IMAGPART_EXPR <_795>; */
mov v659 v795_IMAGE;
/* _701 = _659 != 0; */
subb gt_value dontcare 0x0@uint64 v659;
mov v701 gt_value;
vpc v701@uint8 v701@uint1;
/* _702 = (long long unsigned int) _701; */
vpc v702@uint64 v701@uint8;
/* _125 = _676 + _697; */
uadd v125 v676 v697;
/* r2_704 = _125 + _702; */
uadd r2704 v125 v702;
/* MEM[(dig_t *)c_60(D) + 8B] = r0_692; */
mov c60_8 r0692;
/* _775 = *a_62(D); */
mov v775 a62_0;
/* _777 = MEM[(const dig_t *)b_63(D) + 16B]; */
mov v777 b63_16;
/* r_779 = _775 w* _777; */
umulj r779 v775 v777;
/* _780 = (long long unsigned int) r_779; */
cast v780@uint64 r779@uint128;
/* _564 = ADD_OVERFLOW (r1_700, _780); */
adds carry v564_REAL r1700 v780;
adc v564_IMAGE 0@uint64 0@uint64 carry;
/* r0_781 = REALPART_EXPR <_564>; */
mov r0781 v564_REAL;
/* _276 = IMAGPART_EXPR <_564>; */
mov v276 v564_IMAGE;
/* _782 = _276 != 0; */
subb gt_value dontcare 0x0@uint64 v276;
mov v782 gt_value;
vpc v782@uint8 v782@uint1;
/* _783 = (long long unsigned int) _782; */
vpc v783@uint64 v782@uint8;
/* _302 = ADD_OVERFLOW (r2_704, _783); */
adds carry v302_REAL r2704 v783;
adc v302_IMAGE 0@uint64 0@uint64 carry;
/* r1_784 = REALPART_EXPR <_302>; */
mov r1784 v302_REAL;
/* _212 = IMAGPART_EXPR <_302>; */
mov v212 v302_IMAGE;
/* _785 = _212 != 0; */
subb gt_value dontcare 0x0@uint64 v212;
mov v785 gt_value;
vpc v785@uint8 v785@uint1;
/* _786 = (long long unsigned int) _785; */
vpc v786@uint64 v785@uint8;
/* _787 = r_779 >> 64; */
usplit v787 tmp_to_use r779 64;
/* _788 = (long long unsigned int) _787; */
cast v788@uint64 v787@uint128;
/* _240 = ADD_OVERFLOW (r1_784, _788); */
adds carry v240_REAL r1784 v788;
adc v240_IMAGE 0@uint64 0@uint64 carry;
/* r1_789 = REALPART_EXPR <_240>; */
mov r1789 v240_REAL;
/* _820 = IMAGPART_EXPR <_240>; */
mov v820 v240_IMAGE;
/* _790 = _820 != 0; */
subb gt_value dontcare 0x0@uint64 v820;
mov v790 gt_value;
vpc v790@uint8 v790@uint1;
/* _791 = (long long unsigned int) _790; */
vpc v791@uint64 v790@uint8;
/* _792 = _786 + _791; */
uadd v792 v786 v791;
/* _801 = MEM[(const dig_t *)a_62(D) + 8B]; */
mov v801 a62_8;
/* _803 = MEM[(const dig_t *)b_63(D) + 8B]; */
mov v803 b63_8;
/* r_805 = _801 w* _803; */
umulj r805 v801 v803;
/* _806 = (long long unsigned int) r_805; */
cast v806@uint64 r805@uint128;
/* _544 = ADD_OVERFLOW (r0_781, _806); */
adds carry v544_REAL r0781 v806;
adc v544_IMAGE 0@uint64 0@uint64 carry;
/* r0_807 = REALPART_EXPR <_544>; */
mov r0807 v544_REAL;
/* _551 = IMAGPART_EXPR <_544>; */
mov v551 v544_IMAGE;
/* _808 = _551 != 0; */
subb gt_value dontcare 0x0@uint64 v551;
mov v808 gt_value;
vpc v808@uint8 v808@uint1;
/* _809 = (long long unsigned int) _808; */
vpc v809@uint64 v808@uint8;
/* _559 = ADD_OVERFLOW (r1_789, _809); */
adds carry v559_REAL r1789 v809;
adc v559_IMAGE 0@uint64 0@uint64 carry;
/* r1_810 = REALPART_EXPR <_559>; */
mov r1810 v559_REAL;
/* _565 = IMAGPART_EXPR <_559>; */
mov v565 v559_IMAGE;
/* _811 = _565 != 0; */
subb gt_value dontcare 0x0@uint64 v565;
mov v811 gt_value;
vpc v811@uint8 v811@uint1;
/* _812 = (long long unsigned int) _811; */
vpc v812@uint64 v811@uint8;
/* _813 = r_805 >> 64; */
usplit v813 tmp_to_use r805 64;
/* _814 = (long long unsigned int) _813; */
cast v814@uint64 v813@uint128;
/* _669 = ADD_OVERFLOW (r1_810, _814); */
adds carry v669_REAL r1810 v814;
adc v669_IMAGE 0@uint64 0@uint64 carry;
/* r1_815 = REALPART_EXPR <_669>; */
mov r1815 v669_REAL;
/* _677 = IMAGPART_EXPR <_669>; */
mov v677 v669_IMAGE;
/* _816 = _677 != 0; */
subb gt_value dontcare 0x0@uint64 v677;
mov v816 gt_value;
vpc v816@uint8 v816@uint1;
/* _817 = (long long unsigned int) _816; */
vpc v817@uint64 v816@uint8;
/* _137 = _792 + _812; */
uadd v137 v792 v812;
/* r2_819 = _137 + _817; */
uadd r2819 v137 v817;
/* tmpb_821 = b_63(D); */
mov tmpb821 b63_0;
/* _827 = MEM[(const dig_t *)a_62(D) + 16B]; */
mov v827 a62_16;
/* _829 = *tmpb_821; */
mov v829 tmpb821_0;
/* r_831 = _827 w* _829; */
umulj r831 v827 v829;
/* _832 = (long long unsigned int) r_831; */
cast v832@uint64 r831@uint128;
/* _678 = ADD_OVERFLOW (r0_807, _832); */
adds carry v678_REAL r0807 v832;
adc v678_IMAGE 0@uint64 0@uint64 carry;
/* r0_833 = REALPART_EXPR <_678>; */
mov r0833 v678_REAL;
/* _679 = IMAGPART_EXPR <_678>; */
mov v679 v678_IMAGE;
/* _834 = _679 != 0; */
subb gt_value dontcare 0x0@uint64 v679;
mov v834 gt_value;
vpc v834@uint8 v834@uint1;
/* _835 = (long long unsigned int) _834; */
vpc v835@uint64 v834@uint8;
/* _705 = ADD_OVERFLOW (r1_815, _835); */
adds carry v705_REAL r1815 v835;
adc v705_IMAGE 0@uint64 0@uint64 carry;
/* r1_836 = REALPART_EXPR <_705>; */
mov r1836 v705_REAL;
/* _706 = IMAGPART_EXPR <_705>; */
mov v706 v705_IMAGE;
/* _837 = _706 != 0; */
subb gt_value dontcare 0x0@uint64 v706;
mov v837 gt_value;
vpc v837@uint8 v837@uint1;
/* _838 = (long long unsigned int) _837; */
vpc v838@uint64 v837@uint8;
/* _839 = r_831 >> 64; */
usplit v839 tmp_to_use r831 64;
/* _840 = (long long unsigned int) _839; */
cast v840@uint64 v839@uint128;
/* _793 = ADD_OVERFLOW (r1_836, _840); */
adds carry v793_REAL r1836 v840;
adc v793_IMAGE 0@uint64 0@uint64 carry;
/* r1_841 = REALPART_EXPR <_793>; */
mov r1841 v793_REAL;
/* _794 = IMAGPART_EXPR <_793>; */
mov v794 v793_IMAGE;
/* _842 = _794 != 0; */
subb gt_value dontcare 0x0@uint64 v794;
mov v842 gt_value;
vpc v842@uint8 v842@uint1;
/* _843 = (long long unsigned int) _842; */
vpc v843@uint64 v842@uint8;
/* _184 = r2_819 + _838; */
uadd v184 r2819 v838;
/* r2_845 = _184 + _843; */
uadd r2845 v184 v843;
/* MEM[(dig_t *)c_60(D) + 16B] = r0_833; */
mov c60_16 r0833;
/* _99 = *a_62(D); */
mov v99 a62_0;
/* _97 = MEM[(const dig_t *)b_63(D) + 24B]; */
mov v97 b63_24;
/* r_95 = _97 w* _99; */
umulj r95 v97 v99;
/* _93 = (long long unsigned int) r_95; */
cast v93@uint64 r95@uint128;
/* _846 = ADD_OVERFLOW (_93, r1_841); */
adds carry v846_REAL v93 r1841;
adc v846_IMAGE 0@uint64 0@uint64 carry;
/* r0_83 = REALPART_EXPR <_846>; */
mov r083 v846_REAL;
/* _847 = IMAGPART_EXPR <_846>; */
mov v847 v846_IMAGE;
/* _75 = _847 != 0; */
subb gt_value dontcare 0x0@uint64 v847;
mov v75 gt_value;
vpc v75@uint8 v75@uint1;
/* _68 = (long long unsigned int) _75; */
vpc v68@uint64 v75@uint8;
/* _46 = ADD_OVERFLOW (_68, r2_845); */
adds carry v46_REAL v68 r2845;
adc v46_IMAGE 0@uint64 0@uint64 carry;
/* r1_59 = REALPART_EXPR <_46>; */
mov r159 v46_REAL;
/* _44 = IMAGPART_EXPR <_46>; */
mov v44 v46_IMAGE;
/* _58 = _44 != 0; */
subb gt_value dontcare 0x0@uint64 v44;
mov v58 gt_value;
vpc v58@uint8 v58@uint1;
/* _56 = (long long unsigned int) _58; */
vpc v56@uint64 v58@uint8;
/* _53 = r_95 >> 64; */
usplit v53 tmp_to_use r95 64;
/* _52 = (long long unsigned int) _53; */
cast v52@uint64 v53@uint128;
/* _72 = ADD_OVERFLOW (_52, r1_59); */
adds carry v72_REAL v52 r159;
adc v72_IMAGE 0@uint64 0@uint64 carry;
/* r1_50 = REALPART_EXPR <_72>; */
mov r150 v72_REAL;
/* _73 = IMAGPART_EXPR <_72>; */
mov v73 v72_IMAGE;
/* _49 = _73 != 0; */
subb gt_value dontcare 0x0@uint64 v73;
mov v49 gt_value;
vpc v49@uint8 v49@uint1;
/* _48 = (long long unsigned int) _49; */
vpc v48@uint64 v49@uint8;
/* _47 = _48 + _56; */
uadd v47 v48 v56;
/* _15 = MEM[(const dig_t *)a_62(D) + 8B]; */
mov v15 a62_8;
/* _205 = MEM[(const dig_t *)b_63(D) + 16B]; */
mov v205 b63_16;
/* r_200 = _15 w* _205; */
umulj r200 v15 v205;
/* _201 = (long long unsigned int) r_200; */
cast v201@uint64 r200@uint128;
/* _77 = ADD_OVERFLOW (r0_83, _201); */
adds carry v77_REAL r083 v201;
adc v77_IMAGE 0@uint64 0@uint64 carry;
/* r0_202 = REALPART_EXPR <_77>; */
mov r0202 v77_REAL;
/* _203 = IMAGPART_EXPR <_77>; */
mov v203 v77_IMAGE;
/* _199 = _203 != 0; */
subb gt_value dontcare 0x0@uint64 v203;
mov v199 gt_value;
vpc v199@uint8 v199@uint1;
/* _198 = (long long unsigned int) _199; */
vpc v198@uint64 v199@uint8;
/* _251 = ADD_OVERFLOW (r1_50, _198); */
adds carry v251_REAL r150 v198;
adc v251_IMAGE 0@uint64 0@uint64 carry;
/* r1_197 = REALPART_EXPR <_251>; */
mov r1197 v251_REAL;
/* _275 = IMAGPART_EXPR <_251>; */
mov v275 v251_IMAGE;
/* _194 = _275 != 0; */
subb gt_value dontcare 0x0@uint64 v275;
mov v194 gt_value;
vpc v194@uint8 v194@uint1;
/* _195 = (long long unsigned int) _194; */
vpc v195@uint64 v194@uint8;
/* _196 = r_200 >> 64; */
usplit v196 tmp_to_use r200 64;
/* _79 = (long long unsigned int) _196; */
cast v79@uint64 v196@uint128;
/* _277 = ADD_OVERFLOW (_79, r1_197); */
adds carry v277_REAL v79 r1197;
adc v277_IMAGE 0@uint64 0@uint64 carry;
/* r1_206 = REALPART_EXPR <_277>; */
mov r1206 v277_REAL;
/* _328 = IMAGPART_EXPR <_277>; */
mov v328 v277_IMAGE;
/* _207 = _328 != 0; */
subb gt_value dontcare 0x0@uint64 v328;
mov v207 gt_value;
vpc v207@uint8 v207@uint1;
/* _208 = (long long unsigned int) _207; */
vpc v208@uint64 v207@uint8;
/* _767 = _47 + _195; */
uadd v767 v47 v195;
/* r2_210 = _208 + _767; */
uadd r2210 v208 v767;
/* _220 = MEM[(const dig_t *)a_62(D) + 16B]; */
mov v220 a62_16;
/* _222 = MEM[(const dig_t *)b_63(D) + 8B]; */
mov v222 b63_8;
/* r_224 = _220 w* _222; */
umulj r224 v220 v222;
/* _225 = (long long unsigned int) r_224; */
cast v225@uint64 r224@uint128;
/* _329 = ADD_OVERFLOW (r0_202, _225); */
adds carry v329_REAL r0202 v225;
adc v329_IMAGE 0@uint64 0@uint64 carry;
/* r0_226 = REALPART_EXPR <_329>; */
mov r0226 v329_REAL;
/* _373 = IMAGPART_EXPR <_329>; */
mov v373 v329_IMAGE;
/* _227 = _373 != 0; */
subb gt_value dontcare 0x0@uint64 v373;
mov v227 gt_value;
vpc v227@uint8 v227@uint1;
/* _228 = (long long unsigned int) _227; */
vpc v228@uint64 v227@uint8;
/* _375 = ADD_OVERFLOW (r1_206, _228); */
adds carry v375_REAL r1206 v228;
adc v375_IMAGE 0@uint64 0@uint64 carry;
/* r1_229 = REALPART_EXPR <_375>; */
mov r1229 v375_REAL;
/* _400 = IMAGPART_EXPR <_375>; */
mov v400 v375_IMAGE;
/* _230 = _400 != 0; */
subb gt_value dontcare 0x0@uint64 v400;
mov v230 gt_value;
vpc v230@uint8 v230@uint1;
/* _231 = (long long unsigned int) _230; */
vpc v231@uint64 v230@uint8;
/* _232 = r_224 >> 64; */
usplit v232 tmp_to_use r224 64;
/* _233 = (long long unsigned int) _232; */
cast v233@uint64 v232@uint128;
/* _401 = ADD_OVERFLOW (r1_229, _233); */
adds carry v401_REAL r1229 v233;
adc v401_IMAGE 0@uint64 0@uint64 carry;
/* r1_234 = REALPART_EXPR <_401>; */
mov r1234 v401_REAL;
/* _463 = IMAGPART_EXPR <_401>; */
mov v463 v401_IMAGE;
/* _235 = _463 != 0; */
subb gt_value dontcare 0x0@uint64 v463;
mov v235 gt_value;
vpc v235@uint8 v235@uint1;
/* _236 = (long long unsigned int) _235; */
vpc v236@uint64 v235@uint8;
/* _768 = r2_210 + _231; */
uadd v768 r2210 v231;
/* r2_238 = _236 + _768; */
uadd r2238 v236 v768;
/* tmpb_241 = b_63(D); */
mov tmpb241 b63_0;
/* _3 = MEM[(const dig_t *)a_62(D) + 24B]; */
mov v3 a62_24;
/* _5 = *tmpb_241; */
mov v5 tmpb241_0;
/* r_65 = _3 w* _5; */
umulj r65 v3 v5;
/* _7 = (long long unsigned int) r_65; */
cast v7@uint64 r65@uint128;
/* _464 = ADD_OVERFLOW (_7, r0_226); */
adds carry v464_REAL v7 r0226;
adc v464_IMAGE 0@uint64 0@uint64 carry;
/* r0_66 = REALPART_EXPR <_464>; */
mov r066 v464_REAL;
/* _468 = IMAGPART_EXPR <_464>; */
mov v468 v464_IMAGE;
/* _9 = _468 != 0; */
subb gt_value dontcare 0x0@uint64 v468;
mov v9 gt_value;
vpc v9@uint8 v9@uint1;
/* _10 = (long long unsigned int) _9; */
vpc v10@uint64 v9@uint8;
/* _469 = ADD_OVERFLOW (_10, r1_234); */
adds carry v469_REAL v10 r1234;
adc v469_IMAGE 0@uint64 0@uint64 carry;
/* r1_67 = REALPART_EXPR <_469>; */
mov r167 v469_REAL;
/* _470 = IMAGPART_EXPR <_469>; */
mov v470 v469_IMAGE;
/* _11 = _470 != 0; */
subb gt_value dontcare 0x0@uint64 v470;
mov v11 gt_value;
vpc v11@uint8 v11@uint1;
/* _12 = (long long unsigned int) _11; */
vpc v12@uint64 v11@uint8;
/* _13 = r_65 >> 64; */
usplit v13 tmp_to_use r65 64;
/* _14 = (long long unsigned int) _13; */
cast v14@uint64 v13@uint128;
/* _471 = ADD_OVERFLOW (_14, r1_67); */
adds carry v471_REAL v14 r167;
adc v471_IMAGE 0@uint64 0@uint64 carry;
/* r1_69 = REALPART_EXPR <_471>; */
mov r169 v471_REAL;
/* _472 = IMAGPART_EXPR <_471>; */
mov v472 v471_IMAGE;
/* _17 = _472 != 0; */
subb gt_value dontcare 0x0@uint64 v472;
mov v17 gt_value;
vpc v17@uint8 v17@uint1;
/* _18 = (long long unsigned int) _17; */
vpc v18@uint64 v17@uint8;
/* _769 = _12 + r2_238; */
uadd v769 v12 r2238;
/* r2_70 = _18 + _769; */
uadd r270 v18 v769;
/* MEM[(dig_t *)c_60(D) + 24B] = r0_66; */
mov c60_24 r066;
/* _257 = MEM[(const dig_t *)a_62(D) + 8B]; */
mov v257 a62_8;
/* _259 = MEM[(const dig_t *)b_63(D) + 24B]; */
mov v259 b63_24;
/* r_261 = _257 w* _259; */
umulj r261 v257 v259;
/* _262 = (long long unsigned int) r_261; */
cast v262@uint64 r261@uint128;
/* _473 = ADD_OVERFLOW (r1_69, _262); */
adds carry v473_REAL r169 v262;
adc v473_IMAGE 0@uint64 0@uint64 carry;
/* r0_263 = REALPART_EXPR <_473>; */
mov r0263 v473_REAL;
/* _78 = IMAGPART_EXPR <_473>; */
mov v78 v473_IMAGE;
/* _264 = _78 != 0; */
subb gt_value dontcare 0x0@uint64 v78;
mov v264 gt_value;
vpc v264@uint8 v264@uint1;
/* _265 = (long long unsigned int) _264; */
vpc v265@uint64 v264@uint8;
/* _91 = ADD_OVERFLOW (r2_70, _265); */
adds carry v91_REAL r270 v265;
adc v91_IMAGE 0@uint64 0@uint64 carry;
/* r1_266 = REALPART_EXPR <_91>; */
mov r1266 v91_REAL;
/* _428 = IMAGPART_EXPR <_91>; */
mov v428 v91_IMAGE;
/* _267 = _428 != 0; */
subb gt_value dontcare 0x0@uint64 v428;
mov v267 gt_value;
vpc v267@uint8 v267@uint1;
/* _268 = (long long unsigned int) _267; */
vpc v268@uint64 v267@uint8;
/* _269 = r_261 >> 64; */
usplit v269 tmp_to_use r261 64;
/* _270 = (long long unsigned int) _269; */
cast v270@uint64 v269@uint128;
/* _430 = ADD_OVERFLOW (r1_266, _270); */
adds carry v430_REAL r1266 v270;
adc v430_IMAGE 0@uint64 0@uint64 carry;
/* r1_271 = REALPART_EXPR <_430>; */
mov r1271 v430_REAL;
/* _429 = IMAGPART_EXPR <_430>; */
mov v429 v430_IMAGE;
/* _272 = _429 != 0; */
subb gt_value dontcare 0x0@uint64 v429;
mov v272 gt_value;
vpc v272@uint8 v272@uint1;
/* _273 = (long long unsigned int) _272; */
vpc v273@uint64 v272@uint8;
/* _274 = _268 + _273; */
uadd v274 v268 v273;
/* _283 = MEM[(const dig_t *)a_62(D) + 16B]; */
mov v283 a62_16;
/* _285 = MEM[(const dig_t *)b_63(D) + 16B]; */
mov v285 b63_16;
/* r_287 = _283 w* _285; */
umulj r287 v283 v285;
/* _288 = (long long unsigned int) r_287; */
cast v288@uint64 r287@uint128;
/* _433 = ADD_OVERFLOW (r0_263, _288); */
adds carry v433_REAL r0263 v288;
adc v433_IMAGE 0@uint64 0@uint64 carry;
/* r0_289 = REALPART_EXPR <_433>; */
mov r0289 v433_REAL;
/* _431 = IMAGPART_EXPR <_433>; */
mov v431 v433_IMAGE;
/* _290 = _431 != 0; */
subb gt_value dontcare 0x0@uint64 v431;
mov v290 gt_value;
vpc v290@uint8 v290@uint1;
/* _291 = (long long unsigned int) _290; */
vpc v291@uint64 v290@uint8;
/* _432 = ADD_OVERFLOW (r1_271, _291); */
adds carry v432_REAL r1271 v291;
adc v432_IMAGE 0@uint64 0@uint64 carry;
/* r1_292 = REALPART_EXPR <_432>; */
mov r1292 v432_REAL;
/* _529 = IMAGPART_EXPR <_432>; */
mov v529 v432_IMAGE;
/* _293 = _529 != 0; */
subb gt_value dontcare 0x0@uint64 v529;
mov v293 gt_value;
vpc v293@uint8 v293@uint1;
/* _294 = (long long unsigned int) _293; */
vpc v294@uint64 v293@uint8;
/* _295 = r_287 >> 64; */
usplit v295 tmp_to_use r287 64;
/* _296 = (long long unsigned int) _295; */
cast v296@uint64 v295@uint128;
/* _449 = ADD_OVERFLOW (r1_292, _296); */
adds carry v449_REAL r1292 v296;
adc v449_IMAGE 0@uint64 0@uint64 carry;
/* r1_297 = REALPART_EXPR <_449>; */
mov r1297 v449_REAL;
/* _450 = IMAGPART_EXPR <_449>; */
mov v450 v449_IMAGE;
/* _298 = _450 != 0; */
subb gt_value dontcare 0x0@uint64 v450;
mov v298 gt_value;
vpc v298@uint8 v298@uint1;
/* _299 = (long long unsigned int) _298; */
vpc v299@uint64 v298@uint8;
/* _770 = _274 + _294; */
uadd v770 v274 v294;
/* r2_301 = _299 + _770; */
uadd r2301 v299 v770;
/* _309 = MEM[(const dig_t *)a_62(D) + 24B]; */
mov v309 a62_24;
/* _311 = MEM[(const dig_t *)b_63(D) + 8B]; */
mov v311 b63_8;
/* r_313 = _309 w* _311; */
umulj r313 v309 v311;
/* _314 = (long long unsigned int) r_313; */
cast v314@uint64 r313@uint128;
/* _451 = ADD_OVERFLOW (r0_289, _314); */
adds carry v451_REAL r0289 v314;
adc v451_IMAGE 0@uint64 0@uint64 carry;
/* r0_315 = REALPART_EXPR <_451>; */
mov r0315 v451_REAL;
/* _335 = IMAGPART_EXPR <_451>; */
mov v335 v451_IMAGE;
/* _316 = _335 != 0; */
subb gt_value dontcare 0x0@uint64 v335;
mov v316 gt_value;
vpc v316@uint8 v316@uint1;
/* _317 = (long long unsigned int) _316; */
vpc v317@uint64 v316@uint8;
/* _452 = ADD_OVERFLOW (r1_297, _317); */
adds carry v452_REAL r1297 v317;
adc v452_IMAGE 0@uint64 0@uint64 carry;
/* r1_318 = REALPART_EXPR <_452>; */
mov r1318 v452_REAL;
/* _526 = IMAGPART_EXPR <_452>; */
mov v526 v452_IMAGE;
/* _319 = _526 != 0; */
subb gt_value dontcare 0x0@uint64 v526;
mov v319 gt_value;
vpc v319@uint8 v319@uint1;
/* _320 = (long long unsigned int) _319; */
vpc v320@uint64 v319@uint8;
/* _321 = r_313 >> 64; */
usplit v321 tmp_to_use r313 64;
/* _322 = (long long unsigned int) _321; */
cast v322@uint64 v321@uint128;
/* _527 = ADD_OVERFLOW (r1_318, _322); */
adds carry v527_REAL r1318 v322;
adc v527_IMAGE 0@uint64 0@uint64 carry;
/* r1_323 = REALPART_EXPR <_527>; */
mov r1323 v527_REAL;
/* _528 = IMAGPART_EXPR <_527>; */
mov v528 v527_IMAGE;
/* _324 = _528 != 0; */
subb gt_value dontcare 0x0@uint64 v528;
mov v324 gt_value;
vpc v324@uint8 v324@uint1;
/* _325 = (long long unsigned int) _324; */
vpc v325@uint64 v324@uint8;
/* _771 = r2_301 + _320; */
uadd v771 r2301 v320;
/* r2_327 = _325 + _771; */
uadd r2327 v325 v771;
/* MEM[(dig_t *)c_60(D) + 32B] = r0_315; */
mov c60_32 r0315;
/* _355 = MEM[(const dig_t *)a_62(D) + 16B]; */
mov v355 a62_16;
/* _357 = MEM[(const dig_t *)b_63(D) + 24B]; */
mov v357 b63_24;
/* r_359 = _355 w* _357; */
umulj r359 v355 v357;
/* _360 = (long long unsigned int) r_359; */
cast v360@uint64 r359@uint128;
/* _107 = ADD_OVERFLOW (r1_323, _360); */
adds carry v107_REAL r1323 v360;
adc v107_IMAGE 0@uint64 0@uint64 carry;
/* r0_361 = REALPART_EXPR <_107>; */
mov r0361 v107_REAL;
/* _530 = IMAGPART_EXPR <_107>; */
mov v530 v107_IMAGE;
/* _362 = _530 != 0; */
subb gt_value dontcare 0x0@uint64 v530;
mov v362 gt_value;
vpc v362@uint8 v362@uint1;
/* _363 = (long long unsigned int) _362; */
vpc v363@uint64 v362@uint8;
/* _376 = ADD_OVERFLOW (r2_327, _363); */
adds carry v376_REAL r2327 v363;
adc v376_IMAGE 0@uint64 0@uint64 carry;
/* r1_364 = REALPART_EXPR <_376>; */
mov r1364 v376_REAL;
/* _351 = IMAGPART_EXPR <_376>; */
mov v351 v376_IMAGE;
/* _365 = _351 != 0; */
subb gt_value dontcare 0x0@uint64 v351;
mov v365 gt_value;
vpc v365@uint8 v365@uint1;
/* _366 = (long long unsigned int) _365; */
vpc v366@uint64 v365@uint8;
/* _367 = r_359 >> 64; */
usplit v367 tmp_to_use r359 64;
/* _368 = (long long unsigned int) _367; */
cast v368@uint64 v367@uint128;
/* _352 = ADD_OVERFLOW (r1_364, _368); */
adds carry v352_REAL r1364 v368;
adc v352_IMAGE 0@uint64 0@uint64 carry;
/* r1_369 = REALPART_EXPR <_352>; */
mov r1369 v352_REAL;
/* _353 = IMAGPART_EXPR <_352>; */
mov v353 v352_IMAGE;
/* _370 = _353 != 0; */
subb gt_value dontcare 0x0@uint64 v353;
mov v370 gt_value;
vpc v370@uint8 v370@uint1;
/* _371 = (long long unsigned int) _370; */
vpc v371@uint64 v370@uint8;
/* _372 = _366 + _371; */
uadd v372 v366 v371;
/* _381 = MEM[(const dig_t *)a_62(D) + 24B]; */
mov v381 a62_24;
/* _383 = MEM[(const dig_t *)b_63(D) + 16B]; */
mov v383 b63_16;
/* r_385 = _381 w* _383; */
umulj r385 v381 v383;
/* _386 = (long long unsigned int) r_385; */
cast v386@uint64 r385@uint128;
/* _354 = ADD_OVERFLOW (r0_361, _386); */
adds carry v354_REAL r0361 v386;
adc v354_IMAGE 0@uint64 0@uint64 carry;
/* r0_387 = REALPART_EXPR <_354>; */
mov r0387 v354_REAL;
/* _379 = IMAGPART_EXPR <_354>; */
mov v379 v354_IMAGE;
/* _388 = _379 != 0; */
subb gt_value dontcare 0x0@uint64 v379;
mov v388 gt_value;
vpc v388@uint8 v388@uint1;
/* _389 = (long long unsigned int) _388; */
vpc v389@uint64 v388@uint8;
/* _377 = ADD_OVERFLOW (r1_369, _389); */
adds carry v377_REAL r1369 v389;
adc v377_IMAGE 0@uint64 0@uint64 carry;
/* r1_390 = REALPART_EXPR <_377>; */
mov r1390 v377_REAL;
/* _380 = IMAGPART_EXPR <_377>; */
mov v380 v377_IMAGE;
/* _391 = _380 != 0; */
subb gt_value dontcare 0x0@uint64 v380;
mov v391 gt_value;
vpc v391@uint8 v391@uint1;
/* _392 = (long long unsigned int) _391; */
vpc v392@uint64 v391@uint8;
/* _393 = r_385 >> 64; */
usplit v393 tmp_to_use r385 64;
/* _394 = (long long unsigned int) _393; */
cast v394@uint64 v393@uint128;
/* _378 = ADD_OVERFLOW (r1_390, _394); */
adds carry v378_REAL r1390 v394;
adc v378_IMAGE 0@uint64 0@uint64 carry;
/* r1_395 = REALPART_EXPR <_378>; */
mov r1395 v378_REAL;
/* _109 = IMAGPART_EXPR <_378>; */
mov v109 v378_IMAGE;
/* _396 = _109 != 0; */
subb gt_value dontcare 0x0@uint64 v109;
mov v396 gt_value;
vpc v396@uint8 v396@uint1;
/* _397 = (long long unsigned int) _396; */
vpc v397@uint64 v396@uint8;
/* _122 = _372 + _392; */
uadd v122 v372 v392;
/* r2_399 = _122 + _397; */
uadd r2399 v122 v397;
/* MEM[(dig_t *)c_60(D) + 40B] = r0_387; */
mov c60_40 r0387;
/* _453 = MEM[(const dig_t *)a_62(D) + 24B]; */
mov v453 a62_24;
/* _455 = MEM[(const dig_t *)b_63(D) + 24B]; */
mov v455 b63_24;
/* r_457 = _453 w* _455; */
umulj r457 v453 v455;
/* _458 = (long long unsigned int) r_457; */
cast v458@uint64 r457@uint128;
/* _531 = ADD_OVERFLOW (r1_395, _458); */
adds carry v531_REAL r1395 v458;
adc v531_IMAGE 0@uint64 0@uint64 carry;
/* r0_459 = REALPART_EXPR <_531>; */
mov r0459 v531_REAL;
/* _41 = IMAGPART_EXPR <_531>; */
mov v41 v531_IMAGE;
/* _460 = _41 != 0; */
subb gt_value dontcare 0x0@uint64 v41;
mov v460 gt_value;
vpc v460@uint8 v460@uint1;
/* _461 = (long long unsigned int) _460; */
vpc v461@uint64 v460@uint8;
/* r1_462 = r2_399 + _461; */
uadd r1462 r2399 v461;
/* _465 = r_457 >> 64; */
usplit v465 tmp_to_use r457 64;
/* _466 = (long long unsigned int) _465; */
cast v466@uint64 v465@uint128;
/* r1_467 = r1_462 + _466; */
uadd r1467 r1462 v466;
/* MEM[(dig_t *)c_60(D) + 48B] = r0_459; */
mov c60_48 r0459;
/* MEM[(dig_t *)c_60(D) + 56B] = r1_467; */
mov c60_56 r1467;
/* return; */


/* Start with unused lhs */
mov _ c60_0@uint64;
mov _ c60_8@uint64;
mov _ c60_16@uint64;
mov _ c60_24@uint64;
mov _ c60_32@uint64;
mov _ c60_40@uint64;
mov _ c60_48@uint64;
mov _ c60_56@uint64;
mov _ tmpb241@uint64;
mov _ tmpb680@uint64;
mov _ tmpb821@uint64;
/* End with unsed lhs */


{
  true
  &&
  true
}

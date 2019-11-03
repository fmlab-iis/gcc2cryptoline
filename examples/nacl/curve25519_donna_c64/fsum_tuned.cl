(* @frege
===== Verification =====
Arguments: -jobs 24 -qfbv_solver mathsat -isafety -slicing fsum_tuned.cl
Verification result:                    [OK]            0.222571 seconds
        Command being timed: "verify -jobs 24 -qfbv_solver mathsat -isafety -slicing fsum_tuned.cl"
        User time (seconds): 0.31
        System time (seconds): 0.14
        Percent of CPU this job got: 150%
        Elapsed (wall clock) time (h:mm:ss or m:ss): 0:00.30
        Average shared text size (kbytes): 0
        Average unshared data size (kbytes): 0
        Average stack size (kbytes): 0
        Average total size (kbytes): 0
        Maximum resident set size (kbytes): 10100
        Average resident set size (kbytes): 0
        Major (requiring I/O) page faults: 0
        Minor (reclaiming a frame) page faults: 38073
        Voluntary context switches: 566
        Involuntary context switches: 56
        Swaps: 0
        File system inputs: 0
        File system outputs: 264
        Socket messages sent: 0
        Socket messages received: 0
        Signals delivered: 0
        Page size (bytes): 4096
        Exit status: 0 
*)
(* @mac 
===== Verification =====
Arguments: -jobs 4 -qfbv_solver mathsat -isafety -slicing fsum_tuned.cl
Verification result:			[OK]		0.504607 seconds
        0.59 real         0.28 user         0.39 sys
   5799936  maximum resident set size
         0  average shared memory size
         0  average unshared data size
         0  average unshared stack size
    103298  page reclaims
         0  page faults
         0  swaps
         0  block input operations
        11  block output operations
         0  messages sent
         0  messages received
       138  signals received
       262  voluntary context switches
      2251  involuntary context switches
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) = 
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
mov in12_0@uint64 b0;
mov in12_8@uint64 b1;
mov in12_16@uint64 b2;
mov in12_24@uint64 b3;
mov in12_32@uint64 b4;
mov output11_0@uint64 a0;
mov output11_8@uint64 a1;
mov output11_16@uint64 a2;
mov output11_24@uint64 a3;
mov output11_32@uint64 a4;
(* End with undefined rhs *)



(* BB's index is 2 *)

(* _8 = *output_11(D); *)
mov v8 output11_0;
(* _23 = *in_12(D); *)
mov v23 in12_0;
(* _24 = _8 + _23; *)
uadd v24 v8 v23;
(* *output_11(D) = _24; *)
mov output11_0 v24;
(* _36 = MEM[(felem * )output_11(D) + 8B]; *)
mov v36 output11_8;
(* _38 = MEM[(const felem * )in_12(D) + 8B]; *)
mov v38 in12_8;
(* _39 = _36 + _38; *)
uadd v39 v36 v38;
(* MEM[(felem * )output_11(D) + 8B] = _39; *)
mov output11_8 v39;
(* _49 = MEM[(felem * )output_11(D) + 16B]; *)
mov v49 output11_16;
(* _51 = MEM[(const felem * )in_12(D) + 16B]; *)
mov v51 in12_16;
(* _52 = _49 + _51; *)
uadd v52 v49 v51;
(* MEM[(felem * )output_11(D) + 16B] = _52; *)
mov output11_16 v52;
(* _62 = MEM[(felem * )output_11(D) + 24B]; *)
mov v62 output11_24;
(* _64 = MEM[(const felem * )in_12(D) + 24B]; *)
mov v64 in12_24;
(* _65 = _62 + _64; *)
uadd v65 v62 v64;
(* MEM[(felem * )output_11(D) + 24B] = _65; *)
mov output11_24 v65;
(* _4 = MEM[(felem * )output_11(D) + 32B]; *)
mov v4 output11_32;
(* _6 = MEM[(const felem * )in_12(D) + 32B]; *)
mov v6 in12_32;
(* _7 = _4 + _6; *)
uadd v7 v4 v6;
(* MEM[(felem * )output_11(D) + 32B] = _7; *)
mov output11_32 v7;
(* return; *)


(* Start with unused lhs *)
mov c0 output11_0@uint64;
mov c1 output11_8@uint64;
mov c2 output11_16@uint64;
mov c3 output11_24@uint64;
mov c4 output11_32@uint64;
(* End with unsed lhs *)


{
   (limbs 51 [c0,  c1,  c2,  c3,  c4])
    =
    (
      (limbs 51 [ a0,  a1,  a2,  a3,  a4])
      +
      (limbs 51 [ b0,  b1,  b2,  b3,  b4])
    )
    (mod (2**255 - 19))
  &&
   and [
    c0 <u (2**53)@64,
    c1 <u (2**53)@64,
    c2 <u (2**53)@64,
    c3 <u (2**53)@64,
    c4 <u (2**53)@64
  ]
}


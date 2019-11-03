proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
{
  true
  &&
  and
  [
    a0 < (8*(2**53-1))@64,
    a1 < (8*(2**53-1))@64,
    a2 < (8*(2**53-1))@64,
    a3 < (8*(2**53-1))@64,
    a4 < (8*(2**49-1))@64,
    b0 < (8*(2**53-1))@64,
    b1 < (8*(2**53-1))@64,
    b2 < (8*(2**53-1))@64,
    b3 < (8*(2**53-1))@64,
    b4 < (8*(2**49-1))@64
  ]
}


mov L0x7fff9a47f530 a0;
mov L0x7fff9a47f538 a1;
mov L0x7fff9a47f540 a2;
mov L0x7fff9a47f548 a3;
mov L0x7fff9a47f550 a4;

mov L0x7fff9a47f3e0 b0;
mov L0x7fff9a47f3e8 b1;
mov L0x7fff9a47f3f0 b2;
mov L0x7fff9a47f3f8 b3;
mov L0x7fff9a47f400 b4;

(* secp256k1_fe_mul_inner: *)
(* secp256k1_fe_mul_inner:; *)
(* push   %r15 *)
(* push   %%r15; *)
(* push   %r14 *)
(* push   %%r14; *)
(* push   %r13 *)
(* push   %%r13; *)
(* push   %r12 *)
(* push   %%r12; *)
(* push   %rbx *)
(* push   %%rbx; *)
(* mov    %rdx,%rbx *)
(* mov rbx rdx; *)
(* sub    $0x20,%rsp *)
(* subb carry rsp rsp 0x20@uint64; *)
(* mov    %fs:0x28,%rax *)
(* mov    %fs:0x28,%%rax; *)
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fff9a47f3a8 *)
(* mov L0x7fff9a47f3a8 rax; *)
(* xor    %eax,%eax *)
(* mov rax 0@uint64; *)
(* mov    (%rsi),%r10                              #! EA = L0x7fff9a47f530 *)
mov r10 L0x7fff9a47f530;
(* mov    0x8(%rsi),%r11                           #! EA = L0x7fff9a47f538 *)
mov r11 L0x7fff9a47f538;
(* mov    0x10(%rsi),%r12                          #! EA = L0x7fff9a47f540 *)
mov r12 L0x7fff9a47f540;
(* mov    0x18(%rsi),%r13                          #! EA = L0x7fff9a47f548 *)
mov r13 L0x7fff9a47f548;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fff9a47f550 *)
mov r14 L0x7fff9a47f550;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r13 *)
mull rdx rax rax r13;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;

(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;

(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc  r15 r15 rdx carry;

(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r14 *)
mull rdx rax rax r14;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;

(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
mov tmp rax;

(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;

(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;


(* shrd   $0x34,%r9,%r8 *)

(*
cshl r9 r8 r9 r8 12;

assert true && r8 = tmp;
assume r8 = tmp && true;
*)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = tmp;
assume tmp_to_use = tmp && true;

(* mov    %rcx,%rsi *)
mov rsi rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rsi *)
and uint64 rsi rsi rdx;
(* mov    %rsi,(%rsp)                              #! EA = L0x7fff9a47f390 *)
mov L0x7fff9a47f390 rsi;
(* shrd   $0x34,%r15,%rcx *)
(*
cshl r15 rcx r15 rcx 12;


assert true && rcx = rsi;
assume rcx = rsi && true;
*)

join tmp r15 rcx;
split rcx tmp_to_use tmp 52;

vpc rcx@uint64 rcx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rsi;
assume tmp_to_use = rsi && true;


(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc  r15 r15 rdx carry;

(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;


(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;


(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;

(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc  r15 r15 rdx carry;

(* mov    %rcx,%rsi *)
mov rsi rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rsi *)
and uint64 rsi rsi rdx;
(* shrd   $0x34,%r15,%rcx *)
(*
cshl r15 rcx r15 rcx 12;

assert true && rcx = rsi;
assume rcx = rsi && true;
*)

join tmpp r15 rcx;
split rcx tmp_to_use tmpp 52;

vpc rcx@uint64 rcx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rsi;
assume tmp_to_use = rsi && true;

(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    %rsi,%rax *)
mov rax rsi;
(* shr    $0x30,%rax *)
split rax tmp_to_use rax 0x30;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fff9a47f3a0 *)
mov L0x7fff9a47f3a0 rax;
(* movabs $0xffffffffffff,%rax *)
mov rax 0xffffffffffff@uint64;
(* and    %rax,%rsi *)
and uint64 rsi rsi rax;

assert true && rsi = tmp_to_use;
assume rsi = tmp_to_use && true;

(* mov    %rsi,0x8(%rsp)                           #! EA = L0x7fff9a47f398 *)
mov L0x7fff9a47f398 rsi;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r10 *)
mull rdx rax rax r10;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    %rcx,%rsi *)
mov rsi rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rsi *)
and uint64 rsi rsi rdx;
(* shrd   $0x34,%r15,%rcx *)
(*
cshl r15 rcx r15 rcx 12;

assert true && rcx = rsi;
assume rcx = rsi && true;
*)

join tmpp r15 rcx;
split rcx tmp_to_use tmpp 52;

vpc rcx@uint64 rcx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rsi;
assume tmp_to_use = rsi && true;


(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* shl    $0x4,%rsi *)
shl rsi rsi 0x4;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fff9a47f3a0 *)
mov rax L0x7fff9a47f3a0;
(* or     %rax,%rsi *)
mov old_rsi rsi;
or uint64 rsi rsi rax;

assert true && rsi = old_rsi + rax;
assume rsi = old_rsi + rax && true;

(* movabs $0x1000003d1,%rax *)
mov rax 0x1000003d1@uint64;
(* mul    %rsi *)
mull rdx rax rax rsi;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;

(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,(%rdi)                              #! EA = L0x7fff9a47f410 *)
mov L0x7fff9a47f410 rax;
(* shrd   $0x34,%r9,%r8 *)
(*
cshl r9 r8 r9 r8 12;

assert true && r8 = rax;
assume r8 = rax && true;
*)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;



(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc  r9 r9 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    %rcx,%rax *)
mov rax rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
mov tmp rax;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* shrd   $0x34,%r15,%rcx *)
(*
cshl r15 rcx r15 rcx 12;

assert true && rcx = tmp;
assume rcx = tmp && true;
*)

join tmpp r15 rcx;
split rcx tmp_to_use tmpp 52;

vpc rcx@uint64 rcx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = tmp;
assume tmp_to_use = tmp && true;


(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7fff9a47f418 *)
mov L0x7fff9a47f418 rax;
(* shrd   $0x34,%r9,%r8 *)
(*
cshl r9 r8 r9 r8 12;

assert true && r8 = rax;
assume r8 = rax && true;
*)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;



(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    0x8(%rsp),%rsi                           #! EA = L0x7fff9a47f398 *)
mov rsi L0x7fff9a47f398;
(* mov    (%rsp),%r10                              #! EA = L0x7fff9a47f390 *)
mov r10 L0x7fff9a47f390;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adc r15 r15 rdx carry;
(* mov    %rcx,%rax *)
mov rax rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;

mov tmp rax;

(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;

(* shrd   $0x34,%r15,%rcx *)
(*
cshl r15 rcx r15 rcx 12;

assert true && rcx = tmp;
assume rcx = tmp && true;
*)

join tmpp r15 rcx;
split rcx tmp_to_use tmpp 52;

vpc rcx@uint64 rcx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = tmp;
assume tmp_to_use = tmp && true;


(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fff9a47f420 *)
mov L0x7fff9a47f420 rax;
(* shrd   $0x34,%r9,%r8 *)
(*
cshl r9 r8 r9 r8 12;

assert true && r8 = rax;
assume r8 = rax && true;
*)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;

(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %r10,%r8 *)
add r8 r8 r10;
(* mov    %rcx,%rax *)
mov rax rcx;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;

(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fff9a47f428 *)
mov L0x7fff9a47f428 rax;
(* shrd   $0x34,%r9,%r8 *)

(*
cshl r9 r8 r9 r8 12;

assert true && r8 = rax;
assume r8 = rax && true;
*)

join tmp r9 r8;
split r8 tmp_to_use tmp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;



(* add    %rsi,%r8 *)
add r8 r8 rsi;


(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fff9a47f430 *)
mov L0x7fff9a47f430 r8;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fff9a47f3a8 *)
(* mov rax L0x7fff9a47f3a8; *)
(* xor    %fs:0x28,%rax *)
(* xor    %fs:0x28,%%rax; *)
(* #jne    0x403abd <secp256k1_fe_mul_inner+829> *)
(* #jne    0x403abd <secp256k1_fe_mul_inner+829>; *)
(* add    $0x20,%rsp *)
(* adds carry rsp rsp 0x20@uint64; *)
(* pop    %rbx *)
(* pop    %%rbx; *)
(* pop    %r12 *)
(* pop    %%r12; *)
(* pop    %r13 *)
(* pop    %%r13; *)
(* pop    %r14 *)
(* pop    %%r14; *)
(* pop    %r15 *)
(* pop    %%r15; *)
(* #retq *)
(* #retq; *)

mov c0 L0x7fff9a47f410;
mov c1 L0x7fff9a47f418;
mov c2 L0x7fff9a47f420;
mov c3 L0x7fff9a47f428;
mov c4 L0x7fff9a47f430;

{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      (limbs 52 [a0, a1, a2, a3, a4])
      *
      (limbs 52 [b0, b1, b2, b3, b4])
  )
  (mod 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F)
  &&
  and [
        c0 < (2**53-1)@64,
        c1 < (2**53-1)@64,
        c2 < (2**53-1)@64,
        c3 < (2**53-1)@64,
        c4 < (2**49-1)@64
  ]
}

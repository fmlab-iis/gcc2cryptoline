proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) =
{
  true
  &&
  and
  [
    a0 < (8*(2**53-1))@64,
    a1 < (8*(2**53-1))@64,
    a2 < (8*(2**53-1))@64,
    a3 < (8*(2**53-1))@64,
    a4 < (8*(2**49-1))@64
  ]
}

mov L0x7ffda5b2f950 a0;
mov L0x7ffda5b2f958 a1;
mov L0x7ffda5b2f960 a2;
mov L0x7ffda5b2f968 a3;
mov L0x7ffda5b2f970 a4;

(* secp256k1_fe_sqr_inner: *)
(* secp256k1_fe_sqr_inner:; *)
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
(* sub    $0x20,%rsp *)
(* Note: skip stack operation *)
(* subb carry rsp rsp 0x20@uint64; *)
(* mov    %fs:0x28,%rax *)
(* Note: skip stack canary *)
(* mov    %fs:0x28,%%rax; *)
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7ffda5b2f7c8 *)
(* mov L0x7ffda5b2f7c8 rax; *)
(* xor    %eax,%eax *)
mov rax 0@uint64;
(* mov    (%rsi),%r10                              #! EA = L0x7ffda5b2f950 *)
mov r10 L0x7ffda5b2f950;
(* mov    0x8(%rsi),%r11                           #! EA = L0x7ffda5b2f958 *)
mov r11 L0x7ffda5b2f958;
(* mov    0x10(%rsi),%r12                          #! EA = L0x7ffda5b2f960 *)
mov r12 L0x7ffda5b2f960;
(* mov    0x18(%rsi),%r13                          #! EA = L0x7ffda5b2f968 *)
mov r13 L0x7ffda5b2f968;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7ffda5b2f970 *)
mov r14 L0x7ffda5b2f970;
(* movabs $0xfffffffffffff,%r15 *)
mov r15 0xfffffffffffff@uint64;
(* lea    (%r10,%r10,1),%rax                       #! EA = L0xaced6dae2ff06 *)
mul rax r10 2@uint64;
(* mul    %r13 *)
mull rdx rax rax r13;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* lea    (%r11,%r11,1),%rax                       #! EA = L0x8e929ea6b2c2c *)
mul rax r11 2@uint64;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %r14,%rax *)
mov rax r14;
(* mul    %r14 *)
mull rdx rax rax r14;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* and    %r15,%rax *)
and uint64 rax rax r15;
mov tmp rax;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* shrd   $0x34,%r9,%r8 *)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = tmp;
assume tmp_to_use = tmp && true;

(* mov    %rbx,%rsi *)
mov rsi rbx;
(* and    %r15,%rsi *)
and uint64 rsi rsi r15;
(* mov    %rsi,(%rsp)                              #! EA = L0x7ffda5b2f7b0 *)
mov L0x7ffda5b2f7b0 rsi;
(* shrd   $0x34,%rcx,%rbx *)

join tmpp rcx rbx;
split rbx tmp_to_use tmpp 52;

vpc rbx@uint64 rbx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rsi;
assume tmp_to_use = rsi && true;

(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* add    %r14,%r14 *)
adds carry r14 r14 r14;

assert true && carry = 0@1;
assume carry =0 && true;

(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* lea    (%r11,%r11,1),%rax                       #! EA = L0x8e929ea6b2c2c *)
mul rax r11 2@uint64;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %r12,%rax *)
mov rax r12;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %rbx,%rsi *)
mov rsi rbx;
(* and    %r15,%rsi *)
and uint64 rsi rsi r15;
(* shrd   $0x34,%rcx,%rbx *)

join tmpp rcx rbx;
split rbx tmp_to_use tmpp 52;

vpc rbx@uint64 rbx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rsi;
assume tmp_to_use = rsi && true;

(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* mov    %rsi,%rax *)
mov rax rsi;
(* shr    $0x30,%rax *)
split rax tmp_to_use rax 0x30;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7ffda5b2f7c0 *)
mov L0x7ffda5b2f7c0 rax;
(* movabs $0xffffffffffff,%rax *)
mov rax 0xffffffffffff@uint64;
(* and    %rax,%rsi *)
and uint64 rsi rsi rax;

assert true && rsi = tmp_to_use;
assume rsi = tmp_to_use && true;

(* mov    %rsi,0x8(%rsp)                           #! EA = L0x7ffda5b2f7b8 *)
mov L0x7ffda5b2f7b8 rsi;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r10 *)
mull rdx rax rax r10;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* lea    (%r12,%r12,1),%rax                       #! EA = L0x12565e6a767a86 *)
mul rax r12 2@uint64;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %rbx,%rsi *)
mov rsi rbx;
(* and    %r15,%rsi *)
and uint64 rsi rsi r15;
(* shrd   $0x34,%rcx,%rbx *)

join tmpp rcx rbx;
split rbx tmp_to_use tmpp 52;

vpc rbx@uint64 rbx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rsi;
assume tmp_to_use = rsi && true;

(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* shl    $0x4,%rsi *)
shl rsi rsi 0x4;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7ffda5b2f7c0 *)
mov rax L0x7ffda5b2f7c0;
(* or     %rax,%rsi *)
mov old_rsi  rsi;

or uint64 rsi rsi rax;

assert true && rsi = rax + old_rsi;
assume rsi = rax + old_rsi && true;

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
(* and    %r15,%rax *)
and uint64 rax rax r15;
(* mov    %rax,(%rdi)                              #! EA = L0x7ffda5b2f800 *)
mov L0x7ffda5b2f800 rax;
(* shrd   $0x34,%r9,%r8 *)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;

(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %r10,%r10 *)
adds carry r10 r10 r10;

assert true && carry = 0@1;
assume carry =0 && true;

(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    %r12,%rax *)
mov rax r12;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %r13,%rax *)
mov rax r13;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %rbx,%rax *)
mov rax rbx;
(* and    %r15,%rax *)
and uint64 rax rax r15;
mov tmp rax;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* shrd   $0x34,%rcx,%rbx *)

join tmpp rcx rbx;
split rbx tmp_to_use tmpp 52;

vpc rbx@uint64 rbx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = tmp;
assume tmp_to_use = tmp && true;

(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* mov    %r8,%rax *)
mov rax r8;
(* and    %r15,%rax *)
and uint64 rax rax r15;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7ffda5b2f808 *)
mov L0x7ffda5b2f808 rax;
(* shrd   $0x34,%r9,%r8 *)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;

(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    0x8(%rsp),%rsi                           #! EA = L0x7ffda5b2f7b8 *)
mov rsi L0x7ffda5b2f7b8;
(* mov    (%rsp),%r10                              #! EA = L0x7ffda5b2f7b0 *)
mov r10 L0x7ffda5b2f7b0;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* mov    %r13,%rax *)
mov rax r13;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* mov    %rbx,%rax *)
mov rax rbx;
(* and    %r15,%rax *)
and uint64 rax rax r15;
mov tmp rax;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* shrd   $0x34,%rcx,%rbx *)


join tmpp rcx rbx;
split rbx tmp_to_use tmpp 52;

vpc rbx@uint64 rbx;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = tmp;
assume tmp_to_use = tmp && true;

(* mov    %r8,%rax *)
mov rax r8;
(* and    %r15,%rax *)
and uint64 rax rax r15;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7ffda5b2f810 *)
mov L0x7ffda5b2f810 rax;
(* shrd   $0x34,%r9,%r8 *)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;

(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %r10,%r8 *)
adds carry r8 r8 r10;

assert true && carry = 0@1;
assume carry =0 && true;

(* mov    %rbx,%rax *)
mov rax rbx;
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
(* and    %r15,%rax *)
and uint64 rax rax r15;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7ffda5b2f818 *)
mov L0x7ffda5b2f818 rax;
(* shrd   $0x34,%r9,%r8 *)

join tmpp r9 r8;
split r8 tmp_to_use tmpp 52;

vpc r8@uint64 r8;
vpc tmp_to_use_p@uint64 tmp_to_use;
assert true && tmp_to_use_p = rax;
assume tmp_to_use = rax && true;

(* add    %rsi,%r8 *)
adds carry r8 r8 rsi;

assert true && carry = 0@1;
assume carry =0 && true;

(* mov    %r8,0x20(%rdi)                           #! EA = L0x7ffda5b2f820 *)
mov L0x7ffda5b2f820 r8;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7ffda5b2f7c8 *)
(* mov rax L0x7ffda5b2f7c8; *)
(* xor    %fs:0x28,%rax *)
(* xor    %fs:0x28,%%rax; *)
(* #jne    0x403d2e <secp256k1_fe_sqr_inner+606> *)
(* #jne    0x403d2e <secp256k1_fe_sqr_inner+606>; *)
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

mov c0 L0x7ffda5b2f800;
mov c1 L0x7ffda5b2f808;
mov c2 L0x7ffda5b2f810;
mov c3 L0x7ffda5b2f818;
mov c4 L0x7ffda5b2f820;

{
  (limbs 52 [c0, c1, c2,c3, c4])
  =
  (
      sq
      (limbs 52 [a0, a1, a2, a3, a4])
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


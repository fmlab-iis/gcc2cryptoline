proc main (L0x7ffda5b2f950, L0x7ffda5b2f958, L0x7ffda5b2f960, L0x7ffda5b2f968, L0x7ffda5b2f970, TODO, carry, fs, jne, pop, push, r12, r13, r14, r15, rax, rbx, retq, rsp, secp256k1_fe_sqr_inner, subb, uint64) =
{
  true
  &&
  true
}

(* secp256k1_fe_sqr_inner: *)
secp256k1_fe_sqr_inner:;
(* push   %r15 *)
push   %%r15;
(* push   %r14 *)
push   %%r14;
(* push   %r13 *)
push   %%r13;
(* push   %r12 *)
push   %%r12;
(* push   %rbx *)
push   %%rbx;
(* sub    $0x20,%rsp *)
subb carry rsp rsp 0x20@uint64;
(* mov    %fs:0x28,%rax *)
mov    %fs:0x28,%%rax;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7ffda5b2f7c8 *)
mov L0x7ffda5b2f7c8 rax;
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
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rbx *)
adds carry rbx rbx rax;
(* adc    %rdx,%rcx *)
adc rcx rcx rdx carry;
(* shrd   $0x34,%r9,%r8 *)
(* TODO *);
(* mov    %rbx,%rsi *)
mov rsi rbx;
(* and    %r15,%rsi *)
and uint64 rsi rsi r15;
(* mov    %rsi,(%rsp)                              #! EA = L0x7ffda5b2f7b0 *)
mov L0x7ffda5b2f7b0 rsi;
(* shrd   $0x34,%rcx,%rbx *)
(* TODO *);
(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* add    %r14,%r14 *)
adds carry r14 r14 r14;
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
(* TODO *);
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
(* TODO *);
(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* shl    $0x4,%rsi *)
shl rsi rsi 0x4;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7ffda5b2f7c0 *)
mov rax L0x7ffda5b2f7c0;
(* or     %rax,%rsi *)
or uint64 rsi rsi rax;
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
(* TODO *);
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %r10,%r10 *)
adds carry r10 r10 r10;
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
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* shrd   $0x34,%rcx,%rbx *)
(* TODO *);
(* xor    %rcx,%rcx *)
mov rcx 0@uint64;
(* mov    %r8,%rax *)
mov rax r8;
(* and    %r15,%rax *)
and uint64 rax rax r15;
(* mov    %rax,0x8(%rdi)                           #! EA = L0x7ffda5b2f808 *)
mov L0x7ffda5b2f808 rax;
(* shrd   $0x34,%r9,%r8 *)
(* TODO *);
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
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adc r9 r9 rdx carry;
(* shrd   $0x34,%rcx,%rbx *)
(* TODO *);
(* mov    %r8,%rax *)
mov rax r8;
(* and    %r15,%rax *)
and uint64 rax rax r15;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7ffda5b2f810 *)
mov L0x7ffda5b2f810 rax;
(* shrd   $0x34,%r9,%r8 *)
(* TODO *);
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %r10,%r8 *)
adds carry r8 r8 r10;
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
(* TODO *);
(* add    %rsi,%r8 *)
adds carry r8 r8 rsi;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7ffda5b2f820 *)
mov L0x7ffda5b2f820 r8;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7ffda5b2f7c8 *)
mov rax L0x7ffda5b2f7c8;
(* xor    %fs:0x28,%rax *)
xor    %fs:0x28,%%rax;
(* #jne    0x403d2e <secp256k1_fe_sqr_inner+606> *)
#jne    0x403d2e <secp256k1_fe_sqr_inner+606>;
(* add    $0x20,%rsp *)
adds carry rsp rsp 0x20@uint64;
(* pop    %rbx *)
pop    %%rbx;
(* pop    %r12 *)
pop    %%r12;
(* pop    %r13 *)
pop    %%r13;
(* pop    %r14 *)
pop    %%r14;
(* pop    %r15 *)
pop    %%r15;
(* #retq *)
#retq;

{
  true
  &&
  true
}


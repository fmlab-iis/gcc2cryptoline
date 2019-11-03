proc main (L0x7fff9a47f3e0, L0x7fff9a47f3e8, L0x7fff9a47f3f0, L0x7fff9a47f3f8, L0x7fff9a47f400, L0x7fff9a47f530, L0x7fff9a47f538, L0x7fff9a47f540, L0x7fff9a47f548, L0x7fff9a47f550, carry, fs, jne, pop, push, r12, r13, r14, r15, rax, rbx, rdx, retq, rsp, secp256k1_fe_mul_inner, subb, uint64) =
{
  true
  &&
  true
}

(* secp256k1_fe_mul_inner: *)
secp256k1_fe_mul_inner:;
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
(* mov    %rdx,%rbx *)
mov rbx rdx;
(* sub    $0x20,%rsp *)
subb carry rsp rsp 0x20@uint64;
(* mov    %fs:0x28,%rax *)
mov    %fs:0x28,%%rax;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fff9a47f3a8 *)
mov L0x7fff9a47f3a8 rax;
(* xor    %eax,%eax *)
mov rax 0@uint64;
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
adcs carry r15 r15 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
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
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* shrd   $0x34,%r9,%r8 *)
cshl r9 r8 r9 r8 64-0x34;
(* mov    %rcx,%rsi *)
mov rsi rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rsi *)
and uint64 rsi rsi rdx;
(* mov    %rsi,(%rsp)                              #! EA = L0x7fff9a47f390 *)
mov L0x7fff9a47f390 rsi;
(* shrd   $0x34,%r15,%rcx *)
cshl r15 rcx r15 rcx 64-0x34;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    %rcx,%rsi *)
mov rsi rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rsi *)
and uint64 rsi rsi rdx;
(* shrd   $0x34,%r15,%rcx *)
cshl r15 rcx r15 rcx 64-0x34;
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
adcs carry r15 r15 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    %rcx,%rsi *)
mov rsi rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rsi *)
and uint64 rsi rsi rdx;
(* shrd   $0x34,%r15,%rcx *)
cshl r15 rcx r15 rcx 64-0x34;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* shl    $0x4,%rsi *)
shl rsi rsi 0x4;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fff9a47f3a0 *)
mov rax L0x7fff9a47f3a0;
(* or     %rax,%rsi *)
or uint64 rsi rsi rax;
(* movabs $0x1000003d1,%rax *)
mov rax 0x1000003d1@uint64;
(* mul    %rsi *)
mull rdx rax rax rsi;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,(%rdi)                              #! EA = L0x7fff9a47f410 *)
mov L0x7fff9a47f410 rax;
(* shrd   $0x34,%r9,%r8 *)
cshl r9 r8 r9 r8 64-0x34;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r14 *)
mull rdx rax rax r14;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x7fff9a47f3f8 *)
mov rax L0x7fff9a47f3f8;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    %rcx,%rax *)
mov rax rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* shrd   $0x34,%r15,%rcx *)
cshl r15 rcx r15 rcx 64-0x34;
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
cshl r9 r8 r9 r8 64-0x34;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    (%rbx),%rax                              #! EA = L0x7fff9a47f3e0 *)
mov rax L0x7fff9a47f3e0;
(* mul    %r12 *)
mull rdx rax rax r12;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* mov    0x8(%rbx),%rax                           #! EA = L0x7fff9a47f3e8 *)
mov rax L0x7fff9a47f3e8;
(* mul    %r11 *)
mull rdx rax rax r11;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x7fff9a47f3f0 *)
mov rax L0x7fff9a47f3f0;
(* mul    %r10 *)
mull rdx rax rax r10;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
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
adcs carry r15 r15 rdx carry;
(* mov    0x20(%rbx),%rax                          #! EA = L0x7fff9a47f400 *)
mov rax L0x7fff9a47f400;
(* mul    %r13 *)
mull rdx rax rax r13;
(* add    %rax,%rcx *)
adds carry rcx rcx rax;
(* adc    %rdx,%r15 *)
adcs carry r15 r15 rdx carry;
(* mov    %rcx,%rax *)
mov rax rcx;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* shrd   $0x34,%r15,%rcx *)
cshl r15 rcx r15 rcx 64-0x34;
(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fff9a47f420 *)
mov L0x7fff9a47f420 rax;
(* shrd   $0x34,%r9,%r8 *)
cshl r9 r8 r9 r8 64-0x34;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %r10,%r8 *)
adds carry r8 r8 r10;
(* mov    %rcx,%rax *)
mov rax rcx;
(* movabs $0x1000003d10,%rdx *)
mov rdx 0x1000003d10@uint64;
(* mul    %rdx *)
mull rdx rax rax rdx;
(* add    %rax,%r8 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9 *)
adcs carry r9 r9 rdx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* movabs $0xfffffffffffff,%rdx *)
mov rdx 0xfffffffffffff@uint64;
(* and    %rdx,%rax *)
and uint64 rax rax rdx;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fff9a47f428 *)
mov L0x7fff9a47f428 rax;
(* shrd   $0x34,%r9,%r8 *)
cshl r9 r8 r9 r8 64-0x34;
(* add    %rsi,%r8 *)
adds carry r8 r8 rsi;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fff9a47f430 *)
mov L0x7fff9a47f430 r8;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fff9a47f3a8 *)
mov rax L0x7fff9a47f3a8;
(* xor    %fs:0x28,%rax *)
xor    %fs:0x28,%%rax;
(* #jne    0x403abd <secp256k1_fe_mul_inner+829> *)
#jne    0x403abd <secp256k1_fe_mul_inner+829>;
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


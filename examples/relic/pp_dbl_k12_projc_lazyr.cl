	.file	"relic_pp_dbl_k12.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"relic_pp_dbl_k12.c"
	.text
	.p2align 4,,15
	.globl	pp_dbl_k12_basic
	.type	pp_dbl_k12_basic, @function
pp_dbl_k12_basic:
.LFB63:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$568, %rsp
	.cfi_def_cfa_offset 624
	movq	%rdi, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 552(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	336(%rsp), %rdi
	movq	$0, 336(%rsp)
	movq	8(%rax), %rcx
	movq	%rax, 8(%rsp)
	movl	$1, 544(%rsp)
	movq	%rdi, 8(%rax)
	leaq	344(%rsp), %rdi
	movq	%rcx, 16(%rsp)
	call	_setjmp@PLT
	movslq	%eax, %rbx
	testl	%ebx, %ebx
	je	.L12
	movq	8(%rsp), %rax
	movl	$1, 328(%rax)
.L5:
	movq	8(%rsp), %r10
	movq	16(%rsp), %r11
	movq	%r11, 8(%r10)
	call	core_get@PLT
	movl	328(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L13
.L1:
	movq	552(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L14
	addq	$568, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	movq	48(%rsp), %r14
	leaq	128(%rsp), %r12
	leaq	64(%rsp), %r13
	movq	%r12, %rdi
	movq	%r14, %rsi
	call	ep2_copy@PLT
	movq	40(%rsp), %rdi
	movq	%r14, %rdx
	movq	%r13, %rsi
	call	ep2_dbl_slp_basic@PLT
	movq	24(%rsp), %r15
	movq	%r15, %rdi
	call	fp12_zero@PLT
	call	ep2_curve_is_twist@PLT
	movl	$1, %edx
	movq	%r15, 24(%rsp)
	cmpl	$2, %eax
	cmovne	%rdx, %rbx
	sete	%sil
	movq	32(%rsp), %rdx
	movzbl	%sil, %r14d
	movq	%r13, %rsi
	leaq	(%rbx,%rbx,2), %rbp
	salq	$6, %rbx
	salq	$6, %rbp
	addq	%r15, %rbp
	movq	%r14, %r15
	salq	$8, %r14
	salq	$6, %r15
	addq	%rbp, %rbx
	leaq	0(%rbp,%r15), %rdi
	call	fp_mul_integ@PLT
	leaq	32(%rbp,%r15), %rdi
	movq	32(%rsp), %r15
	leaq	32(%r13), %rsi
	movq	%r15, %rdx
	call	fp_mul_integ@PLT
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	fp2_mul_integ@PLT
	leaq	64(%r12), %rsi
	movq	%rbx, %rdx
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	movq	24(%rsp), %r8
	movq	%r15, %rsi
	addq	$32, %rsi
	leaq	(%r8,%r14), %rdi
	call	fp_copy@PLT
	movq	8(%rsp), %r9
	movl	$0, 328(%r9)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L13:
	call	core_get@PLT
	movq	8(%rax), %rdi
	movl	$1, (%rax)
	testq	%rdi, %rdi
	je	.L15
	movl	208(%rdi), %r13d
	testl	%r13d, %r13d
	je	.L16
	movl	$1, %ecx
	movl	$71, %edx
	movq	%rax, 56(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7869(%rip), %rdi
	call	err_full_msg@PLT
	movq	56(%rsp), %rax
	movl	$1, %esi
	movq	8(%rax), %rdi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L15:
	leaq	16(%rax), %rbx
	movl	$1, %ecx
	leaq	232(%rax), %r12
	movl	$0, 224(%rax)
	movq	%rbx, 8(%rax)
	movl	$71, %edx
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7869(%rip), %rdi
	movq	%r12, 16(%rax)
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L1
.L14:
	call	__stack_chk_fail@PLT
.L16:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE63:
	.size	pp_dbl_k12_basic, .-pp_dbl_k12_basic
	.p2align 4,,15
	.globl	pp_dbl_k12_projc_basic
	.type	pp_dbl_k12_projc_basic, @function
pp_dbl_k12_projc_basic:
.LFB64:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$792, %rsp
	.cfi_def_cfa_offset 848
	movq	%rdi, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 776(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	560(%rsp), %rdi
	movq	$0, 560(%rsp)
	movq	8(%rax), %rcx
	movq	%rax, (%rsp)
	movl	$1, 768(%rsp)
	movq	%rdi, 8(%rax)
	leaq	568(%rsp), %rdi
	movq	%rcx, 16(%rsp)
	call	_setjmp@PLT
	testl	%eax, %eax
	je	.L29
	movq	(%rsp), %rax
	movl	$1, 328(%rax)
.L22:
	movq	(%rsp), %rbx
	movq	16(%rsp), %r13
	movq	%r13, 8(%rbx)
	call	core_get@PLT
	movl	328(%rax), %edi
	testl	%edi, %edi
	jne	.L30
.L17:
	movq	776(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L31
	addq	$792, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	movl	%eax, %ebx
	call	ep2_curve_is_twist@PLT
	movl	$1, %edx
	cmpl	$2, %eax
	cmovne	%edx, %ebx
	sete	%sil
	movzbl	%sil, %ebp
	movl	%ebx, 48(%rsp)
	movl	%ebp, 52(%rsp)
	call	ep_curve_opt_b@PLT
	cmpl	$2, %eax
	je	.L32
	movq	24(%rsp), %r14
	leaq	112(%rsp), %rbx
	leaq	176(%rsp), %r15
	movq	%rbx, %rdi
	leaq	304(%rsp), %r12
	leaq	368(%rsp), %rbp
	leaq	64(%r14), %r13
	movq	%r14, %rsi
	call	fp2_sqr_integ@PLT
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	fp2_sqr_integ@PLT
	leaq	128(%r14), %r8
	movq	%r14, 24(%rsp)
	leaq	240(%rsp), %r14
	movq	%r8, %rsi
	movq	%r14, %rdi
	movq	%r8, 72(%rsp)
	call	fp2_sqr_integ@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp2_add_integ@PLT
	movq	%rbp, %rdi
	call	ep2_curve_get_b@PLT
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp2_mul_integ@PLT
	movq	24(%rsp), %rsi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sqr_integ@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movq	%rbx, 56(%rsp)
	leaq	432(%rsp), %rbx
	call	fp2_sub_integ@PLT
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	72(%rsp), %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	leaq	496(%rsp), %r13
	call	fp2_add_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_add_integ@PLT
	movq	8(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	fp2_sub_integ@PLT
	movq	%rbp, %rdx
	movq	8(%rsp), %rbp
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_mul_integ@PLT
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_add_integ@PLT
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	fp2_sqr_integ@PLT
	movq	%rbp, 8(%rsp)
	leaq	64(%rbp), %rbp
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	fp2_dbl_integ@PLT
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	8(%rsp), %r9
	movq	%r15, %rsi
	leaq	128(%r9), %r14
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	call	fp2_mul_integ@PLT
	movslq	48(%rsp), %r10
	movq	%r15, %rdx
	movq	%r12, %rsi
	leaq	(%r10,%r10,2), %r13
	salq	$6, %r13
	addq	32(%rsp), %r13
	salq	$6, %r10
	leaq	0(%r13,%r10), %rdi
	call	fp2_sub_integ@PLT
	movslq	52(%rsp), %r15
	movq	40(%rsp), %r12
	movq	56(%rsp), %rbp
	movq	%r15, %r14
	movq	%r12, %rsi
	salq	$6, %r14
	movq	%rbp, %rdx
	leaq	0(%r13,%r14), %rdi
	call	fp_mul_integ@PLT
	leaq	32(%r14), %r11
	movq	%rbp, %rdx
	movq	%r12, %rsi
	leaq	0(%r13,%r11), %rdi
	addq	$32, %rdx
	movq	%r11, 64(%rsp)
	addq	$32, %r12
	call	fp_mul_integ@PLT
	leaq	(%r15,%r15), %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	addq	%rcx, %r15
	salq	$6, %r15
	addq	32(%rsp), %r15
	leaq	(%r15,%r14), %rdi
	call	fp_mul_integ@PLT
	movq	64(%rsp), %rdi
	leaq	32(%rbx), %rsi
	movq	%r12, %rdx
	leaq	(%r15,%rdi), %rdi
	call	fp_mul_integ@PLT
.L23:
	movq	8(%rsp), %rcx
	movq	(%rsp), %rax
	movl	$0, 192(%rcx)
	movl	$0, 328(%rax)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L32:
	movq	24(%rsp), %r13
	leaq	176(%rsp), %r14
	leaq	112(%rsp), %rdi
	movq	%rdi, 80(%rsp)
	leaq	240(%rsp), %rbx
	leaq	368(%rsp), %r12
	leaq	64(%r13), %r15
	movq	%r13, %rsi
	leaq	304(%rsp), %rbp
	call	fp2_sqr_integ@PLT
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	fp2_sqr_integ@PLT
	leaq	128(%r13), %rax
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%rax, 96(%rsp)
	call	fp2_sqr_integ@PLT
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	fp2_mul_integ@PLT
	movq	%r12, %rsi
	movq	%r12, %rdi
	leaq	32(%rbx), %r13
	call	fp_hlv_integ@PLT
	leaq	32(%r12), %rdi
	movq	%rdi, %rsi
	call	fp_hlv_integ@PLT
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	fp2_dbl_integ@PLT
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_add_integ@PLT
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbp, %rdi
	call	fp_add_integ@PLT
	movq	%rbx, %rdx
	leaq	32(%rbp), %rdi
	movq	%r13, %rsi
	call	fp_sub_integ@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fp2_dbl_integ@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fp2_add_integ@PLT
	movq	8(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rsi
	call	fp2_sub_integ@PLT
	movq	8(%rsp), %rdi
	movq	%r12, %rdx
	movq	%rdi, %rsi
	call	fp2_mul_integ@PLT
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	fp2_add_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_hlv_integ@PLT
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp_hlv_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sqr_integ@PLT
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	fp2_sqr_integ@PLT
	leaq	432(%rsp), %r8
	movq	96(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r8, %rdi
	movq	%r8, 88(%rsp)
	call	fp2_mul_integ@PLT
	movq	8(%rsp), %rsi
	leaq	64(%rsi), %r15
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp2_add_integ@PLT
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	call	fp2_sub_integ@PLT
	movq	88(%rsp), %rsi
	movq	%rbx, %rdi
	call	fp2_dbl_integ@PLT
	movq	8(%rsp), %r9
	movq	%rbx, %rdx
	movq	%r14, %rsi
	leaq	128(%r9), %rdi
	call	fp2_mul_integ@PLT
	movslq	48(%rsp), %r10
	movq	%r14, %rdx
	movq	%rbp, %rsi
	leaq	(%r10,%r10,2), %r12
	salq	$6, %r10
	salq	$6, %r12
	addq	32(%rsp), %r12
	leaq	(%r12,%r10), %rdi
	call	fp2_sub_integ@PLT
	movslq	52(%rsp), %rbp
	movq	80(%rsp), %rdx
	movq	40(%rsp), %rsi
	movq	%rbp, %r14
	salq	$6, %r14
	leaq	(%r12,%r14), %rdi
	leaq	32(%r14), %r15
	call	fp_mul_integ@PLT
	leaq	(%r12,%r15), %rdi
	movq	80(%rsp), %rdx
	movq	40(%rsp), %r12
	addq	$32, %rdx
	movq	%r12, %rsi
	call	fp_mul_integ@PLT
	leaq	(%rbp,%rbp), %r11
	addq	$32, %r12
	movq	%rbx, %rsi
	addq	%r11, %rbp
	movq	%r12, %rdx
	salq	$6, %rbp
	addq	32(%rsp), %rbp
	leaq	0(%rbp,%r14), %rdi
	call	fp_mul_integ@PLT
	leaq	0(%rbp,%r15), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	call	fp_mul_integ@PLT
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L30:
	call	core_get@PLT
	movq	8(%rax), %r8
	movl	$1, (%rax)
	testq	%r8, %r8
	je	.L33
	movl	208(%r8), %r9d
	testl	%r9d, %r9d
	je	.L34
	movl	$1, %ecx
	movl	$222, %edx
	movq	%rax, 104(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7897(%rip), %rdi
	call	err_full_msg@PLT
	movq	104(%rsp), %r10
	movl	$1, %esi
	movq	8(%r10), %rdi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L33:
	leaq	16(%rax), %rdx
	movl	$1, %ecx
	leaq	232(%rax), %rsi
	movl	$0, 224(%rax)
	movq	%rdx, 8(%rax)
	leaq	__func__.7897(%rip), %rdi
	movl	$222, %edx
	movq	%rsi, 16(%rax)
	leaq	.LC0(%rip), %rsi
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L17
.L31:
	call	__stack_chk_fail@PLT
.L34:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE64:
	.size	pp_dbl_k12_projc_basic, .-pp_dbl_k12_projc_basic
proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov _last55@uint64 _;
mov one49@int32 _;
mov v210@uint64 _;
mov v211_208@int32 _;
mov v213_8@uint64 _;
mov v216_328@int32 _;
mov v70_8@uint64 _;
mov zero53@int32 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* one_66(ab) = 1; */
mov one66 0x1@int32;
/* zero_67(ab) = 0; */
mov zero67 0x0@int32;
/* _70 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 3> */
/* TODO: unconditional jump */

/* BB's index is 3 */

/* _last_73 = _70->last; */
/* rhs field last's offset is 8 */
mov _last73 v70_8;
/* _this.block = 1; */
mov _this_208 0x1@int32;
/* _70->last = &_this; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _this.error = 0B; */
mov _this_0 0x0@uint64;
/* goto <bb 4> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* one_46(ab) = PHI <one_66(ab)(3), one_47(ab)(5)> */
/* zero_51(ab) = PHI <zero_67(ab)(3), zero_52(ab)(5)> */
/* _last_55(ab) = PHI <_last_73(3), _last_56(ab)(5)> */
/* _ctx_57(ab) = PHI <_70(3), _ctx_58(ab)(5)> */
/* .MEM_60(ab) = PHI <.MEM_76(3), .MEM_185(ab)(5)> */
/* _78 = _setjmp (&_this.addr); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* one_47(ab) = PHI <one_66(ab)(2), one_46(ab)(4), one_46(ab)(7), one_49(ab)(10), one_49(ab)(12), one_49(ab)(13), one_49(ab)(14), one_49(ab)(15), one_49(ab)(16), one_49(ab)(17), one_49(ab)(18), one_49(ab)(19), one_49(ab)(20), one_49(ab)(21), one_49(ab)(22), one_49(ab)(23), one_49(ab)(24), one_49(ab)(25), one_49(ab)(26), one_49(ab)(27), one_49(ab)(28), one_49(ab)(29), one_49(ab)(30), one_49(ab)(31), one_49(ab)(32), one_49(ab)(33), one_49(ab)(34), one_49(ab)(35), one_49(ab)(36), one_49(ab)(37), one_49(ab)(38), one_49(ab)(39), one_49(ab)(40), one_49(ab)(41), one_49(ab)(42), one_49(ab)(43), one_49(ab)(44), one_49(ab)(46), one_49(ab)(47), one_49(ab)(48), one_49(ab)(49), one_49(ab)(50), one_49(ab)(51), one_49(ab)(52), one_49(ab)(53), one_49(ab)(54), one_49(ab)(55), one_49(ab)(56), one_49(ab)(57), one_49(ab)(58), one_49(ab)(59), one_49(ab)(60), one_49(ab)(61), one_49(ab)(62), one_49(ab)(63), one_49(ab)(64), one_49(ab)(65), one_49(ab)(66), one_49(ab)(67), one_49(ab)(68), one_49(ab)(69), one_49(ab)(70), one_49(ab)(71), one_49(ab)(72), one_49(ab)(73), one_49(ab)(74), one_49(ab)(75), one_49(ab)(76), one_49(ab)(77), one_49(ab)(78), one_49(ab)(79), one_49(ab)(80), one_50(ab)(82), one_50(ab)(84), one_50(ab)(86), one_50(ab)(90), one_50(ab)(91)> */
/* zero_52(ab) = PHI <zero_67(ab)(2), zero_51(ab)(4), zero_51(ab)(7), zero_53(ab)(10), zero_53(ab)(12), zero_53(ab)(13), zero_53(ab)(14), zero_53(ab)(15), zero_53(ab)(16), zero_53(ab)(17), zero_53(ab)(18), zero_53(ab)(19), zero_53(ab)(20), zero_53(ab)(21), zero_53(ab)(22), zero_53(ab)(23), zero_53(ab)(24), zero_53(ab)(25), zero_53(ab)(26), zero_53(ab)(27), zero_53(ab)(28), zero_53(ab)(29), zero_53(ab)(30), zero_53(ab)(31), zero_53(ab)(32), zero_53(ab)(33), zero_53(ab)(34), zero_53(ab)(35), zero_53(ab)(36), zero_53(ab)(37), zero_53(ab)(38), zero_53(ab)(39), zero_53(ab)(40), zero_53(ab)(41), zero_53(ab)(42), zero_53(ab)(43), zero_53(ab)(44), zero_53(ab)(46), zero_53(ab)(47), zero_53(ab)(48), zero_53(ab)(49), zero_53(ab)(50), zero_53(ab)(51), zero_53(ab)(52), zero_53(ab)(53), zero_53(ab)(54), zero_53(ab)(55), zero_53(ab)(56), zero_53(ab)(57), zero_53(ab)(58), zero_53(ab)(59), zero_53(ab)(60), zero_53(ab)(61), zero_53(ab)(62), zero_53(ab)(63), zero_53(ab)(64), zero_53(ab)(65), zero_53(ab)(66), zero_53(ab)(67), zero_53(ab)(68), zero_53(ab)(69), zero_53(ab)(70), zero_53(ab)(71), zero_53(ab)(72), zero_53(ab)(73), zero_53(ab)(74), zero_53(ab)(75), zero_53(ab)(76), zero_53(ab)(77), zero_53(ab)(78), zero_53(ab)(79), zero_53(ab)(80), zero_54(ab)(82), zero_54(ab)(84), zero_54(ab)(86), zero_54(ab)(90), zero_54(ab)(91)> */
/* _last_56(ab) = PHI <_last_71(D)(ab)(2), _last_55(ab)(4), _last_55(ab)(7), _last_55(ab)(10), _last_55(ab)(12), _last_55(ab)(13), _last_55(ab)(14), _last_55(ab)(15), _last_55(ab)(16), _last_55(ab)(17), _last_55(ab)(18), _last_55(ab)(19), _last_55(ab)(20), _last_55(ab)(21), _last_55(ab)(22), _last_55(ab)(23), _last_55(ab)(24), _last_55(ab)(25), _last_55(ab)(26), _last_55(ab)(27), _last_55(ab)(28), _last_55(ab)(29), _last_55(ab)(30), _last_55(ab)(31), _last_55(ab)(32), _last_55(ab)(33), _last_55(ab)(34), _last_55(ab)(35), _last_55(ab)(36), _last_55(ab)(37), _last_55(ab)(38), _last_55(ab)(39), _last_55(ab)(40), _last_55(ab)(41), _last_55(ab)(42), _last_55(ab)(43), _last_55(ab)(44), _last_55(ab)(46), _last_55(ab)(47), _last_55(ab)(48), _last_55(ab)(49), _last_55(ab)(50), _last_55(ab)(51), _last_55(ab)(52), _last_55(ab)(53), _last_55(ab)(54), _last_55(ab)(55), _last_55(ab)(56), _last_55(ab)(57), _last_55(ab)(58), _last_55(ab)(59), _last_55(ab)(60), _last_55(ab)(61), _last_55(ab)(62), _last_55(ab)(63), _last_55(ab)(64), _last_55(ab)(65), _last_55(ab)(66), _last_55(ab)(67), _last_55(ab)(68), _last_55(ab)(69), _last_55(ab)(70), _last_55(ab)(71), _last_55(ab)(72), _last_55(ab)(73), _last_55(ab)(74), _last_55(ab)(75), _last_55(ab)(76), _last_55(ab)(77), _last_55(ab)(78), _last_55(ab)(79), _last_55(ab)(80), _last_55(ab)(82), _last_55(ab)(84), _last_55(ab)(86), _last_55(ab)(90), _last_55(ab)(91)> */
/* _ctx_58(ab) = PHI <_ctx_72(D)(ab)(2), _ctx_57(ab)(4), _ctx_57(ab)(7), _ctx_57(ab)(10), _ctx_57(ab)(12), _ctx_57(ab)(13), _ctx_57(ab)(14), _ctx_57(ab)(15), _ctx_57(ab)(16), _ctx_57(ab)(17), _ctx_57(ab)(18), _ctx_57(ab)(19), _ctx_57(ab)(20), _ctx_57(ab)(21), _ctx_57(ab)(22), _ctx_57(ab)(23), _ctx_57(ab)(24), _ctx_57(ab)(25), _ctx_57(ab)(26), _ctx_57(ab)(27), _ctx_57(ab)(28), _ctx_57(ab)(29), _ctx_57(ab)(30), _ctx_57(ab)(31), _ctx_57(ab)(32), _ctx_57(ab)(33), _ctx_57(ab)(34), _ctx_57(ab)(35), _ctx_57(ab)(36), _ctx_57(ab)(37), _ctx_57(ab)(38), _ctx_57(ab)(39), _ctx_57(ab)(40), _ctx_57(ab)(41), _ctx_57(ab)(42), _ctx_57(ab)(43), _ctx_57(ab)(44), _ctx_57(ab)(46), _ctx_57(ab)(47), _ctx_57(ab)(48), _ctx_57(ab)(49), _ctx_57(ab)(50), _ctx_57(ab)(51), _ctx_57(ab)(52), _ctx_57(ab)(53), _ctx_57(ab)(54), _ctx_57(ab)(55), _ctx_57(ab)(56), _ctx_57(ab)(57), _ctx_57(ab)(58), _ctx_57(ab)(59), _ctx_57(ab)(60), _ctx_57(ab)(61), _ctx_57(ab)(62), _ctx_57(ab)(63), _ctx_57(ab)(64), _ctx_57(ab)(65), _ctx_57(ab)(66), _ctx_57(ab)(67), _ctx_57(ab)(68), _ctx_57(ab)(69), _ctx_57(ab)(70), _ctx_57(ab)(71), _ctx_57(ab)(72), _ctx_57(ab)(73), _ctx_57(ab)(74), _ctx_57(ab)(75), _ctx_57(ab)(76), _ctx_57(ab)(77), _ctx_57(ab)(78), _ctx_57(ab)(79), _ctx_57(ab)(80), _ctx_57(ab)(82), _ctx_57(ab)(84), _ctx_57(ab)(86), _ctx_57(ab)(90), _ctx_57(ab)(91)> */
/* .MEM_61(ab) = PHI <.MEM_69(ab)(2), .MEM_77(ab)(4), .MEM_79(ab)(7), .MEM_83(ab)(10), .MEM_86(ab)(12), .MEM_87(ab)(13), .MEM_88(ab)(14), .MEM_89(ab)(15), .MEM_90(ab)(16), .MEM_91(ab)(17), .MEM_92(ab)(18), .MEM_93(ab)(19), .MEM_94(ab)(20), .MEM_95(ab)(21), .MEM_96(ab)(22), .MEM_97(ab)(23), .MEM_98(ab)(24), .MEM_100(ab)(25), .MEM_101(ab)(26), .MEM_102(ab)(27), .MEM_103(ab)(28), .MEM_104(ab)(29), .MEM_105(ab)(30), .MEM_106(ab)(31), .MEM_107(ab)(32), .MEM_108(ab)(33), .MEM_109(ab)(34), .MEM_110(ab)(35), .MEM_111(ab)(36), .MEM_112(ab)(37), .MEM_113(ab)(38), .MEM_114(ab)(39), .MEM_116(ab)(40), .MEM_118(ab)(41), .MEM_119(ab)(42), .MEM_120(ab)(43), .MEM_121(ab)(44), .MEM_122(ab)(46), .MEM_123(ab)(47), .MEM_124(ab)(48), .MEM_125(ab)(49), .MEM_126(ab)(50), .MEM_127(ab)(51), .MEM_128(ab)(52), .MEM_129(ab)(53), .MEM_130(ab)(54), .MEM_131(ab)(55), .MEM_132(ab)(56), .MEM_133(ab)(57), .MEM_134(ab)(58), .MEM_135(ab)(59), .MEM_136(ab)(60), .MEM_137(ab)(61), .MEM_138(ab)(62), .MEM_139(ab)(63), .MEM_140(ab)(64), .MEM_141(ab)(65), .MEM_142(ab)(66), .MEM_143(ab)(67), .MEM_144(ab)(68), .MEM_145(ab)(69), .MEM_146(ab)(70), .MEM_147(ab)(71), .MEM_148(ab)(72), .MEM_149(ab)(73), .MEM_150(ab)(74), .MEM_151(ab)(75), .MEM_152(ab)(76), .MEM_153(ab)(77), .MEM_154(ab)(78), .MEM_155(ab)(79), .MEM_156(ab)(80), .MEM_217(ab)(82), .MEM_214(ab)(84), .MEM_201(ab)(86), .MEM_173(ab)(90), .MEM_174(ab)(91)> */
/* ABNORMAL_DISPATCHER (0); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */

/* BB's index is 6 */

/* if (_78 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 81> */

/* BB's index is 7 */

/* _80 = ep2_curve_is_twist (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 8> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* if (_80 == 2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 9>, False label: <bb 10> */

/* BB's index is 9 */

/* one_81 = one_46(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* zero_82 = zero_51(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* goto <bb 10> */
/* TODO: unconditional jump */

/* BB's index is 10 */

/* one_49(ab) = PHI <one_81(9), one_46(ab)(8)> */
/* zero_53(ab) = PHI <zero_82(9), zero_51(ab)(8)> */
/* _84 = ep_curve_opt_b (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 11> */
/* TODO: unconditional jump */

/* BB's index is 11 */

/* if (_84 == 2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 12>, False label: <bb 46> */

/* BB's index is 12 */

/* _1 = &q_85(D)->z; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sqr_integ (&t0, _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 13> */
/* TODO: unconditional jump */

/* BB's index is 13 */

/* _2 = &q_85(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sqr_integ (&t1, _2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 14> */
/* TODO: unconditional jump */

/* BB's index is 14 */

/* fp2_add_integ (&t5, &t0, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 15> */
/* TODO: unconditional jump */

/* BB's index is 15 */

/* fp2_dbl_integ (&t3, &t0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 16> */
/* TODO: unconditional jump */

/* BB's index is 16 */

/* fp2_add_integ (&t0, &t0, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 17> */
/* TODO: unconditional jump */

/* BB's index is 17 */

/* fp_add_integ (&t2[0], &t0[0], &t0[1]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 18> */
/* TODO: unconditional jump */

/* BB's index is 18 */

/* fp_sub_integ (&t2[1], &t0[1], &t0[0]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 19> */
/* TODO: unconditional jump */

/* BB's index is 19 */

/* _3 = &q_85(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sqr_integ (&t0, _3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 20> */
/* TODO: unconditional jump */

/* BB's index is 20 */

/* fp2_mul_integ (&t4, _3, _2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 21> */
/* TODO: unconditional jump */

/* BB's index is 21 */

/* fp_hlv_integ (&t4[0], &t4[0]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 22> */
/* TODO: unconditional jump */

/* BB's index is 22 */

/* fp_hlv_integ (&t4[1], &t4[1]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 23> */
/* TODO: unconditional jump */

/* BB's index is 23 */

/* fp2_dbl_integ (&t3, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 24> */
/* TODO: unconditional jump */

/* BB's index is 24 */

/* fp2_add_integ (&t3, &t3, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 25> */
/* TODO: unconditional jump */

/* BB's index is 25 */

/* _4 = &r_99(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sub_integ (_4, &t1, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 26> */
/* TODO: unconditional jump */

/* BB's index is 26 */

/* fp2_mul_integ (_4, _4, &t4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 27> */
/* TODO: unconditional jump */

/* BB's index is 27 */

/* fp2_add_integ (&t3, &t1, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 28> */
/* TODO: unconditional jump */

/* BB's index is 28 */

/* fp_hlv_integ (&t3[0], &t3[0]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 29> */
/* TODO: unconditional jump */

/* BB's index is 29 */

/* fp_hlv_integ (&t3[1], &t3[1]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 30> */
/* TODO: unconditional jump */

/* BB's index is 30 */

/* fp2_sqrn_low (&u0, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 31> */
/* TODO: unconditional jump */

/* BB's index is 31 */

/* fp2_addd_low (&u1, &u0, &u0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 32> */
/* TODO: unconditional jump */

/* BB's index is 32 */

/* fp2_addd_low (&u1, &u1, &u0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 33> */
/* TODO: unconditional jump */

/* BB's index is 33 */

/* fp2_sqrn_low (&u0, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 34> */
/* TODO: unconditional jump */

/* BB's index is 34 */

/* fp2_subc_low (&u0, &u0, &u1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 35> */
/* TODO: unconditional jump */

/* BB's index is 35 */

/* fp2_add_integ (&t3, _2, _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 36> */
/* TODO: unconditional jump */

/* BB's index is 36 */

/* fp2_sqr_integ (&t3, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 37> */
/* TODO: unconditional jump */

/* BB's index is 37 */

/* fp2_sub_integ (&t3, &t3, &t5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 38> */
/* TODO: unconditional jump */

/* BB's index is 38 */

/* _5 = &r_99(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_rdcn_low (_5, &u0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 39> */
/* TODO: unconditional jump */

/* BB's index is 39 */

/* _6 = &r_99(D)->z; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_mul_integ (_6, &t1, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 40> */
/* TODO: unconditional jump */

/* BB's index is 40 */

/* _7 = &MEM[(dig_t[3][2][4] *)l_115(D) + 192B][1]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sub_integ (_7, &t2, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 41> */
/* TODO: unconditional jump */

/* BB's index is 41 */

/* _8 = &p_117(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _9 = (long unsigned int) one_49(ab); */
cast v9@uint64 one49@int32;
/* _10 = _9 * 192; */
umul v10 v9 0xc0@uint64;
/* _11 = l_115(D) + _10; */
/* _65 = (sizetype) zero_53(ab); */
cast v65@uint64 zero53@int32;
/* _23 = _65 * 64; */
umul v23 v65 0x40@uint64;
/* _12 = _11 + _23; */
/* fp_mul_integ (_12, _8, &t0[0]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 42> */
/* TODO: unconditional jump */

/* BB's index is 42 */

/* _194 = _23 + 32; */
uadd v194 v23 0x20@uint64;
/* _13 = _11 + _194; */
/* fp_mul_integ (_13, _8, &t0[1]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 43> */
/* TODO: unconditional jump */

/* BB's index is 43 */

/* _14 = &p_117(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _16 = _65 * 192; */
umul v16 v65 0xc0@uint64;
/* _17 = l_115(D) + _16; */
/* _18 = _17 + _23; */
/* fp_mul_integ (_18, &t3[0], _14); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 44> */
/* TODO: unconditional jump */

/* BB's index is 44 */

/* _19 = _17 + _194; */
/* fp_mul_integ (_19, &t3[1], _14); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 45> */
/* TODO: unconditional jump */

/* BB's index is 45 */

/* .MEM_225 = PHI <.MEM_121(ab)(44), .MEM_156(ab)(80)> */
/* r_99(D)->norm = 0; */
mov r99_192 0x0@int32;
/* _ctx_57(ab)->caught = 0; */
mov _ctx57_328 0x0@int32;
/* goto <bb 82> */
/* TODO: unconditional jump */

/* BB's index is 46 */

/* _20 = &q_85(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sqr_integ (&t0, _20); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 47> */
/* TODO: unconditional jump */

/* BB's index is 47 */

/* _21 = &q_85(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sqr_integ (&t1, _21); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 48> */
/* TODO: unconditional jump */

/* BB's index is 48 */

/* _22 = &q_85(D)->z; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sqr_integ (&t2, _22); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 49> */
/* TODO: unconditional jump */

/* BB's index is 49 */

/* fp2_dbl_integ (&t3, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 50> */
/* TODO: unconditional jump */

/* BB's index is 50 */

/* fp2_add_integ (&t3, &t3, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 51> */
/* TODO: unconditional jump */

/* BB's index is 51 */

/* ep2_curve_get_b (&t4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 52> */
/* TODO: unconditional jump */

/* BB's index is 52 */

/* fp2_mul_integ (&t3, &t3, &t4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 53> */
/* TODO: unconditional jump */

/* BB's index is 53 */

/* fp2_add_integ (&t4, _20, _21); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 54> */
/* TODO: unconditional jump */

/* BB's index is 54 */

/* fp2_sqr_integ (&t4, &t4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 55> */
/* TODO: unconditional jump */

/* BB's index is 55 */

/* fp2_sub_integ (&t4, &t4, &t0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 56> */
/* TODO: unconditional jump */

/* BB's index is 56 */

/* fp2_sub_integ (&t4, &t4, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 57> */
/* TODO: unconditional jump */

/* BB's index is 57 */

/* fp2_add_integ (&t5, _21, _22); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 58> */
/* TODO: unconditional jump */

/* BB's index is 58 */

/* fp2_sqr_integ (&t5, &t5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 59> */
/* TODO: unconditional jump */

/* BB's index is 59 */

/* fp2_sub_integ (&t5, &t5, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 60> */
/* TODO: unconditional jump */

/* BB's index is 60 */

/* fp2_sub_integ (&t5, &t5, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 61> */
/* TODO: unconditional jump */

/* BB's index is 61 */

/* fp2_dbl_integ (&t6, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 62> */
/* TODO: unconditional jump */

/* BB's index is 62 */

/* fp2_add_integ (&t6, &t6, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 63> */
/* TODO: unconditional jump */

/* BB's index is 63 */

/* _24 = &r_99(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_sub_integ (_24, &t1, &t6); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 64> */
/* TODO: unconditional jump */

/* BB's index is 64 */

/* fp2_mul_integ (_24, _24, &t4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 65> */
/* TODO: unconditional jump */

/* BB's index is 65 */

/* fp2_add_integ (&t6, &t6, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 66> */
/* TODO: unconditional jump */

/* BB's index is 66 */

/* fp2_sqr_integ (&t6, &t6); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 67> */
/* TODO: unconditional jump */

/* BB's index is 67 */

/* fp2_sqr_integ (&t2, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 68> */
/* TODO: unconditional jump */

/* BB's index is 68 */

/* _25 = &r_99(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_dbl_integ (_25, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 69> */
/* TODO: unconditional jump */

/* BB's index is 69 */

/* fp2_dbl_integ (&t2, _25); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 70> */
/* TODO: unconditional jump */

/* BB's index is 70 */

/* fp2_dbl_integ (_25, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 71> */
/* TODO: unconditional jump */

/* BB's index is 71 */

/* fp2_add_integ (_25, _25, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 72> */
/* TODO: unconditional jump */

/* BB's index is 72 */

/* fp2_sub_integ (_25, &t6, _25); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 73> */
/* TODO: unconditional jump */

/* BB's index is 73 */

/* _26 = &r_99(D)->z; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp2_dbl_integ (_26, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 74> */
/* TODO: unconditional jump */

/* BB's index is 74 */

/* fp2_dbl_integ (_26, _26); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 75> */
/* TODO: unconditional jump */

/* BB's index is 75 */

/* fp2_mul_integ (_26, _26, &t5); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 76> */
/* TODO: unconditional jump */

/* BB's index is 76 */

/* _27 = (long unsigned int) one_49(ab); */
cast v27@uint64 one49@int32;
/* _28 = _27 * 192; */
umul v28 v27 0xc0@uint64;
/* _29 = l_115(D) + _28; */
/* _197 = _27 * 64; */
umul v197 v27 0x40@uint64;
/* _30 = _29 + _197; */
/* fp2_sub_integ (_30, &t3, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 77> */
/* TODO: unconditional jump */

/* BB's index is 77 */

/* _31 = &p_117(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _198 = (sizetype) zero_53(ab); */
cast v198@uint64 zero53@int32;
/* _199 = _198 * 64; */
umul v199 v198 0x40@uint64;
/* _32 = _29 + _199; */
/* fp_mul_integ (_32, _31, &t0[0]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 78> */
/* TODO: unconditional jump */

/* BB's index is 78 */

/* _202 = _199 + 32; */
uadd v202 v199 0x20@uint64;
/* _33 = _29 + _202; */
/* fp_mul_integ (_33, _31, &t0[1]); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 79> */
/* TODO: unconditional jump */

/* BB's index is 79 */

/* _34 = &p_117(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _36 = _198 * 192; */
umul v36 v198 0xc0@uint64;
/* _37 = l_115(D) + _36; */
/* _38 = _37 + _199; */
/* fp_mul_integ (_38, &t5[0], _34); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 80> */
/* TODO: unconditional jump */

/* BB's index is 80 */

/* _39 = _37 + _202; */
/* fp_mul_integ (_39, &t5[1], _34); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 45> */
/* TODO: unconditional jump */

/* BB's index is 81 */

/* _ctx_57(ab)->caught = 1; */
mov _ctx57_328 0x1@int32;
/* goto <bb 82> */
/* TODO: unconditional jump */

/* BB's index is 82 */

/* one_50(ab) = PHI <one_49(ab)(45), one_46(ab)(81)> */
/* zero_54(ab) = PHI <zero_53(ab)(45), zero_51(ab)(81)> */
/* .MEM_63 = PHI <.MEM_158(45), .MEM_159(81)> */
/* _ctx_57(ab)->last = _last_55(ab); */
mov _ctx57_8 _last55;
/* _this ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* _216 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 83> */
/* TODO: unconditional jump */

/* BB's index is 83 */

/* _215 = _216->caught; */
/* rhs field caught's offset is 328 */
mov v215 v216_328;
/* if (_215 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 84>, False label: <bb 87> */

/* BB's index is 84 */

/* _213 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 85> */
/* TODO: unconditional jump */

/* BB's index is 85 */

/* _213->code = 1; */
mov v213_0 0x1@int32;
/* _211 = _213->last; */
/* rhs field last's offset is 8 */
mov v211 v213_8;
/* if (_211 != 0B) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 88>, False label: <bb 86> */

/* BB's index is 86 */

/* _210 = &_213->error; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _213->last = _210; */
mov v213_8 v210;
/* _208 = &_213->number; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _213->error.error = _208; */
/* TODO: skipped, no heuristic, need self translating */
/* _213->error.block = 0; */
/* TODO: skipped, no heuristic, need self translating */
/* _213->number = 1; */
mov v213_232 0x1@int32;
/* err_full_msg (&__func__, "relic_pp_dbl_k12.c", 389, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 87> */
/* TODO: unconditional jump */

/* BB's index is 87 */

/* .MEM_227 = PHI <.MEM_217(ab)(83), .MEM_201(ab)(86)> */
/* t0 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t4 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t5 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t6 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* u0 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* u1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* return; */

/* BB's index is 88 */

/* _42 = _211->block; */
/* rhs field block's offset is 208 */
mov v42 v211_208;
/* if (_42 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 89>, False label: <bb 90> */

/* BB's index is 89 */

/* exit (1); */
/* TODO: skipped, GIMPLE_CALL use not handled builtin function */

/* BB's index is 90 */

/* err_full_msg (&__func__, "relic_pp_dbl_k12.c", 389, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 91> */
/* TODO: unconditional jump */

/* BB's index is 91 */

/* _45 = _213->last; */
/* rhs field last's offset is 8 */
mov v45 v213_8;
/* _48 = &_45->addr; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* longjmp (_48, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */


/* Start with unused lhs */
mov _ _ctx57_8@uint64;
mov _ _ctx57_328@int32;
mov _ _last73@uint64;
mov _ _this_0@uint64;
mov _ _this_208@int32;
mov _ one66@int32;
mov _ r99_192@int32;
mov _ v10@uint64;
mov _ v16@uint64;
mov _ v194@uint64;
mov _ v197@uint64;
mov _ v202@uint64;
mov _ v211@uint64;
mov _ v213_0@int32;
mov _ v213_232@int32;
mov _ v215@int32;
mov _ v28@uint64;
mov _ v36@uint64;
mov _ v42@int32;
mov _ v45@uint64;
mov _ zero67@int32;
/* End with unsed lhs */


{
  true
  &&
  true
}
	.p2align 4,,15
	.globl	pp_dbl_k12_projc_lazyr
	.type	pp_dbl_k12_projc_lazyr, @function
pp_dbl_k12_projc_lazyr:
.LFB65:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$1912, %rsp
	.cfi_def_cfa_offset 1968
	movq	%rdi, 24(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 1896(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	576(%rsp), %rdi
	movq	$0, 576(%rsp)
	movq	8(%rax), %rcx
	movq	%rax, (%rsp)
	movl	$1, 784(%rsp)
	movq	%rdi, 8(%rax)
	leaq	584(%rsp), %rdi
	movq	%rcx, 16(%rsp)
	call	_setjmp@PLT
	testl	%eax, %eax
	je	.L47
	movq	(%rsp), %rax
	movl	$1, 328(%rax)
.L40:
	movq	(%rsp), %rdi
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rdi)
	call	core_get@PLT
	movl	328(%rax), %eax
	testl	%eax, %eax
	jne	.L48
.L35:
	movq	1896(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L49
	addq	$1912, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L47:
	.cfi_restore_state
	movl	%eax, %ebx
	call	ep2_curve_is_twist@PLT
	movl	$1, %edx
	cmpl	$2, %eax
	cmovne	%edx, %ebx
	sete	%sil
	movzbl	%sil, %ebp
	movl	%ebx, 48(%rsp)
	movl	%ebp, 52(%rsp)
	call	ep_curve_opt_b@PLT
	cmpl	$2, %eax
	je	.L50
	movq	32(%rsp), %r14
	leaq	128(%rsp), %rbx
	leaq	192(%rsp), %r15
	movq	%rbx, %rdi
	leaq	320(%rsp), %r12
	leaq	384(%rsp), %rbp
	leaq	64(%r14), %r13
	movq	%r14, %rsi
	call	fp2_sqr_integ@PLT
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	fp2_sqr_integ@PLT
	leaq	128(%r14), %r8
	movq	%r14, 32(%rsp)
	leaq	256(%rsp), %r14
	movq	%r8, %rsi
	movq	%r14, %rdi
	movq	%r8, 72(%rsp)
	call	fp2_sqr_integ@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp2_add_integ@PLT
	movq	%rbp, %rdi
	call	ep2_curve_get_b@PLT
	movq	%rbp, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp2_mul_integ@PLT
	movq	32(%rsp), %rsi
	movq	%r13, %rdx
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sqr_integ@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movq	%rbx, 56(%rsp)
	leaq	448(%rsp), %rbx
	call	fp2_sub_integ@PLT
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	72(%rsp), %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	leaq	512(%rsp), %r13
	call	fp2_add_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_add_integ@PLT
	movq	8(%rsp), %rdi
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	fp2_sub_integ@PLT
	movq	%rbp, %rdx
	movq	8(%rsp), %rbp
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_mul_integ@PLT
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_add_integ@PLT
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	fp2_sqr_integ@PLT
	movq	%rbp, 8(%rsp)
	leaq	64(%rbp), %rbp
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	fp2_dbl_integ@PLT
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	8(%rsp), %r9
	movq	%r15, %rsi
	leaq	128(%r9), %r14
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	call	fp2_mul_integ@PLT
	movslq	48(%rsp), %r10
	movq	%r15, %rdx
	movq	%r12, %rsi
	leaq	(%r10,%r10,2), %r13
	salq	$6, %r13
	addq	24(%rsp), %r13
	salq	$6, %r10
	leaq	0(%r13,%r10), %rdi
	call	fp2_sub_integ@PLT
	movslq	52(%rsp), %r15
	movq	40(%rsp), %r12
	movq	56(%rsp), %rbp
	movq	%r15, %r14
	movq	%r12, %rsi
	salq	$6, %r14
	movq	%rbp, %rdx
	leaq	0(%r13,%r14), %rdi
	call	fp_mul_integ@PLT
	leaq	32(%r14), %r11
	movq	%rbp, %rdx
	movq	%r12, %rsi
	leaq	0(%r13,%r11), %rdi
	addq	$32, %rdx
	movq	%r11, 64(%rsp)
	addq	$32, %r12
	call	fp_mul_integ@PLT
	leaq	(%r15,%r15), %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	addq	%rcx, %r15
	salq	$6, %r15
	addq	24(%rsp), %r15
	leaq	(%r15,%r14), %rdi
	call	fp_mul_integ@PLT
	movq	64(%rsp), %rdi
	leaq	32(%rbx), %rsi
	movq	%r12, %rdx
	leaq	(%r15,%rdi), %rdi
	call	fp_mul_integ@PLT
.L41:
	movq	8(%rsp), %r10
	movq	(%rsp), %r11
	movl	$0, 192(%r10)
	movl	$0, 328(%r11)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L50:
	movq	32(%rsp), %r15
	leaq	128(%rsp), %rbp
	leaq	192(%rsp), %r14
	movq	%rbp, %rdi
	leaq	320(%rsp), %rbx
	leaq	256(%rsp), %r13
	leaq	128(%r15), %rax
	leaq	32(%rbp), %r12
	movq	%rax, %rsi
	movq	%rax, 112(%rsp)
	call	fp2_sqr_integ@PLT
	leaq	64(%r15), %rsi
	movq	%r14, %rdi
	movq	%rsi, 80(%rsp)
	call	fp2_sqr_integ@PLT
	leaq	448(%rsp), %r8
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%r8, %rdi
	movq	%r8, 104(%rsp)
	call	fp2_add_integ@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fp2_dbl_integ@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	fp_add_integ@PLT
	movq	%rbp, %rdx
	leaq	32(%r13), %rdi
	movq	%r12, %rsi
	movq	%r12, 88(%rsp)
	leaq	384(%rsp), %r12
	call	fp_sub_integ@PLT
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	fp2_sqr_integ@PLT
	movq	80(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	fp2_mul_integ@PLT
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp_hlv_integ@PLT
	leaq	32(%r12), %rdi
	movq	%rdi, %rsi
	call	fp_hlv_integ@PLT
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	fp2_dbl_integ@PLT
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_add_integ@PLT
	movq	8(%rsp), %r15
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	fp2_sub_integ@PLT
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	movq	%r15, 8(%rsp)
	leaq	800(%rsp), %r12
	leaq	1344(%rsp), %r15
	call	fp2_mul_integ@PLT
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	fp2_add_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_hlv_integ@PLT
	leaq	32(%rbx), %rdx
	movq	%rdx, %rsi
	movq	%rdx, %rdi
	movq	%rdx, 96(%rsp)
	call	fp_hlv_integ@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	fp2_sqrn_low@PLT
	movq	%r12, %rdx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	fp2_addd_low@PLT
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp2_addd_low@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	fp2_sqrn_low@PLT
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp2_subc_low@PLT
	movq	112(%rsp), %rdx
	movq	80(%rsp), %rsi
	movq	%rbx, %rdi
	call	fp2_add_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sqr_integ@PLT
	movq	104(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	movq	8(%rsp), %r15
	movq	%r12, %rsi
	leaq	64(%r15), %rdi
	call	fp2_rdcn_low@PLT
	leaq	128(%r15), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rsi
	call	fp2_mul_integ@PLT
	movq	24(%rsp), %r12
	movq	%r14, %rdx
	movq	%r13, %rsi
	leaq	256(%r12), %rdi
	call	fp2_sub_integ@PLT
	movslq	48(%rsp), %r9
	movslq	52(%rsp), %r15
	movq	%rbp, %rdx
	movq	%r12, 24(%rsp)
	movq	40(%rsp), %rbp
	leaq	(%r9,%r9,2), %r13
	salq	$6, %r13
	movq	%rbp, %rsi
	addq	%r12, %r13
	movq	%r15, %r12
	salq	$6, %r12
	leaq	0(%r13,%r12), %rdi
	leaq	32(%r12), %r14
	call	fp_mul_integ@PLT
	leaq	0(%r13,%r14), %rdi
	movq	88(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rbp, %r13
	leaq	(%r15,%r15), %rbp
	call	fp_mul_integ@PLT
	addq	%r15, %rbp
	addq	$32, %r13
	movq	%rbx, %rsi
	salq	$6, %rbp
	addq	24(%rsp), %rbp
	movq	%r13, %rdx
	leaq	0(%rbp,%r12), %rdi
	call	fp_mul_integ@PLT
	movq	96(%rsp), %rsi
	leaq	0(%rbp,%r14), %rdi
	movq	%r13, %rdx
	call	fp_mul_integ@PLT
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L48:
	call	core_get@PLT
	movq	8(%rax), %r8
	movl	$1, (%rax)
	testq	%r8, %r8
	je	.L51
	movl	208(%r8), %r9d
	testl	%r9d, %r9d
	je	.L52
	movl	$1, %ecx
	movl	$389, %edx
	movq	%rax, 120(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7927(%rip), %rdi
	call	err_full_msg@PLT
	movq	120(%rsp), %r15
	movl	$1, %esi
	movq	8(%r15), %rdi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L51:
	leaq	232(%rax), %rdx
	leaq	16(%rax), %rbx
	movl	$0, 224(%rax)
	movl	$1, %ecx
	movq	%rdx, 16(%rax)
	leaq	.LC0(%rip), %rsi
	movl	$389, %edx
	leaq	__func__.7927(%rip), %rdi
	movq	%rbx, 8(%rax)
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L35
.L49:
	call	__stack_chk_fail@PLT
.L52:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE65:
	.size	pp_dbl_k12_projc_lazyr, .-pp_dbl_k12_projc_lazyr
	.p2align 4,,15
	.globl	pp_dbl_lit_k12
	.type	pp_dbl_lit_k12, @function
pp_dbl_lit_k12:
.LFB66:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$568, %rsp
	.cfi_def_cfa_offset 624
	movq	%rdi, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 552(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	336(%rsp), %rdi
	movq	$0, 336(%rsp)
	movq	8(%rax), %rcx
	movq	%rax, (%rsp)
	movl	$1, 544(%rsp)
	movq	%rdi, 8(%rax)
	leaq	344(%rsp), %rdi
	movq	%rcx, 8(%rsp)
	call	_setjmp@PLT
	testl	%eax, %eax
	je	.L63
	movq	(%rsp), %rax
	movl	$1, 328(%rax)
.L57:
	movq	(%rsp), %rbp
	movq	8(%rsp), %rdx
	movq	%rdx, 8(%rbp)
	call	core_get@PLT
	movl	328(%rax), %r15d
	testl	%r15d, %r15d
	jne	.L64
.L53:
	movq	552(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L65
	addq	$568, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	.cfi_restore_state
	movq	40(%rsp), %rbp
	leaq	144(%rsp), %r13
	movl	%eax, 100(%rsp)
	leaq	112(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	leaq	176(%rsp), %r14
	leaq	240(%rsp), %rbx
	leaq	32(%rbp), %r15
	movq	%rbp, %rsi
	leaq	208(%rsp), %r12
	call	fp_sqr_integ@PLT
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	fp_sqr_integ@PLT
	leaq	64(%rbp), %r8
	movq	%r14, %rdi
	movq	%r8, %rsi
	movq	%r8, 88(%rsp)
	call	fp_sqr_integ@PLT
	call	ep_curve_get_b@PLT
	movq	%r14, %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	call	fp_mul_integ@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	fp_dbl_integ@PLT
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp_add_integ@PLT
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fp_add_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	leaq	272(%rsp), %rbp
	call	fp_sqr_integ@PLT
	movq	48(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_sub_integ@PLT
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_sub_integ@PLT
	movq	88(%rsp), %rdx
	movq	%r15, %rsi
	movq	%rbp, %rdi
	call	fp_add_integ@PLT
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp_sqr_integ@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp_sub_integ@PLT
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp_sub_integ@PLT
	leaq	304(%rsp), %r14
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	fp_dbl_integ@PLT
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp_add_integ@PLT
	movq	16(%rsp), %r15
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	fp_sub_integ@PLT
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp_mul_integ@PLT
	movq	%r15, 16(%rsp)
	movq	%r14, %rdx
	movq	%r13, %rsi
	addq	$32, %r15
	movq	%r15, %rdi
	call	fp_add_integ@PLT
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp_sqr_integ@PLT
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	fp_sqr_integ@PLT
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	fp_dbl_integ@PLT
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp_add_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp_dbl_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp_dbl_integ@PLT
	movq	%r14, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp_sub_integ@PLT
	movq	16(%rsp), %r14
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movl	$1, %r15d
	leaq	64(%r14), %rbx
	movq	%rbx, %rdi
	call	fp_mul_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_dbl_integ@PLT
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_dbl_integ@PLT
	movl	$0, 96(%r14)
	call	ep2_curve_is_twist@PLT
	movslq	100(%rsp), %rsi
	cmpl	$2, %eax
	sete	%r9b
	cmove	%rsi, %r15
	movq	24(%rsp), %rsi
	movzbl	%r9b, %r10d
	leaq	(%r10,%r10), %rbx
	movq	%r15, %r14
	movq	%r10, 80(%rsp)
	addq	%r10, %rbx
	salq	$6, %r14
	salq	$6, %rbx
	addq	32(%rsp), %rbx
	movq	%r14, 56(%rsp)
	addq	%rbx, %r14
	movq	%r14, %rdi
	call	fp2_dbl_integ@PLT
	movq	24(%rsp), %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp2_add_integ@PLT
	movq	48(%rsp), %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp_mul_integ@PLT
	movq	56(%rsp), %r14
	movq	48(%rsp), %rdx
	leaq	32(%r14), %r11
	leaq	(%rbx,%r11), %rdi
	movq	%r11, 72(%rsp)
	movq	%rdi, %rsi
	call	fp_mul_integ@PLT
	movq	80(%rsp), %rcx
	movq	%r13, %rdx
	movq	%r12, %rsi
	leaq	(%r15,%r15,2), %r13
	salq	$6, %rcx
	salq	$6, %r13
	leaq	(%rbx,%rcx), %rdi
	movq	%rcx, 64(%rsp)
	call	fp_sub_integ@PLT
	movq	64(%rsp), %rax
	leaq	32(%rbx,%rax), %rdi
	call	fp_zero@PLT
	movq	24(%rsp), %r12
	addq	32(%rsp), %r13
	movq	%rbp, %rdx
	leaq	0(%r13,%r14), %rdi
	leaq	64(%r12), %rsi
	call	fp_mul_integ@PLT
	movq	72(%rsp), %rdi
	leaq	96(%r12), %rsi
	movq	%rbp, %rdx
	leaq	0(%r13,%rdi), %rdi
	call	fp_mul_integ@PLT
	movq	(%rsp), %r8
	movl	$0, 328(%r8)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L64:
	call	core_get@PLT
	movq	8(%rax), %rsi
	movl	$1, (%rax)
	testq	%rsi, %rsi
	je	.L66
	movl	208(%rsi), %ebx
	testl	%ebx, %ebx
	je	.L67
	movl	$1, %ecx
	movl	$480, %edx
	movq	%rax, 104(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7955(%rip), %rdi
	call	err_full_msg@PLT
	movq	104(%rsp), %r14
	movl	$1, %esi
	movq	8(%r14), %rdi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L66:
	leaq	16(%rax), %r9
	movl	$1, %ecx
	leaq	232(%rax), %r10
	movl	$0, 224(%rax)
	movq	%r9, 8(%rax)
	movl	$480, %edx
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7955(%rip), %rdi
	movq	%r10, 16(%rax)
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L53
.L65:
	call	__stack_chk_fail@PLT
.L67:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE66:
	.size	pp_dbl_lit_k12, .-pp_dbl_lit_k12
	.section	.rodata
	.align 8
	.type	__func__.7955, @object
	.size	__func__.7955, 15
__func__.7955:
	.string	"pp_dbl_lit_k12"
	.align 16
	.type	__func__.7927, @object
	.size	__func__.7927, 23
__func__.7927:
	.string	"pp_dbl_k12_projc_lazyr"
	.align 16
	.type	__func__.7897, @object
	.size	__func__.7897, 23
__func__.7897:
	.string	"pp_dbl_k12_projc_basic"
	.align 16
	.type	__func__.7869, @object
	.size	__func__.7869, 17
__func__.7869:
	.string	"pp_dbl_k12_basic"
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1~18.04.1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits

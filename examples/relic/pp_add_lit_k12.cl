	.file	"relic_pp_add_k12.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"relic_pp_add_k12.c"
	.text
	.p2align 4,,15
	.globl	pp_add_k12_basic
	.type	pp_add_k12_basic, @function
pp_add_k12_basic:
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
	movq	8(%rsp), %r9
	movq	16(%rsp), %r10
	movq	%r10, 8(%r9)
	call	core_get@PLT
	movl	328(%rax), %r11d
	testl	%r11d, %r11d
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
	movq	40(%rsp), %r15
	leaq	128(%rsp), %r12
	leaq	64(%rsp), %r13
	movq	%r12, %rdi
	movq	%r15, %rsi
	call	ep2_copy@PLT
	movq	48(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	call	ep2_add_slp_basic@PLT
	call	ep2_curve_is_twist@PLT
	movl	$1, %edx
	movq	%r13, %rsi
	cmpl	$2, %eax
	cmovne	%rdx, %rbx
	sete	%r14b
	movq	32(%rsp), %rdx
	movzbl	%r14b, %r14d
	leaq	(%rbx,%rbx,2), %rbp
	movq	%r14, %r15
	salq	$6, %rbx
	salq	$6, %r15
	salq	$6, %rbp
	addq	24(%rsp), %rbp
	leaq	0(%rbp,%r15), %rdi
	addq	%rbp, %rbx
	salq	$8, %r14
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
	call	fp_neg_integ@PLT
	movq	8(%rsp), %rsi
	movl	$0, 328(%rsi)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L13:
	call	core_get@PLT
	movq	8(%rax), %rcx
	movl	$1, (%rax)
	testq	%rcx, %rcx
	je	.L15
	movl	208(%rcx), %r12d
	testl	%r12d, %r12d
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
	leaq	16(%rax), %rdi
	movl	$1, %ecx
	leaq	232(%rax), %rbx
	movl	$0, 224(%rax)
	movq	%rdi, 8(%rax)
	movl	$71, %edx
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7869(%rip), %rdi
	movq	%rbx, 16(%rax)
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
	.size	pp_add_k12_basic, .-pp_add_k12_basic
	.p2align 4,,15
	.globl	pp_add_k12_projc_basic
	.type	pp_add_k12_projc_basic, @function
pp_add_k12_projc_basic:
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
	subq	$680, %rsp
	.cfi_def_cfa_offset 736
	movq	%rdi, 40(%rsp)
	movq	%rsi, (%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 664(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	448(%rsp), %rdi
	movq	$0, 448(%rsp)
	movq	8(%rax), %rbx
	movq	%rax, 8(%rsp)
	movl	$1, 656(%rsp)
	movq	%rdi, 8(%rax)
	leaq	456(%rsp), %rdi
	movq	%rbx, 16(%rsp)
	call	_setjmp@PLT
	testl	%eax, %eax
	je	.L27
	movq	8(%rsp), %rax
	movl	$1, 328(%rax)
.L21:
	movq	8(%rsp), %rax
	movq	16(%rsp), %r9
	movq	%r9, 8(%rax)
	call	core_get@PLT
	movl	328(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L28
.L17:
	movq	664(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L29
	addq	$680, %rsp
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
.L27:
	.cfi_restore_state
	movq	(%rsp), %rbp
	movq	24(%rsp), %r13
	movl	%eax, %r14d
	leaq	128(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	192(%rsp), %r12
	leaq	128(%rbp), %r15
	movq	%r13, %rdx
	movq	%r15, %rsi
	call	fp2_mul_integ@PLT
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	leaq	64(%r13), %r9
	movq	%r15, %rsi
	movq	%r12, %rdi
	movq	%r9, %rdx
	movq	%r9, 112(%rsp)
	movq	%r13, 24(%rsp)
	leaq	256(%rsp), %r13
	call	fp2_mul_integ@PLT
	leaq	64(%rbp), %rcx
	movq	%r12, %rdx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	movq	%rcx, 104(%rsp)
	call	fp2_sub_integ@PLT
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movq	%rbp, (%rsp)
	leaq	320(%rsp), %rbp
	call	fp2_mul_integ@PLT
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	fp2_mul_integ@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_mul_integ@PLT
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	call	ep2_curve_is_twist@PLT
	movl	$1, %edx
	movq	40(%rsp), %rdi
	cmpl	$2, %eax
	cmovne	%edx, %r14d
	sete	%r10b
	movq	32(%rsp), %rdx
	movzbl	%r10b, %esi
	movslq	%r14d, %r8
	movq	%rsi, %r14
	movq	%rsi, 88(%rsp)
	movq	%r12, %rsi
	leaq	(%r8,%r8,2), %r11
	salq	$6, %r14
	movq	%r8, 96(%rsp)
	salq	$6, %r11
	addq	%r11, %rdi
	leaq	(%rdi,%r14), %rax
	movq	%rdi, 48(%rsp)
	movq	%rax, %rdi
	movq	%rax, 80(%rsp)
	call	fp_mul_integ@PLT
	movq	48(%rsp), %rcx
	leaq	32(%r14), %r9
	movq	32(%rsp), %rdx
	leaq	32(%r12), %rsi
	movq	%r9, 72(%rsp)
	leaq	(%rcx,%r9), %rdi
	call	fp_mul_integ@PLT
	movq	80(%rsp), %rdi
	movq	%rdi, %rsi
	call	fp2_neg@PLT
	leaq	384(%rsp), %r10
	movq	24(%rsp), %rsi
	movq	%r12, %rdx
	movq	%r10, %rdi
	movq	%r10, 64(%rsp)
	call	fp2_mul_integ@PLT
	movq	(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%rdi, %rsi
	call	fp2_sub_integ@PLT
	movq	(%rsp), %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	fp2_mul_integ@PLT
	movq	104(%rsp), %r8
	movq	%r13, %rsi
	movq	%r8, %rdx
	movq	%r8, %rdi
	movq	%r8, 56(%rsp)
	call	fp2_mul_integ@PLT
	movq	56(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rdi, %rdx
	call	fp2_sub_integ@PLT
	movq	(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	call	fp2_mul_integ@PLT
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp2_mul_integ@PLT
	movq	112(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r13, %rdi
	call	fp2_mul_integ@PLT
	movq	96(%rsp), %r15
	movq	48(%rsp), %r12
	movq	%r13, %rdx
	movq	64(%rsp), %rsi
	salq	$6, %r15
	leaq	(%r12,%r15), %rdi
	call	fp2_sub_integ@PLT
	movq	88(%rsp), %rdx
	movq	32(%rsp), %r13
	movq	%rbx, %rsi
	leaq	(%rdx,%rdx), %rbp
	addq	$32, %r13
	addq	%rdx, %rbp
	movq	%r13, %rdx
	salq	$6, %rbp
	addq	40(%rsp), %rbp
	leaq	0(%rbp,%r14), %rdi
	call	fp_mul_integ@PLT
	leaq	32(%rbx), %rsi
	movq	72(%rsp), %rbx
	movq	%r13, %rdx
	leaq	0(%rbp,%rbx), %rdi
	call	fp_mul_integ@PLT
	movq	(%rsp), %r11
	movq	8(%rsp), %r14
	movl	$0, 192(%r11)
	movl	$0, 328(%r14)
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L28:
	call	core_get@PLT
	movq	8(%rax), %r10
	movl	$1, (%rax)
	testq	%r10, %r10
	je	.L30
	movl	208(%r10), %r15d
	testl	%r15d, %r15d
	je	.L31
	movl	$1, %ecx
	movl	$158, %edx
	movq	%rax, 120(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7895(%rip), %rdi
	call	err_full_msg@PLT
	movq	120(%rsp), %r12
	movl	$1, %esi
	movq	8(%r12), %rdi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L30:
	leaq	232(%rax), %rdi
	leaq	16(%rax), %r8
	movl	$0, 224(%rax)
	movl	$1, %ecx
	movq	%rdi, 16(%rax)
	movl	$158, %edx
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7895(%rip), %rdi
	movq	%r8, 8(%rax)
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L17
.L29:
	call	__stack_chk_fail@PLT
.L31:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE64:
	.size	pp_add_k12_projc_basic, .-pp_add_k12_projc_basic
	.p2align 4,,15
	.globl	pp_add_k12_projc_lazyr
	.type	pp_add_k12_projc_lazyr, @function
pp_add_k12_projc_lazyr:
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
	subq	$1720, %rsp
	.cfi_def_cfa_offset 1776
	movq	%rdi, 48(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 1704(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	384(%rsp), %rdi
	movq	$0, 384(%rsp)
	movq	8(%rax), %rbx
	movq	%rax, 8(%rsp)
	movl	$1, 592(%rsp)
	movq	%rdi, 8(%rax)
	leaq	392(%rsp), %rdi
	movq	%rbx, 24(%rsp)
	call	_setjmp@PLT
	testl	%eax, %eax
	je	.L42
	movq	8(%rsp), %rax
	movl	$1, 328(%rax)
.L36:
	movq	8(%rsp), %r11
	movq	24(%rsp), %rax
	movq	%rax, 8(%r11)
	call	core_get@PLT
	movl	328(%rax), %ecx
	testl	%ecx, %ecx
	jne	.L43
.L32:
	movq	1704(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L44
	addq	$1720, %rsp
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
.L42:
	.cfi_restore_state
	movq	16(%rsp), %r14
	movq	32(%rsp), %rbp
	movl	%eax, 116(%rsp)
	leaq	128(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	192(%rsp), %r12
	leaq	256(%rsp), %r13
	leaq	128(%r14), %r15
	movq	%rbp, %rdx
	movq	%r15, %rsi
	call	fp2_mul_integ@PLT
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	fp2_sub_integ@PLT
	leaq	64(%rbp), %r8
	movq	%r15, %rsi
	movq	%r12, %rdi
	movq	%r8, %rdx
	movq	%r8, 104(%rsp)
	movq	%rbp, 32(%rsp)
	leaq	320(%rsp), %rbp
	call	fp2_mul_integ@PLT
	leaq	64(%r14), %rsi
	movq	%r12, %rdx
	movq	%r12, %rdi
	movq	%rsi, 56(%rsp)
	call	fp2_sub_integ@PLT
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%r14, %rdi
	call	fp2_mul_integ@PLT
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	fp2_mul_integ@PLT
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	fp2_sqr_integ@PLT
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	movq	%r15, 64(%rsp)
	movq	%r14, %r15
	call	fp2_mul_integ@PLT
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	fp2_add_integ@PLT
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	%r14, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp2_sub_integ@PLT
	movq	%rbp, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp2_sub_integ@PLT
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r15, 16(%rsp)
	leaq	608(%rsp), %r14
	leaq	1152(%rsp), %r15
	movq	%r14, %rdi
	call	fp2_muln_low@PLT
	movq	56(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	fp2_muln_low@PLT
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	call	fp2_subc_low@PLT
	movq	56(%rsp), %rdi
	movq	%r15, %rsi
	call	fp2_rdcn_low@PLT
	movq	16(%rsp), %rdi
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	call	fp2_mul_integ@PLT
	movq	64(%rsp), %rdi
	movq	%r13, %rdx
	movq	%rdi, %rsi
	call	fp2_mul_integ@PLT
	call	ep2_curve_is_twist@PLT
	movl	116(%rsp), %r10d
	movl	$1, %edx
	movq	%r12, %rsi
	cmpl	$2, %eax
	movq	48(%rsp), %rcx
	cmovne	%edx, %r10d
	sete	%r9b
	movq	40(%rsp), %rdx
	movzbl	%r9b, %r11d
	movslq	%r10d, %rax
	movq	%r11, %r13
	movq	%r11, 88(%rsp)
	leaq	(%rax,%rax,2), %rdi
	salq	$6, %r13
	movq	%rax, 96(%rsp)
	salq	$6, %rdi
	leaq	(%rcx,%rdi), %rbp
	leaq	0(%rbp,%r13), %r8
	movq	%r8, %rdi
	movq	%r8, 80(%rsp)
	call	fp_mul_integ@PLT
	leaq	32(%r13), %rdx
	leaq	32(%r12), %rsi
	leaq	0(%rbp,%rdx), %rdi
	movq	%rdx, 72(%rsp)
	movq	40(%rsp), %rdx
	call	fp_mul_integ@PLT
	movq	80(%rsp), %rdi
	movq	%rdi, %rsi
	call	fp2_neg@PLT
	movq	32(%rsp), %rsi
	movq	%r12, %rdx
	movq	%r14, %rdi
	call	fp2_muln_low@PLT
	movq	104(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r15, %rdi
	call	fp2_muln_low@PLT
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	fp2_subc_low@PLT
	movq	96(%rsp), %r12
	movq	%r14, %rsi
	salq	$6, %r12
	leaq	0(%rbp,%r12), %rdi
	call	fp2_rdcn_low@PLT
	movq	88(%rsp), %r15
	movq	40(%rsp), %r14
	movq	%rbx, %rsi
	leaq	(%r15,%r15), %rbp
	addq	$32, %r14
	addq	%r15, %rbp
	movq	%r14, %rdx
	salq	$6, %rbp
	addq	48(%rsp), %rbp
	leaq	0(%rbp,%r13), %rdi
	call	fp_mul_integ@PLT
	leaq	32(%rbx), %rsi
	movq	72(%rsp), %rbx
	movq	%r14, %rdx
	leaq	0(%rbp,%rbx), %rdi
	call	fp_mul_integ@PLT
	movq	16(%rsp), %r10
	movq	8(%rsp), %r9
	movl	$0, 192(%r10)
	movl	$0, 328(%r9)
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L43:
	call	core_get@PLT
	movq	8(%rax), %r13
	movl	$1, (%rax)
	testq	%r13, %r13
	je	.L45
	movl	208(%r13), %edi
	testl	%edi, %edi
	je	.L46
	movl	$1, %ecx
	movl	$245, %edx
	movq	%rax, 120(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7922(%rip), %rdi
	call	err_full_msg@PLT
	movq	120(%rsp), %rsi
	movq	8(%rsi), %rdi
	movl	$1, %esi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L45:
	leaq	232(%rax), %rdx
	leaq	16(%rax), %r8
	movl	$0, 224(%rax)
	movl	$1, %ecx
	movq	%rdx, 16(%rax)
	leaq	.LC0(%rip), %rsi
	movl	$245, %edx
	leaq	__func__.7922(%rip), %rdi
	movq	%r8, 8(%rax)
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L32
.L44:
	call	__stack_chk_fail@PLT
.L46:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE65:
	.size	pp_add_k12_projc_lazyr, .-pp_add_k12_projc_lazyr
proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov _last37@uint64 _;
mov one31@int32 _;
mov v133@uint64 _;
mov v134_208@int32 _;
mov v136_8@uint64 _;
mov v139_328@int32 _;
mov v51_8@uint64 _;
mov zero35@int32 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* one_47(ab) = 1; */
mov one47 0x1@int32;
/* zero_48(ab) = 0; */
mov zero48 0x0@int32;
/* _51 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 3> */
/* TODO: unconditional jump */

/* BB's index is 3 */

/* _last_54 = _51->last; */
/* rhs field last's offset is 8 */
mov _last54 v51_8;
/* _this.block = 1; */
mov _this_208 0x1@int32;
/* _51->last = &_this; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _this.error = 0B; */
mov _this_0 0x0@uint64;
/* goto <bb 4> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* one_28(ab) = PHI <one_47(ab)(3), one_29(ab)(5)> */
/* zero_33(ab) = PHI <zero_48(ab)(3), zero_34(ab)(5)> */
/* _last_37(ab) = PHI <_last_54(3), _last_38(ab)(5)> */
/* _ctx_39(ab) = PHI <_51(3), _ctx_40(ab)(5)> */
/* .MEM_42(ab) = PHI <.MEM_57(3), .MEM_117(ab)(5)> */
/* _59 = _setjmp (&_this.addr); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* one_29(ab) = PHI <one_47(ab)(2), one_28(ab)(4), one_28(ab)(7), one_28(ab)(8), one_28(ab)(9), one_28(ab)(10), one_28(ab)(11), one_28(ab)(12), one_31(ab)(15), one_31(ab)(16), one_31(ab)(17), one_31(ab)(18), one_31(ab)(19), one_31(ab)(20), one_31(ab)(21), one_31(ab)(22), one_31(ab)(23), one_31(ab)(24), one_31(ab)(25), one_31(ab)(26), one_31(ab)(27), one_31(ab)(28), one_31(ab)(29), one_31(ab)(30), one_31(ab)(31), one_31(ab)(32), one_31(ab)(33), one_31(ab)(34), one_31(ab)(35), one_32(ab)(38), one_32(ab)(40), one_32(ab)(42), one_32(ab)(46), one_32(ab)(47)> */
/* zero_34(ab) = PHI <zero_48(ab)(2), zero_33(ab)(4), zero_33(ab)(7), zero_33(ab)(8), zero_33(ab)(9), zero_33(ab)(10), zero_33(ab)(11), zero_33(ab)(12), zero_35(ab)(15), zero_35(ab)(16), zero_35(ab)(17), zero_35(ab)(18), zero_35(ab)(19), zero_35(ab)(20), zero_35(ab)(21), zero_35(ab)(22), zero_35(ab)(23), zero_35(ab)(24), zero_35(ab)(25), zero_35(ab)(26), zero_35(ab)(27), zero_35(ab)(28), zero_35(ab)(29), zero_35(ab)(30), zero_35(ab)(31), zero_35(ab)(32), zero_35(ab)(33), zero_35(ab)(34), zero_35(ab)(35), zero_36(ab)(38), zero_36(ab)(40), zero_36(ab)(42), zero_36(ab)(46), zero_36(ab)(47)> */
/* _last_38(ab) = PHI <_last_52(D)(ab)(2), _last_37(ab)(4), _last_37(ab)(7), _last_37(ab)(8), _last_37(ab)(9), _last_37(ab)(10), _last_37(ab)(11), _last_37(ab)(12), _last_37(ab)(15), _last_37(ab)(16), _last_37(ab)(17), _last_37(ab)(18), _last_37(ab)(19), _last_37(ab)(20), _last_37(ab)(21), _last_37(ab)(22), _last_37(ab)(23), _last_37(ab)(24), _last_37(ab)(25), _last_37(ab)(26), _last_37(ab)(27), _last_37(ab)(28), _last_37(ab)(29), _last_37(ab)(30), _last_37(ab)(31), _last_37(ab)(32), _last_37(ab)(33), _last_37(ab)(34), _last_37(ab)(35), _last_37(ab)(38), _last_37(ab)(40), _last_37(ab)(42), _last_37(ab)(46), _last_37(ab)(47)> */
/* _ctx_40(ab) = PHI <_ctx_53(D)(ab)(2), _ctx_39(ab)(4), _ctx_39(ab)(7), _ctx_39(ab)(8), _ctx_39(ab)(9), _ctx_39(ab)(10), _ctx_39(ab)(11), _ctx_39(ab)(12), _ctx_39(ab)(15), _ctx_39(ab)(16), _ctx_39(ab)(17), _ctx_39(ab)(18), _ctx_39(ab)(19), _ctx_39(ab)(20), _ctx_39(ab)(21), _ctx_39(ab)(22), _ctx_39(ab)(23), _ctx_39(ab)(24), _ctx_39(ab)(25), _ctx_39(ab)(26), _ctx_39(ab)(27), _ctx_39(ab)(28), _ctx_39(ab)(29), _ctx_39(ab)(30), _ctx_39(ab)(31), _ctx_39(ab)(32), _ctx_39(ab)(33), _ctx_39(ab)(34), _ctx_39(ab)(35), _ctx_39(ab)(38), _ctx_39(ab)(40), _ctx_39(ab)(42), _ctx_39(ab)(46), _ctx_39(ab)(47)> */
/* .MEM_43(ab) = PHI <.MEM_50(ab)(2), .MEM_58(ab)(4), .MEM_62(ab)(7), .MEM_63(ab)(8), .MEM_64(ab)(9), .MEM_65(ab)(10), .MEM_66(ab)(11), .MEM_68(ab)(12), .MEM_73(ab)(15), .MEM_74(ab)(16), .MEM_76(ab)(17), .MEM_77(ab)(18), .MEM_78(ab)(19), .MEM_79(ab)(20), .MEM_80(ab)(21), .MEM_81(ab)(22), .MEM_82(ab)(23), .MEM_83(ab)(24), .MEM_84(ab)(25), .MEM_85(ab)(26), .MEM_86(ab)(27), .MEM_87(ab)(28), .MEM_88(ab)(29), .MEM_89(ab)(30), .MEM_90(ab)(31), .MEM_91(ab)(32), .MEM_92(ab)(33), .MEM_93(ab)(34), .MEM_94(ab)(35), .MEM_140(ab)(38), .MEM_137(ab)(40), .MEM_126(ab)(42), .MEM_110(ab)(46), .MEM_111(ab)(47)> */
/* ABNORMAL_DISPATCHER (0); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */

/* BB's index is 6 */

/* if (_59 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 37> */

/* BB's index is 7 */

/* _1 = &p_60(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _2 = &r_61(D)->z; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp_mul_integ (&t0, _2, _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 8> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* _3 = &r_61(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp_sub_integ (&t0, _3, &t0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 9 */

/* _4 = &p_60(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp_mul_integ (&t1, _2, _4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 10> */
/* TODO: unconditional jump */

/* BB's index is 10 */

/* _6 = &r_61(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* fp_sub_integ (&t1, _6, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 11> */
/* TODO: unconditional jump */

/* BB's index is 11 */

/* fp_mul_integ (&t2, _1, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 12> */
/* TODO: unconditional jump */

/* BB's index is 12 */

/* r_61(D)->norm = 0; */
mov r61_96 0x0@int32;
/* _69 = ep2_curve_is_twist (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 13> */
/* TODO: unconditional jump */

/* BB's index is 13 */

/* if (_69 == 2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 14>, False label: <bb 15> */

/* BB's index is 14 */

/* one_70 = one_28(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* zero_71 = zero_33(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* goto <bb 15> */
/* TODO: unconditional jump */

/* BB's index is 15 */

/* one_31(ab) = PHI <one_70(14), one_28(ab)(13)> */
/* zero_35(ab) = PHI <zero_71(14), zero_33(ab)(13)> */
/* _7 = (long unsigned int) zero_35(ab); */
cast v7@uint64 zero35@int32;
/* _8 = _7 * 192; */
umul v8 v7 0xc0@uint64;
/* _9 = l_72(D) + _8; */
/* _5 = _7 * 64; */
umul v5 v7 0x40@uint64;
/* _10 = _9 + _5; */
/* fp_mul_integ (_10, &t0, _4); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 16> */
/* TODO: unconditional jump */

/* BB's index is 16 */

/* fp_sub_integ (_10, &t2, _10); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 17> */
/* TODO: unconditional jump */

/* BB's index is 17 */

/* _11 = &q_75(D)->x[0]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _128 = (sizetype) one_31(ab); */
cast v128@uint64 one31@int32;
/* _127 = _128 * 64; */
umul v127 v128 0x40@uint64;
/* _12 = _9 + _127; */
/* fp_mul_integ (_12, _11, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 18> */
/* TODO: unconditional jump */

/* BB's index is 18 */

/* _13 = &q_75(D)->x[1]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _118 = _127 + 32; */
uadd v118 v127 0x20@uint64;
/* _14 = _9 + _118; */
/* fp_mul_integ (_14, _13, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 19> */
/* TODO: unconditional jump */

/* BB's index is 19 */

/* fp2_neg (_12, _12); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 20> */
/* TODO: unconditional jump */

/* BB's index is 20 */

/* _15 = &q_75(D)->y[0]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _17 = _128 * 192; */
umul v17 v128 0xc0@uint64;
/* _18 = l_72(D) + _17; */
/* _19 = _18 + _127; */
/* fp_mul_integ (_19, _15, &t0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 21> */
/* TODO: unconditional jump */

/* BB's index is 21 */

/* _20 = &q_75(D)->y[1]; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _21 = _18 + _118; */
/* fp_mul_integ (_21, _20, &t0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 22> */
/* TODO: unconditional jump */

/* BB's index is 22 */

/* fp_sqr_integ (&t2, &t0); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 23> */
/* TODO: unconditional jump */

/* BB's index is 23 */

/* fp_mul_integ (_3, &t2, _3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 24> */
/* TODO: unconditional jump */

/* BB's index is 24 */

/* fp_mul_integ (&t2, &t0, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 25> */
/* TODO: unconditional jump */

/* BB's index is 25 */

/* fp_sqr_integ (&t3, &t1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 26> */
/* TODO: unconditional jump */

/* BB's index is 26 */

/* fp_mul_integ (&t3, &t3, _2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 27> */
/* TODO: unconditional jump */

/* BB's index is 27 */

/* fp_add_integ (&t3, &t2, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 28> */
/* TODO: unconditional jump */

/* BB's index is 28 */

/* fp_sub_integ (&t3, &t3, _3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 29> */
/* TODO: unconditional jump */

/* BB's index is 29 */

/* fp_sub_integ (&t3, &t3, _3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 30> */
/* TODO: unconditional jump */

/* BB's index is 30 */

/* fp_sub_integ (_3, _3, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 31> */
/* TODO: unconditional jump */

/* BB's index is 31 */

/* fp_mul_integ (&t1, &t1, _3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 32> */
/* TODO: unconditional jump */

/* BB's index is 32 */

/* fp_mul_integ (_6, &t2, _6); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 33> */
/* TODO: unconditional jump */

/* BB's index is 33 */

/* fp_sub_integ (_6, &t1, _6); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 34> */
/* TODO: unconditional jump */

/* BB's index is 34 */

/* fp_mul_integ (_3, &t0, &t3); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 35> */
/* TODO: unconditional jump */

/* BB's index is 35 */

/* fp_mul_integ (_2, _2, &t2); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 36> */
/* TODO: unconditional jump */

/* BB's index is 36 */

/* _ctx_39(ab)->caught = 0; */
mov _ctx39_328 0x0@int32;
/* goto <bb 38> */
/* TODO: unconditional jump */

/* BB's index is 37 */

/* _ctx_39(ab)->caught = 1; */
mov _ctx39_328 0x1@int32;
/* goto <bb 38> */
/* TODO: unconditional jump */

/* BB's index is 38 */

/* one_32(ab) = PHI <one_31(ab)(36), one_28(ab)(37)> */
/* zero_36(ab) = PHI <zero_35(ab)(36), zero_33(ab)(37)> */
/* .MEM_44 = PHI <.MEM_95(36), .MEM_96(37)> */
/* _ctx_39(ab)->last = _last_37(ab); */
mov _ctx39_8 _last37;
/* _this ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* _139 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 39> */
/* TODO: unconditional jump */

/* BB's index is 39 */

/* _138 = _139->caught; */
/* rhs field caught's offset is 328 */
mov v138 v139_328;
/* if (_138 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 40>, False label: <bb 43> */

/* BB's index is 40 */

/* _136 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 41> */
/* TODO: unconditional jump */

/* BB's index is 41 */

/* _136->code = 1; */
mov v136_0 0x1@int32;
/* _134 = _136->last; */
/* rhs field last's offset is 8 */
mov v134 v136_8;
/* if (_134 != 0B) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 44>, False label: <bb 42> */

/* BB's index is 42 */

/* _133 = &_136->error; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _136->last = _133; */
mov v136_8 v133;
/* _131 = &_136->number; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _136->error.error = _131; */
/* TODO: skipped, no heuristic, need self translating */
/* _136->error.block = 0; */
/* TODO: skipped, no heuristic, need self translating */
/* _136->number = 1; */
mov v136_232 0x1@int32;
/* err_full_msg (&__func__, "relic_pp_add_k12.c", 314, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 43> */
/* TODO: unconditional jump */

/* BB's index is 43 */

/* .MEM_150 = PHI <.MEM_140(ab)(39), .MEM_126(ab)(42)> */
/* t0 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t1 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t2 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t3 ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* return; */

/* BB's index is 44 */

/* _24 = _134->block; */
/* rhs field block's offset is 208 */
mov v24 v134_208;
/* if (_24 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 45>, False label: <bb 46> */

/* BB's index is 45 */

/* exit (1); */
/* TODO: skipped, GIMPLE_CALL use not handled builtin function */

/* BB's index is 46 */

/* err_full_msg (&__func__, "relic_pp_add_k12.c", 314, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 47> */
/* TODO: unconditional jump */

/* BB's index is 47 */

/* _27 = _136->last; */
/* rhs field last's offset is 8 */
mov v27 v136_8;
/* _30 = &_27->addr; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* longjmp (_30, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */


/* Start with unused lhs */
mov _ _ctx39_8@uint64;
mov _ _ctx39_328@int32;
mov _ _last54@uint64;
mov _ _this_0@uint64;
mov _ _this_208@int32;
mov _ one47@int32;
mov _ r61_96@int32;
mov _ v118@uint64;
mov _ v134@uint64;
mov _ v136_0@int32;
mov _ v136_232@int32;
mov _ v138@int32;
mov _ v17@uint64;
mov _ v24@int32;
mov _ v27@uint64;
mov _ v5@uint64;
mov _ v8@uint64;
mov _ zero48@int32;
/* End with unsed lhs */


{
  true
  &&
  true
}
	.p2align 4,,15
	.globl	pp_add_lit_k12
	.type	pp_add_lit_k12, @function
pp_add_lit_k12:
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
	subq	$472, %rsp
	.cfi_def_cfa_offset 528
	movq	%rdi, 40(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 456(%rsp)
	xorl	%eax, %eax
	call	core_get@PLT
	leaq	240(%rsp), %rdi
	movq	$0, 240(%rsp)
	movq	8(%rax), %rcx
	movq	%rax, (%rsp)
	movl	$1, 448(%rsp)
	movq	%rdi, 8(%rax)
	leaq	248(%rsp), %rdi
	movq	%rcx, 16(%rsp)
	call	_setjmp@PLT
	testl	%eax, %eax
	je	.L57
	movq	(%rsp), %rax
	movl	$1, 328(%rax)
.L51:
	movq	(%rsp), %r13
	movq	16(%rsp), %rbp
	movq	%rbp, 8(%r13)
	call	core_get@PLT
	movl	328(%rax), %r12d
	testl	%r12d, %r12d
	jne	.L58
.L47:
	movq	456(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L59
	addq	$472, %rsp
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
.L57:
	.cfi_restore_state
	movq	24(%rsp), %rbx
	movq	32(%rsp), %rbp
	leaq	112(%rsp), %r13
	movl	%eax, %r15d
	movq	%r13, %rdi
	leaq	176(%rsp), %r12
	leaq	64(%rbx), %r14
	movq	%rbp, %rdx
	movq	%r14, %rsi
	call	fp_mul_integ@PLT
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r13, %rdi
	call	fp_sub_integ@PLT
	leaq	32(%rbp), %r8
	movq	%rbp, 32(%rsp)
	movq	%r14, %rsi
	leaq	144(%rsp), %rbp
	movq	%r8, %rdx
	movq	%r8, 96(%rsp)
	movq	%rbp, %rdi
	call	fp_mul_integ@PLT
	leaq	32(%rbx), %r9
	movq	%rbp, %rdx
	movq	%rbp, %rdi
	movq	%r9, %rsi
	movq	%r9, 88(%rsp)
	call	fp_sub_integ@PLT
	movq	32(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r12, %rdi
	call	fp_mul_integ@PLT
	movl	$0, 96(%rbx)
	movq	%rbx, 24(%rsp)
	call	ep2_curve_is_twist@PLT
	movl	$1, %edx
	cmpl	$2, %eax
	sete	%sil
	cmovne	%edx, %r15d
	movq	96(%rsp), %rdx
	movzbl	%sil, %r10d
	movq	%r13, %rsi
	leaq	(%r10,%r10), %rbx
	movl	%r15d, 52(%rsp)
	addq	%r10, %rbx
	salq	$6, %r10
	salq	$6, %rbx
	addq	40(%rsp), %rbx
	leaq	(%rbx,%r10), %r15
	movq	%r15, %rdi
	call	fp_mul_integ@PLT
	movq	%r15, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	call	fp_sub_integ@PLT
	movslq	52(%rsp), %r11
	movq	8(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r11, %r15
	movq	%r11, 80(%rsp)
	salq	$6, %r15
	leaq	(%rbx,%r15), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 72(%rsp)
	call	fp_mul_integ@PLT
	movq	8(%rsp), %rdi
	leaq	32(%r15), %r8
	movq	%rbp, %rdx
	movq	%r8, 64(%rsp)
	leaq	32(%rdi), %rsi
	leaq	(%rbx,%r8), %rdi
	call	fp_mul_integ@PLT
	movq	72(%rsp), %rdi
	movq	%rdi, %rsi
	call	fp2_neg@PLT
	movq	80(%rsp), %rax
	movq	8(%rsp), %r9
	movq	%r13, %rdx
	leaq	(%rax,%rax,2), %rbx
	leaq	64(%r9), %rsi
	salq	$6, %rbx
	addq	40(%rsp), %rbx
	leaq	(%rbx,%r15), %rdi
	call	fp_mul_integ@PLT
	movq	64(%rsp), %r10
	movq	8(%rsp), %rsi
	movq	%r13, %rdx
	leaq	(%rbx,%r10), %rdi
	leaq	96(%rsi), %rsi
	call	fp_mul_integ@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	leaq	208(%rsp), %rbx
	call	fp_sqr_integ@PLT
	movq	24(%rsp), %r15
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r15, %rdi
	call	fp_mul_integ@PLT
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	fp_mul_integ@PLT
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	fp_sqr_integ@PLT
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_mul_integ@PLT
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	fp_add_integ@PLT
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_sub_integ@PLT
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	fp_sub_integ@PLT
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	fp_sub_integ@PLT
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	fp_mul_integ@PLT
	movq	88(%rsp), %r11
	movq	%r12, %rsi
	movq	%r11, %rdx
	movq	%r11, %rdi
	movq	%r11, 56(%rsp)
	call	fp_mul_integ@PLT
	movq	56(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rdi, %rdx
	call	fp_sub_integ@PLT
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	fp_mul_integ@PLT
	movq	%r14, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	call	fp_mul_integ@PLT
	movq	(%rsp), %r14
	movl	$0, 328(%r14)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L58:
	call	core_get@PLT
	movq	8(%rax), %rdx
	movl	$1, (%rax)
	testq	%rdx, %rdx
	je	.L60
	movl	208(%rdx), %r9d
	testl	%r9d, %r9d
	je	.L61
	movl	$1, %ecx
	movl	$314, %edx
	movq	%rax, 104(%rsp)
	leaq	.LC0(%rip), %rsi
	leaq	__func__.7947(%rip), %rdi
	call	err_full_msg@PLT
	movq	104(%rsp), %rax
	movl	$1, %esi
	movq	8(%rax), %rdi
	addq	$8, %rdi
	call	__longjmp_chk@PLT
	.p2align 4,,10
	.p2align 3
.L60:
	leaq	16(%rax), %rcx
	movl	$314, %edx
	leaq	232(%rax), %r8
	movl	$0, 224(%rax)
	movq	%rcx, 8(%rax)
	leaq	.LC0(%rip), %rsi
	movl	$1, %ecx
	leaq	__func__.7947(%rip), %rdi
	movq	%r8, 16(%rax)
	movl	$1, 232(%rax)
	call	err_full_msg@PLT
	jmp	.L47
.L59:
	call	__stack_chk_fail@PLT
.L61:
	movl	$1, %edi
	call	exit@PLT
	.cfi_endproc
.LFE66:
	.size	pp_add_lit_k12, .-pp_add_lit_k12
	.section	.rodata
	.align 8
	.type	__func__.7947, @object
	.size	__func__.7947, 15
__func__.7947:
	.string	"pp_add_lit_k12"
	.align 16
	.type	__func__.7922, @object
	.size	__func__.7922, 23
__func__.7922:
	.string	"pp_add_k12_projc_lazyr"
	.align 16
	.type	__func__.7895, @object
	.size	__func__.7895, 23
__func__.7895:
	.string	"pp_add_k12_projc_basic"
	.align 16
	.type	__func__.7869, @object
	.size	__func__.7869, 17
__func__.7869:
	.string	"pp_add_k12_basic"
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1~18.04.1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits

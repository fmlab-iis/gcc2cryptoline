	.file	"relic_pp_add_k12.c"
	.text
proc main () = 
{
  true
  &&
  true
}


/* Start with undefined rhs */
mov _last29@uint64 _;
mov one23@int32 _;
mov v100@uint64 _;
mov v101_208@int32 _;
mov v103_8@uint64 _;
mov v106_328@int32 _;
mov v43_8@uint64 _;
mov zero27@int32 _;
/* End with undefined rhs */



/* BB's index is 2 */

/* one_39(ab) = 1; */
mov one39 0x1@int32;
/* zero_40(ab) = 0; */
mov zero40 0x0@int32;
/* _43 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 3> */
/* TODO: unconditional jump */

/* BB's index is 3 */

/* _last_46 = _43->last; */
/* rhs field last's offset is 8 */
mov _last46 v43_8;
/* _this.block = 1; */
mov _this_208 0x1@int32;
/* _43->last = &_this; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _this.error = 0B; */
mov _this_0 0x0@uint64;
/* goto <bb 4> */
/* TODO: unconditional jump */

/* BB's index is 4 */

/* one_20(ab) = PHI <one_39(ab)(3), one_21(ab)(5)> */
/* zero_25(ab) = PHI <zero_40(ab)(3), zero_26(ab)(5)> */
/* _last_29(ab) = PHI <_last_46(3), _last_30(ab)(5)> */
/* _ctx_31(ab) = PHI <_43(3), _ctx_32(ab)(5)> */
/* .MEM_34(ab) = PHI <.MEM_49(3), .MEM_87(ab)(5)> */
/* _51 = _setjmp (&_this.addr); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* one_21(ab) = PHI <one_39(ab)(2), one_20(ab)(4), one_20(ab)(7), one_20(ab)(8), one_20(ab)(9), one_23(ab)(12), one_23(ab)(13), one_23(ab)(14), one_23(ab)(15), one_23(ab)(16), one_24(ab)(19), one_24(ab)(21), one_24(ab)(23), one_24(ab)(27), one_24(ab)(28)> */
/* zero_26(ab) = PHI <zero_40(ab)(2), zero_25(ab)(4), zero_25(ab)(7), zero_25(ab)(8), zero_25(ab)(9), zero_27(ab)(12), zero_27(ab)(13), zero_27(ab)(14), zero_27(ab)(15), zero_27(ab)(16), zero_28(ab)(19), zero_28(ab)(21), zero_28(ab)(23), zero_28(ab)(27), zero_28(ab)(28)> */
/* _last_30(ab) = PHI <_last_44(D)(ab)(2), _last_29(ab)(4), _last_29(ab)(7), _last_29(ab)(8), _last_29(ab)(9), _last_29(ab)(12), _last_29(ab)(13), _last_29(ab)(14), _last_29(ab)(15), _last_29(ab)(16), _last_29(ab)(19), _last_29(ab)(21), _last_29(ab)(23), _last_29(ab)(27), _last_29(ab)(28)> */
/* _ctx_32(ab) = PHI <_ctx_45(D)(ab)(2), _ctx_31(ab)(4), _ctx_31(ab)(7), _ctx_31(ab)(8), _ctx_31(ab)(9), _ctx_31(ab)(12), _ctx_31(ab)(13), _ctx_31(ab)(14), _ctx_31(ab)(15), _ctx_31(ab)(16), _ctx_31(ab)(19), _ctx_31(ab)(21), _ctx_31(ab)(23), _ctx_31(ab)(27), _ctx_31(ab)(28)> */
/* .MEM_35(ab) = PHI <.MEM_42(ab)(2), .MEM_50(ab)(4), .MEM_53(ab)(7), .MEM_55(ab)(8), .MEM_56(ab)(9), .MEM_62(ab)(12), .MEM_63(ab)(13), .MEM_64(ab)(14), .MEM_65(ab)(15), .MEM_66(ab)(16), .MEM_107(ab)(19), .MEM_104(ab)(21), .MEM_97(ab)(23), .MEM_82(ab)(27), .MEM_83(ab)(28)> */
/* ABNORMAL_DISPATCHER (0); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */

/* BB's index is 6 */

/* if (_51 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 18> */

/* BB's index is 7 */

/* ep2_copy (&t, r_52(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 8> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* ep2_add_slp_basic (r_52(D), &s, r_52(D), q_54(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 9 */

/* _57 = ep2_curve_is_twist (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 10> */
/* TODO: unconditional jump */

/* BB's index is 10 */

/* if (_57 == 2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 11>, False label: <bb 12> */

/* BB's index is 11 */

/* one_58 = one_20(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* zero_59 = zero_25(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* goto <bb 12> */
/* TODO: unconditional jump */

/* BB's index is 12 */

/* one_23(ab) = PHI <one_58(11), one_20(ab)(10)> */
/* zero_27(ab) = PHI <zero_59(11), zero_25(ab)(10)> */
/* _1 = &p_60(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _2 = (long unsigned int) one_23(ab); */
cast v2@uint64 one23@int32;
/* _3 = _2 * 192; */
umul v3 v2 0xc0@uint64;
/* _4 = l_61(D) + _3; */
/* _38 = (sizetype) zero_27(ab); */
cast v38@uint64 zero27@int32;
/* _6 = _38 * 64; */
umul v6 v38 0x40@uint64;
/* _5 = _4 + _6; */
/* fp_mul_integ (_5, &s[0], _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 13> */
/* TODO: unconditional jump */

/* BB's index is 13 */

/* _96 = _6 + 32; */
uadd v96 v6 0x20@uint64;
/* _7 = _4 + _96; */
/* fp_mul_integ (_7, &s[1], _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 14> */
/* TODO: unconditional jump */

/* BB's index is 14 */

/* _88 = _2 * 64; */
umul v88 v2 0x40@uint64;
/* _8 = _4 + _88; */
/* fp2_mul_integ (_8, &s, &t[0].x); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 15> */
/* TODO: unconditional jump */

/* BB's index is 15 */

/* fp2_sub_integ (_8, &t[0].y, _8); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 16> */
/* TODO: unconditional jump */

/* BB's index is 16 */

/* _9 = &p_60(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _33 = _38 * 256; */
umul v33 v38 0x100@uint64;
/* _13 = l_61(D) + _33; */
/* fp_neg_integ (_13, _9); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 17> */
/* TODO: unconditional jump */

/* BB's index is 17 */

/* _ctx_31(ab)->caught = 0; */
mov _ctx31_328 0x0@int32;
/* goto <bb 19> */
/* TODO: unconditional jump */

/* BB's index is 18 */

/* _ctx_31(ab)->caught = 1; */
mov _ctx31_328 0x1@int32;
/* goto <bb 19> */
/* TODO: unconditional jump */

/* BB's index is 19 */

/* one_24(ab) = PHI <one_23(ab)(17), one_20(ab)(18)> */
/* zero_28(ab) = PHI <zero_27(ab)(17), zero_25(ab)(18)> */
/* .MEM_36 = PHI <.MEM_67(17), .MEM_68(18)> */
/* _ctx_31(ab)->last = _last_29(ab); */
mov _ctx31_8 _last29;
/* _this ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* _106 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 20> */
/* TODO: unconditional jump */

/* BB's index is 20 */

/* _105 = _106->caught; */
/* rhs field caught's offset is 328 */
mov v105 v106_328;
/* if (_105 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 21>, False label: <bb 24> */

/* BB's index is 21 */

/* _103 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 22> */
/* TODO: unconditional jump */

/* BB's index is 22 */

/* _103->code = 1; */
mov v103_0 0x1@int32;
/* _101 = _103->last; */
/* rhs field last's offset is 8 */
mov v101 v103_8;
/* if (_101 != 0B) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 25>, False label: <bb 23> */

/* BB's index is 23 */

/* _100 = &_103->error; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _103->last = _100; */
mov v103_8 v100;
/* _93 = &_103->number; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _103->error.error = _93; */
/* TODO: skipped, no heuristic, need self translating */
/* _103->error.block = 0; */
/* TODO: skipped, no heuristic, need self translating */
/* _103->number = 1; */
mov v103_232 0x1@int32;
/* err_full_msg (&__func__, "relic_pp_add_k12.c", 71, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 24> */
/* TODO: unconditional jump */

/* BB's index is 24 */

/* .MEM_117 = PHI <.MEM_107(ab)(20), .MEM_97(ab)(23)> */
/* s ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* return; */

/* BB's index is 25 */

/* _16 = _101->block; */
/* rhs field block's offset is 208 */
mov v16 v101_208;
/* if (_16 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 26>, False label: <bb 27> */

/* BB's index is 26 */

/* exit (1); */
/* TODO: skipped, GIMPLE_CALL use not handled builtin function */

/* BB's index is 27 */

/* err_full_msg (&__func__, "relic_pp_add_k12.c", 71, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 28> */
/* TODO: unconditional jump */

/* BB's index is 28 */

/* _19 = _103->last; */
/* rhs field last's offset is 8 */
mov v19 v103_8;
/* _22 = &_19->addr; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* longjmp (_22, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */


/* Start with unused lhs */
mov _ _ctx31_8@uint64;
mov _ _ctx31_328@int32;
mov _ _last46@uint64;
mov _ _this_0@uint64;
mov _ _this_208@int32;
mov _ one39@int32;
mov _ v101@uint64;
mov _ v103_0@int32;
mov _ v103_232@int32;
mov _ v105@int32;
mov _ v16@int32;
mov _ v19@uint64;
mov _ v3@uint64;
mov _ v33@uint64;
mov _ v88@uint64;
mov _ v96@uint64;
mov _ zero40@int32;
/* End with unsed lhs */


{
  true
  &&
  true
}
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

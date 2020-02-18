	.file	"relic_pp_dbl_k12.c"
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
mov v101@uint64 _;
mov v102_208@int32 _;
mov v104_8@uint64 _;
mov v107_328@int32 _;
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
/* .MEM_34(ab) = PHI <.MEM_49(3), .MEM_88(ab)(5)> */
/* _51 = _setjmp (&_this.addr); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 6> */
/* TODO: unconditional jump */

/* BB's index is 5 */

/* one_21(ab) = PHI <one_39(ab)(2), one_20(ab)(4), one_20(ab)(7), one_20(ab)(8), one_20(ab)(9), one_20(ab)(10), one_23(ab)(13), one_23(ab)(14), one_23(ab)(15), one_23(ab)(16), one_23(ab)(17), one_24(ab)(20), one_24(ab)(22), one_24(ab)(24), one_24(ab)(28), one_24(ab)(29)> */
/* zero_26(ab) = PHI <zero_40(ab)(2), zero_25(ab)(4), zero_25(ab)(7), zero_25(ab)(8), zero_25(ab)(9), zero_25(ab)(10), zero_27(ab)(13), zero_27(ab)(14), zero_27(ab)(15), zero_27(ab)(16), zero_27(ab)(17), zero_28(ab)(20), zero_28(ab)(22), zero_28(ab)(24), zero_28(ab)(28), zero_28(ab)(29)> */
/* _last_30(ab) = PHI <_last_44(D)(ab)(2), _last_29(ab)(4), _last_29(ab)(7), _last_29(ab)(8), _last_29(ab)(9), _last_29(ab)(10), _last_29(ab)(13), _last_29(ab)(14), _last_29(ab)(15), _last_29(ab)(16), _last_29(ab)(17), _last_29(ab)(20), _last_29(ab)(22), _last_29(ab)(24), _last_29(ab)(28), _last_29(ab)(29)> */
/* _ctx_32(ab) = PHI <_ctx_45(D)(ab)(2), _ctx_31(ab)(4), _ctx_31(ab)(7), _ctx_31(ab)(8), _ctx_31(ab)(9), _ctx_31(ab)(10), _ctx_31(ab)(13), _ctx_31(ab)(14), _ctx_31(ab)(15), _ctx_31(ab)(16), _ctx_31(ab)(17), _ctx_31(ab)(20), _ctx_31(ab)(22), _ctx_31(ab)(24), _ctx_31(ab)(28), _ctx_31(ab)(29)> */
/* .MEM_35(ab) = PHI <.MEM_42(ab)(2), .MEM_50(ab)(4), .MEM_53(ab)(7), .MEM_55(ab)(8), .MEM_57(ab)(9), .MEM_58(ab)(10), .MEM_63(ab)(13), .MEM_64(ab)(14), .MEM_65(ab)(15), .MEM_66(ab)(16), .MEM_67(ab)(17), .MEM_108(ab)(20), .MEM_105(ab)(22), .MEM_98(ab)(24), .MEM_83(ab)(28), .MEM_84(ab)(29)> */
/* ABNORMAL_DISPATCHER (0); */
/* TODO: skipped, GIMPLE_CALL use not handled internal function */

/* BB's index is 6 */

/* if (_51 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 7>, False label: <bb 19> */

/* BB's index is 7 */

/* ep2_copy (&t, q_52(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 8> */
/* TODO: unconditional jump */

/* BB's index is 8 */

/* ep2_dbl_slp_basic (r_54(D), &s, q_52(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 9> */
/* TODO: unconditional jump */

/* BB's index is 9 */

/* fp12_zero (l_56(D)); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 10> */
/* TODO: unconditional jump */

/* BB's index is 10 */

/* _59 = ep2_curve_is_twist (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 11> */
/* TODO: unconditional jump */

/* BB's index is 11 */

/* if (_59 == 2) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 12>, False label: <bb 13> */

/* BB's index is 12 */

/* one_60 = one_20(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* zero_61 = zero_25(ab) ^ 1; */
/* TODO: Skip translation for bit xor */
/* goto <bb 13> */
/* TODO: unconditional jump */

/* BB's index is 13 */

/* one_23(ab) = PHI <one_60(12), one_20(ab)(11)> */
/* zero_27(ab) = PHI <zero_61(12), zero_25(ab)(11)> */
/* _1 = &p_62(D)->x; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _2 = (long unsigned int) one_23(ab); */
cast v2@uint64 one23@int32;
/* _3 = _2 * 192; */
umul v3 v2 0xc0@uint64;
/* _4 = l_56(D) + _3; */
/* _38 = (sizetype) zero_27(ab); */
cast v38@uint64 zero27@int32;
/* _6 = _38 * 64; */
umul v6 v38 0x40@uint64;
/* _5 = _4 + _6; */
/* fp_mul_integ (_5, &s[0], _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 14> */
/* TODO: unconditional jump */

/* BB's index is 14 */

/* _97 = _6 + 32; */
uadd v97 v6 0x20@uint64;
/* _7 = _4 + _97; */
/* fp_mul_integ (_7, &s[1], _1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 15> */
/* TODO: unconditional jump */

/* BB's index is 15 */

/* _89 = _2 * 64; */
umul v89 v2 0x40@uint64;
/* _8 = _4 + _89; */
/* fp2_mul_integ (_8, &s, &t[0].x); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 16> */
/* TODO: unconditional jump */

/* BB's index is 16 */

/* fp2_sub_integ (_8, &t[0].y, _8); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 17> */
/* TODO: unconditional jump */

/* BB's index is 17 */

/* _9 = &p_62(D)->y; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _33 = _38 * 256; */
umul v33 v38 0x100@uint64;
/* _13 = l_56(D) + _33; */
/* fp_copy (_13, _9); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 18> */
/* TODO: unconditional jump */

/* BB's index is 18 */

/* _ctx_31(ab)->caught = 0; */
mov _ctx31_328 0x0@int32;
/* goto <bb 20> */
/* TODO: unconditional jump */

/* BB's index is 19 */

/* _ctx_31(ab)->caught = 1; */
mov _ctx31_328 0x1@int32;
/* goto <bb 20> */
/* TODO: unconditional jump */

/* BB's index is 20 */

/* one_24(ab) = PHI <one_23(ab)(18), one_20(ab)(19)> */
/* zero_28(ab) = PHI <zero_27(ab)(18), zero_25(ab)(19)> */
/* .MEM_36 = PHI <.MEM_68(18), .MEM_69(19)> */
/* _ctx_31(ab)->last = _last_29(ab); */
mov _ctx31_8 _last29;
/* _this ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* _107 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 21> */
/* TODO: unconditional jump */

/* BB's index is 21 */

/* _106 = _107->caught; */
/* rhs field caught's offset is 328 */
mov v106 v107_328;
/* if (_106 != 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 22>, False label: <bb 25> */

/* BB's index is 22 */

/* _104 = core_get (); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 23> */
/* TODO: unconditional jump */

/* BB's index is 23 */

/* _104->code = 1; */
mov v104_0 0x1@int32;
/* _102 = _104->last; */
/* rhs field last's offset is 8 */
mov v102 v104_8;
/* if (_102 != 0B) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 26>, False label: <bb 24> */

/* BB's index is 24 */

/* _101 = &_104->error; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _104->last = _101; */
mov v104_8 v101;
/* _94 = &_104->number; */
/* TODO: Skipped, ADDR_EXPR, maybe need self translate */
/* _104->error.error = _94; */
/* TODO: skipped, no heuristic, need self translating */
/* _104->error.block = 0; */
/* TODO: skipped, no heuristic, need self translating */
/* _104->number = 1; */
mov v104_232 0x1@int32;
/* err_full_msg (&__func__, "relic_pp_dbl_k12.c", 71, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 25> */
/* TODO: unconditional jump */

/* BB's index is 25 */

/* .MEM_118 = PHI <.MEM_108(ab)(21), .MEM_98(ab)(24)> */
/* s ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* t ={v} {CLOBBER}; */
/* TODO: Skip translation for constructor */
/* return; */

/* BB's index is 26 */

/* _16 = _102->block; */
/* rhs field block's offset is 208 */
mov v16 v102_208;
/* if (_16 == 0) */
/* Fix: Skip GIMPLE_COND, need to take it into consideration */
/* Note: True label: <bb 27>, False label: <bb 28> */

/* BB's index is 27 */

/* exit (1); */
/* TODO: skipped, GIMPLE_CALL use not handled builtin function */

/* BB's index is 28 */

/* err_full_msg (&__func__, "relic_pp_dbl_k12.c", 71, 1); */
/* TODO: skipped, GIMPLE_CALL doesn't use internal or builtin function, inline function or self translte */
/* goto <bb 29> */
/* TODO: unconditional jump */

/* BB's index is 29 */

/* _19 = _104->last; */
/* rhs field last's offset is 8 */
mov v19 v104_8;
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
mov _ v102@uint64;
mov _ v104_0@int32;
mov _ v104_232@int32;
mov _ v106@int32;
mov _ v16@int32;
mov _ v19@uint64;
mov _ v3@uint64;
mov _ v33@uint64;
mov _ v89@uint64;
mov _ v97@uint64;
mov _ zero40@int32;
/* End with unsed lhs */


{
  true
  &&
  true
}
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

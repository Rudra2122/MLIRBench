	.att_syntax
	.file	"kernel_linked"
	.section	.text.matmul_dispatch_0_pack_f32,"ax",@progbits
	.prefalign	16
	.type	matmul_dispatch_0_pack_f32,@function
matmul_dispatch_0_pack_f32:
.Lfunc_begin0:
	.file	1 "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches" "configured_module_matmul_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	.loc	1 10 8 prologue_end
	movq	32(%rsi), %rcx
	movq	(%rcx), %rsi
	.loc	1 14 8
	movl	(%rdx), %edx
	movl	%edx, %edi
	andl	$-2, %edi
	shlq	$11, %rdi
	andl	$1, %edx
	movl	%edx, %eax
	shll	$11, %eax
	orq	%rdi, %rax
	addq	8(%rcx), %rax
	shll	$8, %edx
	orq	%rdi, %rdx
	leaq	(%rsi,%rdx), %rcx
	addq	$3584, %rcx
	xorl	%edx, %edx
	.loc	1 0 8 is_stmt 0
.Ltmp1:
	.p2align	4
.LBB0_1:
	.loc	1 14 8
	movss	(%rcx,%rdx), %xmm0
	movss	-512(%rcx,%rdx), %xmm1
	unpcklps	%xmm0, %xmm1
	movss	-1024(%rcx,%rdx), %xmm0
	movss	-1536(%rcx,%rdx), %xmm2
	unpcklps	%xmm0, %xmm2
	movlhps	%xmm1, %xmm2
	movss	-2048(%rcx,%rdx), %xmm0
	movss	-2560(%rcx,%rdx), %xmm1
	unpcklps	%xmm0, %xmm1
	movss	-3584(%rcx,%rdx), %xmm0
	movss	-3072(%rcx,%rdx), %xmm3
	unpcklps	%xmm3, %xmm0
	movlhps	%xmm1, %xmm0
	movaps	%xmm2, 16(%rax,%rdx,8)
	movaps	%xmm0, (%rax,%rdx,8)
	addq	$4, %rdx
	cmpq	$256, %rdx
	jne	.LBB0_1
	.loc	1 16 8 is_stmt 1
	xorl	%eax, %eax
	.loc	1 16 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp2:
.Lfunc_end0:
	.size	matmul_dispatch_0_pack_f32, .Lfunc_end0-matmul_dispatch_0_pack_f32
	.cfi_endproc

	.section	.text.matmul_dispatch_1_pack_f32,"ax",@progbits
	.prefalign	16
	.type	matmul_dispatch_1_pack_f32,@function
matmul_dispatch_1_pack_f32:
.Lfunc_begin1:
	.file	2 "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches" "configured_module_matmul_dispatch_1.mlir"
	.loc	2 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp3:
	.loc	2 11 8 prologue_end
	movq	32(%rsi), %rsi
	.loc	2 12 8
	movq	8(%rsi), %rcx
	.loc	2 15 8
	movl	(%rdx), %eax
	movl	%eax, %edx
	shrl	$3, %edx
	movq	%rdx, %rdi
	shlq	$6, %rdi
	shlq	$13, %rdx
	andl	$7, %eax
	movl	%eax, %r8d
	shll	$8, %r8d
	orq	%rdx, %r8
	addq	%r8, %rcx
	addq	$65536, %rcx
	shll	$13, %eax
	addq	%rdi, %rax
	addq	(%rsi), %rax
	xorl	%edx, %edx
	.loc	2 0 8 is_stmt 0
.Ltmp4:
	.p2align	4
.LBB1_1:
	movq	%rax, %rsi
	xorl	%edi, %edi
	.p2align	4
.LBB1_2:
	.loc	2 15 8 is_stmt 1
	movaps	(%rsi), %xmm0
	movaps	%xmm0, (%rcx,%rdi)
	addq	$16, %rdi
	addq	$512, %rsi
	cmpq	$256, %rdi
	jne	.LBB1_2
	incq	%rdx
	addq	$2048, %rcx
	addq	$16, %rax
	cmpq	$4, %rdx
	jne	.LBB1_1
	.loc	2 17 8
	xorl	%eax, %eax
	.loc	2 17 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end1:
	.size	matmul_dispatch_1_pack_f32, .Lfunc_end1-matmul_dispatch_1_pack_f32
	.cfi_endproc

	.section	.text.matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32,"ax",@progbits
	.prefalign	16
	.type	matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32,@function
matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32:
.Lfunc_begin2:
	.file	3 "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches" "configured_module_matmul_dispatch_2.mlir"
	.loc	3 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp6:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.loc	3 20 8 prologue_end
	movq	32(%rsi), %rcx
	movq	(%rcx), %rax
	.loc	3 19 8
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	.loc	3 0 8 is_stmt 0
.Ltmp7:
	.p2align	4
.LBB2_1:
	movq	%rsi, %r8
	shlq	$12, %r8
	.loc	3 20 8 is_stmt 1
	addq	-48(%rbp), %r8
	movq	%rsi, %r9
	shlq	$15, %r9
	sarq	$3, %r9
	addq	%rax, %r9
	leaq	65536(%rax), %r10
	xorl	%r11d, %r11d
	.loc	3 0 8 is_stmt 0
.Ltmp8:
	.p2align	4
.LBB2_2:
	.loc	3 20 8
	movq	%r11, %rcx
	shlq	$11, %rcx
	movq	%r11, %rdx
	shlq	$7, %rdx
	leaq	(%r8,%rdx), %rbx
	addq	$131072, %rbx
	prefetcht2	131072(%r8,%rdx)
	prefetcht0	(%r9)
	prefetcht0	65536(%rax,%rcx)
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	.loc	3 0 8
.Ltmp9:
	.p2align	4
.LBB2_3:
	.loc	3 20 8
	movq	%r15, %r12
	shlq	$4, %r12
	addq	%rbx, %r12
	movq	%r10, %r13
	xorl	%edx, %edx
	.loc	3 0 8
.Ltmp10:
	.p2align	4
.LBB2_4:
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4
.LBB2_5:
	.loc	3 20 8 is_stmt 1
	movss	(%r14,%rcx,2), %xmm1
	mulss	(%r13,%rcx), %xmm1
	addss	%xmm1, %xmm0
	addq	$16, %rcx
	cmpq	$2048, %rcx
	jne	.LBB2_5
	movss	%xmm0, (%r12,%rdx,4)
	incq	%rdx
	addq	$4, %r13
	cmpq	$4, %rdx
	jne	.LBB2_4
	incq	%r15
	addq	$4, %r14
	cmpq	$8, %r15
	jne	.LBB2_3
	incq	%r11
	addq	$2048, %r10
	cmpq	$32, %r11
	jne	.LBB2_2
	incq	%rsi
	addq	$4096, %rdi
	cmpq	$16, %rsi
	jne	.LBB2_1
	.loc	3 22 8
	xorl	%eax, %eax
	.loc	3 22 8 epilogue_begin is_stmt 0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32, .Lfunc_end2-matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32
	.cfi_endproc

	.section	.text.matmul_dispatch_3_unpack_f32,"ax",@progbits
	.prefalign	16
	.type	matmul_dispatch_3_unpack_f32,@function
matmul_dispatch_3_unpack_f32:
.Lfunc_begin3:
	.file	4 "/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches" "configured_module_matmul_dispatch_3.mlir"
	.loc	4 1 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp12:
	.loc	4 11 8 prologue_end
	movq	32(%rsi), %rax
	movq	(%rax), %rcx
	.loc	4 12 8
	movq	8(%rax), %rsi
	.loc	4 15 8
	movl	(%rdx), %edx
	movl	%edx, %edi
	shrl	%edi
	shlq	$13, %rdi
	andl	$1, %edx
	movl	%edx, %eax
	shll	$11, %eax
	orq	%rdi, %rax
	addq	%rcx, %rax
	addq	$131184, %rax
	shll	$8, %edx
	orq	%rdi, %rdx
	leaq	(%rsi,%rdx), %rcx
	addq	$3584, %rcx
	movb	$1, %dl
	xorl	%esi, %esi
	.loc	4 0 8 is_stmt 0
.Ltmp13:
	.p2align	4
.LBB3_1:
	.loc	4 15 8
	shlq	$9, %rsi
	leaq	(%rax,%rsi), %rdi
	addq	%rcx, %rsi
	movq	$-4, %r8
	.loc	4 0 8
.Ltmp14:
	.p2align	4
.LBB3_2:
	.loc	4 15 8
	movaps	-112(%rdi), %xmm0
	movaps	-96(%rdi), %xmm1
	movaps	-80(%rdi), %xmm2
	movaps	-64(%rdi), %xmm3
	movaps	-48(%rdi), %xmm4
	movaps	-32(%rdi), %xmm5
	movaps	-16(%rdi), %xmm6
	movaps	(%rdi), %xmm7
	movaps	%xmm0, -3568(%rsi,%r8,4)
	movaps	%xmm1, -3056(%rsi,%r8,4)
	movaps	%xmm2, -2544(%rsi,%r8,4)
	movaps	%xmm3, -2032(%rsi,%r8,4)
	movaps	%xmm4, -1520(%rsi,%r8,4)
	movaps	%xmm5, -1008(%rsi,%r8,4)
	movaps	%xmm6, -496(%rsi,%r8,4)
	movaps	%xmm7, 16(%rsi,%r8,4)
	addq	$4, %r8
	subq	$-128, %rdi
	cmpq	$60, %r8
	jb	.LBB3_2
	.loc	4 0 8
	movl	$8, %esi
	.loc	4 15 8
	testb	$1, %dl
	movl	$0, %edx
	jne	.LBB3_1
	.loc	4 17 8 is_stmt 1
	xorl	%eax, %eax
	.loc	4 17 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end3:
	.size	matmul_dispatch_3_unpack_f32, .Lfunc_end3-matmul_dispatch_3_unpack_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.prefalign	16
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin4:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end4:
	.size	iree_hal_executable_library_query, .Lfunc_end4-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end4-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.prefalign	16
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin5:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB5_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB5_5
	testw	%cx, %cx
	je	.LBB5_4
	orl	$2143289344, %eax
	movd	%eax, %xmm0
	retq
.LBB5_6:
	movzwl	%cx, %ecx
	cvtsi2ss	%ecx, %xmm1
	orl	$864026624, %eax
	movd	%eax, %xmm0
	mulss	%xmm1, %xmm0
	retq
.LBB5_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	addl	%edx, %eax
	addl	$939524096, %eax
	movd	%eax, %xmm0
	retq
.LBB5_4:
	orl	$2139095040, %eax
	movd	%eax, %xmm0
	retq
.Lfunc_end5:
	.size	iree_h2f_ieee, .Lfunc_end5-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.prefalign	16
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin6:
	.cfi_startproc
	movd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB6_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB6_6
	testl	%edx, %edx
	je	.LBB6_4
	orl	$32767, %eax
	retq
.LBB6_1:
	movl	%ecx, %edi
.LBB6_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB6_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB6_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB6_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB6_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end6:
	.size	iree_f2h_ieee, .Lfunc_end6-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.prefalign	16
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin7:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB7_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB7_5
	testw	%cx, %cx
	je	.LBB7_4
	orl	$2143289344, %eax
	movd	%eax, %xmm0
	retq
.LBB7_6:
	movzwl	%cx, %ecx
	cvtsi2ss	%ecx, %xmm1
	orl	$864026624, %eax
	movd	%eax, %xmm0
	mulss	%xmm1, %xmm0
	retq
.LBB7_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	addl	%edx, %eax
	addl	$939524096, %eax
	movd	%eax, %xmm0
	retq
.LBB7_4:
	orl	$2139095040, %eax
	movd	%eax, %xmm0
	retq
.Lfunc_end7:
	.size	__gnu_h2f_ieee, .Lfunc_end7-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.prefalign	16
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin8:
	.cfi_startproc
	movd	%xmm0, %ecx
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax
	movl	%ecx, %esi
	andl	$31744, %esi
	je	.LBB8_6
	cmpl	$31744, %esi
	jne	.LBB8_5
	testw	%dx, %dx
	je	.LBB8_4
	orl	$2143289344, %eax
	movd	%eax, %xmm0
	retq
.LBB8_6:
	movzwl	%dx, %ecx
	cvtsi2ss	%ecx, %xmm1
	orl	$864026624, %eax
	movd	%eax, %xmm0
	mulss	%xmm1, %xmm0
	retq
.LBB8_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	addl	%ecx, %eax
	addl	$939524096, %eax
	movd	%eax, %xmm0
	retq
.LBB8_4:
	orl	$2139095040, %eax
	movd	%eax, %xmm0
	retq
.Lfunc_end8:
	.size	__extendhfsf2, .Lfunc_end8-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.prefalign	16
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin9:
	.cfi_startproc
	movd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB9_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB9_6
	testl	%edx, %edx
	je	.LBB9_4
	orl	$32767, %eax
	retq
.LBB9_1:
	movl	%ecx, %edi
.LBB9_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB9_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB9_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB9_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB9_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end9:
	.size	__gnu_f2h_ieee, .Lfunc_end9-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.prefalign	16
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin10:
	.cfi_startproc
	movd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB10_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB10_6
	testl	%edx, %edx
	je	.LBB10_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	movss	-4(%rsp), %xmm0
	retq
.LBB10_1:
	movl	%ecx, %edi
	jmp	.LBB10_9
.LBB10_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB10_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB10_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	jmp	.LBB10_9
.LBB10_4:
	movl	$31744, %edi
.LBB10_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	movss	-4(%rsp), %xmm0
	retq
.Lfunc_end10:
	.size	__truncsfhf2, .Lfunc_end10-__truncsfhf2
	.cfi_endproc

	.section	.text.__extendhfdf2,"ax",@progbits
	.prefalign	16
	.type	__extendhfdf2,@function
__extendhfdf2:
.Lfunc_begin11:
	.cfi_startproc
	movd	%xmm0, %ecx
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax
	movl	%ecx, %esi
	andl	$31744, %esi
	je	.LBB11_6
	cmpl	$31744, %esi
	jne	.LBB11_5
	testw	%dx, %dx
	je	.LBB11_4
	orl	$2143289344, %eax
	movd	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.LBB11_6:
	movzwl	%dx, %ecx
	cvtsi2ss	%ecx, %xmm1
	orl	$864026624, %eax
	movd	%eax, %xmm0
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.LBB11_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	addl	%ecx, %eax
	addl	$939524096, %eax
	movd	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.LBB11_4:
	orl	$2139095040, %eax
	movd	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end11:
	.size	__extendhfdf2, .Lfunc_end11-__extendhfdf2
	.cfi_endproc

	.section	.text.__truncdfhf2,"ax",@progbits
	.prefalign	16
	.type	__truncdfhf2,@function
__truncdfhf2:
.Lfunc_begin12:
	.cfi_startproc
	cvtsd2ss	%xmm0, %xmm0
	movd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB12_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB12_6
	testl	%edx, %edx
	je	.LBB12_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	movss	-4(%rsp), %xmm0
	retq
.LBB12_1:
	movl	%ecx, %edi
	jmp	.LBB12_9
.LBB12_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB12_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB12_9
	shrl	$23, %ecx
	andl	$8192, %esi
	cmpl	$1, %esi
	sbbl	$0, %edx
	addl	$4096, %edx
	cmpl	$8388608, %edx
	sbbl	$-1, %ecx
	movl	%edx, %esi
	shrl	$13, %esi
	addl	$15360, %esi
	cmpl	$8388608, %edx
	movl	$15360, %edx
	cmovbl	%esi, %edx
	shll	$10, %ecx
	leal	(%rcx,%rdx), %edi
	addl	$-130048, %edi
	jmp	.LBB12_9
.LBB12_4:
	movl	$31744, %edi
.LBB12_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	movss	-4(%rsp), %xmm0
	retq
.Lfunc_end12:
	.size	__truncdfhf2, .Lfunc_end12-__truncdfhf2
	.cfi_endproc

	.section	.text.fma,"ax",@progbits
	.prefalign	16
	.type	fma,@function
fma:
.Lfunc_begin13:
	.cfi_startproc
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	retq
.Lfunc_end13:
	.size	fma, .Lfunc_end13-fma
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.prefalign	16
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin14:
	.cfi_startproc
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	retq
.Lfunc_end14:
	.size	__math_invalidf, .Lfunc_end14-__math_invalidf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI15_0:
	.long	0xf0000000
	.long	0x70000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI15_1:
	.long	0x70000000
	.section	.text.__math_oflowf,"ax",@progbits
	.prefalign	16
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin15:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI15_0(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, -4(%rsp)
	movss	-4(%rsp), %xmm0
	mulss	.LCPI15_1(%rip), %xmm0
	retq
.Lfunc_end15:
	.size	__math_oflowf, .Lfunc_end15-__math_oflowf
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI16_0:
	.long	0x80000000
	.long	0x80000000
	.long	0x80000000
	.long	0x80000000
	.section	.text.__math_xflowf,"ax",@progbits
	.prefalign	16
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin16:
	.cfi_startproc
	movaps	%xmm0, %xmm1
	testl	%edi, %edi
	je	.LBB16_2
	movaps	.LCPI16_0(%rip), %xmm1
	xorps	%xmm0, %xmm1
.LBB16_2:
	movss	%xmm1, -4(%rsp)
	mulss	-4(%rsp), %xmm0
	retq
.Lfunc_end16:
	.size	__math_xflowf, .Lfunc_end16-__math_xflowf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI17_0:
	.long	0x90000000
	.long	0x10000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI17_1:
	.long	0x10000000
	.section	.text.__math_uflowf,"ax",@progbits
	.prefalign	16
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin17:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI17_0(%rip), %rcx
	movss	(%rcx,%rax,4), %xmm0
	movss	%xmm0, -4(%rsp)
	movss	-4(%rsp), %xmm0
	mulss	.LCPI17_1(%rip), %xmm0
	retq
.Lfunc_end17:
	.size	__math_uflowf, .Lfunc_end17-__math_uflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI18_0:
	.long	0x7b800000
.LCPI18_1:
	.long	0x80000000
.LCPI18_2:
	.long	0x3f800000
	.section	.text.ceilf,"ax",@progbits
	.prefalign	16
	.type	ceilf,@function
ceilf:
.Lfunc_begin18:
	.cfi_startproc
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB18_1
.LBB18_8:
	retq
.LBB18_1:
	cmpl	$127, %ecx
	jb	.LBB18_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrl	%cl, %edx
	testl	%eax, %edx
	je	.LBB18_8
	addss	.LCPI18_0(%rip), %xmm0
	movl	$-8388608, %esi
	sarl	%cl, %esi
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovsl	%ecx, %edx
	movss	%xmm0, -8(%rsp)
	addl	%eax, %edx
	andl	%esi, %edx
	movd	%edx, %xmm0
	retq
.LBB18_4:
	movss	.LCPI18_0(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -4(%rsp)
	testl	%eax, %eax
	js	.LBB18_5
	je	.LBB18_8
	movss	.LCPI18_2(%rip), %xmm0
	retq
.LBB18_5:
	movss	.LCPI18_1(%rip), %xmm0
	retq
.Lfunc_end18:
	.size	ceilf, .Lfunc_end18-ceilf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI19_0:
	.long	0xff800000
.LCPI19_1:
	.long	0x42b17217
.LCPI19_2:
	.long	0xc2cff1b4
.LCPI19_3:
	.long	0x10000000
.LCPI19_4:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI19_5:
	.quad	0x40471547652b82fe
.LCPI19_6:
	.quad	0x4338000000000000
.LCPI19_7:
	.quad	0xc338000000000000
.LCPI19_8:
	.quad	0x3ebc6af84b912394
.LCPI19_9:
	.quad	0x3f2ebfce50fac4f3
.LCPI19_10:
	.quad	0x3f962e42ff0c52d6
.LCPI19_11:
	.quad	0x3ff0000000000000
	.section	.text.expf,"ax",@progbits
	.prefalign	16
	.type	expf,@function
expf:
.Lfunc_begin19:
	.cfi_startproc
	movd	%xmm0, %eax
	shrl	$20, %eax
	andl	$2047, %eax
	cmpl	$1067, %eax
	jae	.LBB19_1
.LBB19_8:
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI19_5(%rip), %xmm0
	movsd	.LCPI19_6(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	addsd	.LCPI19_7(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movl	%eax, %ecx
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	movsd	.LCPI19_8(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI19_9(%rip), %xmm1
	movq	%rax, %xmm2
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm3
	mulsd	.LCPI19_10(%rip), %xmm0
	addsd	.LCPI19_11(%rip), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB19_9:
	movaps	%xmm1, %xmm0
	retq
.LBB19_1:
	xorps	%xmm1, %xmm1
	movss	.LCPI19_0(%rip), %xmm2
	ucomiss	%xmm0, %xmm2
	jae	.LBB19_9
	cmpl	$2040, %eax
	jae	.LBB19_3
	ucomiss	.LCPI19_1(%rip), %xmm0
	jbe	.LBB19_6
	movl	$1879048192, -8(%rsp)
	movss	-8(%rsp), %xmm1
	mulss	.LCPI19_4(%rip), %xmm1
	movaps	%xmm1, %xmm0
	retq
.LBB19_3:
	addss	%xmm0, %xmm0
	retq
.LBB19_6:
	movss	.LCPI19_2(%rip), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB19_8
	movl	$268435456, -4(%rsp)
	movss	-4(%rsp), %xmm1
	mulss	.LCPI19_3(%rip), %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end19:
	.size	expf, .Lfunc_end19-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.prefalign	16
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin20:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	feclearexcept, .Lfunc_end20-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.prefalign	16
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin21:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	feraiseexcept, .Lfunc_end21-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.prefalign	16
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin22:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	fetestexcept, .Lfunc_end22-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.prefalign	16
	.type	fegetround,@function
fegetround:
.Lfunc_begin23:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	fegetround, .Lfunc_end23-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.prefalign	16
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin24:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	__fesetround, .Lfunc_end24-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.prefalign	16
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin25:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	fegetenv, .Lfunc_end25-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.prefalign	16
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin26:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	fesetenv, .Lfunc_end26-fesetenv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI27_0:
	.long	0x7b800000
.LCPI27_1:
	.long	0xbf800000
	.section	.text.floorf,"ax",@progbits
	.prefalign	16
	.type	floorf,@function
floorf:
.Lfunc_begin27:
	.cfi_startproc
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB27_1
	retq
.LBB27_1:
	cmpl	$127, %ecx
	jb	.LBB27_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrl	%cl, %edx
	testl	%eax, %edx
	je	.LBB27_6
	addss	.LCPI27_0(%rip), %xmm0
	movl	$-8388608, %esi
	sarl	%cl, %esi
	movss	%xmm0, -8(%rsp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	%edx, %ecx
	addl	%eax, %ecx
	andl	%esi, %ecx
	movd	%ecx, %xmm0
	retq
.LBB27_4:
	movss	.LCPI27_0(%rip), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -4(%rsp)
	xorps	%xmm1, %xmm1
	testl	%eax, %eax
	jns	.LBB27_5
	ucomiss	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	jne	.LBB27_8
	jp	.LBB27_8
.LBB27_5:
	movaps	%xmm1, %xmm0
.LBB27_6:
	retq
.LBB27_8:
	movss	.LCPI27_1(%rip), %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end27:
	.size	floorf, .Lfunc_end27-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.prefalign	16
	.type	fmaf,@function
fmaf:
.Lfunc_begin28:
	.cfi_startproc
	cvtss2sd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	cvtss2sd	%xmm2, %xmm2
	movapd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %rcx
	notq	%rcx
	movl	%eax, %edx
	andl	$536870911, %edx
	cmpl	$268435456, %edx
	setne	%dl
	movabsq	$9218868437227405312, %rsi
	testq	%rsi, %rcx
	sete	%cl
	orb	%dl, %cl
	jne	.LBB28_7
	movapd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	ucomisd	%xmm2, %xmm3
	jne	.LBB28_3
	jp	.LBB28_3
	movapd	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	ucomisd	%xmm0, %xmm3
	jne	.LBB28_3
	jp	.LBB28_3
.LBB28_7:
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	retq
.LBB28_3:
	testq	%rax, %rax
	sets	%cl
	ucomisd	%xmm0, %xmm2
	setbe	%dl
	xorb	%cl, %dl
	jne	.LBB28_4
	subsd	%xmm1, %xmm2
	jmp	.LBB28_6
.LBB28_4:
	subsd	%xmm1, %xmm0
.LBB28_6:
	addsd	%xmm2, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	setbe	%dl
	xorb	%dl, %cl
	movq	%rax, %rdx
	orq	$1, %rdx
	decq	%rax
	testb	%cl, %cl
	cmovneq	%rdx, %rax
	movq	%rax, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	retq
.Lfunc_end28:
	.size	fmaf, .Lfunc_end28-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.prefalign	16
	.type	fmodf,@function
fmodf:
.Lfunc_begin29:
	.cfi_startproc
	movd	%xmm1, %esi
	movl	%esi, %ecx
	addl	%esi, %ecx
	je	.LBB29_2
	movd	%xmm0, %eax
	movl	%eax, %edx
	shrl	$23, %edx
	movzbl	%dl, %edx
	movl	%esi, %edi
	andl	$2147483647, %edi
	cmpl	$2139095041, %edi
	setb	%dil
	cmpl	$255, %edx
	setne	%r8b
	testb	%r8b, %dil
	jne	.LBB29_3
.LBB29_2:
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm0
	retq
.LBB29_3:
	leal	(%rax,%rax), %edi
	cmpl	%ecx, %edi
	jbe	.LBB29_4
	movl	%esi, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %r8d
	testl	%edx, %edx
	je	.LBB29_7
	movl	%eax, %edi
	andl	$8388607, %edi
	orl	$8388608, %edi
	testl	%r8d, %r8d
	je	.LBB29_12
.LBB29_15:
	andl	$8388607, %esi
	orl	$8388608, %esi
	cmpl	%r8d, %edx
	jg	.LBB29_17
.LBB29_21:
	movl	%edi, %ecx
	subl	%esi, %ecx
	jns	.LBB29_22
	jmp	.LBB29_23
.LBB29_4:
	je	.LBB29_5
	retq
.LBB29_7:
	movl	%eax, %ecx
	xorl	%edx, %edx
	shll	$9, %ecx
	js	.LBB29_9
	.p2align	4
.LBB29_8:
	decl	%edx
	addl	%ecx, %ecx
	jns	.LBB29_8
.LBB29_9:
	movb	$1, %cl
	subb	%dl, %cl
	movl	%eax, %edi
	shll	%cl, %edi
	testl	%r8d, %r8d
	jne	.LBB29_15
.LBB29_12:
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	shll	$9, %ecx
	js	.LBB29_14
	.p2align	4
.LBB29_13:
	decl	%r8d
	addl	%ecx, %ecx
	jns	.LBB29_13
.LBB29_14:
	movb	$1, %cl
	subb	%r8b, %cl
	shll	%cl, %esi
	cmpl	%r8d, %edx
	jg	.LBB29_17
	jmp	.LBB29_21
	.p2align	4
.LBB29_19:
	addl	%edi, %edi
	decl	%edx
	cmpl	%r8d, %edx
	jle	.LBB29_20
.LBB29_17:
	movl	%edi, %ecx
	subl	%esi, %ecx
	js	.LBB29_19
	movl	%ecx, %edi
	jne	.LBB29_19
	jmp	.LBB29_5
.LBB29_20:
	movl	%r8d, %edx
	movl	%edi, %ecx
	subl	%esi, %ecx
	js	.LBB29_23
.LBB29_22:
	movl	%ecx, %edi
	je	.LBB29_5
.LBB29_23:
	cmpl	$8388607, %edi
	ja	.LBB29_24
	.p2align	4
.LBB29_25:
	leal	(%rdi,%rdi), %esi
	decl	%edx
	cmpl	$4194304, %edi
	movl	%esi, %edi
	jb	.LBB29_25
	andl	$-2147483648, %eax
	testl	%edx, %edx
	jle	.LBB29_28
.LBB29_27:
	addl	$-8388608, %esi
	shll	$23, %edx
	orl	%esi, %edx
	orl	%eax, %edx
	movd	%edx, %xmm0
	retq
.LBB29_5:
	pxor	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	retq
.LBB29_24:
	movl	%edi, %esi
	andl	$-2147483648, %eax
	testl	%edx, %edx
	jg	.LBB29_27
.LBB29_28:
	movb	$1, %cl
	subb	%dl, %cl
	shrl	%cl, %esi
	movl	%esi, %edx
	orl	%eax, %edx
	movd	%edx, %xmm0
	retq
.Lfunc_end29:
	.size	fmodf, .Lfunc_end29-fmodf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI30_0:
	.long	0x5f800000
	.section	.text.frexpf,"ax",@progbits
	.prefalign	16
	.type	frexpf,@function
frexpf:
.Lfunc_begin30:
	.cfi_startproc
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	cmpb	$-1, %cl
	je	.LBB30_7
	movzbl	%cl, %edx
	testl	%edx, %edx
	jne	.LBB30_6
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB30_4
	jnp	.LBB30_3
.LBB30_4:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	mulss	.LCPI30_0(%rip), %xmm0
	movq	%rdi, %rbx
	callq	frexpf
	movq	%rbx, %rdi
	movl	(%rbx), %eax
	addl	$-64, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movl	%eax, (%rdi)
	retq
.LBB30_6:
	movzbl	%cl, %ecx
	addl	$-126, %ecx
	movl	%ecx, (%rdi)
	andl	$-2139095041, %eax
	orl	$1056964608, %eax
	movd	%eax, %xmm0
.LBB30_7:
	retq
.LBB30_3:
	xorl	%eax, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end30:
	.size	frexpf, .Lfunc_end30-frexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI31_0:
	.long	0x0c800000
.LCPI31_1:
	.long	0x7f000000
	.section	.text.ldexpf,"ax",@progbits
	.prefalign	16
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin31:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB31_4
	mulss	.LCPI31_1(%rip), %xmm0
	cmpl	$255, %edi
	jb	.LBB31_2
	mulss	.LCPI31_1(%rip), %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB31_8
.LBB31_4:
	cmpl	$-127, %edi
	jg	.LBB31_9
	mulss	.LCPI31_0(%rip), %xmm0
	cmpl	$-229, %edi
	ja	.LBB31_6
	mulss	.LCPI31_0(%rip), %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB31_8:
	movl	%eax, %edi
	jmp	.LBB31_9
.LBB31_2:
	addl	$-127, %edi
	jmp	.LBB31_9
.LBB31_6:
	addl	$102, %edi
.LBB31_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	movd	%edi, %xmm1
	mulss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end31:
	.size	ldexpf, .Lfunc_end31-ldexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI32_0:
	.long	0x0c800000
.LCPI32_1:
	.long	0x7f000000
	.section	.text.scalbnf,"ax",@progbits
	.prefalign	16
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin32:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB32_4
	mulss	.LCPI32_1(%rip), %xmm0
	cmpl	$255, %edi
	jb	.LBB32_2
	mulss	.LCPI32_1(%rip), %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB32_8
.LBB32_4:
	cmpl	$-127, %edi
	jg	.LBB32_9
	mulss	.LCPI32_0(%rip), %xmm0
	cmpl	$-229, %edi
	ja	.LBB32_6
	mulss	.LCPI32_0(%rip), %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB32_8:
	movl	%eax, %edi
	jmp	.LBB32_9
.LBB32_2:
	addl	$-127, %edi
	jmp	.LBB32_9
.LBB32_6:
	addl	$102, %edi
.LBB32_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	movd	%edi, %xmm1
	mulss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end32:
	.size	scalbnf, .Lfunc_end32-scalbnf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI33_0:
	.long	0x3f800000
.LCPI33_2:
	.long	0x4b000000
.LCPI33_12:
	.long	0x10000000
.LCPI33_20:
	.long	0x70000000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI33_1:
	.long	0x80000000
	.long	0x80000000
	.long	0x80000000
	.long	0x80000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI33_3:
	.quad	0xbff0000000000000
.LCPI33_4:
	.quad	0x3fd27616c9496e0b
.LCPI33_5:
	.quad	0xbfd71969a075c67a
.LCPI33_6:
	.quad	0x3fdec70a6ca7badd
.LCPI33_7:
	.quad	0xbfe7154748bef6c8
.LCPI33_8:
	.quad	0x3ff71547652ab82b
.LCPI33_9:
	.quad	0x405fffffffd1d571
.LCPI33_10:
	.quad	0xc062c00000000000
.LCPI33_11:
	.long	0x90000000
	.long	0x10000000
.LCPI33_13:
	.quad	0x42e8000000000000
.LCPI33_14:
	.quad	0xc2e8000000000000
.LCPI33_15:
	.quad	0x3fac6af84b912394
.LCPI33_16:
	.quad	0x3fcebfce50fac4f3
.LCPI33_17:
	.quad	0x3fe62e42ff0c52d6
.LCPI33_18:
	.quad	0x3ff0000000000000
.LCPI33_19:
	.long	0xf0000000
	.long	0x70000000
	.section	.text.powf,"ax",@progbits
	.prefalign	16
	.type	powf,@function
powf:
.Lfunc_begin33:
	.cfi_startproc
	movd	%xmm0, %ecx
	movd	%xmm1, %edx
	leal	-2139095040(%rcx), %eax
	cmpl	$-2130706432, %eax
	jb	.LBB33_5
	xorl	%eax, %eax
	leal	16777216(,%rdx,2), %esi
	cmpl	$16777216, %esi
	jbe	.LBB33_5
.LBB33_2:
	leal	-1060306944(%rcx), %edx
	movl	%edx, %esi
	andl	$-8388608, %esi
	subl	%esi, %ecx
	movl	%edx, %esi
	sarl	$23, %esi
	shrl	$15, %edx
	andl	$240, %edx
	leaq	__powf_log2_data(%rip), %rdi
	movd	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	(%rdx,%rdi), %xmm0
	addsd	.LCPI33_3(%rip), %xmm0
	cvtsi2sd	%esi, %xmm2
	addsd	8(%rdx,%rdi), %xmm2
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	.LCPI33_4(%rip), %xmm4
	mulsd	%xmm0, %xmm4
	addsd	.LCPI33_5(%rip), %xmm4
	movsd	.LCPI33_6(%rip), %xmm5
	mulsd	%xmm0, %xmm5
	addsd	.LCPI33_7(%rip), %xmm5
	mulsd	%xmm3, %xmm5
	mulsd	%xmm3, %xmm3
	mulsd	.LCPI33_8(%rip), %xmm0
	mulsd	%xmm4, %xmm3
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm5
	addsd	%xmm3, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm5, %xmm0
	movq	%xmm0, %rcx
	movabsq	$9223231299366420480, %rdx
	andq	%rcx, %rdx
	movabsq	$4638426141214900225, %rcx
	cmpq	%rcx, %rdx
	jae	.LBB33_10
.LBB33_3:
	movsd	.LCPI33_13(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rcx
	addsd	.LCPI33_14(%rip), %xmm1
	subsd	%xmm1, %xmm0
	addl	%ecx, %eax
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	movsd	.LCPI33_15(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI33_16(%rip), %xmm1
	movq	%rax, %xmm2
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm1, %xmm3
	mulsd	.LCPI33_17(%rip), %xmm0
	addsd	.LCPI33_18(%rip), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.LBB33_4:
	retq
.LBB33_5:
	leal	(%rdx,%rdx), %eax
	leal	-1(%rax), %esi
	cmpl	$-16777217, %esi
	jae	.LBB33_21
	leal	-1(,%rcx,2), %eax
	cmpl	$-16777217, %eax
	jae	.LBB33_25
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB33_12
	cmpl	$8388607, %ecx
	ja	.LBB33_2
.LBB33_9:
	mulss	.LCPI33_2(%rip), %xmm0
	movd	%xmm0, %ecx
	andl	$2147483647, %ecx
	addl	$-192937984, %ecx
	jmp	.LBB33_2
.LBB33_10:
	ucomisd	.LCPI33_9(%rip), %xmm0
	jbe	.LBB33_16
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI33_19(%rip), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -8(%rsp)
	movss	-8(%rsp), %xmm0
	mulss	.LCPI33_20(%rip), %xmm0
	retq
.LBB33_12:
	movl	%edx, %eax
	shrl	$23, %eax
	movzbl	%al, %ecx
	cmpl	$127, %ecx
	jb	.LBB33_19
	cmpl	$150, %ecx
	jbe	.LBB33_18
.LBB33_14:
	xorl	%eax, %eax
.LBB33_15:
	movd	%xmm0, %ecx
	andl	$2147483647, %ecx
	cmpl	$8388607, %ecx
	ja	.LBB33_2
	jmp	.LBB33_9
.LBB33_16:
	movsd	.LCPI33_10(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB33_3
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI33_11(%rip), %rax
	movss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -4(%rsp)
	movss	-4(%rsp), %xmm0
	mulss	.LCPI33_12(%rip), %xmm0
	retq
.LBB33_18:
	movb	$-106, %cl
	subb	%al, %cl
	movl	$1, %esi
	shll	%cl, %esi
	leal	-1(%rsi), %eax
	testl	%edx, %eax
	je	.LBB33_20
.LBB33_19:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	retq
.LBB33_20:
	movl	$65536, %eax
	testl	%edx, %esi
	jne	.LBB33_15
	jmp	.LBB33_14
.LBB33_21:
	movss	.LCPI33_0(%rip), %xmm2
	cmpl	$1065353216, %ecx
	je	.LBB33_34
	testl	%eax, %eax
	je	.LBB33_34
	addl	%ecx, %ecx
	cmpl	$-16777215, %ecx
	setb	%sil
	cmpl	$-16777215, %eax
	setb	%al
	testb	%al, %sil
	jne	.LBB33_35
	addss	%xmm1, %xmm0
	retq
.LBB33_25:
	mulss	%xmm0, %xmm0
	testl	%ecx, %ecx
	jns	.LBB33_31
	movl	%edx, %eax
	shrl	$23, %eax
	movzbl	%al, %ecx
	addl	$-151, %ecx
	cmpl	$-24, %ecx
	jb	.LBB33_31
	movb	$-106, %cl
	subb	%al, %cl
	movl	$1, %esi
	shll	%cl, %esi
	decl	%esi
	movzbl	%cl, %eax
	movaps	%xmm0, %xmm1
	testl	%edx, %esi
	jne	.LBB33_29
	movaps	.LCPI33_1(%rip), %xmm1
	xorps	%xmm0, %xmm1
.LBB33_29:
	btl	%eax, %edx
	jae	.LBB33_31
	movaps	%xmm1, %xmm0
.LBB33_31:
	testl	%edx, %edx
	jns	.LBB33_4
	movss	.LCPI33_0(%rip), %xmm1
	divss	%xmm0, %xmm1
	movss	%xmm1, -12(%rsp)
	movss	-12(%rsp), %xmm0
	retq
.LBB33_34:
	movaps	%xmm2, %xmm0
	retq
.LBB33_35:
	cmpl	$2130706432, %ecx
	movaps	%xmm2, %xmm0
	je	.LBB33_4
	setb	%al
	testl	%edx, %edx
	sets	%cl
	xorb	%al, %cl
	xorps	%xmm0, %xmm0
	jne	.LBB33_4
	mulss	%xmm1, %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end33:
	.size	powf, .Lfunc_end33-powf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI34_0:
	.long	0xcb000000
.LCPI34_1:
	.long	0x4b000000
.LCPI34_2:
	.long	0x80000000
	.section	.text.rintf,"ax",@progbits
	.prefalign	16
	.type	rintf,@function
rintf:
.Lfunc_begin34:
	.cfi_startproc
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2130706432, %ecx
	cmpl	$1249902592, %ecx
	ja	.LBB34_8
	movss	.LCPI34_0(%rip), %xmm1
	movss	.LCPI34_1(%rip), %xmm2
	testl	%eax, %eax
	jns	.LBB34_2
	addss	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB34_8
	jnp	.LBB34_5
.LBB34_8:
	retq
.LBB34_2:
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB34_8
	jp	.LBB34_8
.LBB34_5:
	testl	%eax, %eax
	jns	.LBB34_7
	movss	.LCPI34_2(%rip), %xmm1
.LBB34_7:
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end34:
	.size	rintf, .Lfunc_end34-rintf
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI35_0:
	.long	0x7fffffff
	.long	0x7fffffff
	.long	0x7fffffff
	.long	0x7fffffff
.LCPI35_7:
	.long	0x80000000
	.long	0x80000000
	.long	0x80000000
	.long	0x80000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI35_1:
	.long	0x4b000000
.LCPI35_2:
	.long	0xcb000000
.LCPI35_3:
	.long	0x3f000000
.LCPI35_4:
	.long	0xbf000000
.LCPI35_5:
	.long	0x3f800000
.LCPI35_6:
	.long	0xbf800000
	.section	.text.roundf,"ax",@progbits
	.prefalign	16
	.type	roundf,@function
roundf:
.Lfunc_begin35:
	.cfi_startproc
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	ja	.LBB35_10
	movdqa	.LCPI35_0(%rip), %xmm1
	pand	%xmm0, %xmm1
	movss	.LCPI35_1(%rip), %xmm2
	addss	%xmm1, %xmm2
	cmpl	$125, %ecx
	ja	.LBB35_3
	movss	%xmm2, -4(%rsp)
	xorps	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	retq
.LBB35_3:
	addss	.LCPI35_2(%rip), %xmm2
	subss	%xmm1, %xmm2
	ucomiss	.LCPI35_3(%rip), %xmm2
	jbe	.LBB35_5
	addss	%xmm2, %xmm1
	addss	.LCPI35_6(%rip), %xmm1
	jmp	.LBB35_7
.LBB35_5:
	movss	.LCPI35_4(%rip), %xmm0
	ucomiss	%xmm2, %xmm0
	addss	%xmm2, %xmm1
	jb	.LBB35_7
	addss	.LCPI35_5(%rip), %xmm1
.LBB35_7:
	testl	%eax, %eax
	jns	.LBB35_9
	xorps	.LCPI35_7(%rip), %xmm1
.LBB35_9:
	movaps	%xmm1, %xmm0
.LBB35_10:
	retq
.Lfunc_end35:
	.size	roundf, .Lfunc_end35-roundf
	.cfi_endproc

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"kernel_linked"
	.size	__unnamed_1, 14

	.type	iree_hal_executable_library_query_v0_header,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_header,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_header:
	.long	6
	.zero	4
	.quad	__unnamed_1
	.long	0
	.long	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	matmul_dispatch_0_pack_f32
	.quad	matmul_dispatch_1_pack_f32
	.quad	matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32
	.quad	matmul_dispatch_3_unpack_f32
	.size	iree_hal_executable_library_query_v0_funcs, 32

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.short	0
	.byte	0
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.short	0
	.byte	0
	.byte	2
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 256

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"matmul_dispatch_0_pack_f32"
	.size	__unnamed_2, 27

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"matmul_dispatch_1_pack_f32"
	.size	__unnamed_3, 27

	.type	__unnamed_4,@object
	.section	.rodata.__unnamed_4,"a",@progbits
__unnamed_4:
	.asciz	"matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32"
	.size	__unnamed_4, 44

	.type	__unnamed_5,@object
	.section	.rodata.__unnamed_5,"a",@progbits
__unnamed_5:
	.asciz	"matmul_dispatch_3_unpack_f32"
	.size	__unnamed_5, 29

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.quad	__unnamed_3
	.quad	__unnamed_4
	.quad	__unnamed_5
	.size	iree_hal_executable_library_query_v0_names, 32

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_0.mlir"
	.size	__unnamed_6, 123

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_1.mlir"
	.size	__unnamed_7, 123

	.type	__unnamed_8,@object
	.section	.rodata.__unnamed_8,"a",@progbits
__unnamed_8:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_2.mlir"
	.size	__unnamed_8, 123

	.type	__unnamed_9,@object
	.section	.rodata.__unnamed_9,"a",@progbits
__unnamed_9:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches/configured_module_matmul_dispatch_3.mlir"
	.size	__unnamed_9, 123

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	122
	.quad	__unnamed_6
	.long	3
	.long	122
	.quad	__unnamed_7
	.long	3
	.long	122
	.quad	__unnamed_8
	.long	3
	.long	122
	.quad	__unnamed_9
	.size	iree_hal_executable_library_query_v0_source_locations, 64

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32_stage_source_locations
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 96

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	4
	.zero	4
	.quad	iree_hal_executable_library_query_v0_funcs
	.quad	iree_hal_executable_library_query_v0_attrs
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_names
	.quad	0
	.quad	0
	.quad	iree_hal_executable_library_query_v0_source_locations
	.quad	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.type	__exp2f_data,@object
	.section	.rodata.__exp2f_data,"a",@progbits
	.p2align	3, 0x0
__exp2f_data:
	.quad	4607182418800017408
	.quad	4607140297302181236
	.quad	4607100335213349135
	.quad	4607062579818421073
	.quad	4607027079437701499
	.quad	4606993883449571754
	.quad	4606963042313658936
	.quad	4606934607594512097
	.quad	4606908631985796885
	.quad	4606885169335019979
	.quad	4606864274668794914
	.quad	4606846004218661165
	.quad	4606830415447468583
	.quad	4606817567076339586
	.quad	4606807519112221737
	.quad	4606800332876043653
	.quad	4606796071031487437
	.quad	4606794797614391156
	.quad	4606796578062795143
	.quad	4606801479247646227
	.quad	4606809569504174299
	.quad	4606820918663955941
	.quad	4606835598087680144
	.quad	4606853680698631517
	.quad	4606875241016906669
	.quad	4606900355194379847
	.quad	4606929101050434204
	.quad	4606961558108475497
	.quad	4606997807633245319
	.quad	4607037932668951391
	.quad	4607082018078232794
	.quad	4607130150581978432
	.quad	0x42e8000000000000
	.quad	0x3fac6af84b912394
	.quad	0x3fcebfce50fac4f3
	.quad	0x3fe62e42ff0c52d6
	.quad	0x4338000000000000
	.quad	0x40471547652b82fe
	.quad	0x3ebc6af84b912394
	.quad	0x3f2ebfce50fac4f3
	.quad	0x3f962e42ff0c52d6
	.size	__exp2f_data, 328

	.type	__powf_log2_data,@object
	.section	.rodata.__powf_log2_data,"a",@progbits
	.p2align	3, 0x0
__powf_log2_data:
	.quad	0x3ff661ec79f8f3be
	.quad	0xbfdefec65b963019
	.quad	0x3ff571ed4aaf883d
	.quad	0xbfdb0b6832d4fca4
	.quad	0x3ff49539f0f010b0
	.quad	0xbfd7418b0a1fb77b
	.quad	0x3ff3c995b0b80385
	.quad	0xbfd39de91a6dcf7b
	.quad	0x3ff30d190c8864a5
	.quad	0xbfd01d9bf3f2b631
	.quad	0x3ff25e227b0b8ea0
	.quad	0xbfc97c1d1b3b7af0
	.quad	0x3ff1bb4a4a1a343f
	.quad	0xbfc2f9e393af3c9f
	.quad	0x3ff12358f08ae5ba
	.quad	0xbfb960cbbf788d5c
	.quad	0x3ff0953f419900a7
	.quad	0xbfaa6f9db6475fce
	.quad	0x3ff0000000000000
	.quad	0x0000000000000000
	.quad	0x3fee608cfd9a47ac
	.quad	0x3fb338ca9f24f53d
	.quad	0x3feca4b31f026aa0
	.quad	0x3fc476a9543891ba
	.quad	0x3feb2036576afce6
	.quad	0x3fce840b4ac4e4d2
	.quad	0x3fe9c2d163a1aa2d
	.quad	0x3fd40645f0c6651c
	.quad	0x3fe886e6037841ed
	.quad	0x3fd88e9c2c1b9ff8
	.quad	0x3fe767dcf5534862
	.quad	0x3fdce0a44eb17bcc
	.quad	0x3fd27616c9496e0b
	.quad	0xbfd71969a075c67a
	.quad	0x3fdec70a6ca7badd
	.quad	0xbfe7154748bef6c8
	.quad	0x3ff71547652ab82b
	.size	__powf_log2_data, 296

	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	3
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	4
	.byte	46
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	110
	.byte	14
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	16
	.byte	63
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.quad	.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	86
	.long	.Linfo_string6
	.long	.Linfo_string6
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string7
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
.Lcu_begin1:
	.long	.Ldebug_info_end1-.Ldebug_info_start1
.Ldebug_info_start1:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string3
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	4
	.quad	.Lfunc_begin1
	.long	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	86
	.long	.Linfo_string8
	.long	.Linfo_string8
	.byte	2
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end1:
.Lcu_begin2:
	.long	.Ldebug_info_end2-.Ldebug_info_start2
.Ldebug_info_start2:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string4
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	4
	.quad	.Lfunc_begin2
	.long	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	86
	.long	.Linfo_string9
	.long	.Linfo_string9
	.byte	3
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end2:
.Lcu_begin3:
	.long	.Ldebug_info_end3-.Ldebug_info_start3
.Ldebug_info_start3:
	.short	4
	.long	.debug_abbrev
	.byte	8
	.byte	1
	.long	.Linfo_string0
	.short	44
	.long	.Linfo_string5
	.long	.Lline_table_start0
	.long	.Linfo_string2

	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	4
	.quad	.Lfunc_begin3
	.long	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	86
	.long	.Linfo_string10
	.long	.Linfo_string10
	.byte	4
	.byte	1
	.long	.debug_info+71

	.byte	0
.Ldebug_info_end3:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_matmul_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/v1_generic_isa_abcf270174/dispatches"
.Linfo_string3:
	.asciz	"configured_module_matmul_dispatch_1.mlir"
.Linfo_string4:
	.asciz	"configured_module_matmul_dispatch_2.mlir"
.Linfo_string5:
	.asciz	"configured_module_matmul_dispatch_3.mlir"
.Linfo_string6:
	.asciz	"matmul_dispatch_0_pack_f32"
.Linfo_string7:
	.asciz	"int"
.Linfo_string8:
	.asciz	"matmul_dispatch_1_pack_f32"
.Linfo_string9:
	.asciz	"matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32"
.Linfo_string10:
	.asciz	"matmul_dispatch_3_unpack_f32"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	42
	.asciz	"matmul_dispatch_0_pack_f32"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	71
	.asciz	"int"
	.long	0
.LpubTypes_end0:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end1-.LpubNames_start1
.LpubNames_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	42
	.asciz	"matmul_dispatch_1_pack_f32"
	.long	0
.LpubNames_end1:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end1-.LpubTypes_start1
.LpubTypes_start1:
	.short	2
	.long	.Lcu_begin1
	.long	72
	.long	0
.LpubTypes_end1:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end2-.LpubNames_start2
.LpubNames_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	42
	.asciz	"matmul_dispatch_2_mmt4d_16x32x128x8x4x1_f32"
	.long	0
.LpubNames_end2:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end2-.LpubTypes_start2
.LpubTypes_start2:
	.short	2
	.long	.Lcu_begin2
	.long	72
	.long	0
.LpubTypes_end2:
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end3-.LpubNames_start3
.LpubNames_start3:
	.short	2
	.long	.Lcu_begin3
	.long	72
	.long	42
	.asciz	"matmul_dispatch_3_unpack_f32"
	.long	0
.LpubNames_end3:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end3-.LpubTypes_start3
.LpubTypes_start3:
	.short	2
	.long	.Lcu_begin3
	.long	72
	.long	0
.LpubTypes_end3:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

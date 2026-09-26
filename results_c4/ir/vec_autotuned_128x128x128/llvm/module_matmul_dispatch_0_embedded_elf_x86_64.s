	.att_syntax
	.file	"matmul_dispatch_0"
	.section	.text.matmul_dispatch_0_matmul_128x128x128_f32,"ax",@progbits
	.prefalign	16
	.type	matmul_dispatch_0_matmul_128x128x128_f32,@function
matmul_dispatch_0_matmul_128x128x128_f32:
.Lfunc_begin0:
	.file	1 "/home/rudramb122/MLIRBench/build/128x128x128/vec_autotuned_3e533c8c9b/dispatches" "configured_module_matmul_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	.loc	1 11 8 prologue_end
	movq	32(%rsi), %rsi
	movq	(%rsi), %rdi
	.loc	1 12 8
	movq	8(%rsi), %r8
	.loc	1 18 8
	movl	(%rdx), %r9d
	movl	%r9d, %eax
	andl	$-4, %eax
	movl	%r9d, %ecx
	andl	$3, %ecx
	shll	$7, %ecx
	leaq	1536(%rcx,%r8), %rdx
	addq	16(%rsi), %rcx
	shlq	$2, %rax
	shrl	$2, %r9d
	shlq	$13, %r9
	leaq	3596(%r9,%rdi), %rsi
	movb	$1, %dil
	xorl	%r9d, %r9d
	.loc	1 0 8 is_stmt 0
.Ltmp1:
	.p2align	4
.LBB0_1:
	movq	%r9, %r8
	orq	%rax, %r8
	.loc	1 18 8
	shlq	$9, %r9
	addq	%rsi, %r9
	vxorps	%xmm0, %xmm0, %xmm0
	movq	$-4, %r10
	movq	%rdx, %r11
	vxorps	%xmm1, %xmm1, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm9, %xmm9, %xmm9
	vxorps	%xmm3, %xmm3, %xmm3
	vxorps	%xmm10, %xmm10, %xmm10
	vxorps	%xmm4, %xmm4, %xmm4
	vxorps	%xmm11, %xmm11, %xmm11
	vxorps	%xmm5, %xmm5, %xmm5
	vxorps	%xmm12, %xmm12, %xmm12
	vxorps	%xmm6, %xmm6, %xmm6
	vxorps	%xmm13, %xmm13, %xmm13
	vxorps	%xmm7, %xmm7, %xmm7
	vxorps	%xmm14, %xmm14, %xmm14
	vxorps	%xmm8, %xmm8, %xmm8
	vxorps	%xmm15, %xmm15, %xmm15
	.loc	1 0 8
.Ltmp2:
	.p2align	4
.LBB0_2:
	.loc	1 18 8
	vmovaps	-960(%r11), %zmm20
	vmovaps	-1536(%r11), %zmm22
	vmovaps	-1472(%r11), %zmm23
	vmovaps	-1024(%r11), %zmm21
	vmovaps	-448(%r11), %zmm19
	vmovaps	-512(%r11), %zmm18
	vmovaps	(%r11), %zmm17
	vmovaps	64(%r11), %zmm16
	.loc	1 4 1 is_stmt 1
	vbroadcastss	-3580(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm22, %zmm24, %zmm1
	vfmadd231ps	%zmm24, %zmm23, %zmm0
	vbroadcastss	-3068(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm9
	vfmadd231ps	%zmm24, %zmm22, %zmm2
	vbroadcastss	-2556(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm10
	vfmadd231ps	%zmm24, %zmm22, %zmm3
	vbroadcastss	-2044(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm11
	vfmadd231ps	%zmm24, %zmm22, %zmm4
	vbroadcastss	-1532(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm12
	vfmadd231ps	%zmm24, %zmm22, %zmm5
	vbroadcastss	-1020(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm13
	vfmadd231ps	%zmm24, %zmm22, %zmm6
	vbroadcastss	-508(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm14
	vfmadd231ps	%zmm24, %zmm22, %zmm7
	vbroadcastss	4(%r9,%r10,4), %zmm24
	vfmadd231ps	%zmm23, %zmm24, %zmm15
	vfmadd231ps	%zmm22, %zmm24, %zmm8
	vbroadcastss	-3576(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm20, %zmm22, %zmm0
	vfmadd231ps	%zmm22, %zmm21, %zmm1
	vbroadcastss	-3064(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm2
	vfmadd231ps	%zmm22, %zmm20, %zmm9
	vbroadcastss	-2552(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm3
	vfmadd231ps	%zmm22, %zmm20, %zmm10
	vbroadcastss	-2040(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm4
	vfmadd231ps	%zmm22, %zmm20, %zmm11
	vbroadcastss	-1528(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm5
	vfmadd231ps	%zmm22, %zmm20, %zmm12
	vbroadcastss	-1016(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm6
	vfmadd231ps	%zmm22, %zmm20, %zmm13
	vbroadcastss	-504(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm7
	vfmadd231ps	%zmm22, %zmm20, %zmm14
	vbroadcastss	8(%r9,%r10,4), %zmm22
	vfmadd231ps	%zmm21, %zmm22, %zmm8
	vfmadd231ps	%zmm20, %zmm22, %zmm15
	vbroadcastss	-3572(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm18, %zmm20, %zmm1
	vfmadd231ps	%zmm20, %zmm19, %zmm0
	vbroadcastss	-3060(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm9
	vfmadd231ps	%zmm20, %zmm18, %zmm2
	vbroadcastss	-2548(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm10
	vfmadd231ps	%zmm20, %zmm18, %zmm3
	vbroadcastss	-2036(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm11
	vfmadd231ps	%zmm20, %zmm18, %zmm4
	vbroadcastss	-1524(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm12
	vfmadd231ps	%zmm20, %zmm18, %zmm5
	vbroadcastss	-1012(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm13
	vfmadd231ps	%zmm20, %zmm18, %zmm6
	vbroadcastss	-500(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm14
	vfmadd231ps	%zmm20, %zmm18, %zmm7
	vbroadcastss	12(%r9,%r10,4), %zmm20
	vfmadd231ps	%zmm19, %zmm20, %zmm15
	vfmadd231ps	%zmm18, %zmm20, %zmm8
	vbroadcastss	-3568(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm16, %zmm18, %zmm0
	vfmadd231ps	%zmm18, %zmm17, %zmm1
	vbroadcastss	-3056(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm2
	vfmadd231ps	%zmm18, %zmm16, %zmm9
	vbroadcastss	-2544(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm3
	vfmadd231ps	%zmm18, %zmm16, %zmm10
	vbroadcastss	-2032(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm4
	vfmadd231ps	%zmm18, %zmm16, %zmm11
	vbroadcastss	-1520(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm5
	vfmadd231ps	%zmm18, %zmm16, %zmm12
	vbroadcastss	-1008(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm6
	vfmadd231ps	%zmm18, %zmm16, %zmm13
	vbroadcastss	-496(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm7
	vfmadd231ps	%zmm18, %zmm16, %zmm14
	vbroadcastss	16(%r9,%r10,4), %zmm18
	vfmadd231ps	%zmm17, %zmm18, %zmm8
	vfmadd231ps	%zmm16, %zmm18, %zmm15
	.loc	1 18 8
	addq	$4, %r10
	addq	$2048, %r11
	cmpq	$124, %r10
	jb	.LBB0_2
	shlq	$9, %r8
	vmovaps	%zmm0, 64(%rcx,%r8)
	vmovaps	%zmm1, (%rcx,%r8)
	vmovaps	%zmm9, 576(%rcx,%r8)
	vmovaps	%zmm2, 512(%rcx,%r8)
	vmovaps	%zmm10, 1088(%rcx,%r8)
	vmovaps	%zmm3, 1024(%rcx,%r8)
	vmovaps	%zmm11, 1600(%rcx,%r8)
	vmovaps	%zmm4, 1536(%rcx,%r8)
	vmovaps	%zmm12, 2112(%rcx,%r8)
	vmovaps	%zmm5, 2048(%rcx,%r8)
	vmovaps	%zmm13, 2624(%rcx,%r8)
	vmovaps	%zmm6, 2560(%rcx,%r8)
	vmovaps	%zmm14, 3136(%rcx,%r8)
	vmovaps	%zmm7, 3072(%rcx,%r8)
	vmovaps	%zmm15, 3648(%rcx,%r8)
	vmovaps	%zmm8, 3584(%rcx,%r8)
	movl	$8, %r9d
	testb	$1, %dil
	movl	$0, %edi
	jne	.LBB0_1
	.loc	1 20 8
	xorl	%eax, %eax
	.loc	1 20 8 epilogue_begin is_stmt 0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.Ltmp3:
.Lfunc_end0:
	.size	matmul_dispatch_0_matmul_128x128x128_f32, .Lfunc_end0-matmul_dispatch_0_matmul_128x128x128_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.prefalign	16
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin1:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$6, %edi
	leaq	iree_hal_executable_library_query_v0(%rip), %rcx
	cmoveq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	iree_hal_executable_library_query, .Lfunc_end1-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end1-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.prefalign	16
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin2:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB2_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB2_5
	testw	%cx, %cx
	je	.LBB2_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB2_6:
	orl	$864026624, %eax
	movzwl	%cx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB2_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB2_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end2:
	.size	iree_h2f_ieee, .Lfunc_end2-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.prefalign	16
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin3:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB3_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB3_6
	testl	%edx, %edx
	je	.LBB3_4
	orl	$32767, %eax
	retq
.LBB3_1:
	movl	%ecx, %edi
.LBB3_9:
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB3_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB3_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB3_9
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
	leal	-130048(%rcx,%rdx), %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB3_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end3:
	.size	iree_f2h_ieee, .Lfunc_end3-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.prefalign	16
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin4:
	.cfi_startproc
	movl	%edi, %ecx
	andl	$1023, %ecx
	movl	%edi, %eax
	andl	$32768, %eax
	shll	$16, %eax
	movl	%edi, %edx
	andw	$31744, %dx
	je	.LBB4_6
	andl	$31744, %edi
	cmpl	$31744, %edi
	jne	.LBB4_5
	testw	%cx, %cx
	je	.LBB4_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB4_6:
	orl	$864026624, %eax
	movzwl	%cx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB4_5:
	movzwl	%cx, %ecx
	movzwl	%dx, %edx
	addl	%ecx, %edx
	shll	$13, %edx
	leal	939524096(%rdx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB4_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end4:
	.size	__gnu_h2f_ieee, .Lfunc_end4-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.prefalign	16
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin5:
	.cfi_startproc
	vmovd	%xmm0, %ecx
	movl	%ecx, %edx
	andl	$1023, %edx
	movl	%ecx, %eax
	shll	$16, %eax
	andl	$-2147483648, %eax
	movl	%ecx, %esi
	andl	$31744, %esi
	je	.LBB5_6
	cmpl	$31744, %esi
	jne	.LBB5_5
	testw	%dx, %dx
	je	.LBB5_4
	orl	$2143289344, %eax
	vmovd	%eax, %xmm0
	retq
.LBB5_6:
	orl	$864026624, %eax
	movzwl	%dx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB5_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	leal	939524096(%rcx,%rax), %eax
	vmovd	%eax, %xmm0
	retq
.LBB5_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	retq
.Lfunc_end5:
	.size	__extendhfsf2, .Lfunc_end5-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.prefalign	16
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin6:
	.cfi_startproc
	vmovd	%xmm0, %esi
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
	leal	-130048(%rcx,%rdx), %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.LBB6_4:
	movl	$31744, %edi
	andl	$32768, %eax
	orl	%edi, %eax
	retq
.Lfunc_end6:
	.size	__gnu_f2h_ieee, .Lfunc_end6-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.prefalign	16
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin7:
	.cfi_startproc
	vmovd	%xmm0, %esi
	movl	%esi, %eax
	shrl	$16, %eax
	movl	%esi, %ecx
	andl	$2139095040, %ecx
	je	.LBB7_1
	movl	%esi, %edx
	andl	$8388607, %edx
	cmpl	$2139095040, %ecx
	jne	.LBB7_6
	testl	%edx, %edx
	je	.LBB7_4
	orl	$32767, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB7_1:
	movl	%ecx, %edi
	jmp	.LBB7_9
.LBB7_6:
	movl	$31744, %edi
	cmpl	$1191182336, %ecx
	ja	.LBB7_9
	xorl	%edi, %edi
	cmpl	$947912704, %ecx
	jb	.LBB7_9
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
	leal	-130048(%rcx,%rdx), %edi
	jmp	.LBB7_9
.LBB7_4:
	movl	$31744, %edi
.LBB7_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end7:
	.size	__truncsfhf2, .Lfunc_end7-__truncsfhf2
	.cfi_endproc

	.section	.text.__extendhfdf2,"ax",@progbits
	.prefalign	16
	.type	__extendhfdf2,@function
__extendhfdf2:
.Lfunc_begin8:
	.cfi_startproc
	vmovd	%xmm0, %ecx
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
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.LBB8_6:
	orl	$864026624, %eax
	movzwl	%dx, %ecx
	vcvtsi2ss	%ecx, %xmm15, %xmm0
	vmovd	%eax, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.LBB8_5:
	andl	$32767, %ecx
	shll	$13, %ecx
	leal	939524096(%rcx,%rax), %eax
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.LBB8_4:
	orl	$2139095040, %eax
	vmovd	%eax, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end8:
	.size	__extendhfdf2, .Lfunc_end8-__extendhfdf2
	.cfi_endproc

	.section	.text.__truncdfhf2,"ax",@progbits
	.prefalign	16
	.type	__truncdfhf2,@function
__truncdfhf2:
.Lfunc_begin9:
	.cfi_startproc
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovd	%xmm0, %esi
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
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.LBB9_1:
	movl	%ecx, %edi
	jmp	.LBB9_9
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
	leal	-130048(%rcx,%rdx), %edi
	jmp	.LBB9_9
.LBB9_4:
	movl	$31744, %edi
.LBB9_9:
	andl	$32768, %eax
	orl	%edi, %eax
	movw	%ax, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	retq
.Lfunc_end9:
	.size	__truncdfhf2, .Lfunc_end9-__truncdfhf2
	.cfi_endproc

	.section	.text.fma,"ax",@progbits
	.prefalign	16
	.type	fma,@function
fma:
.Lfunc_begin10:
	.cfi_startproc
	vfmadd213sd	%xmm2, %xmm1, %xmm0
	retq
.Lfunc_end10:
	.size	fma, .Lfunc_end10-fma
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.prefalign	16
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin11:
	.cfi_startproc
	vsubss	%xmm0, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end11:
	.size	__math_invalidf, .Lfunc_end11-__math_invalidf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI12_0:
	.long	0xf0000000
	.long	0x70000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI12_1:
	.long	0x70000000
	.section	.text.__math_oflowf,"ax",@progbits
	.prefalign	16
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin12:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI12_0(%rip), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI12_1(%rip), %xmm0, %xmm0
	retq
.Lfunc_end12:
	.size	__math_oflowf, .Lfunc_end12-__math_oflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI13_0:
	.long	0x80000000
	.section	.text.__math_xflowf,"ax",@progbits
	.prefalign	16
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin13:
	.cfi_startproc
	testl	%edi, %edi
	sete	%al
	vxorps	.LCPI13_0(%rip){1to4}, %xmm0, %xmm1
	kmovd	%eax, %k1
	vmovss	%xmm0, %xmm1, %xmm1 {%k1}
	vmovss	%xmm1, -4(%rsp)
	vmulss	-4(%rsp), %xmm0, %xmm0
	retq
.Lfunc_end13:
	.size	__math_xflowf, .Lfunc_end13-__math_xflowf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.LCPI14_0:
	.long	0x90000000
	.long	0x10000000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI14_1:
	.long	0x10000000
	.section	.text.__math_uflowf,"ax",@progbits
	.prefalign	16
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin14:
	.cfi_startproc
	xorl	%eax, %eax
	testl	%edi, %edi
	sete	%al
	leaq	.LCPI14_0(%rip), %rcx
	vmovss	(%rcx,%rax,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI14_1(%rip), %xmm0, %xmm0
	retq
.Lfunc_end14:
	.size	__math_uflowf, .Lfunc_end14-__math_uflowf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI15_0:
	.long	0x7b800000
.LCPI15_1:
	.long	0x80000000
.LCPI15_2:
	.long	0x3f800000
	.section	.text.ceilf,"ax",@progbits
	.prefalign	16
	.type	ceilf,@function
ceilf:
.Lfunc_begin15:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	ja	.LBB15_7
	cmpl	$127, %ecx
	jb	.LBB15_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrxl	%ecx, %edx, %edx
	testl	%eax, %edx
	je	.LBB15_7
	vaddss	.LCPI15_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rsp)
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	$-8388608, %edi
	sarxl	%ecx, %edi, %ecx
	cmovsl	%esi, %edx
	addl	%eax, %edx
	andl	%ecx, %edx
	vmovd	%edx, %xmm0
	retq
.LBB15_4:
	vaddss	.LCPI15_0(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rsp)
	testl	%eax, %eax
	js	.LBB15_5
	sete	%al
	kmovd	%eax, %k1
	vmovss	.LCPI15_2(%rip), %xmm1
	vmovss	%xmm0, %xmm1, %xmm1 {%k1}
	vmovaps	%xmm1, %xmm0
.LBB15_7:
	retq
.LBB15_5:
	vmovss	.LCPI15_1(%rip), %xmm0
	retq
.Lfunc_end15:
	.size	ceilf, .Lfunc_end15-ceilf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI16_0:
	.long	0xff800000
.LCPI16_1:
	.long	0x42b17217
.LCPI16_2:
	.long	0xc2cff1b4
.LCPI16_3:
	.long	0x10000000
.LCPI16_4:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI16_5:
	.quad	0x40471547652b82fe
.LCPI16_6:
	.quad	0x4338000000000000
.LCPI16_7:
	.quad	0xc338000000000000
.LCPI16_8:
	.quad	0x3ebc6af84b912394
.LCPI16_9:
	.quad	0x3f2ebfce50fac4f3
.LCPI16_10:
	.quad	0x3f962e42ff0c52d6
.LCPI16_11:
	.quad	0x3ff0000000000000
	.section	.text.expf,"ax",@progbits
	.prefalign	16
	.type	expf,@function
expf:
.Lfunc_begin16:
	.cfi_startproc
	vmovd	%xmm0, %eax
	shrl	$20, %eax
	andl	$2047, %eax
	cmpl	$1067, %eax
	jae	.LBB16_1
.LBB16_8:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	.LCPI16_5(%rip), %xmm0, %xmm0
	vaddsd	.LCPI16_6(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rax
	vaddsd	.LCPI16_7(%rip), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	movl	%eax, %ecx
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	vmovq	%rax, %xmm1
	vmovsd	.LCPI16_8(%rip), %xmm2
	vfmadd213sd	.LCPI16_9(%rip), %xmm0, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vmovsd	.LCPI16_10(%rip), %xmm4
	vfmadd213sd	.LCPI16_11(%rip), %xmm0, %xmm4
	vfmadd231sd	%xmm3, %xmm2, %xmm4
	vmulsd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm1
.LBB16_9:
	vmovaps	%xmm1, %xmm0
	retq
.LBB16_1:
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI16_0(%rip), %xmm2
	vucomiss	%xmm0, %xmm2
	jae	.LBB16_9
	cmpl	$2040, %eax
	jae	.LBB16_3
	vucomiss	.LCPI16_1(%rip), %xmm0
	jbe	.LBB16_6
	movl	$1879048192, -8(%rsp)
	vmovss	-8(%rsp), %xmm0
	vmulss	.LCPI16_4(%rip), %xmm0, %xmm0
	retq
.LBB16_3:
	vaddss	%xmm0, %xmm0, %xmm0
	retq
.LBB16_6:
	vmovss	.LCPI16_2(%rip), %xmm1
	vucomiss	%xmm0, %xmm1
	jbe	.LBB16_8
	movl	$268435456, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI16_3(%rip), %xmm0, %xmm0
	retq
.Lfunc_end16:
	.size	expf, .Lfunc_end16-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.prefalign	16
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin17:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	feclearexcept, .Lfunc_end17-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.prefalign	16
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin18:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	feraiseexcept, .Lfunc_end18-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.prefalign	16
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin19:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	fetestexcept, .Lfunc_end19-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.prefalign	16
	.type	fegetround,@function
fegetround:
.Lfunc_begin20:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	fegetround, .Lfunc_end20-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.prefalign	16
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin21:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end21:
	.size	__fesetround, .Lfunc_end21-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.prefalign	16
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin22:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end22:
	.size	fegetenv, .Lfunc_end22-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.prefalign	16
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin23:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end23:
	.size	fesetenv, .Lfunc_end23-fesetenv
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI24_0:
	.long	0x7b800000
.LCPI24_1:
	.long	0xbf800000
	.section	.text.floorf,"ax",@progbits
	.prefalign	16
	.type	floorf,@function
floorf:
.Lfunc_begin24:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	jbe	.LBB24_1
	retq
.LBB24_1:
	cmpl	$127, %ecx
	jb	.LBB24_4
	addl	$-127, %ecx
	movl	$8388607, %edx
	shrxl	%ecx, %edx, %edx
	testl	%eax, %edx
	je	.LBB24_6
	vaddss	.LCPI24_0(%rip), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rsp)
	movl	$-8388608, %esi
	sarxl	%ecx, %esi, %ecx
	movl	%eax, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%eax, %esi
	andl	%ecx, %esi
	vmovd	%esi, %xmm0
	retq
.LBB24_4:
	vaddss	.LCPI24_0(%rip), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	testl	%eax, %eax
	jns	.LBB24_5
	vucomiss	%xmm1, %xmm0
	vmovaps	%xmm0, %xmm1
	jne	.LBB24_8
	jp	.LBB24_8
.LBB24_5:
	vmovaps	%xmm1, %xmm0
.LBB24_6:
	retq
.LBB24_8:
	vmovss	.LCPI24_1(%rip), %xmm1
	vmovaps	%xmm1, %xmm0
	retq
.Lfunc_end24:
	.size	floorf, .Lfunc_end24-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.prefalign	16
	.type	fmaf,@function
fmaf:
.Lfunc_begin25:
	.cfi_startproc
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm1
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vmovq	%xmm0, %rax
	movl	%eax, %ecx
	andl	$536870911, %ecx
	cmpl	$268435456, %ecx
	setne	%cl
	movabsq	$9218868437227405312, %rdx
	andnq	%rdx, %rax, %rdx
	sete	%dl
	orb	%cl, %dl
	jne	.LBB25_4
	vsubsd	%xmm1, %xmm0, %xmm3
	vucomisd	%xmm2, %xmm3
	jne	.LBB25_3
	jp	.LBB25_3
	vsubsd	%xmm2, %xmm0, %xmm3
	vucomisd	%xmm1, %xmm3
	jne	.LBB25_3
	jp	.LBB25_3
.LBB25_4:
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	retq
.LBB25_3:
	testq	%rax, %rax
	sets	%cl
	vucomisd	%xmm1, %xmm2
	setbe	%dl
	xorb	%cl, %dl
	vsubsd	%xmm0, %xmm1, %xmm3
	vaddsd	%xmm2, %xmm3, %xmm3
	vsubsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	kmovd	%edx, %k1
	vmovsd	%xmm3, %xmm0, %xmm0 {%k1}
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	setbe	%dl
	xorb	%cl, %dl
	movq	%rax, %rcx
	orq	$1, %rcx
	decq	%rax
	testb	%dl, %dl
	cmovneq	%rcx, %rax
	vmovq	%rax, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	retq
.Lfunc_end25:
	.size	fmaf, .Lfunc_end25-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.prefalign	16
	.type	fmodf,@function
fmodf:
.Lfunc_begin26:
	.cfi_startproc
	vmovd	%xmm1, %edx
	movl	%edx, %esi
	addl	%edx, %esi
	je	.LBB26_2
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	movl	%edx, %edi
	andl	$2147483647, %edi
	cmpl	$2139095041, %edi
	setb	%dil
	cmpl	$255, %ecx
	setne	%r8b
	testb	%r8b, %dil
	jne	.LBB26_3
.LBB26_2:
	vmulss	%xmm1, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.LBB26_3:
	leal	(%rax,%rax), %edi
	cmpl	%esi, %edi
	jbe	.LBB26_4
	movl	%edx, %esi
	shrl	$23, %esi
	movzbl	%sil, %edi
	testl	%ecx, %ecx
	je	.LBB26_6
	movl	%eax, %esi
	andl	$8388607, %esi
	orl	$8388608, %esi
	testl	%edi, %edi
	je	.LBB26_11
.LBB26_14:
	andl	$8388607, %edx
	orl	$8388608, %edx
	cmpl	%edi, %ecx
	jg	.LBB26_16
.LBB26_21:
	movl	%esi, %edi
	subl	%edx, %edi
	jns	.LBB26_22
	jmp	.LBB26_23
.LBB26_4:
	sete	%al
	vpxor	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm1
	kmovd	%eax, %k1
	vmovss	%xmm1, %xmm0, %xmm0 {%k1}
	retq
.LBB26_6:
	movl	%eax, %esi
	xorl	%ecx, %ecx
	shll	$9, %esi
	js	.LBB26_8
	.p2align	4
.LBB26_7:
	decl	%ecx
	addl	%esi, %esi
	jns	.LBB26_7
.LBB26_8:
	movb	$1, %sil
	subb	%cl, %sil
	shlxl	%esi, %eax, %esi
	testl	%edi, %edi
	jne	.LBB26_14
.LBB26_11:
	movl	%edx, %r8d
	xorl	%edi, %edi
	shll	$9, %r8d
	js	.LBB26_13
	.p2align	4
.LBB26_12:
	decl	%edi
	addl	%r8d, %r8d
	jns	.LBB26_12
.LBB26_13:
	movb	$1, %r8b
	subb	%dil, %r8b
	shlxl	%r8d, %edx, %edx
	cmpl	%edi, %ecx
	jg	.LBB26_16
	jmp	.LBB26_21
	.p2align	4
.LBB26_19:
	addl	%esi, %esi
	decl	%ecx
	cmpl	%edi, %ecx
	jle	.LBB26_20
.LBB26_16:
	movl	%esi, %r8d
	subl	%edx, %r8d
	js	.LBB26_19
	movl	%r8d, %esi
	jne	.LBB26_19
	jmp	.LBB26_18
.LBB26_20:
	movl	%edi, %ecx
	movl	%esi, %edi
	subl	%edx, %edi
	js	.LBB26_23
.LBB26_22:
	movl	%edi, %esi
	je	.LBB26_18
.LBB26_23:
	cmpl	$8388607, %esi
	ja	.LBB26_24
	.p2align	4
.LBB26_25:
	leal	(%rsi,%rsi), %edx
	decl	%ecx
	cmpl	$4194304, %esi
	movl	%edx, %esi
	jb	.LBB26_25
	andl	$-2147483648, %eax
	testl	%ecx, %ecx
	jle	.LBB26_28
.LBB26_27:
	addl	$-8388608, %edx
	shll	$23, %ecx
	orl	%edx, %ecx
	orl	%eax, %ecx
	vmovd	%ecx, %xmm0
	retq
.LBB26_18:
	vpxor	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB26_24:
	movl	%esi, %edx
	andl	$-2147483648, %eax
	testl	%ecx, %ecx
	jg	.LBB26_27
.LBB26_28:
	movb	$1, %sil
	subb	%cl, %sil
	shrxl	%esi, %edx, %ecx
	orl	%eax, %ecx
	vmovd	%ecx, %xmm0
	retq
.Lfunc_end26:
	.size	fmodf, .Lfunc_end26-fmodf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI27_0:
	.long	0x5f800000
	.section	.text.frexpf,"ax",@progbits
	.prefalign	16
	.type	frexpf,@function
frexpf:
.Lfunc_begin27:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	cmpb	$-1, %cl
	je	.LBB27_7
	movzbl	%cl, %edx
	testl	%edx, %edx
	jne	.LBB27_6
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jne	.LBB27_4
	jnp	.LBB27_3
.LBB27_4:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	vmulss	.LCPI27_0(%rip), %xmm0, %xmm0
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
.LBB27_6:
	movzbl	%cl, %ecx
	addl	$-126, %ecx
	movl	%ecx, (%rdi)
	andl	$-2139095041, %eax
	orl	$1056964608, %eax
	vmovd	%eax, %xmm0
.LBB27_7:
	retq
.LBB27_3:
	xorl	%eax, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end27:
	.size	frexpf, .Lfunc_end27-frexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI28_0:
	.long	0x0c800000
.LCPI28_1:
	.long	0x7f000000
	.section	.text.ldexpf,"ax",@progbits
	.prefalign	16
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin28:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB28_4
	vmulss	.LCPI28_1(%rip), %xmm0, %xmm0
	cmpl	$255, %edi
	jb	.LBB28_2
	vmulss	.LCPI28_1(%rip), %xmm0, %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB28_8
.LBB28_4:
	cmpl	$-127, %edi
	jg	.LBB28_9
	vmulss	.LCPI28_0(%rip), %xmm0, %xmm0
	cmpl	$-229, %edi
	ja	.LBB28_6
	vmulss	.LCPI28_0(%rip), %xmm0, %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB28_8:
	movl	%eax, %edi
	jmp	.LBB28_9
.LBB28_2:
	addl	$-127, %edi
	jmp	.LBB28_9
.LBB28_6:
	addl	$102, %edi
.LBB28_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	vmovd	%edi, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end28:
	.size	ldexpf, .Lfunc_end28-ldexpf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI29_0:
	.long	0x0c800000
.LCPI29_1:
	.long	0x7f000000
	.section	.text.scalbnf,"ax",@progbits
	.prefalign	16
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin29:
	.cfi_startproc
	cmpl	$128, %edi
	jl	.LBB29_4
	vmulss	.LCPI29_1(%rip), %xmm0, %xmm0
	cmpl	$255, %edi
	jb	.LBB29_2
	vmulss	.LCPI29_1(%rip), %xmm0, %xmm0
	cmpl	$381, %edi
	movl	$381, %eax
	cmovbl	%edi, %eax
	addl	$-254, %eax
	jmp	.LBB29_8
.LBB29_4:
	cmpl	$-127, %edi
	jg	.LBB29_9
	vmulss	.LCPI29_0(%rip), %xmm0, %xmm0
	cmpl	$-229, %edi
	ja	.LBB29_6
	vmulss	.LCPI29_0(%rip), %xmm0, %xmm0
	cmpl	$-329, %edi
	movl	$-330, %eax
	cmovael	%edi, %eax
	addl	$204, %eax
.LBB29_8:
	movl	%eax, %edi
	jmp	.LBB29_9
.LBB29_2:
	addl	$-127, %edi
	jmp	.LBB29_9
.LBB29_6:
	addl	$102, %edi
.LBB29_9:
	shll	$23, %edi
	addl	$1065353216, %edi
	vmovd	%edi, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.Lfunc_end29:
	.size	scalbnf, .Lfunc_end29-scalbnf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI30_0:
	.long	0x3f800000
.LCPI30_1:
	.long	0x80000000
.LCPI30_2:
	.long	0x4b000000
.LCPI30_12:
	.long	0x10000000
.LCPI30_20:
	.long	0x70000000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI30_3:
	.quad	0xbff0000000000000
.LCPI30_4:
	.quad	0x3fd27616c9496e0b
.LCPI30_5:
	.quad	0xbfd71969a075c67a
.LCPI30_6:
	.quad	0x3fdec70a6ca7badd
.LCPI30_7:
	.quad	0xbfe7154748bef6c8
.LCPI30_8:
	.quad	0x3ff71547652ab82b
.LCPI30_9:
	.quad	0x405fffffffd1d571
.LCPI30_10:
	.quad	0xc062c00000000000
.LCPI30_11:
	.long	0x90000000
	.long	0x10000000
.LCPI30_13:
	.quad	0x42e8000000000000
.LCPI30_14:
	.quad	0xc2e8000000000000
.LCPI30_15:
	.quad	0x3fac6af84b912394
.LCPI30_16:
	.quad	0x3fcebfce50fac4f3
.LCPI30_17:
	.quad	0x3fe62e42ff0c52d6
.LCPI30_18:
	.quad	0x3ff0000000000000
.LCPI30_19:
	.long	0xf0000000
	.long	0x70000000
	.section	.text.powf,"ax",@progbits
	.prefalign	16
	.type	powf,@function
powf:
.Lfunc_begin30:
	.cfi_startproc
	vmovd	%xmm0, %edx
	vmovd	%xmm1, %ecx
	leal	-2139095040(%rdx), %eax
	cmpl	$-2130706432, %eax
	jb	.LBB30_2
	xorl	%eax, %eax
	leal	16777216(%rcx,%rcx), %esi
	cmpl	$16777216, %esi
	jbe	.LBB30_2
.LBB30_24:
	leal	-1060306944(%rdx), %ecx
	movl	%ecx, %esi
	andl	$-8388608, %esi
	subl	%esi, %edx
	movl	%ecx, %esi
	sarl	$23, %esi
	shrl	$15, %ecx
	andl	$240, %ecx
	leaq	__powf_log2_data(%rip), %rdi
	vmovsd	(%rcx,%rdi), %xmm0
	vmovd	%edx, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vfmadd213sd	.LCPI30_3(%rip), %xmm0, %xmm2
	vcvtsi2sd	%esi, %xmm15, %xmm0
	vaddsd	8(%rcx,%rdi), %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm3
	vmovsd	.LCPI30_4(%rip), %xmm4
	vfmadd213sd	.LCPI30_5(%rip), %xmm2, %xmm4
	vmovsd	.LCPI30_6(%rip), %xmm5
	vfmadd213sd	.LCPI30_7(%rip), %xmm2, %xmm5
	vmulsd	%xmm3, %xmm3, %xmm6
	vfmadd231sd	.LCPI30_8(%rip), %xmm2, %xmm0
	vfmadd231sd	%xmm5, %xmm3, %xmm0
	vfmadd231sd	%xmm6, %xmm4, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rcx
	movabsq	$9223231299366420480, %rdx
	andq	%rcx, %rdx
	movabsq	$4638426141214900225, %rcx
	cmpq	%rcx, %rdx
	jae	.LBB30_25
.LBB30_29:
	vaddsd	.LCPI30_13(%rip), %xmm0, %xmm1
	vmovq	%xmm1, %rcx
	vaddsd	.LCPI30_14(%rip), %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	addl	%ecx, %eax
	andl	$31, %ecx
	leaq	__exp2f_data(%rip), %rdx
	shlq	$47, %rax
	addq	(%rdx,%rcx,8), %rax
	vmovq	%rax, %xmm1
	vmovsd	.LCPI30_15(%rip), %xmm2
	vfmadd213sd	.LCPI30_16(%rip), %xmm0, %xmm2
	vmulsd	%xmm0, %xmm0, %xmm3
	vmovsd	.LCPI30_17(%rip), %xmm4
	vfmadd213sd	.LCPI30_18(%rip), %xmm0, %xmm4
	vfmadd231sd	%xmm3, %xmm2, %xmm4
	vmulsd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
.LBB30_30:
	retq
.LBB30_2:
	leal	(%rcx,%rcx), %eax
	leal	-1(%rax), %esi
	cmpl	$-16777217, %esi
	jae	.LBB30_3
	leal	-1(%rdx,%rdx), %eax
	cmpl	$-16777217, %eax
	jae	.LBB30_10
	xorl	%eax, %eax
	testl	%edx, %edx
	js	.LBB30_16
	cmpl	$8388607, %edx
	ja	.LBB30_24
.LBB30_23:
	vmulss	.LCPI30_2(%rip), %xmm0, %xmm0
	vmovd	%xmm0, %edx
	andl	$2147483647, %edx
	addl	$-192937984, %edx
	jmp	.LBB30_24
.LBB30_25:
	vucomisd	.LCPI30_9(%rip), %xmm0
	jbe	.LBB30_27
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI30_19(%rip), %rax
	vmovss	(%rax,%rcx,4), %xmm0
	vmovss	%xmm0, -8(%rsp)
	vmovss	-8(%rsp), %xmm0
	vmulss	.LCPI30_20(%rip), %xmm0, %xmm0
	retq
.LBB30_16:
	movl	%ecx, %eax
	shrl	$23, %eax
	movzbl	%al, %edx
	cmpl	$127, %edx
	jb	.LBB30_31
	cmpl	$150, %edx
	jbe	.LBB30_18
.LBB30_20:
	xorl	%eax, %eax
.LBB30_21:
	vmovd	%xmm0, %edx
	andl	$2147483647, %edx
	cmpl	$8388607, %edx
	ja	.LBB30_24
	jmp	.LBB30_23
.LBB30_27:
	vmovsd	.LCPI30_10(%rip), %xmm1
	vucomisd	%xmm0, %xmm1
	jb	.LBB30_29
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leaq	.LCPI30_11(%rip), %rax
	vmovss	(%rax,%rcx,4), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-4(%rsp), %xmm0
	vmulss	.LCPI30_12(%rip), %xmm0, %xmm0
	retq
.LBB30_18:
	movb	$-106, %dl
	subb	%al, %dl
	bzhil	%edx, %ecx, %eax
	je	.LBB30_19
.LBB30_31:
	vsubss	%xmm0, %xmm0, %xmm0
	vdivss	%xmm0, %xmm0, %xmm0
	retq
.LBB30_19:
	movl	$1, %eax
	shlxl	%edx, %eax, %edx
	movl	$65536, %eax
	testl	%ecx, %edx
	jne	.LBB30_21
	jmp	.LBB30_20
.LBB30_3:
	vmovdqa	%xmm0, %xmm2
	vmovss	.LCPI30_0(%rip), %xmm0
	cmpl	$1065353216, %edx
	je	.LBB30_30
	testl	%eax, %eax
	je	.LBB30_30
	addl	%edx, %edx
	cmpl	$-16777215, %edx
	setb	%sil
	cmpl	$-16777215, %eax
	setb	%al
	testb	%al, %sil
	jne	.LBB30_7
	vaddss	%xmm1, %xmm2, %xmm0
	retq
.LBB30_10:
	vmulss	%xmm0, %xmm0, %xmm0
	testl	%edx, %edx
	jns	.LBB30_13
	movl	%ecx, %eax
	shrl	$23, %eax
	movzbl	%al, %edx
	addl	$-151, %edx
	cmpl	$-24, %edx
	jb	.LBB30_13
	movb	$-106, %dl
	subb	%al, %dl
	bzhil	%edx, %ecx, %eax
	setne	%al
	movzbl	%dl, %edx
	btl	%edx, %ecx
	setae	%dl
	vxorps	.LCPI30_1(%rip){1to4}, %xmm0, %xmm1
	kmovd	%edx, %k1
	kmovd	%eax, %k2
	vmovss	%xmm0, %xmm1, %xmm1 {%k2}
	vmovss	%xmm0, %xmm1, %xmm1 {%k1}
	vmovaps	%xmm1, %xmm0
.LBB30_13:
	testl	%ecx, %ecx
	jns	.LBB30_30
	vmovss	.LCPI30_0(%rip), %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, -12(%rsp)
	vmovss	-12(%rsp), %xmm0
	retq
.LBB30_7:
	cmpl	$2130706432, %edx
	je	.LBB30_30
	setb	%al
	testl	%ecx, %ecx
	sets	%cl
	xorb	%al, %cl
	vmulss	%xmm1, %xmm1, %xmm0
	kmovd	%ecx, %k1
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	%xmm1, %xmm0, %xmm0 {%k1}
	retq
.Lfunc_end30:
	.size	powf, .Lfunc_end30-powf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI31_0:
	.long	0xcb000000
.LCPI31_1:
	.long	0x4b000000
.LCPI31_2:
	.long	0x80000000
	.section	.text.rintf,"ax",@progbits
	.prefalign	16
	.type	rintf,@function
rintf:
.Lfunc_begin31:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2130706432, %ecx
	cmpl	$1249902592, %ecx
	ja	.LBB31_4
	testl	%eax, %eax
	setns	%cl
	vmovss	.LCPI31_0(%rip), %xmm2
	vaddss	%xmm2, %xmm0, %xmm1
	vmovss	.LCPI31_1(%rip), %xmm3
	vaddss	%xmm3, %xmm1, %xmm1
	vaddss	%xmm3, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	kmovd	%ecx, %k1
	vmovss	%xmm0, %xmm1, %xmm1 {%k1}
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	jne	.LBB31_2
	jp	.LBB31_2
	testl	%eax, %eax
	setns	%al
	kmovd	%eax, %k1
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	.LCPI31_2(%rip), %xmm0
	vmovss	%xmm1, %xmm0, %xmm0 {%k1}
.LBB31_4:
	retq
.LBB31_2:
	vmovaps	%xmm1, %xmm0
	retq
.Lfunc_end31:
	.size	rintf, .Lfunc_end31-rintf
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI32_0:
	.long	0x7fffffff
.LCPI32_1:
	.long	0x4b000000
.LCPI32_2:
	.long	0xcb000000
.LCPI32_3:
	.long	0x3f000000
.LCPI32_4:
	.long	0xbf000000
.LCPI32_5:
	.long	0x3f800000
.LCPI32_6:
	.long	0xbf800000
.LCPI32_7:
	.long	0x80000000
	.section	.text.roundf,"ax",@progbits
	.prefalign	16
	.type	roundf,@function
roundf:
.Lfunc_begin32:
	.cfi_startproc
	vmovd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	ja	.LBB32_8
	vpandd	.LCPI32_0(%rip){1to4}, %xmm0, %xmm1
	vaddss	.LCPI32_1(%rip), %xmm1, %xmm2
	cmpl	$125, %ecx
	ja	.LBB32_3
	vmovss	%xmm2, -4(%rsp)
	vxorps	%xmm1, %xmm1, %xmm1
	vmulss	%xmm1, %xmm0, %xmm0
	retq
.LBB32_3:
	vaddss	.LCPI32_2(%rip), %xmm2, %xmm0
	vsubss	%xmm1, %xmm0, %xmm0
	vucomiss	.LCPI32_3(%rip), %xmm0
	jbe	.LBB32_5
	vaddss	%xmm0, %xmm1, %xmm0
	vaddss	.LCPI32_6(%rip), %xmm0, %xmm0
	jmp	.LBB32_7
.LBB32_5:
	vmovss	.LCPI32_4(%rip), %xmm2
	vucomiss	%xmm0, %xmm2
	vaddss	%xmm0, %xmm1, %xmm0
	jb	.LBB32_7
	vaddss	.LCPI32_5(%rip), %xmm0, %xmm0
.LBB32_7:
	vxorps	.LCPI32_7(%rip){1to4}, %xmm0, %xmm1
	testl	%eax, %eax
	sets	%al
	kmovd	%eax, %k1
	vmovss	%xmm1, %xmm0, %xmm0 {%k1}
.LBB32_8:
	retq
.Lfunc_end32:
	.size	roundf, .Lfunc_end32-roundf
	.cfi_endproc

	.type	__unnamed_1,@object
	.section	.rodata.__unnamed_1,"a",@progbits
__unnamed_1:
	.asciz	"matmul_dispatch_0"
	.size	__unnamed_1, 18

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
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_funcs:
	.quad	matmul_dispatch_0_matmul_128x128x128_f32
	.size	iree_hal_executable_library_query_v0_funcs, 8

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.quad	0
	.short	0
	.byte	0
	.byte	3
	.long	1
	.long	1
	.short	1
	.short	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	iree_hal_executable_library_query_v0_attrs, 64

	.type	__unnamed_2,@object
	.section	.rodata.__unnamed_2,"a",@progbits
__unnamed_2:
	.asciz	"matmul_dispatch_0_matmul_128x128x128_f32"
	.size	__unnamed_2, 41

	.type	iree_hal_executable_library_query_v0_names,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_names,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_names:
	.quad	__unnamed_2
	.size	iree_hal_executable_library_query_v0_names, 8

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/vec_autotuned_3e533c8c9b/dispatches/configured_module_matmul_dispatch_0.mlir"
	.size	__unnamed_3, 122

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.long	3
	.long	121
	.quad	__unnamed_3
	.size	iree_hal_executable_library_query_v0_source_locations, 16

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations, 0

	.type	iree_hal_executable_library_query_v0_stage_location_tables,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_stage_location_tables,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_stage_location_tables:
	.long	0
	.zero	4
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names
	.quad	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 24

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.quad	iree_hal_executable_library_query_v0_header
	.zero	16
	.long	1
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
	.long	.Linfo_string3
	.long	.Linfo_string3
	.byte	1
	.byte	1
	.long	71

	.byte	3
	.long	.Linfo_string4
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_matmul_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/home/rudramb122/MLIRBench/build/128x128x128/vec_autotuned_3e533c8c9b/dispatches"
.Linfo_string3:
	.asciz	"matmul_dispatch_0_matmul_128x128x128_f32"
.Linfo_string4:
	.asciz	"int"
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.short	2
	.long	.Lcu_begin0
	.long	79
	.long	42
	.asciz	"matmul_dispatch_0_matmul_128x128x128_f32"
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
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

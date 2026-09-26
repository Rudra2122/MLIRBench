	.file	"matmul_dispatch_0"
	.section	.text.matmul_dispatch_0_matmul_128x128x128_f32,"ax",@progbits
	.p2align	2
	.type	matmul_dispatch_0_matmul_128x128x128_f32,@function
matmul_dispatch_0_matmul_128x128x128_f32:
.Lfunc_begin0:
	.file	1 "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_autotuned_5973499a7e/dispatches" "configured_module_matmul_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_startproc
	str	d8, [sp, #-32]!
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -32
	mov	x9, #0
.Ltmp10:
	.loc	1 11 8 prologue_end
	ldr	x10, [x1, #32]
	ldp	x8, x12, [x10]
	.loc	1 13 8
	ldr	x10, [x10, #16]
	.loc	1 18 8
	ldr	w13, [x2]
	lsl	x11, x13, #4
	add	x12, x12, x13, lsl #6
.LBB0_1:
	.loc	1 0 8 is_stmt 0
	mov	x14, #0
	movi	v0.2d, #0000000000000000
	movi	v18.2d, #0000000000000000
	mov	x13, x12
	movi	v19.2d, #0000000000000000
	movi	v20.2d, #0000000000000000
	movi	v4.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	movi	v6.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	movi	v22.2d, #0000000000000000
	movi	v16.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
	movi	v2.2d, #0000000000000000
.LBB0_2:
	.loc	1 18 8 is_stmt 1
	add	x15, x8, x14, lsl #2
	ldp	q29, q28, [x13, #32]
	ldp	q31, q30, [x13]
	ldp	q27, q26, [x13, #512]
	ldp	q25, q24, [x13, #544]
	.loc	1 4 1
	mov	x16, x15
	ld1r	{ v8.4s }, [x16], #4
	fmla	v0.4s, v31.4s, v8.4s
	fmla	v18.4s, v30.4s, v8.4s
	fmla	v19.4s, v29.4s, v8.4s
	fmla	v20.4s, v28.4s, v8.4s
	ldr	s8, [x15, #512]
	fmla	v6.4s, v28.4s, v8.s[0]
	fmla	v5.4s, v29.4s, v8.s[0]
	fmla	v21.4s, v30.4s, v8.s[0]
	fmla	v4.4s, v31.4s, v8.s[0]
	ldr	s8, [x15, #1024]
	fmla	v16.4s, v28.4s, v8.s[0]
	fmla	v22.4s, v29.4s, v8.s[0]
	fmla	v7.4s, v30.4s, v8.s[0]
	fmla	v3.4s, v31.4s, v8.s[0]
	ldr	s8, [x15, #1536]
	fmla	v2.4s, v28.4s, v8.s[0]
	fmla	v23.4s, v29.4s, v8.s[0]
	fmla	v17.4s, v30.4s, v8.s[0]
	fmla	v1.4s, v31.4s, v8.s[0]
	ldr	s28, [x16]
	fmla	v20.4s, v24.4s, v28.s[0]
	fmla	v19.4s, v25.4s, v28.s[0]
	fmla	v18.4s, v26.4s, v28.s[0]
	fmla	v0.4s, v27.4s, v28.s[0]
	ldr	s28, [x15, #516]
	fmla	v4.4s, v27.4s, v28.s[0]
	fmla	v21.4s, v26.4s, v28.s[0]
	fmla	v5.4s, v25.4s, v28.s[0]
	fmla	v6.4s, v24.4s, v28.s[0]
	ldr	s28, [x15, #1028]
	fmla	v3.4s, v27.4s, v28.s[0]
	fmla	v7.4s, v26.4s, v28.s[0]
	fmla	v22.4s, v25.4s, v28.s[0]
	fmla	v16.4s, v24.4s, v28.s[0]
	ldr	s28, [x15, #1540]
	fmla	v1.4s, v27.4s, v28.s[0]
	fmla	v17.4s, v26.4s, v28.s[0]
	fmla	v23.4s, v25.4s, v28.s[0]
	fmla	v2.4s, v24.4s, v28.s[0]
	.loc	1 18 8
	add	x13, x13, #1024
	cmp	x14, #126
	add	x14, x14, #2
	b.lo	.LBB0_2
	add	x13, x10, x9, lsl #9
	add	x13, x13, x11, lsl #2
	stp	q0, q18, [x13]
	stp	q19, q20, [x13, #32]
	stp	q4, q21, [x13, #512]
	stp	q5, q6, [x13, #544]
	str	q22, [x13, #1056]
	str	q7, [x13, #1040]
	str	q3, [x13, #1024]
	str	q16, [x13, #1072]
	str	q23, [x13, #1568]
	str	q17, [x13, #1552]
	add	x8, x8, #2048
	str	q1, [x13, #1536]
	str	q2, [x13, #1584]
	cmp	x9, #124
	add	x9, x9, #4
	b.lo	.LBB0_1
	.loc	1 20 8
	mov	w0, #0
	.loc	1 20 8 epilogue_begin is_stmt 0
	ldp	x29, x30, [sp, #16]
	ldr	d8, [sp], #32
	ret
.Ltmp11:
.Lfunc_end0:
	.size	matmul_dispatch_0_matmul_128x128x128_f32, .Lfunc_end0-matmul_dispatch_0_matmul_128x128x128_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	2
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin1:
	.cfi_startproc
	adrp	x8, iree_hal_executable_library_query_v0
	add	x8, x8, :lo12:iree_hal_executable_library_query_v0
	cmp	w0, #6
	csel	x0, x8, xzr, eq
	ret
.Lfunc_end1:
	.size	iree_hal_executable_library_query, .Lfunc_end1-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end1-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	2
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin2:
	.cfi_startproc
	and	w8, w0, #0x3ff
	and	w10, w0, #0x80000000
	ands	w9, w0, #0x7c00
	b.eq	.LBB2_2
	mov	w11, #31744
	add	w12, w9, w8
	add	w12, w10, w12, lsl #13
	mov	w13, #939524096
	add	w12, w12, w13
	fmov	s0, w12
	orr	w12, w10, #0x7f800000
	fmov	s1, w12
	orr	w10, w10, #0x7fc00000
	fmov	s2, w10
	cmp	w8, #0
	fcsel	s1, s1, s2, eq
	cmp	w9, w11
	fcsel	s0, s0, s1, ne
	ret
.LBB2_2:
	mov	w9, #864026624
	orr	w9, w10, w9
	ucvtf	s0, w8
	fmov	s1, w9
	fmul	s0, s0, s1
	ret
.Lfunc_end2:
	.size	iree_h2f_ieee, .Lfunc_end2-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	2
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin3:
	.cfi_startproc
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB3_6
	and	w11, w10, #0x7fffff
	mov	w12, #2139095040
	cmp	w9, w12
	b.ne	.LBB3_4
	cbz	w11, .LBB3_8
	orr	w8, w8, #0x7fff
	sxth	w0, w8
	ret
.LBB3_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB3_7
	mov	w9, #31744
.LBB3_6:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB3_7:
	lsr	w9, w9, #23
	tst	w10, #0x2000
	mov	w10, #4095
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	mov	w12, #-127
	mov	w13, #15360
	add	w10, w13, w10, lsr #13
	cmp	w11, #0
	csel	w10, w13, w10, ne
	cinc	w11, w12, ne
	add	w11, w11, w9
	add	w10, w10, w11, lsl #10
	cmp	w9, #113
	csel	w9, wzr, w10, lo
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB3_8:
	mov	w9, #31744
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.Lfunc_end3:
	.size	iree_f2h_ieee, .Lfunc_end3-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	2
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin4:
	.cfi_startproc
	and	w8, w0, #0x3ff
	and	w10, w0, #0x80000000
	ands	w9, w0, #0x7c00
	b.eq	.LBB4_2
	mov	w11, #31744
	add	w12, w9, w8
	add	w12, w10, w12, lsl #13
	mov	w13, #939524096
	add	w12, w12, w13
	fmov	s0, w12
	orr	w12, w10, #0x7f800000
	fmov	s1, w12
	orr	w10, w10, #0x7fc00000
	fmov	s2, w10
	cmp	w8, #0
	fcsel	s1, s1, s2, eq
	cmp	w9, w11
	fcsel	s0, s0, s1, ne
	ret
.LBB4_2:
	mov	w9, #864026624
	orr	w9, w10, w9
	ucvtf	s0, w8
	fmov	s1, w9
	fmul	s0, s0, s1
	ret
.Lfunc_end4:
	.size	__gnu_h2f_ieee, .Lfunc_end4-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	2
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin5:
	.cfi_startproc
	fmov	w11, s0
	and	w8, w11, #0x3ff
	lsl	w9, w11, #16
	and	w10, w9, #0x80000000
	ands	w9, w11, #0x7c00
	b.eq	.LBB5_2
	mov	w12, #31744
	and	w11, w11, #0x7fff
	add	w11, w10, w11, lsl #13
	mov	w13, #939524096
	add	w11, w11, w13
	fmov	s0, w11
	orr	w11, w10, #0x7f800000
	fmov	s1, w11
	orr	w10, w10, #0x7fc00000
	fmov	s2, w10
	cmp	w8, #0
	fcsel	s1, s1, s2, eq
	cmp	w9, w12
	fcsel	s0, s0, s1, ne
	ret
.LBB5_2:
	mov	w9, #864026624
	orr	w9, w10, w9
	ucvtf	s0, w8
	fmov	s1, w9
	fmul	s0, s0, s1
	ret
.Lfunc_end5:
	.size	__extendhfsf2, .Lfunc_end5-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	2
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin6:
	.cfi_startproc
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB6_6
	and	w11, w10, #0x7fffff
	mov	w12, #2139095040
	cmp	w9, w12
	b.ne	.LBB6_4
	cbz	w11, .LBB6_8
	orr	w8, w8, #0x7fff
	sxth	w0, w8
	ret
.LBB6_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB6_7
	mov	w9, #31744
.LBB6_6:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB6_7:
	lsr	w9, w9, #23
	tst	w10, #0x2000
	mov	w10, #4095
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	mov	w12, #-127
	mov	w13, #15360
	add	w10, w13, w10, lsr #13
	cmp	w11, #0
	csel	w10, w13, w10, ne
	cinc	w11, w12, ne
	add	w11, w11, w9
	add	w10, w10, w11, lsl #10
	cmp	w9, #113
	csel	w9, wzr, w10, lo
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB6_8:
	mov	w9, #31744
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.Lfunc_end6:
	.size	__gnu_f2h_ieee, .Lfunc_end6-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	2
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin7:
	.cfi_startproc
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB7_7
	and	w11, w10, #0x7fffff
	mov	w12, #2139095040
	cmp	w9, w12
	b.ne	.LBB7_4
	cbz	w11, .LBB7_5
	orr	w8, w8, #0x7fff
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.LBB7_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB7_6
.LBB7_5:
	mov	w9, #31744
	b	.LBB7_7
.LBB7_6:
	lsr	w9, w9, #23
	tst	w10, #0x2000
	mov	w10, #4095
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	mov	w12, #-127
	mov	w13, #15360
	add	w10, w13, w10, lsr #13
	cmp	w11, #0
	csel	w10, w13, w10, ne
	cinc	w11, w12, ne
	add	w11, w11, w9
	add	w10, w10, w11, lsl #10
	cmp	w9, #113
	csel	w9, wzr, w10, lo
.LBB7_7:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end7:
	.size	__truncsfhf2, .Lfunc_end7-__truncsfhf2
	.cfi_endproc

	.section	.text.__extendhfdf2,"ax",@progbits
	.p2align	2
	.type	__extendhfdf2,@function
__extendhfdf2:
.Lfunc_begin8:
	.cfi_startproc
	fmov	w11, s0
	and	w8, w11, #0x3ff
	lsl	w9, w11, #16
	and	w10, w9, #0x80000000
	ands	w9, w11, #0x7c00
	b.eq	.LBB8_2
	mov	w12, #31744
	and	w11, w11, #0x7fff
	add	w11, w10, w11, lsl #13
	mov	w13, #939524096
	add	w11, w11, w13
	fmov	s0, w11
	orr	w11, w10, #0x7f800000
	fmov	s1, w11
	orr	w10, w10, #0x7fc00000
	fmov	s2, w10
	cmp	w8, #0
	fcsel	s1, s1, s2, eq
	cmp	w9, w12
	fcsel	s0, s0, s1, ne
	fcvt	d0, s0
	ret
.LBB8_2:
	mov	w9, #864026624
	orr	w9, w10, w9
	ucvtf	s0, w8
	fmov	s1, w9
	fmul	s0, s0, s1
	fcvt	d0, s0
	ret
.Lfunc_end8:
	.size	__extendhfdf2, .Lfunc_end8-__extendhfdf2
	.cfi_endproc

	.section	.text.__truncdfhf2,"ax",@progbits
	.p2align	2
	.type	__truncdfhf2,@function
__truncdfhf2:
.Lfunc_begin9:
	.cfi_startproc
	fcvt	s0, d0
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB9_7
	and	w11, w10, #0x7fffff
	mov	w12, #2139095040
	cmp	w9, w12
	b.ne	.LBB9_4
	cbz	w11, .LBB9_5
	orr	w8, w8, #0x7fff
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.LBB9_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB9_6
.LBB9_5:
	mov	w9, #31744
	b	.LBB9_7
.LBB9_6:
	lsr	w9, w9, #23
	tst	w10, #0x2000
	mov	w10, #4095
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	mov	w12, #-127
	mov	w13, #15360
	add	w10, w13, w10, lsr #13
	cmp	w11, #0
	csel	w10, w13, w10, ne
	cinc	w11, w12, ne
	add	w11, w11, w9
	add	w10, w10, w11, lsl #10
	cmp	w9, #113
	csel	w9, wzr, w10, lo
.LBB9_7:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end9:
	.size	__truncdfhf2, .Lfunc_end9-__truncdfhf2
	.cfi_endproc

	.section	.text.fma,"ax",@progbits
	.p2align	2
	.type	fma,@function
fma:
.Lfunc_begin10:
	.cfi_startproc
	fmadd	d0, d0, d1, d2
	ret
.Lfunc_end10:
	.size	fma, .Lfunc_end10-fma
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.p2align	2
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin11:
	.cfi_startproc
	fsub	s0, s0, s0
	fdiv	s0, s0, s0
	ret
.Lfunc_end11:
	.size	__math_invalidf, .Lfunc_end11-__math_invalidf
	.cfi_endproc

	.section	.text.__math_oflowf,"ax",@progbits
	.p2align	2
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin12:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	cmp	w0, #0
	movi	v0.2s, #240, lsl #24
	movi	v1.2s, #112, lsl #24
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end12:
	.size	__math_oflowf, .Lfunc_end12-__math_oflowf
	.cfi_endproc

	.section	.text.__math_xflowf,"ax",@progbits
	.p2align	2
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin13:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fneg	s1, s0
	cmp	w0, #0
	fcsel	s1, s0, s1, eq
	str	s1, [sp, #12]
	ldr	s1, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end13:
	.size	__math_xflowf, .Lfunc_end13-__math_xflowf
	.cfi_endproc

	.section	.text.__math_uflowf,"ax",@progbits
	.p2align	2
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin14:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	cmp	w0, #0
	movi	v0.2s, #144, lsl #24
	movi	v1.2s, #16, lsl #24
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end14:
	.size	__math_uflowf, .Lfunc_end14-__math_uflowf
	.cfi_endproc

	.section	.text.ceilf,"ax",@progbits
	.p2align	2
	.type	ceilf,@function
ceilf:
.Lfunc_begin15:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #149
	b.hi	.LBB15_5
	cmp	w9, #127
	b.lo	.LBB15_4
	sub	w10, w9, #127
	mov	w9, #8388607
	lsr	w9, w9, w10
	tst	w9, w8
	b.eq	.LBB15_5
	mov	w11, #2071986176
	fmov	s1, w11
	fadd	s0, s0, s1
	str	s0, [sp, #8]
	mov	w11, #-8388608
	asr	w10, w11, w10
	cmp	w8, #0
	csel	w9, wzr, w9, mi
	add	w8, w9, w8
	and	w8, w8, w10
	fmov	s0, w8
	add	sp, sp, #16
	ret
.LBB15_4:
	mov	w9, #2071986176
	fmov	s1, w9
	fadd	s1, s0, s1
	str	s1, [sp, #12]
	movi	v1.2s, #128, lsl #24
	cmp	w8, #0
	fmov	s2, #1.00000000
	fcsel	s0, s0, s2, eq
	tst	w8, #0x80000000
	fcsel	s0, s1, s0, ne
.LBB15_5:
	add	sp, sp, #16
	ret
.Lfunc_end15:
	.size	ceilf, .Lfunc_end15-ceilf
	.cfi_endproc

	.section	.text.expf,"ax",@progbits
	.p2align	2
	.type	expf,@function
expf:
.Lfunc_begin16:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w8, s0
	ubfx	w8, w8, #20, #11
	cmp	w8, #1067
	b.hs	.LBB16_3
.LBB16_1:
	fcvt	d0, s0
	mov	x8, #33534
	movk	x8, #25899, lsl #16
	movk	x8, #5447, lsl #32
	movk	x8, #16455, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	mov	x8, #4843621399236968448
	fmov	d1, x8
	fadd	d1, d0, d1
	mov	x8, #-4379750637617807360
	fmov	d2, x8
	fadd	d2, d1, d2
	fmov	x8, d1
	fsub	d0, d0, d2
	adrp	x9, __exp2f_data
	add	x9, x9, :lo12:__exp2f_data
	and	x10, x8, #0x1f
	ldr	x9, [x9, x10, lsl #3]
	add	x8, x9, x8, lsl #47
	fmov	d1, x8
	mov	x8, #50419
	movk	x8, #20730, lsl #16
	movk	x8, #49102, lsl #32
	movk	x8, #16174, lsl #48
	fmov	d2, x8
	mov	x8, #9108
	movk	x8, #19345, lsl #16
	movk	x8, #27384, lsl #32
	movk	x8, #16060, lsl #48
	fmov	d3, x8
	fmadd	d2, d0, d3, d2
	fmul	d3, d0, d0
	mov	x8, #21206
	movk	x8, #65292, lsl #16
	movk	x8, #11842, lsl #32
	movk	x8, #16278, lsl #48
	fmov	d4, x8
	fmov	d5, #1.00000000
	fmadd	d0, d0, d4, d5
	fmadd	d0, d2, d3, d0
	fmul	d0, d0, d1
	fcvt	s1, d0
.LBB16_2:
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.LBB16_3:
	movi	v1.2d, #0000000000000000
	mov	w9, #-8388608
	fmov	s2, w9
	fcmp	s0, s2
	b.eq	.LBB16_2
	cmp	w8, #2040
	b.hs	.LBB16_7
	mov	w8, #29207
	movk	w8, #17073, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.le	.LBB16_8
	mov	w8, #1879048192
	str	w8, [sp, #8]
	ldr	s0, [sp, #8]
	movi	v1.2s, #112, lsl #24
	fmul	s1, s0, s1
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.LBB16_7:
	fadd	s1, s0, s0
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.LBB16_8:
	mov	w8, #61876
	movk	w8, #49871, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.pl	.LBB16_1
	mov	w8, #268435456
	str	w8, [sp, #12]
	ldr	s0, [sp, #12]
	movi	v1.2s, #16, lsl #24
	fmul	s1, s0, s1
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.Lfunc_end16:
	.size	expf, .Lfunc_end16-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.p2align	2
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin17:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end17:
	.size	feclearexcept, .Lfunc_end17-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.p2align	2
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin18:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end18:
	.size	feraiseexcept, .Lfunc_end18-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.p2align	2
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin19:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end19:
	.size	fetestexcept, .Lfunc_end19-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.p2align	2
	.type	fegetround,@function
fegetround:
.Lfunc_begin20:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end20:
	.size	fegetround, .Lfunc_end20-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.p2align	2
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin21:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end21:
	.size	__fesetround, .Lfunc_end21-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.p2align	2
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin22:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end22:
	.size	fegetenv, .Lfunc_end22-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.p2align	2
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin23:
	.cfi_startproc
	mov	w0, #0
	ret
.Lfunc_end23:
	.size	fesetenv, .Lfunc_end23-fesetenv
	.cfi_endproc

	.section	.text.floorf,"ax",@progbits
	.p2align	2
	.type	floorf,@function
floorf:
.Lfunc_begin24:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #149
	b.ls	.LBB24_3
	mov	v1.16b, v0.16b
.LBB24_2:
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.LBB24_3:
	cmp	w9, #127
	b.lo	.LBB24_6
	sub	w9, w9, #127
	mov	w10, #8388607
	lsr	w10, w10, w9
	tst	w10, w8
	b.eq	.LBB24_9
	mov	w11, #2071986176
	fmov	s1, w11
	fadd	s0, s0, s1
	str	s0, [sp, #8]
	mov	w11, #-8388608
	asr	w9, w11, w9
	and	w10, w10, w8, asr #31
	add	w8, w10, w8
	and	w8, w8, w9
	fmov	s1, w8
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.LBB24_6:
	mov	w9, #2071986176
	fmov	s1, w9
	fadd	s1, s0, s1
	str	s1, [sp, #12]
	movi	v1.2d, #0000000000000000
	tbz	w8, #31, .LBB24_2
	fcmp	s0, #0.0
	mov	v1.16b, v0.16b
	b.eq	.LBB24_2
	fmov	s1, #-1.00000000
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.LBB24_9:
	mov	v1.16b, v0.16b
	mov	v0.16b, v1.16b
	add	sp, sp, #16
	ret
.Lfunc_end24:
	.size	floorf, .Lfunc_end24-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.p2align	2
	.type	fmaf,@function
fmaf:
.Lfunc_begin25:
	.cfi_startproc
	fcvt	d0, s0
	fcvt	d1, s1
	fmul	d1, d0, d1
	fcvt	d2, s2
	fadd	d0, d1, d2
	fmov	x8, d0
	and	x9, x8, #0x7ff0000000000000
	mov	x10, #-9223372036854775808
	cmp	x10, x8, lsl #35
	mov	x10, #9218868437227405312
	ccmp	x9, x10, #4, eq
	b.eq	.LBB25_3
	fsub	d3, d0, d1
	fsub	d4, d0, d2
	fcmp	d3, d2
	fccmp	d4, d1, #0, eq
	b.eq	.LBB25_3
	cmp	x8, #0
	cset	w9, mi
	fcmp	d1, d2
	cset	w10, pl
	eor	w10, w10, w9
	fsub	d3, d1, d0
	fadd	d3, d3, d2
	fsub	d0, d2, d0
	fadd	d0, d1, d0
	cmp	w10, #0
	fcsel	d0, d3, d0, ne
	fcmp	d0, #0.0
	cset	w10, pl
	eor	w9, w9, w10
	sub	x10, x8, #1
	cmp	w9, #0
	csinc	x8, x10, x8, eq
	fmov	d0, x8
.LBB25_3:
	fcvt	s0, d0
	ret
.Lfunc_end25:
	.size	fmaf, .Lfunc_end25-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.p2align	2
	.type	fmodf,@function
fmodf:
.Lfunc_begin26:
	.cfi_startproc
	fmov	w12, s1
	lsl	w10, w12, #1
	cbz	w10, .LBB26_8
	fmov	w8, s1
	and	w8, w8, #0x7fffffff
	mov	w9, #2139095040
	cmp	w8, w9
	b.hi	.LBB26_8
	fmov	w9, s0
	ubfx	w8, w9, #23, #8
	cmp	w8, #255
	b.eq	.LBB26_8
	lsl	w11, w9, #1
	cmp	w11, w10
	b.ls	.LBB26_9
	ubfx	w11, w12, #23, #8
	cbz	w8, .LBB26_10
	mov	w10, #8388608
	bfxil	w10, w9, #0, #23
	cbz	w11, .LBB26_13
.LBB26_6:
	mov	w13, #8388608
	bfxil	w13, w12, #0, #23
	cmp	w8, w11
	b.gt	.LBB26_17
.LBB26_7:
	subs	w11, w10, w13
	b.pl	.LBB26_20
	b	.LBB26_21
.LBB26_8:
	fmul	s0, s0, s1
	fdiv	s0, s0, s0
	ret
.LBB26_9:
	movi	v1.2d, #0000000000000000
	fmul	s1, s0, s1
	fcsel	s0, s1, s0, eq
	ret
.LBB26_10:
	mov	w8, #0
	lsl	w10, w9, #9
	tbnz	w10, #31, .LBB26_12
.LBB26_11:
	sub	w8, w8, #1
	lsl	w10, w10, #1
	tbz	w10, #31, .LBB26_11
.LBB26_12:
	mov	w10, #1
	sub	w10, w10, w8
	lsl	w10, w9, w10
	cbnz	w11, .LBB26_6
.LBB26_13:
	mov	w11, #0
	lsl	w13, w12, #9
	tbnz	w13, #31, .LBB26_15
.LBB26_14:
	sub	w11, w11, #1
	lsl	w13, w13, #1
	tbz	w13, #31, .LBB26_14
.LBB26_15:
	mov	w13, #1
	sub	w13, w13, w11
	lsl	w13, w12, w13
	cmp	w8, w11
	b.gt	.LBB26_17
	b	.LBB26_7
.LBB26_16:
	lsl	w10, w10, #1
	sub	w8, w8, #1
	cmp	w8, w11
	b.le	.LBB26_19
.LBB26_17:
	subs	w12, w10, w13
	b.mi	.LBB26_16
	mov	x10, x12
	cbnz	w12, .LBB26_16
	b	.LBB26_24
.LBB26_19:
	mov	x8, x11
	subs	w11, w10, w13
	b.mi	.LBB26_21
.LBB26_20:
	mov	x10, x11
	cbz	w11, .LBB26_24
.LBB26_21:
	and	w9, w9, #0x80000000
	lsr	w11, w10, #23
	cbnz	w11, .LBB26_23
.LBB26_22:
	sub	w8, w8, #1
	cmp	w10, #1024, lsl #12
	lsl	w10, w10, #1
	b.lo	.LBB26_22
.LBB26_23:
	mov	w11, #1
	sub	w11, w11, w8
	lsr	w11, w10, w11
	sub	w10, w10, #2048, lsl #12
	orr	w10, w10, w8, lsl #23
	cmp	w8, #1
	csel	w8, w11, w10, lt
	orr	w8, w8, w9
	fmov	s0, w8
	ret
.LBB26_24:
	movi	v1.2d, #0000000000000000
	fmul	s0, s0, s1
	ret
.Lfunc_end26:
	.size	fmodf, .Lfunc_end26-fmodf
	.cfi_endproc

	.section	.text.frexpf,"ax",@progbits
	.p2align	2
	.type	frexpf,@function
frexpf:
.Lfunc_begin27:
	.cfi_startproc
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #255
	b.eq	.LBB27_5
	cbnz	w9, .LBB27_4
	fcmp	s0, #0.0
	b.eq	.LBB27_6
	stp	x30, x19, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w30, -16
	mov	w8, #1602224128
	fmov	s1, w8
	fmul	s0, s0, s1
	mov	x19, x0
	bl	frexpf
	mov	x0, x19
	ldr	w8, [x19]
	sub	w8, w8, #64
	ldp	x30, x19, [sp], #16
	str	w8, [x0]
	ret
.LBB27_4:
	sub	w9, w9, #126
	str	w9, [x0]
	and	w8, w8, #0x807fffff
	orr	w8, w8, #0x3f000000
	fmov	s0, w8
.LBB27_5:
	ret
.LBB27_6:
	str	wzr, [x0]
	ret
.Lfunc_end27:
	.size	frexpf, .Lfunc_end27-frexpf
	.cfi_endproc

	.section	.text.ldexpf,"ax",@progbits
	.p2align	2
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin28:
	.cfi_startproc
	cmp	w0, #128
	b.lt	.LBB28_4
	movi	v1.2s, #127, lsl #24
	fmul	s0, s0, s1
	cmp	w0, #255
	b.lo	.LBB28_6
	fmul	s0, s0, s1
	mov	w8, #381
	cmp	w0, #381
	csel	w8, w0, w8, lo
	sub	w0, w8, #254
.LBB28_3:
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB28_4:
	cmn	w0, #127
	b.gt	.LBB28_3
	mov	w8, #209715200
	fmov	s1, w8
	fmul	s0, s0, s1
	add	w8, w0, #102
	mov	w9, #209715200
	fmov	s1, w9
	fmul	s1, s0, s1
	cmn	w0, #330
	mov	w9, #-330
	csel	w9, w0, w9, hi
	add	w9, w9, #204
	cmn	w0, #229
	csel	w0, w8, w9, hi
	fcsel	s0, s0, s1, hi
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB28_6:
	sub	w0, w0, #127
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.Lfunc_end28:
	.size	ldexpf, .Lfunc_end28-ldexpf
	.cfi_endproc

	.section	.text.scalbnf,"ax",@progbits
	.p2align	2
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin29:
	.cfi_startproc
	cmp	w0, #128
	b.lt	.LBB29_4
	movi	v1.2s, #127, lsl #24
	fmul	s0, s0, s1
	cmp	w0, #255
	b.lo	.LBB29_6
	fmul	s0, s0, s1
	mov	w8, #381
	cmp	w0, #381
	csel	w8, w0, w8, lo
	sub	w0, w8, #254
.LBB29_3:
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB29_4:
	cmn	w0, #127
	b.gt	.LBB29_3
	mov	w8, #209715200
	fmov	s1, w8
	fmul	s0, s0, s1
	add	w8, w0, #102
	mov	w9, #209715200
	fmov	s1, w9
	fmul	s1, s0, s1
	cmn	w0, #330
	mov	w9, #-330
	csel	w9, w0, w9, hi
	add	w9, w9, #204
	cmn	w0, #229
	csel	w0, w8, w9, hi
	fcsel	s0, s0, s1, hi
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB29_6:
	sub	w0, w0, #127
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.Lfunc_end29:
	.size	scalbnf, .Lfunc_end29-scalbnf
	.cfi_endproc

	.section	.text.powf,"ax",@progbits
	.p2align	2
	.type	powf,@function
powf:
.Lfunc_begin30:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w9, s0
	fmov	w8, s1
	mov	w11, #-2139095040
	add	w12, w11, #2048, lsl #12
	lsl	w10, w8, #1
	add	w11, w9, w11
	cmp	w11, w12
	b.lo	.LBB30_6
	mov	w11, #16777216
	add	w12, w10, w11
	cmp	w12, w11
	b.ls	.LBB30_6
	mov	w8, #0
.LBB30_3:
	mov	w10, #-1060306944
	add	w10, w9, w10
	ubfx	w11, w10, #19, #4
	and	w12, w10, #0xff800000
	sub	w9, w9, w12
	asr	w10, w10, #23
	adrp	x12, __powf_log2_data
	add	x12, x12, :lo12:__powf_log2_data
	add	x11, x12, w11, uxtw #4
	ldp	d0, d2, [x11]
	fmov	s3, w9
	fcvt	d3, s3
	fmov	d4, #-1.00000000
	fmadd	d0, d3, d0, d4
	scvtf	d3, w10
	fadd	d2, d2, d3
	fmul	d3, d0, d0
	mov	x9, #50810
	movk	x9, #41077, lsl #16
	movk	x9, #6505, lsl #32
	movk	x9, #49111, lsl #48
	fmov	d4, x9
	mov	x9, #28171
	movk	x9, #51529, lsl #16
	movk	x9, #30230, lsl #32
	movk	x9, #16338, lsl #48
	fmov	d5, x9
	fmadd	d4, d0, d5, d4
	mov	x9, #63176
	movk	x9, #18622, lsl #16
	movk	x9, #5447, lsl #32
	movk	x9, #49127, lsl #48
	fmov	d5, x9
	mov	x9, #47837
	movk	x9, #27815, lsl #16
	movk	x9, #50954, lsl #32
	movk	x9, #16350, lsl #48
	fmov	d6, x9
	fmadd	d5, d0, d6, d5
	fmul	d6, d3, d3
	mov	x9, #47147
	movk	x9, #25898, lsl #16
	movk	x9, #5447, lsl #32
	movk	x9, #16375, lsl #48
	fmov	d7, x9
	fmadd	d0, d0, d7, d2
	fmadd	d0, d5, d3, d0
	fmadd	d0, d4, d6, d0
	fcvt	d1, s1
	fmul	d0, d0, d1
	fmov	x9, d0
	and	x9, x9, #0x7fff800000000000
	mov	x10, #1
	movk	x10, #16479, lsl #48
	cmp	x9, x10
	b.hs	.LBB30_11
.LBB30_4:
	mov	x9, #4821103401100115968
	fmov	d1, x9
	fadd	d1, d0, d1
	mov	x9, #-4402268635754659840
	fmov	d2, x9
	fadd	d2, d1, d2
	fmov	x9, d1
	fsub	d0, d0, d2
	and	x10, x9, #0x1f
	adrp	x11, __exp2f_data
	add	x11, x11, :lo12:__exp2f_data
	ldr	x10, [x11, x10, lsl #3]
	add	w8, w9, w8
	add	x8, x10, x8, lsl #47
	fmov	d1, x8
	mov	x8, #50419
	movk	x8, #20730, lsl #16
	movk	x8, #49102, lsl #32
	movk	x8, #16334, lsl #48
	fmov	d2, x8
	mov	x8, #9108
	movk	x8, #19345, lsl #16
	movk	x8, #27384, lsl #32
	movk	x8, #16300, lsl #48
	fmov	d3, x8
	fmadd	d2, d0, d3, d2
	fmul	d3, d0, d0
	mov	x8, #21206
	movk	x8, #65292, lsl #16
	movk	x8, #11842, lsl #32
	movk	x8, #16358, lsl #48
	fmov	d4, x8
	fmov	d5, #1.00000000
	fmadd	d0, d0, d4, d5
	fmadd	d0, d2, d3, d0
	fmul	d0, d0, d1
	fcvt	s0, d0
.LBB30_5:
	add	sp, sp, #16
	ret
.LBB30_6:
	sub	w12, w10, #1
	mov	w11, #-16777217
	cmp	w12, w11
	b.hs	.LBB30_23
	lsl	w10, w9, #1
	sub	w10, w10, #1
	cmp	w10, w11
	b.hs	.LBB30_29
	tbnz	w9, #31, .LBB30_13
	mov	w8, #0
.LBB30_10:
	lsr	w10, w9, #23
	movi	v2.2s, #75, lsl #24
	fmul	s0, s0, s2
	fmov	w11, s0
	and	w11, w11, #0x7fffffff
	mov	w12, #-192937984
	add	w11, w11, w12
	cmp	w10, #0
	csel	w9, w9, w11, ne
	b	.LBB30_3
.LBB30_11:
	mov	x9, #-10895
	movk	x9, #65489, lsl #16
	movk	x9, #16479, lsl #48
	fmov	d1, x9
	fcmp	d0, d1
	b.le	.LBB30_17
	cmp	w8, #0
	movi	v0.2s, #240, lsl #24
	movi	v1.2s, #112, lsl #24
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.LBB30_13:
	ubfx	w9, w8, #23, #8
	cmp	w9, #127
	b.lo	.LBB30_20
	cmp	w9, #150
	b.ls	.LBB30_19
.LBB30_15:
	mov	w8, #0
.LBB30_16:
	fmov	w9, s0
	and	w9, w9, #0x7fffffff
	b	.LBB30_10
.LBB30_17:
	mov	x9, #211106232532992
	movk	x9, #49250, lsl #48
	fmov	d1, x9
	fcmp	d0, d1
	b.hi	.LBB30_4
	cmp	w8, #0
	movi	v0.2s, #144, lsl #24
	movi	v1.2s, #16, lsl #24
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.LBB30_19:
	mov	w10, #150
	sub	w9, w10, w9
	mov	w10, #1
	lsl	w9, w10, w9
	sub	w10, w9, #1
	tst	w10, w8
	b.eq	.LBB30_21
.LBB30_20:
	fsub	s0, s0, s0
	fdiv	s0, s0, s0
	add	sp, sp, #16
	ret
.LBB30_21:
	tst	w9, w8
	b.eq	.LBB30_15
	mov	w8, #65536
	b	.LBB30_16
.LBB30_23:
	mov	w11, #1065353216
	cmp	w9, w11
	b.eq	.LBB30_31
	cbz	w10, .LBB30_31
	lsl	w9, w9, #1
	mov	w11, #-16777216
	cmp	w9, w11
	b.hi	.LBB30_32
	mov	w11, #-16777215
	cmp	w10, w11
	b.hs	.LBB30_32
	mov	w10, #2130706432
	cmp	w9, w10
	fmov	s0, #1.00000000
	b.eq	.LBB30_5
	lsr	w9, w9, #24
	cmp	w9, #127
	cset	w9, lo
	cmp	w8, #0
	cset	w8, mi
	eor	w8, w9, w8
	fmul	s0, s1, s1
	cmp	w8, #0
	movi	v1.2d, #0000000000000000
	fcsel	s0, s1, s0, ne
	add	sp, sp, #16
	ret
.LBB30_29:
	fmul	s0, s0, s0
	ubfx	w10, w8, #23, #8
	sub	w11, w10, #151
	mov	w12, #150
	sub	w10, w12, w10
	mov	w12, #1
	lsl	w10, w12, w10
	sub	w12, w10, #1
	tst	w12, w8
	and	w10, w10, w8
	ccmp	w10, #0, #4, eq
	fneg	s1, s0
	fcsel	s1, s0, s1, eq
	cmn	w11, #24
	fcsel	s1, s0, s1, lo
	tst	w9, #0x80000000
	fcsel	s0, s0, s1, eq
	tbz	w8, #31, .LBB30_5
	fmov	s1, #1.00000000
	fdiv	s0, s1, s0
	str	s0, [sp, #4]
	ldr	s0, [sp, #4]
	add	sp, sp, #16
	ret
.LBB30_31:
	fmov	s0, #1.00000000
	add	sp, sp, #16
	ret
.LBB30_32:
	fadd	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end30:
	.size	powf, .Lfunc_end30-powf
	.cfi_endproc

	.section	.text.rintf,"ax",@progbits
	.p2align	2
	.type	rintf,@function
rintf:
.Lfunc_begin31:
	.cfi_startproc
	fmov	w8, s0
	and	w9, w8, #0x7f000000
	mov	w10, #1249902592
	cmp	w9, w10
	b.hi	.LBB31_3
	movi	v1.2s, #203, lsl #24
	fadd	s2, s0, s1
	movi	v3.2s, #75, lsl #24
	fadd	s2, s2, s3
	fadd	s0, s0, s3
	fadd	s0, s0, s1
	cmn	w8, #1
	fcsel	s0, s0, s2, gt
	fcmp	s0, #0.0
	b.ne	.LBB31_3
	cmn	w8, #1
	movi	v0.2s, #128, lsl #24
	movi	v1.2d, #0000000000000000
	fcsel	s0, s1, s0, gt
.LBB31_3:
	ret
.Lfunc_end31:
	.size	rintf, .Lfunc_end31-rintf
	.cfi_endproc

	.section	.text.roundf,"ax",@progbits
	.p2align	2
	.type	roundf,@function
roundf:
.Lfunc_begin32:
	.cfi_startproc
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #149
	b.hi	.LBB32_4
	fabs	s1, s0
	movi	v2.2s, #75, lsl #24
	fadd	s2, s1, s2
	cmp	w9, #125
	b.hi	.LBB32_3
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s2, [sp, #12]
	movi	v1.2d, #0000000000000000
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.LBB32_3:
	movi	v0.2s, #203, lsl #24
	fadd	s0, s2, s0
	fsub	s0, s0, s1
	fmov	s2, #0.50000000
	fadd	s1, s1, s0
	fmov	s3, #-0.50000000
	fmov	s4, #1.00000000
	fadd	s4, s1, s4
	fcmp	s0, s3
	fcsel	s3, s1, s4, hi
	fmov	s4, #-1.00000000
	fadd	s1, s1, s4
	fcmp	s0, s2
	fcsel	s0, s3, s1, le
	fneg	s1, s0
	cmp	w8, #0
	fcsel	s0, s1, s0, mi
.LBB32_4:
	ret
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
	.word	6
	.zero	4
	.xword	__unnamed_1
	.word	0
	.word	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_funcs:
	.xword	matmul_dispatch_0_matmul_128x128x128_f32
	.size	iree_hal_executable_library_query_v0_funcs, 8

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.xword	0
	.hword	0
	.byte	0
	.byte	3
	.word	1
	.word	1
	.hword	1
	.hword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
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
	.xword	__unnamed_2
	.size	iree_hal_executable_library_query_v0_names, 8

	.type	__unnamed_3,@object
	.section	.rodata.__unnamed_3,"a",@progbits
__unnamed_3:
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_autotuned_5973499a7e/dispatches/configured_module_matmul_dispatch_0.mlir"
	.size	__unnamed_3, 138

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.word	3
	.word	137
	.xword	__unnamed_3
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
	.word	0
	.zero	4
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_names
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_0_matmul_128x128x128_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 24

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.xword	iree_hal_executable_library_query_v0_header
	.zero	16
	.word	1
	.zero	4
	.xword	iree_hal_executable_library_query_v0_funcs
	.xword	iree_hal_executable_library_query_v0_attrs
	.xword	0
	.xword	0
	.xword	iree_hal_executable_library_query_v0_names
	.xword	0
	.xword	0
	.xword	iree_hal_executable_library_query_v0_source_locations
	.xword	iree_hal_executable_library_query_v0_stage_location_tables
	.zero	4
	.zero	4
	.zero	16
	.size	iree_hal_executable_library_query_v0, 128

	.type	__exp2f_data,@object
	.section	.rodata.__exp2f_data,"a",@progbits
	.p2align	3, 0x0
__exp2f_data:
	.xword	4607182418800017408
	.xword	4607140297302181236
	.xword	4607100335213349135
	.xword	4607062579818421073
	.xword	4607027079437701499
	.xword	4606993883449571754
	.xword	4606963042313658936
	.xword	4606934607594512097
	.xword	4606908631985796885
	.xword	4606885169335019979
	.xword	4606864274668794914
	.xword	4606846004218661165
	.xword	4606830415447468583
	.xword	4606817567076339586
	.xword	4606807519112221737
	.xword	4606800332876043653
	.xword	4606796071031487437
	.xword	4606794797614391156
	.xword	4606796578062795143
	.xword	4606801479247646227
	.xword	4606809569504174299
	.xword	4606820918663955941
	.xword	4606835598087680144
	.xword	4606853680698631517
	.xword	4606875241016906669
	.xword	4606900355194379847
	.xword	4606929101050434204
	.xword	4606961558108475497
	.xword	4606997807633245319
	.xword	4607037932668951391
	.xword	4607082018078232794
	.xword	4607130150581978432
	.xword	0x42e8000000000000
	.xword	0x3fac6af84b912394
	.xword	0x3fcebfce50fac4f3
	.xword	0x3fe62e42ff0c52d6
	.xword	0x4338000000000000
	.xword	0x40471547652b82fe
	.xword	0x3ebc6af84b912394
	.xword	0x3f2ebfce50fac4f3
	.xword	0x3f962e42ff0c52d6
	.size	__exp2f_data, 328

	.type	__powf_log2_data,@object
	.section	.rodata.__powf_log2_data,"a",@progbits
	.p2align	3, 0x0
__powf_log2_data:
	.xword	0x3ff661ec79f8f3be
	.xword	0xbfdefec65b963019
	.xword	0x3ff571ed4aaf883d
	.xword	0xbfdb0b6832d4fca4
	.xword	0x3ff49539f0f010b0
	.xword	0xbfd7418b0a1fb77b
	.xword	0x3ff3c995b0b80385
	.xword	0xbfd39de91a6dcf7b
	.xword	0x3ff30d190c8864a5
	.xword	0xbfd01d9bf3f2b631
	.xword	0x3ff25e227b0b8ea0
	.xword	0xbfc97c1d1b3b7af0
	.xword	0x3ff1bb4a4a1a343f
	.xword	0xbfc2f9e393af3c9f
	.xword	0x3ff12358f08ae5ba
	.xword	0xbfb960cbbf788d5c
	.xword	0x3ff0953f419900a7
	.xword	0xbfaa6f9db6475fce
	.xword	0x3ff0000000000000
	.xword	0x0000000000000000
	.xword	0x3fee608cfd9a47ac
	.xword	0x3fb338ca9f24f53d
	.xword	0x3feca4b31f026aa0
	.xword	0x3fc476a9543891ba
	.xword	0x3feb2036576afce6
	.xword	0x3fce840b4ac4e4d2
	.xword	0x3fe9c2d163a1aa2d
	.xword	0x3fd40645f0c6651c
	.xword	0x3fe886e6037841ed
	.xword	0x3fd88e9c2c1b9ff8
	.xword	0x3fe767dcf5534862
	.xword	0x3fdce0a44eb17bcc
	.xword	0x3fd27616c9496e0b
	.xword	0xbfd71969a075c67a
	.xword	0x3fdec70a6ca7badd
	.xword	0xbfe7154748bef6c8
	.xword	0x3ff71547652ab82b
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
	.word	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.hword	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.hword	44
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.xword	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	2
	.xword	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	109
	.word	.Linfo_string3
	.word	.Linfo_string3
	.byte	1
	.byte	1
	.word	71

	.byte	3
	.word	.Linfo_string4
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
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/vec_autotuned_5973499a7e/dispatches"
.Linfo_string3:
	.asciz	"matmul_dispatch_0_matmul_128x128x128_f32"
.Linfo_string4:
	.asciz	"int"
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	79
	.word	42
	.asciz	"matmul_dispatch_0_matmul_128x128x128_f32"
	.word	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	79
	.word	71
	.asciz	"int"
	.word	0
.LpubTypes_end0:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

	.file	"kernel_linked"
	.section	.text.matmul_dispatch_0_pack_f32,"ax",@progbits
	.p2align	2
	.type	matmul_dispatch_0_pack_f32,@function
matmul_dispatch_0_pack_f32:
.Lfunc_begin0:
	.file	1 "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches" "configured_module_matmul_dispatch_0.mlir"
	.loc	1 1 0
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp10:
	.loc	1 14 8 prologue_end
	ldr	w9, [x2]
	.loc	1 10 8
	ldr	x11, [x1, #32]
	mov	x8, xzr
	lsl	x10, x9, #11
	ldp	x13, x11, [x11]
	and	x10, x10, #0x7fffffff000
	.loc	1 14 8
	mov	x12, x10
	bfi	x10, x9, #11, #1
	bfi	x12, x9, #8, #1
	add	x10, x11, x10
	add	x9, x13, x12
.LBB0_1:
	.loc	1 0 8 is_stmt 0
	mov	x11, xzr
	mov	x12, xzr
.LBB0_2:
	.loc	1 14 8 is_stmt 1
	ldr	s0, [x9, x11]
	add	x11, x11, #512
	str	s0, [x10, x12]
	add	x12, x12, #4
	cmp	x12, #32
	b.ne	.LBB0_2
	add	x8, x8, #1
	add	x9, x9, #4
	add	x10, x10, #32
	cmp	x8, #64
	b.ne	.LBB0_1
	.loc	1 16 8
	mov	w0, wzr
	.loc	1 16 8 epilogue_begin is_stmt 0
	ldp	x29, x30, [sp], #16
	ret
.Ltmp11:
.Lfunc_end0:
	.size	matmul_dispatch_0_pack_f32, .Lfunc_end0-matmul_dispatch_0_pack_f32
	.cfi_endproc

	.section	.text.matmul_dispatch_1_pack_f32,"ax",@progbits
	.p2align	2
	.type	matmul_dispatch_1_pack_f32,@function
matmul_dispatch_1_pack_f32:
.Lfunc_begin1:
	.file	2 "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches" "configured_module_matmul_dispatch_1.mlir"
	.loc	2 1 0 is_stmt 1
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp12:
	.loc	2 15 8 prologue_end
	ldr	w8, [x2]
	.loc	2 11 8
	ldr	x11, [x1, #32]
	mov	x10, xzr
	mov	w14, #1
	.loc	2 15 8
	and	x9, x8, #0xf
	lsr	x8, x8, #4
	lsl	x12, x9, #8
	lsl	x9, x9, #12
	.loc	2 12 8
	ldp	x11, x13, [x11]
	.loc	2 15 8
	orr	x12, x12, x8, lsl #13
	add	x9, x9, x8, lsl #6
	add	x8, x12, x13
	add	x9, x11, x9
	add	x8, x8, #16, lsl #12
.LBB1_1:
	add	x13, x8, x10, lsl #12
	add	x10, x9, x10, lsl #5
	mov	x12, xzr
	mov	w11, w14
.LBB1_2:
	ldp	q0, q1, [x10], #512
	add	x14, x13, x12
	add	x12, x12, #32
	cmp	x12, #256
	stp	q0, q1, [x14]
	b.ne	.LBB1_2
	.loc	2 0 8 is_stmt 0
	mov	w14, wzr
	mov	w10, #1
	.loc	2 15 8
	tbnz	w11, #0, .LBB1_1
	.loc	2 17 8 is_stmt 1
	mov	w0, wzr
	.loc	2 17 8 epilogue_begin is_stmt 0
	ldp	x29, x30, [sp], #16
	ret
.Ltmp13:
.Lfunc_end1:
	.size	matmul_dispatch_1_pack_f32, .Lfunc_end1-matmul_dispatch_1_pack_f32
	.cfi_endproc

	.section	.text.matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32,"ax",@progbits
	.p2align	2
	.type	matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32,@function
matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32:
.Lfunc_begin2:
	.file	3 "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches" "configured_module_matmul_dispatch_2.mlir"
	.loc	3 1 0 is_stmt 1
	.cfi_startproc
	stp	x29, x30, [sp, #-96]!
	stp	x28, x27, [sp, #16]
	stp	x26, x25, [sp, #32]
	stp	x24, x23, [sp, #48]
	stp	x22, x21, [sp, #64]
	stp	x20, x19, [sp, #80]
	mov	x29, sp
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
.Ltmp14:
	.loc	3 20 8 prologue_end
	ldr	x17, [x1, #32]
	mov	w10, #16
	mov	w11, #32
	mov	w12, #48
	mov	w13, #64
	mov	w14, #80
	ldp	x16, x17, [x17]
	mov	w15, #96
	mov	w0, #112
	mov	w1, #128
	mov	w2, #144
	mov	w3, #160
	mov	w4, #176
	mov	w5, #192
	mov	w6, #208
	mov	w7, #224
	mov	w19, #240
	mov	x8, xzr
	mov	w9, #65536
	movk	w10, #2, lsl #16
	movk	w11, #2, lsl #16
	movk	w12, #2, lsl #16
	movk	w13, #2, lsl #16
	movk	w14, #2, lsl #16
	movk	w15, #2, lsl #16
	movk	w0, #2, lsl #16
	movk	w1, #2, lsl #16
	movk	w2, #2, lsl #16
	movk	w3, #2, lsl #16
	movk	w4, #2, lsl #16
	movk	w5, #2, lsl #16
	movk	w6, #2, lsl #16
	movk	w7, #2, lsl #16
	movk	w19, #2, lsl #16
	mov	x20, x16
.LBB2_1:
	.loc	3 0 8 is_stmt 0
	lsl	x22, x8, #15
	.loc	3 20 8
	add	x23, x17, x8, lsl #12
	mov	x21, xzr
	add	x24, x16, #16, lsl #12
	add	x22, x16, x22, asr #3
.LBB2_2:
	.loc	3 0 8
	movi	v0.2d, #0000000000000000
	movi	v1.2d, #0000000000000000
	.loc	3 20 8
	add	x25, x23, x21, lsl #8
	movi	v2.2d, #0000000000000000
	movi	v3.2d, #0000000000000000
	add	x28, x16, x21, lsl #12
	movi	v4.2d, #0000000000000000
	movi	v5.2d, #0000000000000000
	mov	x26, xzr
	movi	v6.2d, #0000000000000000
	movi	v7.2d, #0000000000000000
	add	x27, x25, #32, lsl #12
	movi	v16.2d, #0000000000000000
	movi	v17.2d, #0000000000000000
	prfm	pstl3keep, [x27]
	movi	v18.2d, #0000000000000000
	movi	v19.2d, #0000000000000000
	prfm	pldl1keep, [x22]
	movi	v20.2d, #0000000000000000
	movi	v21.2d, #0000000000000000
	prfm	pldl1keep, [x28, x9]
	movi	v22.2d, #0000000000000000
	movi	v23.2d, #0000000000000000
.LBB2_3:
	add	x28, x20, x26
	add	x30, x24, x26
	add	x26, x26, #32
	ldp	q24, q25, [x30]
	cmp	x26, #1, lsl #12
	ldp	q26, q27, [x28]
	fmla	v23.4s, v24.4s, v26.s[0]
	fmla	v22.4s, v25.4s, v26.s[0]
	fmla	v21.4s, v24.4s, v26.s[1]
	fmla	v20.4s, v25.4s, v26.s[1]
	fmla	v19.4s, v24.4s, v26.s[2]
	fmla	v18.4s, v25.4s, v26.s[2]
	fmla	v17.4s, v24.4s, v26.s[3]
	fmla	v16.4s, v25.4s, v26.s[3]
	fmla	v7.4s, v24.4s, v27.s[0]
	fmla	v6.4s, v25.4s, v27.s[0]
	fmla	v5.4s, v24.4s, v27.s[1]
	fmla	v4.4s, v25.4s, v27.s[1]
	fmla	v3.4s, v24.4s, v27.s[2]
	fmla	v2.4s, v25.4s, v27.s[2]
	fmla	v1.4s, v24.4s, v27.s[3]
	fmla	v0.4s, v25.4s, v27.s[3]
	b.ne	.LBB2_3
	add	x21, x21, #1
	add	x24, x24, #1, lsl #12
	str	q23, [x27]
	cmp	x21, #16
	str	q22, [x25, x10]
	str	q21, [x25, x11]
	str	q20, [x25, x12]
	str	q19, [x25, x13]
	str	q18, [x25, x14]
	str	q17, [x25, x15]
	str	q16, [x25, x0]
	str	q7, [x25, x1]
	str	q6, [x25, x2]
	str	q5, [x25, x3]
	str	q4, [x25, x4]
	str	q3, [x25, x5]
	str	q2, [x25, x6]
	str	q1, [x25, x7]
	str	q0, [x25, x19]
	b.ne	.LBB2_2
	add	x8, x8, #1
	add	x20, x20, #1, lsl #12
	cmp	x8, #16
	b.ne	.LBB2_1
	.loc	3 22 8 epilogue_begin is_stmt 1
	ldp	x20, x19, [sp, #80]
	mov	w0, wzr
	ldp	x22, x21, [sp, #64]
	ldp	x24, x23, [sp, #48]
	ldp	x26, x25, [sp, #32]
	ldp	x28, x27, [sp, #16]
	ldp	x29, x30, [sp], #96
	ret
.Ltmp15:
.Lfunc_end2:
	.size	matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32, .Lfunc_end2-matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32
	.cfi_endproc

	.section	.text.matmul_dispatch_3_unpack_f32,"ax",@progbits
	.p2align	2
	.type	matmul_dispatch_3_unpack_f32,@function
matmul_dispatch_3_unpack_f32:
.Lfunc_begin3:
	.file	4 "/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches" "configured_module_matmul_dispatch_3.mlir"
	.loc	4 1 0
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp16:
	.loc	4 15 8 prologue_end
	ldr	w8, [x2]
	.loc	4 11 8
	ldr	x10, [x1, #32]
	mov	x11, xzr
	.loc	4 15 8
	lsl	x9, x8, #12
	.loc	4 11 8
	ldp	x13, x10, [x10]
	.loc	4 15 8
	and	x9, x9, #0xfffffffe000
	mov	x12, x9
	bfi	x9, x8, #8, #1
	bfi	x12, x8, #11, #1
	add	x9, x10, x9
	add	x8, x12, x13
	mov	w13, #1
	add	x8, x8, #32, lsl #12
.LBB3_1:
	lsl	x14, x11, #9
	mov	x12, xzr
	mov	w10, w13
	add	x11, x8, x14
	add	x13, x9, x14
.LBB3_2:
	.loc	4 0 8 is_stmt 0
	mov	x14, xzr
	mov	x15, x13
	mov	x16, x11
.LBB3_3:
	mov	x17, xzr
.LBB3_4:
	.loc	4 15 8 is_stmt 1
	ldr	s0, [x16, x17]
	str	s0, [x15, x17]
	add	x17, x17, #4
	cmp	x17, #32
	b.ne	.LBB3_4
	add	x14, x14, #1
	add	x16, x16, #32
	add	x15, x15, #512
	cmp	x14, #8
	b.ne	.LBB3_3
	cmp	x12, #56
	add	x12, x12, #8
	add	x11, x11, #256
	add	x13, x13, #32
	b.lo	.LBB3_2
	.loc	4 0 8 is_stmt 0
	mov	w13, wzr
	mov	w11, #8
	.loc	4 15 8
	tbnz	w10, #0, .LBB3_1
	.loc	4 17 8 is_stmt 1
	mov	w0, wzr
	.loc	4 17 8 epilogue_begin is_stmt 0
	ldp	x29, x30, [sp], #16
	ret
.Ltmp17:
.Lfunc_end3:
	.size	matmul_dispatch_3_unpack_f32, .Lfunc_end3-matmul_dispatch_3_unpack_f32
	.cfi_endproc

	.section	.text.iree_hal_executable_library_query,"ax",@progbits
	.globl	iree_hal_executable_library_query
	.p2align	2
	.type	iree_hal_executable_library_query,@function
iree_hal_executable_library_query:
.Liree_hal_executable_library_query$local:
	.type	.Liree_hal_executable_library_query$local,@function
.Lfunc_begin4:
	.cfi_startproc
	cmp	w0, #6
	adrp	x8, iree_hal_executable_library_query_v0
	add	x8, x8, :lo12:iree_hal_executable_library_query_v0
	csel	x0, x8, xzr, eq
	ret
.Lfunc_end4:
	.size	iree_hal_executable_library_query, .Lfunc_end4-iree_hal_executable_library_query
	.size	.Liree_hal_executable_library_query$local, .Lfunc_end4-iree_hal_executable_library_query
	.cfi_endproc

	.section	.text.iree_h2f_ieee,"ax",@progbits
	.p2align	2
	.type	iree_h2f_ieee,@function
iree_h2f_ieee:
.Lfunc_begin5:
	.cfi_startproc
	ands	w10, w0, #0x7c00
	and	w9, w0, #0x3ff
	and	w8, w0, #0x80000000
	b.eq	.LBB5_4
	mov	w11, #31744
	cmp	w10, w11
	b.ne	.LBB5_5
	cbz	w9, .LBB5_6
	orr	w8, w8, #0x7fc00000
	fmov	s0, w8
	ret
.LBB5_4:
	ucvtf	s0, w9
	mov	w9, #864026624
	orr	w8, w8, w9
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB5_5:
	add	w9, w10, w9
	add	w8, w8, w9, lsl #13
	mov	w9, #939524096
	add	w8, w8, w9
	fmov	s0, w8
	ret
.LBB5_6:
	orr	w8, w8, #0x7f800000
	fmov	s0, w8
	ret
.Lfunc_end5:
	.size	iree_h2f_ieee, .Lfunc_end5-iree_h2f_ieee
	.cfi_endproc

	.section	.text.iree_f2h_ieee,"ax",@progbits
	.p2align	2
	.type	iree_f2h_ieee,@function
iree_f2h_ieee:
.Lfunc_begin6:
	.cfi_startproc
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB6_6
	mov	w11, #2139095040
	cmp	w9, w11
	and	w11, w10, #0x7fffff
	b.ne	.LBB6_4
	cbz	w11, .LBB6_9
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
	cmp	w9, #113
	b.hs	.LBB6_10
	and	w8, w8, #0x8000
	mov	w8, w8
	sxth	w0, w8
	ret
.LBB6_9:
	mov	w9, #31744
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB6_10:
	tst	w10, #0x2000
	mov	w10, #4095
	mov	w12, #15360
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	add	w10, w12, w10, lsr #13
	cmp	w11, #0
	mov	w11, #-127
	cinc	w11, w11, ne
	csel	w10, w12, w10, ne
	add	w9, w11, w9
	add	w9, w10, w9, lsl #10
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.Lfunc_end6:
	.size	iree_f2h_ieee, .Lfunc_end6-iree_f2h_ieee
	.cfi_endproc

	.section	.text.__gnu_h2f_ieee,"ax",@progbits
	.p2align	2
	.type	__gnu_h2f_ieee,@function
__gnu_h2f_ieee:
.Lfunc_begin7:
	.cfi_startproc
	ands	w10, w0, #0x7c00
	and	w9, w0, #0x3ff
	and	w8, w0, #0x80000000
	b.eq	.LBB7_4
	mov	w11, #31744
	cmp	w10, w11
	b.ne	.LBB7_5
	cbz	w9, .LBB7_6
	orr	w8, w8, #0x7fc00000
	fmov	s0, w8
	ret
.LBB7_4:
	ucvtf	s0, w9
	mov	w9, #864026624
	orr	w8, w8, w9
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB7_5:
	add	w9, w10, w9
	add	w8, w8, w9, lsl #13
	mov	w9, #939524096
	add	w8, w8, w9
	fmov	s0, w8
	ret
.LBB7_6:
	orr	w8, w8, #0x7f800000
	fmov	s0, w8
	ret
.Lfunc_end7:
	.size	__gnu_h2f_ieee, .Lfunc_end7-__gnu_h2f_ieee
	.cfi_endproc

	.section	.text.__extendhfsf2,"ax",@progbits
	.p2align	2
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin8:
	.cfi_startproc
	fmov	w11, s0
	lsl	w10, w11, #16
	ands	w8, w11, #0x7c00
	and	w9, w11, #0x3ff
	and	w10, w10, #0x80000000
	b.eq	.LBB8_2
	and	w11, w11, #0x7fff
	orr	w12, w10, #0x7f800000
	orr	w13, w10, #0x7fc00000
	add	w10, w10, w11, lsl #13
	fmov	s0, w12
	fmov	s1, w13
	cmp	w9, #0
	mov	w9, #939524096
	mov	w11, #31744
	add	w9, w10, w9
	fcsel	s0, s0, s1, eq
	fmov	s1, w9
	cmp	w8, w11
	fcsel	s0, s1, s0, ne
	ret
.LBB8_2:
	mov	w8, #864026624
	ucvtf	s0, w9
	orr	w8, w10, w8
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.Lfunc_end8:
	.size	__extendhfsf2, .Lfunc_end8-__extendhfsf2
	.cfi_endproc

	.section	.text.__gnu_f2h_ieee,"ax",@progbits
	.p2align	2
	.type	__gnu_f2h_ieee,@function
__gnu_f2h_ieee:
.Lfunc_begin9:
	.cfi_startproc
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB9_6
	mov	w11, #2139095040
	cmp	w9, w11
	and	w11, w10, #0x7fffff
	b.ne	.LBB9_4
	cbz	w11, .LBB9_9
	orr	w8, w8, #0x7fff
	sxth	w0, w8
	ret
.LBB9_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB9_7
	mov	w9, #31744
.LBB9_6:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB9_7:
	lsr	w9, w9, #23
	cmp	w9, #113
	b.hs	.LBB9_10
	and	w8, w8, #0x8000
	mov	w8, w8
	sxth	w0, w8
	ret
.LBB9_9:
	mov	w9, #31744
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.LBB9_10:
	tst	w10, #0x2000
	mov	w10, #4095
	mov	w12, #15360
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	add	w10, w12, w10, lsr #13
	cmp	w11, #0
	mov	w11, #-127
	cinc	w11, w11, ne
	csel	w10, w12, w10, ne
	add	w9, w11, w9
	add	w9, w10, w9, lsl #10
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sxth	w0, w8
	ret
.Lfunc_end9:
	.size	__gnu_f2h_ieee, .Lfunc_end9-__gnu_f2h_ieee
	.cfi_endproc

	.section	.text.__truncsfhf2,"ax",@progbits
	.p2align	2
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin10:
	.cfi_startproc
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB10_9
	mov	w11, #2139095040
	cmp	w9, w11
	and	w11, w10, #0x7fffff
	b.ne	.LBB10_4
	cbz	w11, .LBB10_5
	orr	w8, w8, #0x7fff
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.LBB10_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB10_6
.LBB10_5:
	mov	w9, #31744
	b	.LBB10_9
.LBB10_6:
	lsr	w9, w9, #23
	cmp	w9, #113
	b.hs	.LBB10_8
	mov	w9, wzr
	b	.LBB10_9
.LBB10_8:
	tst	w10, #0x2000
	mov	w10, #4095
	mov	w12, #15360
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	add	w10, w12, w10, lsr #13
	cmp	w11, #0
	mov	w11, #-127
	cinc	w11, w11, ne
	csel	w10, w12, w10, ne
	add	w9, w11, w9
	add	w9, w10, w9, lsl #10
.LBB10_9:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end10:
	.size	__truncsfhf2, .Lfunc_end10-__truncsfhf2
	.cfi_endproc

	.section	.text.__extendhfdf2,"ax",@progbits
	.p2align	2
	.type	__extendhfdf2,@function
__extendhfdf2:
.Lfunc_begin11:
	.cfi_startproc
	fmov	w11, s0
	lsl	w10, w11, #16
	ands	w8, w11, #0x7c00
	and	w9, w11, #0x3ff
	and	w10, w10, #0x80000000
	b.eq	.LBB11_2
	and	w11, w11, #0x7fff
	orr	w12, w10, #0x7f800000
	orr	w13, w10, #0x7fc00000
	add	w10, w10, w11, lsl #13
	fmov	s0, w12
	fmov	s1, w13
	cmp	w9, #0
	mov	w9, #939524096
	mov	w11, #31744
	add	w9, w10, w9
	fcsel	s0, s0, s1, eq
	fmov	s1, w9
	cmp	w8, w11
	fcsel	s0, s1, s0, ne
	fcvt	d0, s0
	ret
.LBB11_2:
	mov	w8, #864026624
	ucvtf	s0, w9
	orr	w8, w10, w8
	fmov	s1, w8
	fmul	s0, s0, s1
	fcvt	d0, s0
	ret
.Lfunc_end11:
	.size	__extendhfdf2, .Lfunc_end11-__extendhfdf2
	.cfi_endproc

	.section	.text.__truncdfhf2,"ax",@progbits
	.p2align	2
	.type	__truncdfhf2,@function
__truncdfhf2:
.Lfunc_begin12:
	.cfi_startproc
	fcvt	s0, d0
	fmov	w10, s0
	lsr	w8, w10, #16
	ands	w9, w10, #0x7f800000
	b.eq	.LBB12_9
	mov	w11, #2139095040
	cmp	w9, w11
	and	w11, w10, #0x7fffff
	b.ne	.LBB12_4
	cbz	w11, .LBB12_5
	orr	w8, w8, #0x7fff
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.LBB12_4:
	mov	w12, #1191182336
	cmp	w9, w12
	b.ls	.LBB12_6
.LBB12_5:
	mov	w9, #31744
	b	.LBB12_9
.LBB12_6:
	lsr	w9, w9, #23
	cmp	w9, #113
	b.hs	.LBB12_8
	mov	w9, wzr
	b	.LBB12_9
.LBB12_8:
	tst	w10, #0x2000
	mov	w10, #4095
	mov	w12, #15360
	cinc	w10, w10, ne
	add	w10, w10, w11
	lsr	w11, w10, #23
	add	w10, w12, w10, lsr #13
	cmp	w11, #0
	mov	w11, #-127
	cinc	w11, w11, ne
	csel	w10, w12, w10, ne
	add	w9, w11, w9
	add	w9, w10, w9, lsl #10
.LBB12_9:
	and	w8, w8, #0x8000
	orr	w8, w9, w8
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	strh	w8, [sp, #12]
	ldr	s0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end12:
	.size	__truncdfhf2, .Lfunc_end12-__truncdfhf2
	.cfi_endproc

	.section	.text.fma,"ax",@progbits
	.p2align	2
	.type	fma,@function
fma:
.Lfunc_begin13:
	.cfi_startproc
	fmadd	d0, d0, d1, d2
	ret
.Lfunc_end13:
	.size	fma, .Lfunc_end13-fma
	.cfi_endproc

	.section	.text.__math_invalidf,"ax",@progbits
	.p2align	2
	.type	__math_invalidf,@function
__math_invalidf:
.Lfunc_begin14:
	.cfi_startproc
	fsub	s0, s0, s0
	fdiv	s0, s0, s0
	ret
.Lfunc_end14:
	.size	__math_invalidf, .Lfunc_end14-__math_invalidf
	.cfi_endproc

	.section	.text.__math_oflowf,"ax",@progbits
	.p2align	2
	.type	__math_oflowf,@function
__math_oflowf:
.Lfunc_begin15:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	movi	v0.2s, #240, lsl #24
	movi	v1.2s, #112, lsl #24
	cmp	w0, #0
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end15:
	.size	__math_oflowf, .Lfunc_end15-__math_oflowf
	.cfi_endproc

	.section	.text.__math_xflowf,"ax",@progbits
	.p2align	2
	.type	__math_xflowf,@function
__math_xflowf:
.Lfunc_begin16:
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
.Lfunc_end16:
	.size	__math_xflowf, .Lfunc_end16-__math_xflowf
	.cfi_endproc

	.section	.text.__math_uflowf,"ax",@progbits
	.p2align	2
	.type	__math_uflowf,@function
__math_uflowf:
.Lfunc_begin17:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	movi	v0.2s, #144, lsl #24
	movi	v1.2s, #16, lsl #24
	cmp	w0, #0
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end17:
	.size	__math_uflowf, .Lfunc_end17-__math_uflowf
	.cfi_endproc

	.section	.text.ceilf,"ax",@progbits
	.p2align	2
	.type	ceilf,@function
ceilf:
.Lfunc_begin18:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #149
	b.hi	.LBB18_6
	cmp	w9, #127
	b.lo	.LBB18_4
	sub	w9, w9, #127
	mov	w10, #8388607
	lsr	w10, w10, w9
	tst	w10, w8
	b.eq	.LBB18_6
	mov	w11, #2071986176
	cmp	w8, #0
	fmov	s1, w11
	mov	w11, #-8388608
	csel	w10, wzr, w10, mi
	asr	w9, w11, w9
	add	w8, w10, w8
	fadd	s0, s0, s1
	and	w8, w8, w9
	str	s0, [sp, #8]
	fmov	s0, w8
	add	sp, sp, #16
	ret
.LBB18_4:
	mov	w9, #2071986176
	fmov	s1, w9
	fadd	s1, s0, s1
	str	s1, [sp, #12]
	tbnz	w8, #31, .LBB18_7
	fmov	s1, #1.00000000
	cmp	w8, #0
	fcsel	s0, s0, s1, eq
.LBB18_6:
	add	sp, sp, #16
	ret
.LBB18_7:
	movi	v0.2s, #128, lsl #24
	add	sp, sp, #16
	ret
.Lfunc_end18:
	.size	ceilf, .Lfunc_end18-ceilf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI19_0:
	.xword	0x40471547652b82fe
.LCPI19_1:
	.xword	0x3f2ebfce50fac4f3
.LCPI19_2:
	.xword	0x3ebc6af84b912394
.LCPI19_3:
	.xword	0x3f962e42ff0c52d6
	.section	.text.expf,"ax",@progbits
	.p2align	2
	.type	expf,@function
expf:
.Lfunc_begin19:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w8, s0
	ubfx	w8, w8, #20, #11
	cmp	w8, #1067
	b.hs	.LBB19_3
.LBB19_1:
	fcvt	d0, s0
	adrp	x8, .LCPI19_0
	adrp	x9, .LCPI19_2
	ldr	d1, [x8, :lo12:.LCPI19_0]
	mov	x8, #4843621399236968448
	adrp	x10, .LCPI19_3
	ldr	d4, [x9, :lo12:.LCPI19_2]
	ldr	d5, [x10, :lo12:.LCPI19_3]
	adrp	x10, __exp2f_data
	add	x10, x10, :lo12:__exp2f_data
	fmul	d0, d0, d1
	fmov	d1, x8
	mov	x8, #-4379750637617807360
	fmov	d2, x8
	adrp	x8, .LCPI19_1
	ldr	d3, [x8, :lo12:.LCPI19_1]
	fadd	d1, d0, d1
	fadd	d2, d1, d2
	fmov	x8, d1
	and	x9, x8, #0x1f
	fsub	d0, d0, d2
	fmov	d2, #1.00000000
	ldr	x9, [x10, x9, lsl #3]
	add	x8, x9, x8, lsl #47
	fmadd	d3, d0, d4, d3
	fmul	d4, d0, d0
	fmov	d1, x8
	fmadd	d0, d0, d5, d2
	fmadd	d0, d3, d4, d0
	fmul	d0, d0, d1
	fcvt	s1, d0
.LBB19_2:
	fmov	s0, s1
	add	sp, sp, #16
	ret
.LBB19_3:
	mov	w9, #-8388608
	movi	d1, #0000000000000000
	fmov	s2, w9
	fcmp	s0, s2
	b.eq	.LBB19_2
	cmp	w8, #2040
	b.hs	.LBB19_7
	mov	w8, #29207
	movk	w8, #17073, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.le	.LBB19_8
	mov	w8, #1879048192
	movi	v0.2s, #112, lsl #24
	str	w8, [sp, #8]
	ldr	s1, [sp, #8]
	fmul	s1, s1, s0
	fmov	s0, s1
	add	sp, sp, #16
	ret
.LBB19_7:
	fadd	s1, s0, s0
	fmov	s0, s1
	add	sp, sp, #16
	ret
.LBB19_8:
	mov	w8, #61876
	movk	w8, #49871, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.pl	.LBB19_1
	mov	w8, #268435456
	movi	v0.2s, #16, lsl #24
	str	w8, [sp, #12]
	ldr	s1, [sp, #12]
	fmul	s1, s1, s0
	fmov	s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end19:
	.size	expf, .Lfunc_end19-expf
	.cfi_endproc

	.section	.text.feclearexcept,"ax",@progbits
	.p2align	2
	.type	feclearexcept,@function
feclearexcept:
.Lfunc_begin20:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end20:
	.size	feclearexcept, .Lfunc_end20-feclearexcept
	.cfi_endproc

	.section	.text.feraiseexcept,"ax",@progbits
	.p2align	2
	.type	feraiseexcept,@function
feraiseexcept:
.Lfunc_begin21:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end21:
	.size	feraiseexcept, .Lfunc_end21-feraiseexcept
	.cfi_endproc

	.section	.text.fetestexcept,"ax",@progbits
	.p2align	2
	.type	fetestexcept,@function
fetestexcept:
.Lfunc_begin22:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end22:
	.size	fetestexcept, .Lfunc_end22-fetestexcept
	.cfi_endproc

	.section	.text.fegetround,"ax",@progbits
	.p2align	2
	.type	fegetround,@function
fegetround:
.Lfunc_begin23:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end23:
	.size	fegetround, .Lfunc_end23-fegetround
	.cfi_endproc

	.section	.text.__fesetround,"ax",@progbits
	.p2align	2
	.type	__fesetround,@function
__fesetround:
.Lfunc_begin24:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end24:
	.size	__fesetround, .Lfunc_end24-__fesetround
	.cfi_endproc

	.section	.text.fegetenv,"ax",@progbits
	.p2align	2
	.type	fegetenv,@function
fegetenv:
.Lfunc_begin25:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end25:
	.size	fegetenv, .Lfunc_end25-fegetenv
	.cfi_endproc

	.section	.text.fesetenv,"ax",@progbits
	.p2align	2
	.type	fesetenv,@function
fesetenv:
.Lfunc_begin26:
	.cfi_startproc
	mov	w0, wzr
	ret
.Lfunc_end26:
	.size	fesetenv, .Lfunc_end26-fesetenv
	.cfi_endproc

	.section	.text.floorf,"ax",@progbits
	.p2align	2
	.type	floorf,@function
floorf:
.Lfunc_begin27:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #149
	b.ls	.LBB27_3
	fmov	s1, s0
.LBB27_2:
	fmov	s0, s1
	add	sp, sp, #16
	ret
.LBB27_3:
	cmp	w9, #127
	b.lo	.LBB27_6
	sub	w9, w9, #127
	mov	w10, #8388607
	lsr	w10, w10, w9
	tst	w10, w8
	b.eq	.LBB27_9
	mov	w11, #2071986176
	and	w10, w10, w8, asr #31
	fmov	s1, w11
	mov	w11, #-8388608
	asr	w9, w11, w9
	add	w8, w10, w8
	fadd	s0, s0, s1
	and	w8, w8, w9
	fmov	s1, w8
	str	s0, [sp, #8]
	fmov	s0, s1
	add	sp, sp, #16
	ret
.LBB27_6:
	mov	w9, #2071986176
	fmov	s1, w9
	fadd	s2, s0, s1
	movi	d1, #0000000000000000
	str	s2, [sp, #12]
	tbz	w8, #31, .LBB27_2
	fmov	s1, s0
	fcmp	s0, #0.0
	b.eq	.LBB27_2
	fmov	s1, #-1.00000000
	fmov	s0, s1
	add	sp, sp, #16
	ret
.LBB27_9:
	fmov	s1, s0
	fmov	s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end27:
	.size	floorf, .Lfunc_end27-floorf
	.cfi_endproc

	.section	.text.fmaf,"ax",@progbits
	.p2align	2
	.type	fmaf,@function
fmaf:
.Lfunc_begin28:
	.cfi_startproc
	fcvt	d0, s0
	fcvt	d1, s1
	mov	x9, #-9223372036854775808
	fcvt	d2, s2
	fmul	d1, d0, d1
	fadd	d0, d1, d2
	fmov	x8, d0
	and	x10, x8, #0x7ff0000000000000
	cmp	x9, x8, lsl #35
	mov	x9, #9218868437227405312
	ccmp	x10, x9, #4, eq
	b.eq	.LBB28_3
	fsub	d3, d0, d1
	fsub	d4, d0, d2
	fcmp	d3, d2
	fccmp	d4, d1, #0, eq
	b.eq	.LBB28_3
	fsub	d3, d1, d0
	fsub	d0, d2, d0
	cmp	x8, #0
	cset	w9, mi
	fcmp	d1, d2
	fadd	d2, d3, d2
	fadd	d0, d1, d0
	cset	w10, pl
	eor	w10, w10, w9
	cmp	w10, #0
	fcsel	d0, d2, d0, ne
	fcmp	d0, #0.0
	cset	w10, pl
	eor	w9, w9, w10
	sub	x10, x8, #1
	cmp	w9, #0
	csinc	x8, x10, x8, eq
	fmov	d0, x8
.LBB28_3:
	fcvt	s0, d0
	ret
.Lfunc_end28:
	.size	fmaf, .Lfunc_end28-fmaf
	.cfi_endproc

	.section	.text.fmodf,"ax",@progbits
	.p2align	2
	.type	fmodf,@function
fmodf:
.Lfunc_begin29:
	.cfi_startproc
	fmov	w12, s1
	lsl	w10, w12, #1
	cbz	w10, .LBB29_8
	fmov	w8, s1
	mov	w9, #2139095040
	and	w8, w8, #0x7fffffff
	cmp	w8, w9
	b.hi	.LBB29_8
	fmov	w9, s0
	ubfx	w8, w9, #23, #8
	cmp	w8, #255
	b.eq	.LBB29_8
	lsl	w11, w9, #1
	cmp	w11, w10
	b.ls	.LBB29_9
	ubfx	w11, w12, #23, #8
	cbz	w8, .LBB29_10
	mov	w10, #8388608
	bfxil	w10, w9, #0, #23
	cbz	w11, .LBB29_13
.LBB29_6:
	mov	w13, #8388608
	bfxil	w13, w12, #0, #23
	cmp	w8, w11
	b.gt	.LBB29_17
.LBB29_7:
	subs	w11, w10, w13
	b.pl	.LBB29_20
	b	.LBB29_21
.LBB29_8:
	fmul	s0, s0, s1
	fdiv	s0, s0, s0
	ret
.LBB29_9:
	movi	d1, #0000000000000000
	fmul	s1, s0, s1
	fcsel	s0, s1, s0, eq
	ret
.LBB29_10:
	lsl	w10, w9, #9
	mov	w8, wzr
	tbnz	w10, #31, .LBB29_12
.LBB29_11:
	lsl	w10, w10, #1
	sub	w8, w8, #1
	tbz	w10, #31, .LBB29_11
.LBB29_12:
	mov	w10, #1
	sub	w10, w10, w8
	lsl	w10, w9, w10
	cbnz	w11, .LBB29_6
.LBB29_13:
	lsl	w13, w12, #9
	mov	w11, wzr
	tbnz	w13, #31, .LBB29_15
.LBB29_14:
	lsl	w13, w13, #1
	sub	w11, w11, #1
	tbz	w13, #31, .LBB29_14
.LBB29_15:
	mov	w13, #1
	sub	w13, w13, w11
	lsl	w13, w12, w13
	cmp	w8, w11
	b.gt	.LBB29_17
	b	.LBB29_7
.LBB29_16:
	sub	w8, w8, #1
	lsl	w10, w10, #1
	cmp	w8, w11
	b.le	.LBB29_19
.LBB29_17:
	subs	w12, w10, w13
	b.mi	.LBB29_16
	mov	w10, w12
	cbnz	w12, .LBB29_16
	b	.LBB29_24
.LBB29_19:
	mov	w8, w11
	subs	w11, w10, w13
	b.mi	.LBB29_21
.LBB29_20:
	mov	w10, w11
	cbz	w11, .LBB29_24
.LBB29_21:
	lsr	w11, w10, #23
	and	w9, w9, #0x80000000
	cbnz	w11, .LBB29_23
.LBB29_22:
	cmp	w10, #1024, lsl #12
	lsl	w10, w10, #1
	sub	w8, w8, #1
	b.lo	.LBB29_22
.LBB29_23:
	mov	w11, #1
	sub	w12, w10, #2048, lsl #12
	cmp	w8, #1
	sub	w11, w11, w8
	lsr	w10, w10, w11
	orr	w11, w12, w8, lsl #23
	csel	w8, w10, w11, lt
	orr	w8, w8, w9
	fmov	s0, w8
	ret
.LBB29_24:
	movi	d1, #0000000000000000
	fmul	s0, s0, s1
	ret
.Lfunc_end29:
	.size	fmodf, .Lfunc_end29-fmodf
	.cfi_endproc

	.section	.text.frexpf,"ax",@progbits
	.p2align	2
	.type	frexpf,@function
frexpf:
.Lfunc_begin30:
	.cfi_startproc
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #255
	b.eq	.LBB30_5
	cbnz	w9, .LBB30_4
	fcmp	s0, #0.0
	b.eq	.LBB30_6
	stp	x30, x19, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w19, -8
	.cfi_offset w30, -16
	mov	w8, #1602224128
	mov	x19, x0
	fmov	s1, w8
	fmul	s0, s0, s1
	bl	frexpf
	ldr	w8, [x19]
	mov	x0, x19
	sub	w8, w8, #64
	ldp	x30, x19, [sp], #16
	str	w8, [x0]
	ret
.LBB30_4:
	and	w8, w8, #0x807fffff
	sub	w9, w9, #126
	orr	w8, w8, #0x3f000000
	str	w9, [x0]
	fmov	s0, w8
.LBB30_5:
	ret
.LBB30_6:
	str	wzr, [x0]
	ret
.Lfunc_end30:
	.size	frexpf, .Lfunc_end30-frexpf
	.cfi_endproc

	.section	.text.ldexpf,"ax",@progbits
	.p2align	2
	.type	ldexpf,@function
ldexpf:
.Lfunc_begin31:
	.cfi_startproc
	cmp	w0, #128
	b.lt	.LBB31_4
	movi	v1.2s, #127, lsl #24
	cmp	w0, #255
	fmul	s0, s0, s1
	b.lo	.LBB31_7
	cmp	w0, #381
	mov	w8, #381
	fmul	s0, s0, s1
	csel	w8, w0, w8, lo
	sub	w0, w8, #254
.LBB31_3:
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB31_4:
	cmn	w0, #127
	b.gt	.LBB31_3
	mov	w8, #209715200
	cmn	w0, #229
	fmov	s1, w8
	fmul	s0, s0, s1
	b.hi	.LBB31_8
	fmov	s1, w8
	cmn	w0, #330
	mov	w8, #-330
	csel	w8, w0, w8, hi
	add	w0, w8, #204
	fmul	s0, s0, s1
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB31_7:
	sub	w0, w0, #127
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB31_8:
	add	w0, w0, #102
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.Lfunc_end31:
	.size	ldexpf, .Lfunc_end31-ldexpf
	.cfi_endproc

	.section	.text.scalbnf,"ax",@progbits
	.p2align	2
	.type	scalbnf,@function
scalbnf:
.Lfunc_begin32:
	.cfi_startproc
	cmp	w0, #128
	b.lt	.LBB32_4
	movi	v1.2s, #127, lsl #24
	cmp	w0, #255
	fmul	s0, s0, s1
	b.lo	.LBB32_7
	cmp	w0, #381
	mov	w8, #381
	fmul	s0, s0, s1
	csel	w8, w0, w8, lo
	sub	w0, w8, #254
.LBB32_3:
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB32_4:
	cmn	w0, #127
	b.gt	.LBB32_3
	mov	w8, #209715200
	cmn	w0, #229
	fmov	s1, w8
	fmul	s0, s0, s1
	b.hi	.LBB32_8
	fmov	s1, w8
	cmn	w0, #330
	mov	w8, #-330
	csel	w8, w0, w8, hi
	add	w0, w8, #204
	fmul	s0, s0, s1
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB32_7:
	sub	w0, w0, #127
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.LBB32_8:
	add	w0, w0, #102
	mov	w8, #1065353216
	add	w8, w8, w0, lsl #23
	fmov	s1, w8
	fmul	s0, s0, s1
	ret
.Lfunc_end32:
	.size	scalbnf, .Lfunc_end32-scalbnf
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI33_0:
	.xword	0xbfd71969a075c67a
.LCPI33_1:
	.xword	0x3fd27616c9496e0b
.LCPI33_2:
	.xword	0xbfe7154748bef6c8
.LCPI33_3:
	.xword	0x3fdec70a6ca7badd
.LCPI33_4:
	.xword	0x3ff71547652ab82b
.LCPI33_5:
	.xword	0x405fffffffd1d571
.LCPI33_6:
	.xword	0x3fcebfce50fac4f3
.LCPI33_7:
	.xword	0x3fac6af84b912394
.LCPI33_8:
	.xword	0x3fe62e42ff0c52d6
	.section	.text.powf,"ax",@progbits
	.p2align	2
	.type	powf,@function
powf:
.Lfunc_begin33:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	fmov	w9, s0
	fmov	w8, s1
	mov	w10, #-2139095040
	add	w12, w10, #2048, lsl #12
	add	w11, w9, w10
	lsl	w10, w8, #1
	cmp	w11, w12
	b.lo	.LBB33_6
	mov	w11, #16777216
	add	w12, w10, w11
	cmp	w12, w11
	b.ls	.LBB33_6
	mov	w8, wzr
.LBB33_3:
	mov	w10, #-1060306944
	adrp	x11, __powf_log2_data
	add	x11, x11, :lo12:__powf_log2_data
	add	w10, w9, w10
	fmov	d2, #-1.00000000
	fcvt	d1, s1
	and	w12, w10, #0xff800000
	sub	w9, w9, w12
	ubfx	w12, w10, #19, #4
	asr	w10, w10, #23
	fmov	s0, w9
	add	x9, x11, w12, uxtw #4
	scvtf	d3, w10
	adrp	x10, .LCPI33_3
	adrp	x11, .LCPI33_4
	fcvt	d0, s0
	ldp	d4, d5, [x9]
	adrp	x9, .LCPI33_2
	fmadd	d0, d0, d4, d2
	fadd	d2, d5, d3
	ldr	d3, [x9, :lo12:.LCPI33_2]
	ldr	d4, [x10, :lo12:.LCPI33_3]
	ldr	d5, [x11, :lo12:.LCPI33_4]
	adrp	x9, .LCPI33_0
	adrp	x10, .LCPI33_1
	fmul	d6, d0, d0
	fmadd	d3, d0, d4, d3
	ldr	d4, [x9, :lo12:.LCPI33_0]
	fmadd	d2, d0, d5, d2
	ldr	d5, [x10, :lo12:.LCPI33_1]
	mov	x10, #1
	movk	x10, #16479, lsl #48
	fmadd	d0, d0, d5, d4
	fmul	d4, d6, d6
	fmadd	d2, d3, d6, d2
	fmadd	d0, d0, d4, d2
	fmul	d0, d0, d1
	fmov	x9, d0
	and	x9, x9, #0x7fff800000000000
	cmp	x9, x10
	b.hs	.LBB33_11
.LBB33_4:
	mov	x9, #4821103401100115968
	adrp	x10, .LCPI33_7
	adrp	x11, .LCPI33_8
	fmov	d1, x9
	mov	x9, #-4402268635754659840
	ldr	d4, [x10, :lo12:.LCPI33_7]
	fmov	d2, x9
	adrp	x9, .LCPI33_6
	ldr	d5, [x11, :lo12:.LCPI33_8]
	ldr	d3, [x9, :lo12:.LCPI33_6]
	adrp	x11, __exp2f_data
	add	x11, x11, :lo12:__exp2f_data
	fadd	d1, d0, d1
	fadd	d2, d1, d2
	fmov	x9, d1
	and	x10, x9, #0x1f
	add	w8, w9, w8
	fsub	d0, d0, d2
	fmov	d2, #1.00000000
	ldr	x10, [x11, x10, lsl #3]
	add	x8, x10, x8, lsl #47
	fmadd	d3, d0, d4, d3
	fmul	d4, d0, d0
	fmov	d1, x8
	fmadd	d0, d0, d5, d2
	fmadd	d0, d3, d4, d0
	fmul	d0, d0, d1
	fcvt	s0, d0
.LBB33_5:
	add	sp, sp, #16
	ret
.LBB33_6:
	sub	w12, w10, #1
	mov	w11, #-16777217
	cmp	w12, w11
	b.hs	.LBB33_22
	lsl	w10, w9, #1
	sub	w10, w10, #1
	cmp	w10, w11
	b.hs	.LBB33_28
	tbnz	w9, #31, .LBB33_13
	mov	w8, wzr
	lsr	w10, w9, #23
	cbnz	w10, .LBB33_3
.LBB33_10:
	movi	v2.2s, #75, lsl #24
	mov	w10, #-192937984
	fmul	s0, s0, s2
	fmov	w9, s0
	and	w9, w9, #0x7fffffff
	add	w9, w9, w10
	b	.LBB33_3
.LBB33_11:
	adrp	x9, .LCPI33_5
	ldr	d1, [x9, :lo12:.LCPI33_5]
	fcmp	d0, d1
	b.le	.LBB33_16
	movi	v0.2s, #240, lsl #24
	movi	v1.2s, #112, lsl #24
	cmp	w8, #0
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #8]
	ldr	s0, [sp, #8]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.LBB33_13:
	ubfx	w9, w8, #23, #8
	cmp	w9, #127
	b.lo	.LBB33_19
	cmp	w9, #150
	b.ls	.LBB33_18
.LBB33_15:
	mov	w8, wzr
	fmov	w9, s0
	and	w9, w9, #0x7fffffff
	lsr	w10, w9, #23
	cbnz	w10, .LBB33_3
	b	.LBB33_10
.LBB33_16:
	mov	x9, #211106232532992
	movk	x9, #49250, lsl #48
	fmov	d1, x9
	fcmp	d0, d1
	b.hi	.LBB33_4
	movi	v0.2s, #144, lsl #24
	movi	v1.2s, #16, lsl #24
	cmp	w8, #0
	fcsel	s0, s1, s0, eq
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.LBB33_18:
	mov	w10, #150
	sub	w9, w10, w9
	mov	w10, #1
	lsl	w9, w10, w9
	sub	w10, w9, #1
	tst	w10, w8
	b.eq	.LBB33_20
.LBB33_19:
	fsub	s0, s0, s0
	fdiv	s0, s0, s0
	add	sp, sp, #16
	ret
.LBB33_20:
	tst	w9, w8
	b.eq	.LBB33_15
	mov	w8, #65536
	fmov	w9, s0
	and	w9, w9, #0x7fffffff
	lsr	w10, w9, #23
	cbnz	w10, .LBB33_3
	b	.LBB33_10
.LBB33_22:
	mov	w11, #1065353216
	cmp	w9, w11
	b.eq	.LBB33_33
	cbz	w10, .LBB33_33
	lsl	w9, w9, #1
	mov	w11, #-16777216
	cmp	w9, w11
	b.hi	.LBB33_34
	mov	w11, #-16777215
	cmp	w10, w11
	b.hs	.LBB33_34
	fmov	s0, #1.00000000
	mov	w10, #2130706432
	cmp	w9, w10
	b.eq	.LBB33_5
	lsr	w9, w9, #24
	fmul	s0, s1, s1
	movi	d1, #0000000000000000
	cmp	w9, #127
	cset	w9, lo
	cmp	w8, #0
	cset	w8, mi
	eor	w8, w9, w8
	cmp	w8, #0
	fcsel	s0, s1, s0, ne
	add	sp, sp, #16
	ret
.LBB33_28:
	fmul	s0, s0, s0
	tbz	w9, #31, .LBB33_31
	ubfx	w9, w8, #23, #8
	sub	w10, w9, #151
	cmn	w10, #24
	b.lo	.LBB33_31
	mov	w10, #150
	fneg	s1, s0
	sub	w9, w10, w9
	mov	w10, #1
	lsl	w9, w10, w9
	sub	w10, w9, #1
	and	w9, w9, w8
	tst	w10, w8
	ccmp	w9, #0, #4, eq
	fcsel	s0, s0, s1, eq
.LBB33_31:
	tbz	w8, #31, .LBB33_5
	fmov	s1, #1.00000000
	fdiv	s0, s1, s0
	str	s0, [sp, #4]
	ldr	s0, [sp, #4]
	add	sp, sp, #16
	ret
.LBB33_33:
	fmov	s0, #1.00000000
	add	sp, sp, #16
	ret
.LBB33_34:
	fadd	s0, s0, s1
	add	sp, sp, #16
	ret
.Lfunc_end33:
	.size	powf, .Lfunc_end33-powf
	.cfi_endproc

	.section	.text.rintf,"ax",@progbits
	.p2align	2
	.type	rintf,@function
rintf:
.Lfunc_begin34:
	.cfi_startproc
	fmov	w8, s0
	mov	w9, #1249902592
	and	w10, w8, #0x7f000000
	cmp	w10, w9
	b.hi	.LBB34_3
	movi	v1.2s, #203, lsl #24
	movi	v2.2s, #75, lsl #24
	cmn	w8, #1
	fadd	s3, s0, s1
	fadd	s0, s0, s2
	fadd	s2, s3, s2
	fadd	s0, s0, s1
	fcsel	s0, s0, s2, gt
	fcmp	s0, #0.0
	b.ne	.LBB34_3
	movi	v0.2s, #128, lsl #24
	movi	d1, #0000000000000000
	cmn	w8, #1
	fcsel	s0, s1, s0, gt
.LBB34_3:
	ret
.Lfunc_end34:
	.size	rintf, .Lfunc_end34-rintf
	.cfi_endproc

	.section	.text.roundf,"ax",@progbits
	.p2align	2
	.type	roundf,@function
roundf:
.Lfunc_begin35:
	.cfi_startproc
	fmov	w8, s0
	ubfx	w9, w8, #23, #8
	cmp	w9, #149
	b.hi	.LBB35_9
	fabs	s1, s0
	movi	v2.2s, #75, lsl #24
	cmp	w9, #125
	fadd	s2, s1, s2
	b.hi	.LBB35_3
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	movi	d1, #0000000000000000
	str	s2, [sp, #12]
	fmul	s0, s0, s1
	add	sp, sp, #16
	ret
.LBB35_3:
	movi	v0.2s, #203, lsl #24
	fadd	s0, s2, s0
	fsub	s2, s0, s1
	fmov	s0, #0.50000000
	fcmp	s2, s0
	b.le	.LBB35_5
	fadd	s0, s1, s2
	fmov	s1, #-1.00000000
	b	.LBB35_7
.LBB35_5:
	fmov	s3, #-0.50000000
	fadd	s0, s1, s2
	fcmp	s2, s3
	b.hi	.LBB35_8
	fmov	s1, #1.00000000
.LBB35_7:
	fadd	s0, s0, s1
.LBB35_8:
	fneg	s1, s0
	cmp	w8, #0
	fcsel	s0, s1, s0, mi
.LBB35_9:
	ret
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
	.word	6
	.zero	4
	.xword	__unnamed_1
	.word	0
	.word	0
	.size	iree_hal_executable_library_query_v0_header, 24

	.type	iree_hal_executable_library_query_v0_funcs,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_funcs,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_funcs:
	.xword	matmul_dispatch_0_pack_f32
	.xword	matmul_dispatch_1_pack_f32
	.xword	matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32
	.xword	matmul_dispatch_3_unpack_f32
	.size	iree_hal_executable_library_query_v0_funcs, 32

	.type	iree_hal_executable_library_query_v0_attrs,@object
	.section	.rodata.iree_hal_executable_library_query_v0_attrs,"a",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_attrs:
	.xword	0
	.hword	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.hword	1
	.hword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.hword	1
	.hword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.hword	1
	.hword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0
	.byte	0
	.byte	2
	.word	1
	.word	1
	.hword	1
	.hword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
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
	.asciz	"matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32"
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
	.xword	__unnamed_2
	.xword	__unnamed_3
	.xword	__unnamed_4
	.xword	__unnamed_5
	.size	iree_hal_executable_library_query_v0_names, 32

	.type	__unnamed_6,@object
	.section	.rodata.__unnamed_6,"a",@progbits
__unnamed_6:
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_0.mlir"
	.size	__unnamed_6, 139

	.type	__unnamed_7,@object
	.section	.rodata.__unnamed_7,"a",@progbits
__unnamed_7:
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_1.mlir"
	.size	__unnamed_7, 139

	.type	__unnamed_8,@object
	.section	.rodata.__unnamed_8,"a",@progbits
__unnamed_8:
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_2.mlir"
	.size	__unnamed_8, 139

	.type	__unnamed_9,@object
	.section	.rodata.__unnamed_9,"a",@progbits
__unnamed_9:
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches/configured_module_matmul_dispatch_3.mlir"
	.size	__unnamed_9, 139

	.type	iree_hal_executable_library_query_v0_source_locations,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0_source_locations,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0_source_locations:
	.word	3
	.word	138
	.xword	__unnamed_6
	.word	3
	.word	138
	.xword	__unnamed_7
	.word	3
	.word	138
	.xword	__unnamed_8
	.word	3
	.word	138
	.xword	__unnamed_9
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

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names, 0

	.type	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations,@object
	.section	.rodata.iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations,"a",@progbits
	.p2align	3, 0x0
iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations:
	.size	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations, 0

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
	.word	0
	.zero	4
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_names
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_0_pack_f32_stage_source_locations
	.word	0
	.zero	4
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_names
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_1_pack_f32_stage_source_locations
	.word	0
	.zero	4
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_names
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32_stage_source_locations
	.word	0
	.zero	4
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_names
	.xword	iree_hal_executable_library_query_v0_matmul_dispatch_3_unpack_f32_stage_source_locations
	.size	iree_hal_executable_library_query_v0_stage_location_tables, 96

	.type	iree_hal_executable_library_query_v0,@object
	.section	.data.rel.ro.iree_hal_executable_library_query_v0,"aw",@progbits
	.p2align	4, 0x0
iree_hal_executable_library_query_v0:
	.xword	iree_hal_executable_library_query_v0_header
	.zero	16
	.word	4
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
	.word	.Linfo_string6
	.word	.Linfo_string6
	.byte	1
	.byte	1
	.word	71

	.byte	3
	.word	.Linfo_string7
	.byte	5
	.byte	4
	.byte	0
.Ldebug_info_end0:
.Lcu_begin1:
	.word	.Ldebug_info_end1-.Ldebug_info_start1
.Ldebug_info_start1:
	.hword	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.hword	44
	.word	.Linfo_string3
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	4
	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	109
	.word	.Linfo_string8
	.word	.Linfo_string8
	.byte	2
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end1:
.Lcu_begin2:
	.word	.Ldebug_info_end2-.Ldebug_info_start2
.Ldebug_info_start2:
	.hword	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.hword	44
	.word	.Linfo_string4
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.xword	.Lfunc_begin2
	.word	.Lfunc_end2-.Lfunc_begin2
	.byte	4
	.xword	.Lfunc_begin2
	.word	.Lfunc_end2-.Lfunc_begin2
	.byte	1
	.byte	109
	.word	.Linfo_string9
	.word	.Linfo_string9
	.byte	3
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end2:
.Lcu_begin3:
	.word	.Ldebug_info_end3-.Ldebug_info_start3
.Ldebug_info_start3:
	.hword	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.hword	44
	.word	.Linfo_string5
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.xword	.Lfunc_begin3
	.word	.Lfunc_end3-.Lfunc_begin3
	.byte	4
	.xword	.Lfunc_begin3
	.word	.Lfunc_end3-.Lfunc_begin3
	.byte	1
	.byte	109
	.word	.Linfo_string10
	.word	.Linfo_string10
	.byte	4
	.byte	1
	.word	.debug_info+71

	.byte	0
.Ldebug_info_end3:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"IREE"
.Linfo_string1:
	.asciz	"configured_module_matmul_dispatch_0.mlir"
.Linfo_string2:
	.asciz	"/Users/rudrabrahmbhatt/Downloads/MLIRBench/build/128x128x128/v1_generic_isa_a83b1c1da1/dispatches"
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
	.asciz	"matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32"
.Linfo_string10:
	.asciz	"matmul_dispatch_3_unpack_f32"
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	79
	.word	42
	.asciz	"matmul_dispatch_0_pack_f32"
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
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end1-.LpubNames_start1
.LpubNames_start1:
	.hword	2
	.word	.Lcu_begin1
	.word	72
	.word	42
	.asciz	"matmul_dispatch_1_pack_f32"
	.word	0
.LpubNames_end1:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end1-.LpubTypes_start1
.LpubTypes_start1:
	.hword	2
	.word	.Lcu_begin1
	.word	72
	.word	0
.LpubTypes_end1:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end2-.LpubNames_start2
.LpubNames_start2:
	.hword	2
	.word	.Lcu_begin2
	.word	72
	.word	42
	.asciz	"matmul_dispatch_2_mmt4d_16x16x128x8x8x1_f32"
	.word	0
.LpubNames_end2:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end2-.LpubTypes_start2
.LpubTypes_start2:
	.hword	2
	.word	.Lcu_begin2
	.word	72
	.word	0
.LpubTypes_end2:
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end3-.LpubNames_start3
.LpubNames_start3:
	.hword	2
	.word	.Lcu_begin3
	.word	72
	.word	42
	.asciz	"matmul_dispatch_3_unpack_f32"
	.word	0
.LpubNames_end3:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end3-.LpubTypes_start3
.LpubTypes_start3:
	.hword	2
	.word	.Lcu_begin3
	.word	72
	.word	0
.LpubTypes_end3:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:

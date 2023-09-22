	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	wzr, [x29, #-16]
	mov	w8, #300
	stur	w8, [x29, #-20]
	mov	w8, #20
	str	w8, [sp, #24]
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	subs	w9, w8, #32
	mov	w8, #5
	mul	w8, w8, w9
	mov	w9, #9
	sdiv	w8, w8, w9
	stur	w8, [x29, #-12]
	ldur	w8, [x29, #-8]
                                        ; implicit-def: $x10
	mov	x10, x8
	ldur	w9, [x29, #-12]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x10, [x9]
	str	x8, [x9, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldr	w9, [sp, #24]
	ldur	w8, [x29, #-8]
	add	w8, w8, w9
	stur	w8, [x29, #-8]
	b	LBB0_1
LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d\t%d\n"

.subsections_via_symbols

	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet.part.0, %function
fireBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #1
	mov	r1, #0
	ldr	r3, .L4
	str	lr, [sp, #-4]!
	ldr	r2, [r3, #12]
	ldr	lr, [r3, #24]
	ldr	ip, [r3, #4]
	ldr	r3, .L4+4
	add	r2, r2, lr
	str	r2, [r3, #4]
	str	ip, [r3]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	bullets
	.size	fireBullet.part.0, .-fireBullet.part.0
	.align	2
	.global	initItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	initItems, %function
initItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #256
	mov	r0, #4
	mov	r1, #215
	ldr	r3, .L8
	str	lr, [sp, #-4]!
	ldr	ip, .L8+4
	ldr	lr, .L8+8
	strh	r2, [r3, #52]	@ movhi
	add	r2, r2, #41
	strh	lr, [r3, #48]	@ movhi
	strh	ip, [r3, #50]	@ movhi
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	shadowOAM
	.word	16564
	.word	16388
	.size	initItems, .-initItems
	.align	2
	.global	initClothes
	.syntax unified
	.arm
	.fpu softvfp
	.type	initClothes, %function
initClothes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r0, #81
	mov	r5, r2
	mov	lr, #240
	mov	ip, #8
	ldr	r3, .L14
	ldr	r1, .L14+4
.L11:
	str	r2, [r3]
	add	r4, r2, #5
	add	r2, r2, #1
	cmp	r2, #4
	str	r0, [r3, #8]
	str	r0, [r3, #4]
	strh	r0, [r1]	@ movhi
	str	lr, [r3, #12]
	str	r5, [r3, #24]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	strh	lr, [r1, #2]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	add	r3, r3, #32
	add	r0, r0, #8
	add	r1, r1, #8
	bne	.L11
	pop	{r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	clothes
	.word	shadowOAM+560
	.size	initClothes, .-initClothes
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #224
	mov	r0, #4
	mov	r1, #8
	ldr	r3, .L18
	str	lr, [sp, #-4]!
	ldr	ip, .L18+4
	ldr	lr, .L18+8
	strh	r2, [r3, #36]	@ movhi
	add	r2, r2, #66
	strh	lr, [r3, #32]	@ movhi
	strh	ip, [r3, #34]	@ movhi
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	shadowOAM
	.word	16386
	.word	16388
	.size	initLives, .-initLives
	.align	2
	.global	initTwig
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTwig, %function
initTwig:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #16
	mov	r7, #240
	mov	r6, r1
	mov	r5, #2
	ldr	r2, .L24
	ldr	r0, .L24+4
	ldr	r4, .L24+8
	ldr	lr, .L24+12
.L21:
	umull	r3, r8, r4, r1
	bic	r3, r8, #3
	add	r3, r3, r8, lsr #2
	sub	r3, r1, r3
	str	r1, [r2]
	lsl	r3, r3, #4
	add	r1, r1, #1
	add	r3, r3, #81
	cmp	r1, #10
	str	r6, [r2, #36]
	str	r7, [r2, #12]
	str	ip, [r2, #28]
	str	ip, [r2, #24]
	strh	lr, [r0, #2]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	str	r3, [r2, #8]
	str	r3, [r2, #4]
	strh	r3, [r0]	@ movhi
	add	r2, r2, #40
	add	r0, r0, #8
	bne	.L21
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	twig
	.word	shadowOAM+400
	.word	-858993459
	.word	16624
	.size	initTwig, .-initTwig
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #80
	mov	r1, #16384
	mov	r5, #0
	mov	r6, #8
	mov	lr, #50
	mov	ip, #16
	mov	r0, #1
	mov	r2, #3
	ldr	r3, .L28
	str	r4, [r3, #4]
	ldr	r4, .L28+4
	strh	r1, [r4]	@ movhi
	ldr	r1, .L28+8
	str	lr, [r3, #12]
	str	r5, [r1]
	str	r0, [r3, #16]
	str	ip, [r3, #24]
	ldr	r0, [r3]
	str	r5, [r3, #8]
	str	r5, [r3, #32]
	str	r6, [r3, #28]
	ldr	r1, .L28+12
	ldr	r3, .L28+16
	str	r5, [r1]
	str	r5, [r3]
	strh	r0, [r4, #4]	@ movhi
	ldr	r1, .L28+20
	ldr	r0, .L28+24
	ldr	r3, .L28+28
	strh	r5, [r4, #2]	@ movhi
	strh	r5, [r0]	@ movhi
	str	r5, [r1]
	str	r2, [r3]
	bl	initTwig
	mov	r1, #224
	mov	r3, #4
	mov	r2, #10
	mov	ip, #256
	mov	r0, #215
	strh	r1, [r4, #36]	@ movhi
	add	r1, r1, #66
	strh	r1, [r4, #44]	@ movhi
	add	r1, r1, #232
	strh	r1, [r4, #240]	@ movhi
	ldr	r1, .L28+32
	strh	r1, [r4, #50]	@ movhi
	ldr	r1, .L28+36
	ldr	lr, .L28+40
	strh	r3, [r4, #40]	@ movhi
	strh	r3, [r4, #244]	@ movhi
	strh	r1, [r4, #60]	@ movhi
	strh	r3, [r4, #56]	@ movhi
	ldr	r1, .L28+44
	ldr	r3, .L28+48
	strh	r6, [r4, #42]	@ movhi
	strh	lr, [r4, #34]	@ movhi
	strh	ip, [r4, #52]	@ movhi
	strh	r0, [r4, #58]	@ movhi
	strh	r1, [r4, #32]	@ movhi
	strh	r1, [r4, #48]	@ movhi
	strh	r2, [r4, #242]	@ movhi
	str	r6, [r3, #8]
	str	r6, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	r2, [r3]
	str	r2, [r3, #4]
	pop	{r4, r5, r6, lr}
	b	initClothes
.L29:
	.align	2
.L28:
	.word	player
	.word	shadowOAM
	.word	endGame
	.word	.LANCHOR0
	.word	time
	.word	itemsCollected
	.word	hOff
	.word	livesremaining
	.word	16564
	.word	297
	.word	16386
	.word	16388
	.word	bullets
	.size	initGame, .-initGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #1
	mov	r1, #16
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #80
	mov	r4, #50
	mov	lr, #8
	mov	r0, #16384
	ldr	r3, .L32
	str	ip, [r3, #16]
	str	r1, [r3, #24]
	ldr	ip, [r3]
	ldr	r1, .L32+4
	str	r5, [r3, #4]
	str	r4, [r3, #12]
	str	lr, [r3, #28]
	strh	ip, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	str	r2, [r3, #8]
	str	r2, [r3, #32]
	pop	{r4, r5, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	player
	.word	shadowOAM
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #8
	str	lr, [sp, #-4]!
	mov	r0, #10
	mov	r2, #0
	mov	lr, #4
	ldr	r3, .L36
	ldr	r1, .L36+4
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	ldr	ip, .L36+8
	strh	lr, [r1, #244]	@ movhi
	str	r0, [r3]
	str	r0, [r3, #4]
	strh	r0, [r1, #242]	@ movhi
	strh	ip, [r1, #240]	@ movhi
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	bullets
	.word	shadowOAM
	.word	522
	.size	initBullets, .-initBullets
	.align	2
	.global	updateTimeline
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTimeline, %function
updateTimeline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #320
	ldr	r2, .L45
	push	{r4, lr}
	ldr	r3, [r2, #32]
	ldr	lr, .L45+4
	smull	r1, lr, r3, lr
	ldr	r1, .L45+8
	asr	r3, r3, #31
	ldr	r4, [r1]
	rsb	lr, r3, lr, asr #3
	ldr	r1, .L45+12
	ldr	r3, .L45+16
	add	ip, lr, #65
	strh	ip, [r1, #26]	@ movhi
	ldr	ip, .L45+20
	strh	r3, [r1, #168]	@ movhi
	cmp	r4, #0
	add	r3, r3, #10
	strh	ip, [r1, #170]	@ movhi
	strh	r0, [r1, #172]	@ movhi
	ldrheq	ip, [r2]
	movne	ip, #20
	strh	r3, [r1, #24]	@ movhi
	mov	r0, #15
	mov	r3, #10
	mov	r2, #70
	strh	ip, [r1, #28]	@ movhi
	strh	r3, [r1, #84]	@ movhi
	strh	r0, [r1, #80]	@ movhi
	strh	r2, [r1, #82]	@ movhi
	ldr	r1, .L45+12
	mov	ip, #11
	mov	r3, r1
.L40:
	add	r2, r2, #8
	cmp	r2, #142
	strh	r2, [r3, #90]	@ movhi
	strh	r0, [r3, #88]	@ movhi
	strh	ip, [r3, #92]	@ movhi
	add	r3, r3, #8
	bne	.L40
	mov	r2, #150
	mov	r3, #12
	cmp	lr, #77
	strh	r2, [r1, #162]	@ movhi
	moveq	r2, #1
	strh	r3, [r1, #164]	@ movhi
	ldreq	r3, .L45+24
	strh	r0, [r1, #160]	@ movhi
	streq	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	player
	.word	1717986919
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16387
	.word	-16291
	.word	endGame
	.size	updateTimeline, .-updateTimeline
	.global	__aeabi_idivmod
	.align	2
	.global	findRandClothing
	.syntax unified
	.arm
	.fpu softvfp
	.type	findRandClothing, %function
findRandClothing:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #0
	mov	r5, r0
	ldr	r4, .L52
	sub	sp, sp, #132
	add	r7, r4, #128
.L49:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L48
	mov	lr, r4
	add	r3, sp, #128
	add	ip, r3, r6, lsl #5
	ldmia	lr!, {r0, r1, r2, r3}
	sub	ip, ip, #128
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	add	r6, r6, #1
.L48:
	add	r4, r4, #32
	cmp	r4, r7
	bne	.L49
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	mov	r1, r6
	ldr	r3, .L52+8
	mov	lr, pc
	bx	r3
	mov	lr, r5
	add	r3, sp, #128
	add	ip, r3, r1, lsl #5
	sub	ip, ip, #128
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	mov	r0, r5
	add	sp, sp, #132
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	clothes
	.word	rand
	.word	__aeabi_idivmod
	.size	findRandClothing, .-findRandClothing
	.align	2
	.global	updateClothes
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateClothes, %function
updateClothes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L69
	mov	r4, r7
	ldr	r5, .L69+4
	ldr	r9, .L69+8
	ldr	r8, .L69+12
	ldr	fp, .L69+16
	ldr	r10, .L69+20
	sub	sp, sp, #52
	add	r6, r7, #128
.L61:
	ldr	r3, [r4, #24]
	cmp	r3, #1
	beq	.L66
.L55:
	add	r4, r4, #32
	cmp	r4, r6
	add	r5, r5, #8
	bne	.L61
	ldr	r2, .L69+24
	ldr	r3, [r9]
	ldr	r1, .L69+28
	mla	r3, r1, r3, r2
	add	r2, r2, r2
	cmp	r3, r2
	bls	.L67
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L66:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #12]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r8, #4]
	ldr	r0, [r8, #12]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L68
	ldr	r3, [r9]
	tst	r3, #1
	ldr	r3, [r4, #12]
	subeq	r3, r3, #2
	streq	r3, [r4, #12]
	cmp	r3, #0
	bgt	.L58
	mov	r0, #0
	mov	r1, #10
	mov	r3, #240
	mov	r2, #512
	str	r0, [r4, #24]
	str	r1, [r4, #4]
	str	r3, [r4, #12]
	strh	r2, [r5]	@ movhi
.L57:
	ldr	r2, [r4, #4]
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	b	.L55
.L68:
	mov	r3, #250
	ldr	r2, [r10]
	add	r2, r2, #1
	str	r2, [r10]
	ldr	r2, [r9]
	tst	r2, #1
	str	r3, [r4, #12]
	mov	ip, #0
	mov	r0, #10
	mov	r1, #512
	moveq	r3, #248
	str	ip, [r4, #24]
	str	r0, [r4, #4]
	strh	r1, [r5]	@ movhi
	streq	r3, [r4, #12]
	bne	.L57
.L58:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	b	.L57
.L67:
	add	r0, sp, #16
	bl	findRandClothing
	mov	r2, #240
	mov	r3, #1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #24]
	add	r7, r7, r0, lsl #5
	str	r1, [r7, #4]
	str	r2, [r7, #12]
	str	r3, [r7, #24]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	clothes
	.word	shadowOAM+560
	.word	time
	.word	player
	.word	collision
	.word	itemsCollected
	.word	11483869
	.word	-1584774029
	.size	updateClothes, .-updateClothes
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2
	beq	.L75
	cmp	r0, #1
	mov	r1, #35
	mov	r0, #4
	moveq	r2, #288
	ldreq	r3, .L76
	ldrne	r3, .L76
	ldrne	r2, .L76+4
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L73:
	mov	r0, #224
	ldr	r1, .L76+8
	ldr	r2, .L76+12
	strh	r0, [r3, #36]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	bx	lr
.L75:
	mov	r0, #4
	mov	r1, #35
	ldr	r3, .L76
	ldr	r2, .L76+16
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	b	.L73
.L77:
	.align	2
.L76:
	.word	shadowOAM
	.word	290
	.word	16388
	.word	16386
	.word	289
	.size	updateLives, .-updateLives
	.align	2
	.global	updateItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateItems, %function
updateItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #9
	push	{r4, r5, lr}
	ble	.L79
	mov	r1, #4
	mov	lr, #215
	mov	ip, #222
	ldr	r3, .L83
	sub	r2, r0, #1
	umull	r4, r3, r2, r3
	ldr	r4, .L83+4
	smull	r5, r4, r0, r4
	lsr	r3, r3, #3
	asr	r0, r0, #31
	add	r3, r3, r3, lsl #2
	rsb	r0, r0, r4, asr #2
	sub	r2, r2, r3, lsl #1
	add	r0, r0, #284
	ldr	r3, .L83+8
	add	r2, r2, #288
	add	r0, r0, #3
	strh	r2, [r3, #68]	@ movhi
	strh	lr, [r3, #58]	@ movhi
	strh	r0, [r3, #60]	@ movhi
	strh	ip, [r3, #66]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #64]	@ movhi
.L80:
	mov	r0, #256
	ldr	r1, .L83+12
	ldr	r2, .L83+16
	strh	r0, [r3, #52]	@ movhi
	strh	r1, [r3, #48]	@ movhi
	strh	r2, [r3, #50]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L79:
	cmp	r0, #0
	ble	.L81
	mov	r1, #4
	mov	r2, #215
	ldr	r3, .L83+8
	add	r0, r0, #284
	add	r0, r0, #3
	strh	r0, [r3, #60]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r2, [r3, #58]	@ movhi
	b	.L80
.L81:
	mov	r0, #4
	mov	r1, #215
	ldr	r3, .L83+8
	ldr	r2, .L83+20
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	b	.L80
.L84:
	.align	2
.L83:
	.word	-858993459
	.word	1717986919
	.word	shadowOAM
	.word	16388
	.word	16566
	.word	297
	.size	updateItems, .-updateItems
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #512
	ldr	r3, .L98
	ldr	r1, [r3]
	push	{r4, r5, r6, lr}
	ldr	r3, .L98+4
	ldr	r5, .L98+8
	ldr	r4, .L98+12
	tst	r1, #1
	strh	r2, [r3]	@ movhi
	ldreq	r3, [r4, #32]
	ldrheq	r2, [r5]
	addeq	r3, r3, #1
	addeq	r2, r2, #1
	strheq	r2, [r5]	@ movhi
	streq	r3, [r4, #32]
	ldr	r3, .L98+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L87
	ldr	r3, [r4, #4]
	cmp	r3, #80
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
.L87:
	ldr	r3, .L98+16
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L88
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #28]
	add	r3, r2, r3
	cmp	r3, #158
	addle	r2, r2, #1
	strle	r2, [r4, #4]
.L88:
	ldr	r3, .L98+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L89
	ldr	r3, .L98+24
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L89
	ldr	r3, .L98+28
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bleq	fireBullet.part.0
.L89:
	ldr	r3, .L98+32
	ldr	r0, [r3]
	ldr	r1, .L98+36
	cmp	r0, #1
	ldr	r0, [r4, #12]
	strh	r0, [r1, #2]	@ movhi
	mov	r0, #67108864
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #8]
	orr	r2, r2, #16384
	strh	r2, [r1]	@ movhi
	lsl	r3, r3, #21
	ldrne	r2, [r4]
	lsr	r3, r3, #16
	addne	r3, r3, r2
	ldrh	r2, [r5]
	strh	r2, [r0, #16]	@ movhi
	ldr	ip, .L98+40
	ldrh	r2, [r5]
	umull	lr, r2, ip, r2
	addeq	r3, r3, #20
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #4
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r0, #20]	@ movhi
	bx	lr
.L99:
	.align	2
.L98:
	.word	time
	.word	shadowOAM+640
	.word	hOff
	.word	player
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	bullets
	.word	.LANCHOR0
	.word	shadowOAM
	.word	-858993459
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	findRandTwig
	.syntax unified
	.arm
	.fpu softvfp
	.type	findRandTwig, %function
findRandTwig:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, #0
	mov	r6, r0
	ldr	r4, .L105
	sub	sp, sp, #404
	add	r7, r4, #400
.L102:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L101
	mov	lr, r4
	add	ip, r5, r5, lsl #2
	add	r3, sp, #400
	add	ip, r3, ip, lsl #3
	ldmia	lr!, {r0, r1, r2, r3}
	sub	ip, ip, #400
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	add	r5, r5, #1
.L101:
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L102
	ldr	r3, .L105+4
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L105+8
	mov	lr, pc
	bx	r3
	mov	lr, r6
	add	r3, sp, #400
	add	r1, r1, r1, lsl #2
	add	ip, r3, r1, lsl #3
	sub	ip, ip, #400
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	mov	r0, r6
	add	sp, sp, #404
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	twig
	.word	rand
	.word	__aeabi_idivmod
	.size	findRandTwig, .-findRandTwig
	.align	2
	.global	updateTwig
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTwig, %function
updateTwig:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L123
	ldr	r5, .L123+4
	mov	r4, r10
	ldr	r9, .L123+8
	ldr	fp, .L123+12
	ldr	r8, .L123+16
	sub	sp, sp, #60
	add	r6, r10, #400
	b	.L115
.L108:
	add	r4, r4, #40
	cmp	r4, r6
	add	r5, r5, #8
	beq	.L120
.L115:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L108
	ldr	r7, [fp]
	cmp	r7, #0
	ldr	r0, [r4, #12]
	beq	.L121
.L109:
	ldr	r3, [r9]
	tst	r3, #1
	subeq	r0, r0, #2
	streq	r0, [r4, #12]
	cmp	r0, #0
	ble	.L114
.L112:
	orr	r0, r0, #16384
	lsl	r0, r0, #16
	lsr	r0, r0, #16
.L111:
	ldr	r3, [r4, #4]
	add	r4, r4, #40
	cmp	r4, r6
	strh	r0, [r5, #2]	@ movhi
	strh	r3, [r5]	@ movhi
	add	r5, r5, #8
	bne	.L115
.L120:
	ldr	r2, .L123+20
	ldr	r3, [r9]
	ldr	r1, .L123+24
	mla	r3, r1, r3, r2
	ldr	r2, .L123+28
	cmp	r2, r3, ror #2
	bcs	.L122
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L114:
	mov	r0, #0
	mov	r1, #10
	mov	r2, #240
	mov	r3, #512
	str	r0, [r4, #36]
	str	r1, [r4, #4]
	str	r2, [r4, #12]
	strh	r3, [r5]	@ movhi
	ldr	r0, .L123+32
	b	.L111
.L121:
	add	r1, r8, #24
	ldm	r1, {r1, ip}
	ldr	r2, [r8, #4]
	ldr	r3, [r8, #12]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	ip, .L123+36
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldreq	r0, [r4, #12]
	beq	.L109
.L110:
	mov	r3, r7
	ldr	r2, .L123+40
	ldr	r1, .L123+44
	ldr	r0, .L123+48
	ldr	ip, .L123+52
	mov	lr, pc
	bx	ip
	mov	r0, #10
	ldr	ip, [r9]
	tst	ip, #1
	mov	r1, #240
	mov	r2, #512
	str	r0, [r4, #4]
	moveq	r0, #238
	ldr	lr, .L123+56
	ldr	r3, [lr]
	sub	r3, r3, #1
	str	r1, [r4, #12]
	str	r7, [r4, #36]
	str	r3, [lr]
	strh	r2, [r5]	@ movhi
	streq	r0, [r4, #12]
	beq	.L112
	ldr	r0, .L123+32
	b	.L111
.L122:
	add	r0, sp, #16
	bl	findRandTwig
	mov	r1, #240
	mov	r2, #1
	ldr	r3, [sp, #16]
	ldr	r0, [sp, #24]
	add	r3, r3, r3, lsl #2
	add	r10, r10, r3, lsl #3
	str	r0, [r10, #4]
	str	r1, [r10, #12]
	str	r2, [r10, #36]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	twig
	.word	shadowOAM+400
	.word	time
	.word	.LANCHOR0
	.word	player
	.word	85899344
	.word	-1030792151
	.word	42949672
	.word	16624
	.word	collision
	.word	11025
	.word	20513
	.word	powerDown
	.word	playSoundB
	.word	livesremaining
	.size	updateTwig, .-updateTwig
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L127
	mov	lr, pc
	bx	r3
	ldr	r4, .L127+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L127+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L128:
	.align	2
.L127:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L131
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bxne	lr
	b	fireBullet.part.0
.L132:
	.align	2
.L131:
	.word	bullets
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L147
	ldr	r3, [r5, #16]
	cmp	r3, #1
	sub	sp, sp, #20
	ldr	r3, [r5, #24]
	beq	.L145
.L134:
	cmp	r3, #50
	ble	.L133
	mov	r3, #0
	mov	r1, #512
	ldr	r2, .L147+4
	str	r3, [r5, #16]
	str	r3, [r5, #24]
	strh	r1, [r2, #240]	@ movhi
.L133:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L145:
	ldr	r2, [r5, #4]
	ldr	r8, .L147+4
	ldr	r1, [r5]
	ldr	r4, .L147+8
	add	r3, r3, #1
	add	r0, r2, #1
	mov	r9, #0
	mov	fp, #10
	str	r3, [r5, #24]
	str	r0, [r5, #4]
	strh	r2, [r8, #242]	@ movhi
	strh	r1, [r8, #240]	@ movhi
	ldr	r10, .L147+12
	add	r6, r8, #400
	add	r7, r4, #400
	b	.L138
.L136:
	add	r4, r4, #40
	cmp	r4, r7
	add	r6, r6, #8
	beq	.L146
.L138:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L136
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #12]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r5, #12]
	ldr	r3, [r5, #8]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L136
	mov	r2, #240
	mov	r3, #512
	str	r9, [r4, #36]
	str	fp, [r4, #4]
	str	r2, [r4, #12]
	add	r4, r4, #40
	cmp	r4, r7
	strh	r3, [r6]	@ movhi
	str	r9, [r5, #16]
	str	r9, [r5, #24]
	strh	r3, [r8, #240]	@ movhi
	add	r6, r6, #8
	bne	.L138
.L146:
	ldr	r3, [r5, #24]
	b	.L134
.L148:
	.align	2
.L147:
	.word	bullets
	.word	shadowOAM
	.word	twig
	.word	collision
	.size	updateBullets, .-updateBullets
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L161
	ldr	r3, .L161+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	push	{r4, lr}
	bne	.L150
	ldr	r2, .L161+8
	ldr	r3, [r2, #8]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L150
.L152:
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L151
.L155:
	mov	r3, #1
	str	r3, [r2, #8]
.L150:
	bl	updatePlayer
	bl	updateTwig
	bl	updateBullets
	ldr	r3, .L161+12
	ldr	r3, [r3]
	cmp	r3, #2
	mov	r0, #4
	mov	r1, #35
	beq	.L160
	cmp	r3, #1
	moveq	r2, #288
	ldreq	r3, .L161+16
	ldrne	r3, .L161+16
	ldrne	r2, .L161+20
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L157:
	mov	ip, #224
	ldr	r1, .L161+24
	ldr	r2, .L161+28
	ldr	r0, .L161+32
	strh	ip, [r3, #36]	@ movhi
	ldr	r0, [r0]
	strh	r1, [r3, #32]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	bl	updateItems
	bl	updateClothes
	pop	{r4, lr}
	b	updateTimeline
.L160:
	ldr	r3, .L161+16
	ldr	r2, .L161+36
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	b	.L157
.L151:
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L150
.L154:
	mov	r3, #2
	str	r3, [r2, #8]
	b	.L150
.L153:
	mov	r3, #3
	str	r3, [r2, #8]
	b	.L150
.L162:
	.align	2
.L161:
	.word	time
	.word	1717986919
	.word	player
	.word	livesremaining
	.word	shadowOAM
	.word	290
	.word	16388
	.word	16386
	.word	itemsCollected
	.word	289
	.size	updateGame, .-updateGame
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L170
	ldr	r3, [r2, #8]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L163
.L166:
	.word	.L169
	.word	.L168
	.word	.L167
	.word	.L165
.L165:
	mov	r3, #0
	str	r3, [r2, #8]
.L163:
	bx	lr
.L169:
	mov	r3, #1
	str	r3, [r2, #8]
	bx	lr
.L168:
	mov	r3, #2
	str	r3, [r2, #8]
	bx	lr
.L167:
	mov	r3, #3
	str	r3, [r2, #8]
	bx	lr
.L171:
	.align	2
.L170:
	.word	player
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	displayPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	displayPlayer, %function
displayPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L180
	ldr	r3, [r3]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L173
.L175:
	.word	.L178
	.word	.L177
	.word	.L176
	.word	.L174
.L174:
	mov	r3, #18
	mov	r0, r3
	ldr	r2, .L180+4
	str	r3, [r2]
.L179:
	mov	r1, #90
	ldr	r3, .L180+8
	ldr	r2, .L180+12
	strh	r1, [r3, #2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r2, [r3]	@ movhi
	bx	lr
.L178:
	mov	r3, #0
	ldr	r2, .L180+4
	mov	r0, r3
	str	r3, [r2]
	b	.L179
.L177:
	mov	r3, #14
	ldr	r2, .L180+4
	mov	r0, r3
	str	r3, [r2]
	b	.L179
.L176:
	mov	r3, #16
	ldr	r2, .L180+4
	mov	r0, r3
	str	r3, [r2]
	b	.L179
.L173:
	ldr	r3, .L180+4
	ldrh	r0, [r3]
	b	.L179
.L181:
	.align	2
.L180:
	.word	choice
	.word	player
	.word	shadowOAM+640
	.word	16434
	.size	displayPlayer, .-displayPlayer
	.comm	hOff,2,2
	.global	cheat
	.comm	shadowOAM,1024,4
	.comm	clothes,128,4
	.comm	bullets,28,4
	.comm	twig,400,4
	.comm	player,36,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

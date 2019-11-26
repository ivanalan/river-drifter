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
	ldr	r2, [r3, #8]
	ldr	lr, [r3, #20]
	ldr	ip, [r3]
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
	mov	r5, #0
	mov	r4, #80
	mov	r6, #8
	mov	lr, #50
	mov	ip, #1
	mov	r0, #16
	mov	r1, #16384
	mov	r2, #3
	ldr	r3, .L28
	str	r5, [r3]
	ldr	r3, .L28+4
	strh	r5, [r3]	@ movhi
	ldr	r3, .L28+8
	str	r5, [r3]
	ldr	r3, .L28+12
	str	r5, [r3]
	ldr	r3, .L28+16
	str	r5, [r3]
	ldr	r3, .L28+20
	str	r4, [r3]
	ldr	r4, .L28+24
	str	r5, [r3, #4]
	str	r5, [r3, #28]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r6, [r3, #24]
	ldr	r3, .L28+28
	strh	r1, [r4]	@ movhi
	strh	r5, [r4, #2]	@ movhi
	strh	r5, [r4, #4]	@ movhi
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
	.word	endGame
	.word	hOff
	.word	.LANCHOR0
	.word	time
	.word	itemsCollected
	.word	player
	.word	shadowOAM
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
	mov	r1, #1
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #80
	mov	r4, #50
	mov	lr, #16
	mov	ip, #8
	mov	r0, #16384
	ldr	r3, .L32
	str	r1, [r3, #12]
	ldr	r1, .L32+4
	str	r5, [r3]
	str	r4, [r3, #8]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #13
	mov	r8, #70
	ldr	r0, .L43
	mov	r10, #320
	mov	r9, #10
	mov	r5, r0
	mov	r3, r0
	mov	r1, r6
	mov	r2, r8
	mov	ip, #11
	ldr	r4, .L43+4
	ldr	lr, .L43+8
	ldr	r4, [r4, #28]
	smull	fp, r7, lr, r4
	asr	lr, r4, #31
	rsb	lr, lr, r7, asr #3
	add	r4, lr, #74
	strh	r4, [r0, #26]	@ movhi
	ldr	r4, .L43+12
	strh	r4, [r0, #168]	@ movhi
	ldr	r4, .L43+16
	strh	r4, [r0, #170]	@ movhi
	ldr	r4, .L43+20
	strh	r10, [r0, #172]	@ movhi
	strh	r9, [r0, #84]	@ movhi
	strh	r6, [r0, #28]	@ movhi
	strh	r4, [r0, #24]	@ movhi
	strh	r6, [r0, #80]	@ movhi
	strh	r8, [r0, #82]	@ movhi
.L39:
	add	r2, r2, #8
	cmp	r2, #142
	strh	r2, [r3, #90]	@ movhi
	strh	r1, [r3, #88]	@ movhi
	strh	ip, [r3, #92]	@ movhi
	add	r3, r3, #8
	bne	.L39
	mov	r2, #150
	mov	r3, #12
	cmp	lr, #76
	strh	r2, [r5, #162]	@ movhi
	moveq	r2, #1
	strh	r3, [r5, #164]	@ movhi
	ldreq	r3, .L43+24
	strh	r1, [r5, #160]	@ movhi
	streq	r2, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	shadowOAM
	.word	player
	.word	1717986919
	.word	16387
	.word	-16291
	.word	16397
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
	ldr	r4, .L50
	sub	sp, sp, #132
	add	r7, r4, #128
.L47:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L46
	mov	lr, r4
	add	r3, sp, #128
	add	ip, r3, r6, lsl #5
	ldmia	lr!, {r0, r1, r2, r3}
	sub	ip, ip, #128
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	add	r6, r6, #1
.L46:
	add	r4, r4, #32
	cmp	r4, r7
	bne	.L47
	ldr	r3, .L50+4
	mov	lr, pc
	bx	r3
	mov	r1, r6
	ldr	r3, .L50+8
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
.L51:
	.align	2
.L50:
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
	ldr	r7, .L67
	mov	r4, r7
	ldr	r5, .L67+4
	ldr	r9, .L67+8
	ldr	r8, .L67+12
	ldr	fp, .L67+16
	ldr	r10, .L67+20
	sub	sp, sp, #52
	add	r6, r7, #128
.L59:
	ldr	r3, [r4, #24]
	cmp	r3, #1
	beq	.L64
.L53:
	add	r4, r4, #32
	cmp	r4, r6
	add	r5, r5, #8
	bne	.L59
	ldr	r2, .L67+24
	ldr	r3, [r9]
	ldr	r1, .L67+28
	mla	r3, r1, r3, r2
	add	r2, r2, r2
	cmp	r3, r2
	bls	.L65
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L64:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #12]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r8, #20
	ldm	r2, {r2, r3}
	ldr	r1, [r8]
	ldr	r0, [r8, #8]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L66
	ldr	r3, [r9]
	tst	r3, #1
	ldr	r3, [r4, #12]
	subeq	r3, r3, #2
	streq	r3, [r4, #12]
	cmp	r3, #0
	bgt	.L56
	mov	r0, #0
	mov	r1, #10
	mov	r3, #240
	mov	r2, #512
	str	r0, [r4, #24]
	str	r1, [r4, #4]
	str	r3, [r4, #12]
	strh	r2, [r5]	@ movhi
.L55:
	ldr	r2, [r4, #4]
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	b	.L53
.L66:
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
	bne	.L55
.L56:
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	b	.L55
.L65:
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
.L68:
	.align	2
.L67:
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
	beq	.L73
	cmp	r0, #1
	mov	r1, #35
	mov	r0, #4
	moveq	r2, #288
	ldreq	r3, .L74
	ldrne	r3, .L74
	ldrne	r2, .L74+4
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L71:
	mov	r0, #224
	ldr	r1, .L74+8
	ldr	r2, .L74+12
	strh	r0, [r3, #36]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	bx	lr
.L73:
	mov	r0, #4
	mov	r1, #35
	ldr	r3, .L74
	ldr	r2, .L74+16
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	b	.L71
.L75:
	.align	2
.L74:
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
	ble	.L77
	mov	r1, #4
	mov	lr, #215
	mov	ip, #222
	ldr	r3, .L81
	sub	r2, r0, #1
	umull	r4, r3, r2, r3
	ldr	r4, .L81+4
	smull	r5, r4, r0, r4
	lsr	r3, r3, #3
	asr	r0, r0, #31
	add	r3, r3, r3, lsl #2
	rsb	r0, r0, r4, asr #2
	sub	r2, r2, r3, lsl #1
	add	r0, r0, #284
	ldr	r3, .L81+8
	add	r2, r2, #288
	add	r0, r0, #3
	strh	r2, [r3, #68]	@ movhi
	strh	lr, [r3, #58]	@ movhi
	strh	r0, [r3, #60]	@ movhi
	strh	ip, [r3, #66]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #64]	@ movhi
.L78:
	mov	r0, #256
	ldr	r1, .L81+12
	ldr	r2, .L81+16
	strh	r0, [r3, #52]	@ movhi
	strh	r1, [r3, #48]	@ movhi
	strh	r2, [r3, #50]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L77:
	cmp	r0, #0
	ble	.L79
	mov	r1, #4
	mov	r2, #215
	ldr	r3, .L81+8
	add	r0, r0, #284
	add	r0, r0, #3
	strh	r0, [r3, #60]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r2, [r3, #58]	@ movhi
	b	.L78
.L79:
	mov	r0, #4
	mov	r1, #215
	ldr	r3, .L81+8
	ldr	r2, .L81+20
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	b	.L78
.L82:
	.align	2
.L81:
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
	ldr	r3, .L94
	ldr	r3, [r3]
	push	{r4, r5, r6, lr}
	ldr	r5, .L94+4
	ldr	r4, .L94+8
	tst	r3, #1
	ldreq	r3, [r4, #28]
	ldrheq	r2, [r5]
	addeq	r3, r3, #1
	addeq	r2, r2, #1
	strheq	r2, [r5]	@ movhi
	streq	r3, [r4, #28]
	ldr	r3, .L94+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L85
	ldr	r3, [r4]
	cmp	r3, #80
	subgt	r3, r3, #1
	strgt	r3, [r4]
.L85:
	ldr	r3, .L94+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L86
	ldr	r2, [r4]
	ldr	r3, [r4, #24]
	add	r3, r2, r3
	cmp	r3, #158
	addle	r2, r2, #1
	strle	r2, [r4]
.L86:
	ldr	r3, .L94+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L87
	ldr	r3, .L94+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L87
	ldr	r3, .L94+24
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bleq	fireBullet.part.0
.L87:
	mov	r0, #67108864
	ldr	r3, [r4]
	ldrh	lr, [r5]
	ldr	r2, .L94+28
	orr	r3, r3, #16384
	ldmib	r4, {r1, ip}
	strh	r3, [r2]	@ movhi
	strh	lr, [r0, #16]	@ movhi
	ldr	lr, .L94+32
	ldrh	r3, [r5]
	umull	r4, r3, lr, r3
	lsl	r1, r1, #5
	lsr	r3, r3, #4
	strh	ip, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r3, [r0, #20]	@ movhi
	bx	lr
.L95:
	.align	2
.L94:
	.word	time
	.word	hOff
	.word	player
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	bullets
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
	ldr	r4, .L101
	sub	sp, sp, #404
	add	r7, r4, #400
.L98:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L97
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
.L97:
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L98
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L101+8
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
.L102:
	.align	2
.L101:
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
	ldr	r10, .L119
	ldr	r5, .L119+4
	mov	r4, r10
	ldr	r9, .L119+8
	ldr	fp, .L119+12
	ldr	r8, .L119+16
	sub	sp, sp, #60
	add	r6, r10, #400
	b	.L111
.L104:
	add	r4, r4, #40
	cmp	r4, r6
	add	r5, r5, #8
	beq	.L116
.L111:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L104
	ldr	r7, [fp]
	cmp	r7, #0
	ldr	r0, [r4, #12]
	beq	.L117
.L105:
	ldr	r3, [r9]
	tst	r3, #1
	subeq	r0, r0, #2
	streq	r0, [r4, #12]
	cmp	r0, #0
	ble	.L110
.L108:
	orr	r0, r0, #16384
	lsl	r0, r0, #16
	lsr	r0, r0, #16
.L107:
	ldr	r3, [r4, #4]
	add	r4, r4, #40
	cmp	r4, r6
	strh	r0, [r5, #2]	@ movhi
	strh	r3, [r5]	@ movhi
	add	r5, r5, #8
	bne	.L111
.L116:
	ldr	r2, .L119+20
	ldr	r3, [r9]
	ldr	r1, .L119+24
	mla	r3, r1, r3, r2
	ldr	r2, .L119+28
	cmp	r2, r3, ror #2
	bcs	.L118
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L110:
	mov	r0, #0
	mov	r1, #10
	mov	r2, #240
	mov	r3, #512
	str	r0, [r4, #36]
	str	r1, [r4, #4]
	str	r2, [r4, #12]
	strh	r3, [r5]	@ movhi
	ldr	r0, .L119+32
	b	.L107
.L117:
	add	r1, r8, #20
	ldm	r1, {r1, ip}
	ldr	r2, [r8]
	ldr	r3, [r8, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	ip, .L119+36
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldreq	r0, [r4, #12]
	beq	.L105
.L106:
	mov	r3, r7
	ldr	r2, .L119+40
	ldr	r1, .L119+44
	ldr	r0, .L119+48
	ldr	ip, .L119+52
	mov	lr, pc
	bx	ip
	mov	r0, #10
	ldr	ip, [r9]
	tst	ip, #1
	mov	r1, #240
	mov	r2, #512
	str	r0, [r4, #4]
	moveq	r0, #238
	ldr	lr, .L119+56
	ldr	r3, [lr]
	sub	r3, r3, #1
	str	r1, [r4, #12]
	str	r7, [r4, #36]
	str	r3, [lr]
	strh	r2, [r5]	@ movhi
	streq	r0, [r4, #12]
	beq	.L108
	ldr	r0, .L119+32
	b	.L107
.L118:
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
.L120:
	.align	2
.L119:
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
	ldr	r3, .L123
	mov	lr, pc
	bx	r3
	ldr	r4, .L123+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L123+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L124:
	.align	2
.L123:
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
	ldr	r3, .L127
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bxne	lr
	b	fireBullet.part.0
.L128:
	.align	2
.L127:
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
	ldr	r5, .L143
	ldr	r3, [r5, #16]
	cmp	r3, #1
	sub	sp, sp, #20
	ldr	r3, [r5, #24]
	beq	.L141
.L130:
	cmp	r3, #50
	ble	.L129
	mov	r3, #0
	mov	r1, #512
	ldr	r2, .L143+4
	str	r3, [r5, #16]
	str	r3, [r5, #24]
	strh	r1, [r2, #240]	@ movhi
.L129:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L141:
	ldr	r2, [r5, #4]
	ldr	r8, .L143+4
	ldr	r1, [r5]
	ldr	r4, .L143+8
	add	r3, r3, #1
	add	r0, r2, #1
	mov	r9, #0
	mov	fp, #10
	str	r3, [r5, #24]
	str	r0, [r5, #4]
	strh	r2, [r8, #242]	@ movhi
	strh	r1, [r8, #240]	@ movhi
	ldr	r10, .L143+12
	add	r6, r8, #400
	add	r7, r4, #400
	b	.L134
.L132:
	add	r4, r4, #40
	cmp	r4, r7
	add	r6, r6, #8
	beq	.L142
.L134:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L132
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
	beq	.L132
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
	bne	.L134
.L142:
	ldr	r3, [r5, #24]
	b	.L130
.L144:
	.align	2
.L143:
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
	ldr	r2, .L157
	ldr	r3, .L157+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	push	{r4, lr}
	bne	.L146
	ldr	r2, .L157+8
	ldr	r3, [r2, #4]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L146
.L148:
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L147
.L151:
	mov	r3, #1
	str	r3, [r2, #4]
.L146:
	bl	updatePlayer
	bl	updateTwig
	bl	updateBullets
	ldr	r3, .L157+12
	ldr	r3, [r3]
	cmp	r3, #2
	mov	r0, #4
	mov	r1, #35
	beq	.L156
	cmp	r3, #1
	moveq	r2, #288
	ldreq	r3, .L157+16
	ldrne	r3, .L157+16
	ldrne	r2, .L157+20
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L153:
	mov	ip, #224
	ldr	r1, .L157+24
	ldr	r2, .L157+28
	ldr	r0, .L157+32
	strh	ip, [r3, #36]	@ movhi
	ldr	r0, [r0]
	strh	r1, [r3, #32]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	bl	updateItems
	bl	updateClothes
	pop	{r4, lr}
	b	updateTimeline
.L156:
	ldr	r3, .L157+16
	ldr	r2, .L157+36
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	b	.L153
.L147:
	mov	r3, #0
	str	r3, [r2, #4]
	b	.L146
.L150:
	mov	r3, #2
	str	r3, [r2, #4]
	b	.L146
.L149:
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L146
.L158:
	.align	2
.L157:
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
	ldr	r2, .L166
	ldr	r3, [r2, #4]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L159
.L162:
	.word	.L165
	.word	.L164
	.word	.L163
	.word	.L161
.L161:
	mov	r3, #0
	str	r3, [r2, #4]
.L159:
	bx	lr
.L165:
	mov	r3, #1
	str	r3, [r2, #4]
	bx	lr
.L164:
	mov	r3, #2
	str	r3, [r2, #4]
	bx	lr
.L163:
	mov	r3, #3
	str	r3, [r2, #4]
	bx	lr
.L167:
	.align	2
.L166:
	.word	player
	.size	animatePlayer, .-animatePlayer
	.comm	hOff,2,2
	.global	cheat
	.comm	shadowOAM,1024,4
	.comm	clothes,128,4
	.comm	bullets,28,4
	.comm	twig,400,4
	.comm	player,32,4
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

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
	ldr	r2, [r3, #4]
	ldr	lr, [r3, #16]
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
	mov	ip, #96
	mov	r0, #4
	mov	r1, #215
	mov	r2, #137
	ldr	r3, .L8
	str	lr, [sp, #-4]!
	ldr	lr, .L8+4
	strh	ip, [r3, #52]	@ movhi
	ldr	ip, .L8+8
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
	.word	16388
	.word	16564
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
	cmp	r2, #5
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
	mov	ip, #64
	mov	r0, #4
	mov	r1, #8
	mov	r2, #130
	ldr	r3, .L18
	str	lr, [sp, #-4]!
	ldr	lr, .L18+4
	strh	ip, [r3, #36]	@ movhi
	ldr	ip, .L18+8
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
	.word	16388
	.word	16386
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	mov	lr, #50
	mov	r4, #80
	mov	r6, #8
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
	stm	r3, {r4, lr}
	ldr	r4, .L28+20
	str	r5, [r3, #24]
	str	ip, [r3, #8]
	str	r0, [r3, #16]
	str	r6, [r3, #20]
	ldr	r3, .L28+24
	strh	r1, [r4]	@ movhi
	strh	r5, [r4, #2]	@ movhi
	strh	r5, [r4, #4]	@ movhi
	str	r2, [r3]
	bl	initTwig
	mov	r0, #130
	mov	r3, #137
	mov	r1, #4
	mov	r2, #10
	mov	r7, #64
	mov	lr, #96
	mov	ip, #215
	strh	r0, [r4, #44]	@ movhi
	add	r0, r0, #392
	strh	r0, [r4, #240]	@ movhi
	ldr	r0, .L28+28
	ldr	r8, .L28+32
	strh	r3, [r4, #60]	@ movhi
	ldr	r3, .L28+36
	strh	r0, [r4, #50]	@ movhi
	sub	r0, r0, #176
	strh	r6, [r4, #42]	@ movhi
	strh	r8, [r4, #34]	@ movhi
	strh	r7, [r4, #36]	@ movhi
	strh	lr, [r4, #52]	@ movhi
	strh	ip, [r4, #58]	@ movhi
	strh	r0, [r4, #32]	@ movhi
	strh	r0, [r4, #48]	@ movhi
	strh	r1, [r4, #40]	@ movhi
	strh	r1, [r4, #244]	@ movhi
	strh	r1, [r4, #56]	@ movhi
	strh	r2, [r4, #242]	@ movhi
	str	r6, [r3, #8]
	str	r6, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	r2, [r3]
	str	r2, [r3, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	b	initClothes
.L29:
	.align	2
.L28:
	.word	endGame
	.word	hOff
	.word	time
	.word	itemsCollected
	.word	player
	.word	shadowOAM
	.word	livesremaining
	.word	16564
	.word	16386
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
	mov	r2, #1
	push	{r4, r5, lr}
	mov	r1, #0
	mov	r5, #80
	mov	r4, #50
	mov	lr, #16
	mov	ip, #8
	mov	r0, #16384
	ldr	r3, .L32
	str	r2, [r3, #8]
	ldr	r2, .L32+4
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r1, [r3, #24]
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
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
	mov	r10, #160
	mov	r9, #10
	mov	r5, r0
	mov	r3, r0
	mov	r1, r6
	mov	r2, r8
	mov	ip, #11
	ldr	r4, .L43+4
	ldr	lr, .L43+8
	ldr	r4, [r4, #24]
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
	.word	-16294
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
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #0
	mov	r5, r0
	ldr	r4, .L50
	sub	sp, sp, #164
	add	r7, r4, #160
.L47:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L46
	mov	lr, r4
	add	r3, sp, #160
	add	ip, r3, r6, lsl #5
	ldmia	lr!, {r0, r1, r2, r3}
	sub	ip, ip, #160
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
	add	r3, sp, #160
	add	ip, r3, r1, lsl #5
	sub	ip, ip, #160
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	mov	r0, r5
	add	sp, sp, #164
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
	ldr	r8, .L66
	mov	r4, r8
	ldr	r5, .L66+4
	ldr	r9, .L66+8
	ldr	r7, .L66+12
	ldr	fp, .L66+16
	ldr	r10, .L66+20
	sub	sp, sp, #52
	add	r6, r8, #160
.L59:
	ldr	r3, [r4, #24]
	cmp	r3, #1
	beq	.L64
.L53:
	add	r4, r4, #32
	cmp	r4, r6
	add	r5, r5, #8
	bne	.L59
	ldr	r3, [r9]
	rsb	r2, r3, r3, lsl #8
	add	r2, r2, r2, lsl #16
	ldr	r1, .L66+24
	add	r3, r3, r2, lsl #8
	ldr	r2, .L66+28
	add	r1, r3, r1
	cmp	r1, r2
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
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L54
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
	beq	.L56
	ldr	r2, [r4, #4]
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	b	.L53
.L54:
	ldr	r3, [r9]
	tst	r3, #1
	ldr	r3, [r4, #12]
	subeq	r3, r3, #2
	streq	r3, [r4, #12]
	cmp	r3, #0
	bgt	.L56
	mov	r1, #10
	mov	r2, #512
	mov	r3, #240
	mov	r0, #0
	str	r1, [r4, #4]
	strh	r2, [r5]	@ movhi
	ldr	r2, [r4, #4]
	str	r0, [r4, #24]
	str	r3, [r4, #12]
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	b	.L53
.L56:
	ldr	r2, [r4, #4]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	b	.L53
.L65:
	add	r0, sp, #16
	bl	findRandClothing
	mov	r2, #240
	mov	r3, #1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #24]
	add	r8, r8, r0, lsl #5
	str	r1, [r8, #4]
	str	r2, [r8, #12]
	str	r3, [r8, #24]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	clothes
	.word	shadowOAM+560
	.word	time
	.word	player
	.word	collision
	.word	itemsCollected
	.word	8355967
	.word	16711934
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
	beq	.L72
	cmp	r0, #1
	mov	r1, #35
	mov	r0, #4
	moveq	r2, #128
	movne	r2, #130
	ldr	r3, .L73
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L70:
	mov	r0, #64
	ldr	r1, .L73+4
	ldr	r2, .L73+8
	strh	r0, [r3, #36]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	bx	lr
.L72:
	mov	r0, #4
	mov	r1, #35
	mov	r2, #129
	ldr	r3, .L73
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	b	.L70
.L74:
	.align	2
.L73:
	.word	shadowOAM
	.word	16388
	.word	16386
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
	ble	.L76
	mov	r1, #4
	mov	lr, #215
	mov	ip, #222
	ldr	r3, .L80
	sub	r2, r0, #1
	umull	r4, r3, r2, r3
	ldr	r4, .L80+4
	smull	r5, r4, r0, r4
	lsr	r3, r3, #3
	add	r3, r3, r3, lsl #2
	asr	r0, r0, #31
	sub	r2, r2, r3, lsl #1
	rsb	r0, r0, r4, asr #2
	ldr	r3, .L80+8
	add	r2, r2, #128
	add	r0, r0, #127
	strh	r2, [r3, #68]	@ movhi
	strh	lr, [r3, #58]	@ movhi
	strh	r0, [r3, #60]	@ movhi
	strh	ip, [r3, #66]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #64]	@ movhi
.L77:
	mov	r0, #96
	ldr	r1, .L80+12
	ldr	r2, .L80+16
	strh	r0, [r3, #52]	@ movhi
	strh	r1, [r3, #48]	@ movhi
	strh	r2, [r3, #50]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L76:
	cmp	r0, #0
	ble	.L78
	mov	r1, #4
	mov	r2, #215
	ldr	r3, .L80+8
	add	r0, r0, #127
	strh	r0, [r3, #60]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r2, [r3, #58]	@ movhi
	b	.L77
.L78:
	mov	r0, #4
	mov	r1, #215
	mov	r2, #137
	ldr	r3, .L80+8
	strh	r0, [r3, #56]	@ movhi
	strh	r1, [r3, #58]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	b	.L77
.L81:
	.align	2
.L80:
	.word	-858993459
	.word	1717986919
	.word	shadowOAM
	.word	16388
	.word	16566
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
	ldr	r3, .L93
	ldr	r3, [r3]
	push	{r4, r5, r6, lr}
	ldr	r5, .L93+4
	ldr	r4, .L93+8
	tst	r3, #1
	ldreq	r3, [r4, #24]
	ldrheq	r2, [r5]
	addeq	r3, r3, #1
	addeq	r2, r2, #1
	strheq	r2, [r5]	@ movhi
	streq	r3, [r4, #24]
	ldr	r3, .L93+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L84
	ldr	r3, [r4]
	cmp	r3, #1
	subgt	r3, r3, #1
	strgt	r3, [r4]
.L84:
	ldr	r3, .L93+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L85
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	add	r3, r2, r3
	cmp	r3, #158
	addle	r2, r2, #1
	strle	r2, [r4]
.L85:
	ldr	r3, .L93+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L86
	ldr	r3, .L93+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L86
	ldr	r3, .L93+24
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bleq	fireBullet.part.0
.L86:
	mov	r2, #67108864
	ldr	r3, [r4]
	ldrh	ip, [r5]
	ldr	r1, .L93+28
	orr	r3, r3, #16384
	ldr	r0, [r4, #4]
	strh	r3, [r1]	@ movhi
	strh	ip, [r2, #16]	@ movhi
	ldr	ip, .L93+32
	ldrh	r3, [r5]
	umull	lr, r3, ip, r3
	lsr	r3, r3, #4
	strh	r0, [r1, #2]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #20]	@ movhi
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r4, .L100
	sub	sp, sp, #404
	add	r7, r4, #400
.L97:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L96
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
.L96:
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L97
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L100+8
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
.L101:
	.align	2
.L100:
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
	ldr	r8, .L116
	ldr	r5, .L116+4
	mov	r4, r8
	ldr	r9, .L116+8
	ldr	r7, .L116+12
	ldr	fp, .L116+16
	ldr	r10, .L116+20
	sub	sp, sp, #60
	add	r6, r8, #400
	b	.L109
.L103:
	add	r4, r4, #40
	cmp	r6, r4
	add	r5, r5, #8
	beq	.L114
.L109:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L103
	ldm	r7, {r2, r3}
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L104
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, [r9]
	tst	r3, #1
	mov	ip, #0
	mov	r0, #10
	mov	r1, #240
	mov	r2, #512
	moveq	r3, #238
	str	r1, [r4, #12]
	str	ip, [r4, #36]
	str	r0, [r4, #4]
	strh	r2, [r5]	@ movhi
	streq	r3, [r4, #12]
	beq	.L106
	ldr	r3, .L116+24
.L105:
	ldr	r2, [r4, #4]
	add	r4, r4, #40
	cmp	r6, r4
	strh	r3, [r5, #2]	@ movhi
	strh	r2, [r5]	@ movhi
	add	r5, r5, #8
	bne	.L109
.L114:
	ldr	r2, .L116+28
	ldr	r3, [r9]
	ldr	r1, .L116+32
	mla	r3, r1, r3, r2
	ldr	r2, .L116+36
	cmp	r2, r3, ror #2
	bcs	.L115
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L104:
	ldr	r3, [r9]
	tst	r3, #1
	ldr	r3, [r4, #12]
	subeq	r3, r3, #2
	streq	r3, [r4, #12]
	cmp	r3, #0
	bgt	.L106
	mov	r3, #512
	mov	r0, #0
	mov	r1, #10
	mov	r2, #240
	strh	r3, [r5]	@ movhi
	str	r0, [r4, #36]
	str	r1, [r4, #4]
	str	r2, [r4, #12]
	ldr	r3, .L116+24
	b	.L105
.L106:
	orr	r3, r3, #16384
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	b	.L105
.L115:
	add	r0, sp, #16
	bl	findRandTwig
	mov	r1, #240
	mov	r2, #1
	ldr	r3, [sp, #16]
	ldr	r0, [sp, #24]
	add	r3, r3, r3, lsl #2
	add	r8, r8, r3, lsl #3
	str	r0, [r8, #4]
	str	r1, [r8, #12]
	str	r2, [r8, #36]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	twig
	.word	shadowOAM+400
	.word	time
	.word	player
	.word	collision
	.word	livesremaining
	.word	16624
	.word	85899344
	.word	-1030792151
	.word	42949672
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
	ldr	r3, .L120
	mov	lr, pc
	bx	r3
	ldr	r4, .L120+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L120+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L121:
	.align	2
.L120:
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
	ldr	r3, .L124
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bxne	lr
	b	fireBullet.part.0
.L125:
	.align	2
.L124:
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
	ldr	r5, .L140
	ldr	r3, [r5, #16]
	cmp	r3, #1
	sub	sp, sp, #20
	ldr	r3, [r5, #24]
	beq	.L138
.L127:
	cmp	r3, #50
	ble	.L126
	mov	r3, #0
	mov	r1, #512
	ldr	r2, .L140+4
	str	r3, [r5, #16]
	str	r3, [r5, #24]
	strh	r1, [r2, #240]	@ movhi
.L126:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L138:
	ldr	r2, [r5, #4]
	ldr	r8, .L140+4
	ldr	r1, [r5]
	ldr	r4, .L140+8
	add	r3, r3, #1
	add	r0, r2, #1
	mov	r9, #0
	mov	fp, #10
	str	r3, [r5, #24]
	str	r0, [r5, #4]
	strh	r2, [r8, #242]	@ movhi
	strh	r1, [r8, #240]	@ movhi
	ldr	r10, .L140+12
	add	r6, r8, #400
	add	r7, r4, #400
	b	.L131
.L129:
	add	r4, r4, #40
	cmp	r4, r7
	add	r6, r6, #8
	beq	.L139
.L131:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L129
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
	beq	.L129
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
	bne	.L131
.L139:
	ldr	r3, [r5, #24]
	b	.L127
.L141:
	.align	2
.L140:
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
	push	{r4, lr}
	bl	updatePlayer
	bl	updateTwig
	bl	updateBullets
	ldr	r3, .L148
	ldr	r3, [r3]
	cmp	r3, #2
	mov	r0, #4
	mov	r1, #35
	beq	.L147
	cmp	r3, #1
	moveq	r2, #128
	movne	r2, #130
	ldr	r3, .L148+4
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L144:
	mov	ip, #64
	ldr	r1, .L148+8
	ldr	r2, .L148+12
	ldr	r0, .L148+16
	strh	ip, [r3, #36]	@ movhi
	ldr	r0, [r0]
	strh	r1, [r3, #32]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	bl	updateItems
	bl	updateClothes
	pop	{r4, lr}
	b	updateTimeline
.L147:
	mov	r2, #129
	ldr	r3, .L148+4
	strh	r0, [r3, #40]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #44]	@ movhi
	b	.L144
.L149:
	.align	2
.L148:
	.word	livesremaining
	.word	shadowOAM
	.word	16388
	.word	16386
	.word	itemsCollected
	.size	updateGame, .-updateGame
	.comm	hOff,2,2
	.comm	shadowOAM,1024,4
	.comm	clothes,160,4
	.comm	bullets,28,4
	.comm	twig,400,4
	.comm	player,28,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

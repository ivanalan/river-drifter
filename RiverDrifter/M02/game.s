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
	.global	initTwig
	.arch armv4t
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
	ldr	r2, .L6
	ldr	r0, .L6+4
	ldr	r4, .L6+8
	ldr	lr, .L6+12
.L2:
	umull	r8, r3, r4, r1
	lsr	r3, r3, #2
	add	r3, r3, r3, lsl #1
	sub	r3, r1, r3, lsl #1
	add	r3, r3, #1
	str	r1, [r2]
	add	r3, r3, r3, lsl #2
	add	r1, r1, #1
	lsl	r3, r3, #2
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
	bne	.L2
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	twig
	.word	shadowOAM+400
	.word	-1431655765
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
	mov	r2, #0
	mov	r1, #1
	push	{r4, r5, lr}
	mov	r0, #16384
	mov	r5, #80
	mov	r4, #40
	mov	lr, #16
	mov	ip, #8
	ldr	r3, .L10
	strh	r2, [r3]	@ movhi
	ldr	r3, .L10+4
	str	r2, [r3]
	ldr	r3, .L10+8
	str	r1, [r3, #8]
	ldr	r1, .L10+12
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #16]
	strh	r2, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	pop	{r4, r5, lr}
	str	r2, [r3, #24]
	str	ip, [r3, #20]
	b	initTwig
.L11:
	.align	2
.L10:
	.word	hOff
	.word	time
	.word	player
	.word	shadowOAM
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
	mov	r4, #40
	mov	lr, #16
	mov	ip, #8
	mov	r0, #16384
	ldr	r3, .L14
	str	r2, [r3, #8]
	ldr	r2, .L14+4
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
.L15:
	.align	2
.L14:
	.word	player
	.word	shadowOAM
	.size	initPlayer, .-initPlayer
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
	@ link register save eliminated.
	ldr	r3, .L22
	ldr	r2, [r3]
	ldr	r3, .L22+4
	tst	r2, #1
	ldrh	r2, [r3]
	addeq	r2, r2, #1
	lsleq	r2, r2, #16
	ldr	r1, .L22+8
	lsreq	r2, r2, #16
	strheq	r2, [r3]	@ movhi
	ldr	r3, .L22+12
	ldreq	r0, [r1, #24]
	ldrh	r3, [r3, #48]
	addeq	r0, r0, #1
	streq	r0, [r1, #24]
	tst	r3, #64
	ldr	r3, [r1]
	bne	.L18
	cmp	r3, #1
	subgt	r3, r3, #1
	strgt	r3, [r1]
.L18:
	ldr	r0, .L22+12
	ldrh	r0, [r0, #48]
	tst	r0, #128
	bne	.L19
	ldr	r0, [r1, #20]
	add	r0, r3, r0
	cmp	r0, #158
	addle	r3, r3, #1
	strle	r3, [r1]
.L19:
	mov	r0, #67108864
	ldr	ip, [r1, #4]
	ldr	r1, .L22+16
	orr	r3, r3, #16384
	strh	r3, [r1]	@ movhi
	strh	ip, [r1, #2]	@ movhi
	strh	r2, [r0, #16]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	time
	.word	hOff
	.word	player
	.word	67109120
	.word	shadowOAM
	.size	updatePlayer, .-updatePlayer
	.global	__aeabi_idivmod
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
	ldr	r4, .L29
	sub	sp, sp, #404
	add	r7, r4, #400
.L26:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L25
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
.L25:
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L26
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L29+8
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
.L30:
	.align	2
.L29:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L41
	mov	r9, #0
	mov	r3, r4
	mov	r8, #10
	mov	r7, #240
	mov	r6, #512
	ldr	r2, .L41+4
	ldr	ip, [r2]
	ldr	r5, .L41+8
	ldr	r2, .L41+12
	sub	sp, sp, #40
	and	lr, ip, #1
	add	r0, r4, #400
.L36:
	ldr	r1, [r3, #36]
	cmp	r1, #1
	bne	.L32
	ldr	r10, [r3, #12]
	cmp	lr, #0
	subeq	r10, r10, #2
	streq	r10, [r3, #12]
	orr	r1, r10, #16384
	cmp	r10, #0
	lsl	r1, r1, #16
	movle	r1, r5
	strle	r8, [r3, #4]
	ldr	r10, [r3, #4]
	lsrgt	r1, r1, #16
	strhle	r6, [r2]	@ movhi
	strle	r9, [r3, #36]
	strle	r7, [r3, #12]
	strh	r1, [r2, #2]	@ movhi
	strh	r10, [r2]	@ movhi
.L32:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L36
	ldr	r3, .L41+16
	ldr	r2, .L41+20
	mla	ip, r2, ip, r3
	ldr	r3, .L41+24
	cmp	r3, ip, ror #2
	bcs	.L40
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L40:
	mov	r0, sp
	bl	findRandTwig
	mov	r1, #240
	mov	r2, #1
	ldr	r3, [sp]
	ldr	r0, [sp, #8]
	add	r3, r3, r3, lsl #2
	add	r4, r4, r3, lsl #3
	str	r0, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #36]
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	twig
	.word	time
	.word	16624
	.word	shadowOAM+400
	.word	85899344
	.word	-1030792151
	.word	42949672
	.size	updateTwig, .-updateTwig
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
	pop	{r4, lr}
	b	updateTwig
	.size	updateGame, .-updateGame
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
	ldr	r3, .L47
	mov	lr, pc
	bx	r3
	ldr	r4, .L47+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.comm	hOff,2,2
	.comm	shadowOAM,1024,4
	.comm	twig,400,4
	.comm	player,28,4
	.global	livesremaining
	.data
	.align	2
	.type	livesremaining, %object
	.size	livesremaining, 4
livesremaining:
	.word	3
	.ident	"GCC: (devkitARM release 53) 9.1.0"

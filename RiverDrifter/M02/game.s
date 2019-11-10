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
	ldr	r2, .L10
	ldr	r0, .L10+4
	ldr	r4, .L10+8
	ldr	lr, .L10+12
.L7:
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
	bne	.L7
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L11:
	.align	2
.L10:
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
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r6, #8
	mov	lr, #80
	mov	r1, #16
	mov	r2, #16384
	mov	ip, #40
	mov	r0, #1
	ldr	r3, .L14
	strh	r4, [r3]	@ movhi
	ldr	r3, .L14+4
	ldr	r5, .L14+8
	str	r4, [r3]
	ldr	r3, .L14+12
	strh	r2, [r5]	@ movhi
	str	r4, [r3, #24]
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r6, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r5, #4]	@ movhi
	bl	initTwig
	mov	r3, #4
	mov	r2, #10
	strh	r3, [r5, #244]	@ movhi
	ldr	r1, .L14+16
	ldr	r3, .L14+20
	strh	r1, [r5, #240]	@ movhi
	strh	r2, [r5, #242]	@ movhi
	str	r6, [r3, #8]
	str	r6, [r3, #12]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r4, [r3, #24]
	str	r2, [r3]
	str	r2, [r3, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	hOff
	.word	time
	.word	shadowOAM
	.word	player
	.word	522
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
	mov	r4, #40
	mov	lr, #16
	mov	ip, #8
	mov	r0, #16384
	ldr	r3, .L18
	str	r2, [r3, #8]
	ldr	r2, .L18+4
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
.L19:
	.align	2
.L18:
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
	ldr	r3, .L22
	ldr	r1, .L22+4
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	ldr	ip, .L22+8
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
.L23:
	.align	2
.L22:
	.word	bullets
	.word	shadowOAM
	.word	522
	.size	initBullets, .-initBullets
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
	ldr	r3, .L35
	ldr	r3, [r3]
	push	{r4, r5, r6, lr}
	ldr	r5, .L35+4
	ldr	r4, .L35+8
	tst	r3, #1
	ldreq	r3, [r4, #24]
	ldrheq	r2, [r5]
	addeq	r3, r3, #1
	addeq	r2, r2, #1
	strheq	r2, [r5]	@ movhi
	streq	r3, [r4, #24]
	ldr	r3, .L35+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L26
	ldr	r3, [r4]
	cmp	r3, #1
	subgt	r3, r3, #1
	strgt	r3, [r4]
.L26:
	ldr	r3, .L35+12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L27
	ldr	r2, [r4]
	ldr	r3, [r4, #20]
	add	r3, r2, r3
	cmp	r3, #158
	addle	r2, r2, #1
	strle	r2, [r4]
.L27:
	ldr	r3, .L35+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L28
	ldr	r3, .L35+20
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L28
	ldr	r3, .L35+24
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bleq	fireBullet.part.0
.L28:
	mov	r1, #67108864
	ldr	r3, [r4]
	ldr	ip, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, .L35+28
	orr	r3, r3, #16384
	strh	r3, [r2]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r0, [r1, #16]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
	.word	time
	.word	hOff
	.word	player
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	bullets
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
	ldr	r4, .L42
	sub	sp, sp, #404
	add	r7, r4, #400
.L39:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L38
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
.L38:
	add	r4, r4, #40
	cmp	r4, r7
	bne	.L39
	ldr	r3, .L42+4
	mov	lr, pc
	bx	r3
	mov	r1, r5
	ldr	r3, .L42+8
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
.L43:
	.align	2
.L42:
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
	ldr	r4, .L54
	mov	r9, #0
	mov	r3, r4
	mov	r8, #10
	mov	r7, #240
	mov	r6, #512
	ldr	r2, .L54+4
	ldr	ip, [r2]
	ldr	r5, .L54+8
	ldr	r2, .L54+12
	sub	sp, sp, #40
	and	lr, ip, #1
	add	r0, r4, #400
.L49:
	ldr	r1, [r3, #36]
	cmp	r1, #1
	bne	.L45
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
.L45:
	add	r3, r3, #40
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L49
	ldr	r3, .L54+16
	ldr	r2, .L54+20
	mla	ip, r2, ip, r3
	ldr	r3, .L54+24
	cmp	r3, ip, ror #2
	bcs	.L53
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L53:
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
.L55:
	.align	2
.L54:
	.word	twig
	.word	time
	.word	16624
	.word	shadowOAM+400
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
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L58+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bxne	lr
	b	fireBullet.part.0
.L63:
	.align	2
.L62:
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
	ldr	r3, .L68
	ldr	r2, [r3, #16]
	cmp	r2, #1
	str	lr, [sp, #-4]!
	ldr	r2, [r3, #24]
	bne	.L65
	ldr	r0, [r3, #4]
	ldr	r1, .L68+4
	ldr	ip, [r3]
	add	r2, r2, #1
	add	lr, r0, #1
	str	r2, [r3, #24]
	str	lr, [r3, #4]
	strh	r0, [r1, #242]	@ movhi
	strh	ip, [r1, #240]	@ movhi
.L65:
	cmp	r2, #50
	ble	.L64
	mov	r2, #0
	mov	r0, #512
	ldr	r1, .L68+4
	str	r2, [r3, #16]
	str	r2, [r3, #24]
	strh	r0, [r1, #240]	@ movhi
.L64:
	ldr	lr, [sp], #4
	bx	lr
.L69:
	.align	2
.L68:
	.word	bullets
	.word	shadowOAM
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
	pop	{r4, lr}
	b	updateBullets
	.size	updateGame, .-updateGame
	.comm	hOff,2,2
	.comm	shadowOAM,1024,4
	.comm	bullets,28,4
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

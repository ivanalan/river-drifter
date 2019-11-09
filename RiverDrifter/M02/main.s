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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r6, #0
	mov	r3, #256
	ldr	r4, .L4+8
	strh	r3, [r5]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	strh	r6, [r5, #16]	@ movhi
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L4+16
	mov	r2, #100663296
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+32
	str	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	initGame
	.word	hideSprites
	.word	DMANow
	.word	splashScreenPal
	.word	9504
	.word	splashScreenTiles
	.word	100696064
	.word	splashScreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	goToStart
	ldr	r2, .L8
	ldr	r3, .L8+4
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	instruct.part.0,win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L16+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L21
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L21+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r3, #8256
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L21+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L21+12
	ldr	r1, .L21+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L21+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	win.part.0
.L18:
	pop	{r4, r5, r6, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100696064
	.word	winMap
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L26
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L26+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	ldr	r3, .L26+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L26+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L26+16
	ldr	r1, .L26+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L26+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	lose.part.0
.L23:
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	DMANow
	.word	losePal
	.word	9568
	.word	loseTiles
	.word	100696064
	.word	loseMap
	.word	oldButtons
	.size	lose, .-lose
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L30
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L30+4
	mov	lr, pc
	bx	r4
	mov	r2, #8
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L30+8
	ldr	r2, .L30+12
	ldr	r1, .L30+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+24
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L30+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	DMANow
	.word	pausePal
	.word	9376
	.word	100696064
	.word	pauseTiles
	.word	pauseMap
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L34
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L34+4
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #20480
	mov	r3, #5760
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L34+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L34+12
	ldr	r1, .L34+16
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L34+20
	ldr	r1, .L34+24
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L34+28
	ldr	r1, .L34+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #4352
	mov	r2, #1
	ldr	r3, .L34+36
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	riverPal
	.word	riverTiles
	.word	100696064
	.word	riverMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L37
	ldr	r2, .L48+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L46
.L37:
	tst	r3, #1
	beq	.L36
	ldr	r3, .L48+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L47
.L36:
	pop	{r4, lr}
	bx	lr
.L47:
	pop	{r4, lr}
	b	goToStart
.L46:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L37
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L62
	ldr	r5, .L62+4
	ldr	r3, [r4]
	ldrh	r2, [r5]
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r4]
	beq	.L51
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
.L51:
	tst	r2, #1
	beq	.L50
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L61
.L50:
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	ldr	r3, .L62+12
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L62+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L60:
	bl	goToGame
	ldr	r0, [r4]
	ldr	r3, .L62+20
	mov	lr, pc
	bx	r3
	ldrh	r2, [r5]
	b	.L51
.L63:
	.align	2
.L62:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	state
	.word	srand
	.size	start, .-start
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+8
	ldrh	r3, [r3, #48]
	ands	r3, r3, #2
	beq	.L72
	ldr	r4, .L76+12
.L65:
	ldr	r3, .L76+8
	ldrh	r3, [r3, #48]
	ands	r3, r3, #1
	beq	.L74
.L66:
	ldr	r3, .L76+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L67
	ldr	r3, .L76+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L75
.L67:
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L74:
	mov	r2, #67108864
	strh	r3, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L76+24
	str	r2, [r3]
	b	.L66
.L72:
	mov	r2, #67108864
	ldr	r4, .L76+12
	strh	r3, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L76+24
	str	r2, [r3]
	b	.L65
.L75:
	bl	goToPause
	b	.L67
.L77:
	.align	2
.L76:
	.word	updateGame
	.word	drawGame
	.word	67109120
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	state
	.size	game, .-game
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L80
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L80+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
	.word	waitForVBlank
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	goToInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruct, %function
goToInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L84
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L84+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	waitForVBlank
	.word	state
	.size	goToInstruct, .-goToInstruct
	.align	2
	.global	instruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L89
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L89+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	ldr	r3, .L89+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L89+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L89+16
	ldr	r1, .L89+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	instruct.part.0
.L86:
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	DMANow
	.word	instructionsPal
	.word	9424
	.word	instructionsTiles
	.word	100696064
	.word	instructionsMap
	.word	oldButtons
	.size	instruct, .-instruct
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r4, .L104
	ldr	r3, .L104+4
	mov	lr, pc
	bx	r3
	ldr	r8, .L104+8
	ldrh	r3, [r4, #48]
	ldr	r7, .L104+12
	strh	r3, [r8]	@ movhi
	ldr	r6, .L104+16
	ldr	r5, .L104+20
	ldr	fp, .L104+24
	ldr	r10, .L104+28
	ldr	r9, .L104+32
.L92:
	ldr	r0, [r7]
	ldr	ip, [r6]
.L93:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	add	r0, r0, #1
	strh	r3, [r8]	@ movhi
	cmp	ip, #5
	ldrls	pc, [pc, ip, asl #2]
	b	.L93
.L95:
	.word	.L100
	.word	.L99
	.word	.L98
	.word	.L97
	.word	.L96
	.word	.L94
.L94:
	str	r0, [r7]
	ldr	r3, .L104+36
	mov	lr, pc
	bx	r3
.L101:
	ldrh	r3, [r8]
	b	.L92
.L96:
	str	r0, [r7]
	ldr	r3, .L104+40
	mov	lr, pc
	bx	r3
	b	.L101
.L97:
	str	r0, [r7]
	ldr	r3, .L104+44
	mov	lr, pc
	bx	r3
	b	.L101
.L98:
	str	r0, [r7]
	mov	lr, pc
	bx	r9
	b	.L101
.L99:
	str	r0, [r7]
	mov	lr, pc
	bx	r10
	b	.L101
.L100:
	str	r0, [r7]
	mov	lr, pc
	bx	fp
	b	.L101
.L105:
	.align	2
.L104:
	.word	67109120
	.word	goToStart
	.word	buttons
	.word	.LANCHOR0
	.word	state
	.word	oldButtons
	.word	start
	.word	game
	.word	instruct
	.word	lose
	.word	win
	.word	pause
	.size	main, .-main
	.comm	state,4,4
	.comm	seed,4,4
	.global	time
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	time, %object
	.size	time, 4
time:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

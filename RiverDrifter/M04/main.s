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
	ldr	r4, .L4+4
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	r3, #1
	ldr	r0, .L4+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r6, #0
	mov	r3, #256
	ldr	r4, .L4+28
	strh	r3, [r5]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	strh	r6, [r5, #16]	@ movhi
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L4+36
	mov	r2, #100663296
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+44
	ldr	r1, .L4+48
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+52
	str	r6, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	202411
	.word	TitleSong
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
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldr	r2, .L8+8
	ldr	r3, .L8+12
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	setupSounds
	.word	setupInterrupts
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
	.set	loseItems.part.0,win.part.0
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
	mov	r1, #67108864
	mov	r0, #0
	mov	r2, #4
	ldr	r3, .L16+4
	strh	r0, [r1, #20]	@ movhi
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
	mov	r3, #0
	ldr	r4, .L30
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
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
	.word	9456
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
	mov	r3, #928
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
	ldr	r2, .L34+20
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L34+24
	ldr	r2, .L34+28
	ldr	r1, .L34+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L34+36
	ldr	r1, .L34+40
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L34+44
	ldr	r1, .L34+48
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L34+52
	ldr	r1, .L34+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #4864
	mov	r2, #1
	ldr	r3, .L34+60
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	DMANow
	.word	river1Pal
	.word	river1Tiles
	.word	100696064
	.word	river1Map
	.word	21508
	.word	7712
	.word	100679680
	.word	topskyTiles
	.word	100704256
	.word	topskyMap
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
	ldr	r3, .L48+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L46:
	ldr	r3, .L48+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L37
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	unpauseSound
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
	ldr	r3, .L62+16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L62+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L60:
	bl	goToGame
	ldr	r0, [r4]
	ldr	r3, .L62+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L62+28
	ldr	r2, .L62+32
	mov	r3, #1
	ldr	r1, .L62+36
	ldr	r0, .L62+40
	mov	lr, pc
	bx	r4
	ldrh	r2, [r5]
	b	.L51
.L63:
	.align	2
.L62:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	waitForVBlank
	.word	state
	.word	srand
	.word	playSoundA
	.word	11025
	.word	2077344
	.word	moonRiver
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L81
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L77
	ldr	r4, .L81+12
.L65:
	ldr	r3, .L81+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L79
.L67:
	ldr	r3, .L81+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L68
	ldr	r2, .L81+24
	ldrh	r2, [r2]
	tst	r2, #2
	moveq	r1, #1
	ldreq	r2, .L81+28
	streq	r1, [r2]
.L68:
	tst	r3, #8
	beq	.L69
	ldr	r3, .L81+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
.L69:
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	ldr	r3, .L81+32
	ldr	r3, [r3]
	cmp	r3, #4
	ble	.L66
	mov	r5, #67108864
	mov	r6, #0
	ldr	r3, .L81+36
	strh	r6, [r5, #16]	@ movhi
	ldr	r4, .L81+12
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L81+40
	strh	r6, [r5, #20]	@ movhi
	str	r2, [r3]
	ldr	r3, .L81+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L67
.L79:
	mov	r2, #67108864
	ldr	r1, .L81+36
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L81+40
	str	r2, [r3]
	b	.L67
.L66:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L81+36
	strh	r2, [r3, #16]	@ movhi
	ldr	r4, .L81+12
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L81+40
	str	r2, [r3]
	b	.L65
.L80:
	ldr	r3, .L81+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L69
.L82:
	.align	2
.L81:
	.word	updateGame
	.word	drawGame
	.word	endGame
	.word	waitForVBlank
	.word	livesremaining
	.word	oldButtons
	.word	buttons
	.word	cheat
	.word	itemsCollected
	.word	stopSound
	.word	state
	.word	pauseSound
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
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L85+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L89+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	r4, .L94
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L94+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r3, #9472
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L94+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L94+12
	ldr	r1, .L94+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L94+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	instruct.part.0
.L91:
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	DMANow
	.word	instructionsPal
	.word	instructionsTiles
	.word	100696064
	.word	instructionsMap
	.word	oldButtons
	.size	instruct, .-instruct
	.align	2
	.global	goToLoseItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLoseItems, %function
goToLoseItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L98
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L98+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L99:
	.align	2
.L98:
	.word	waitForVBlank
	.word	state
	.size	goToLoseItems, .-goToLoseItems
	.align	2
	.global	loseItems
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseItems, %function
loseItems:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #512
	mov	r5, #67108864
	ldr	r4, .L103
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L103+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	ldr	r3, .L103+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L103+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L103+16
	ldr	r1, .L103+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L103+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	loseItems.part.0
.L100:
	pop	{r4, r5, r6, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	DMANow
	.word	loseItemsPal
	.word	8464
	.word	loseItemsTiles
	.word	100696064
	.word	loseItemsMap
	.word	oldButtons
	.size	loseItems, .-loseItems
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
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	ldr	r8, .L119+4
	ldr	r6, .L119+8
	ldr	r7, .L119+12
	ldr	r5, .L119+16
	ldr	fp, .L119+20
	ldr	r10, .L119+24
	ldr	r9, .L119+28
	ldr	r4, .L119+32
.L106:
	ldr	r2, [r8]
	ldr	r1, [r6]
	ldrh	r3, [r7]
.L107:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	add	r2, r2, #1
	strh	r3, [r7]	@ movhi
	cmp	r1, #6
	ldrls	pc, [pc, r1, asl #2]
	b	.L107
.L109:
	.word	.L115
	.word	.L114
	.word	.L113
	.word	.L112
	.word	.L111
	.word	.L110
	.word	.L108
.L108:
	str	r2, [r8]
	ldr	r3, .L119+36
	mov	lr, pc
	bx	r3
	b	.L106
.L110:
	str	r2, [r8]
	ldr	r3, .L119+40
	mov	lr, pc
	bx	r3
	b	.L106
.L111:
	str	r2, [r8]
	ldr	r3, .L119+44
	mov	lr, pc
	bx	r3
	b	.L106
.L112:
	str	r2, [r8]
	ldr	r3, .L119+48
	mov	lr, pc
	bx	r3
	b	.L106
.L113:
	str	r2, [r8]
	mov	lr, pc
	bx	r9
	b	.L106
.L114:
	str	r2, [r8]
	mov	lr, pc
	bx	r10
	b	.L106
.L115:
	str	r2, [r8]
	mov	lr, pc
	bx	fp
	b	.L106
.L120:
	.align	2
.L119:
	.word	initialize
	.word	.LANCHOR0
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	instruct
	.word	67109120
	.word	loseItems
	.word	lose
	.word	win
	.word	pause
	.size	main, .-main
	.comm	state,4,4
	.comm	cheat,4,4
	.comm	itemsCollected,4,4
	.comm	livesremaining,4,4
	.comm	seed,4,4
	.comm	endGame,4,4
	.global	time
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	time, %object
	.size	time, 4
time:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

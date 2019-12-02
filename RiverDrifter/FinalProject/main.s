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
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L9:
	.align	2
.L8:
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
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r0, #0
	mov	r2, #4
	ldr	r3, .L12+4
	strh	r0, [r1, #20]	@ movhi
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
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
	ldr	r4, .L17
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L17+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r3, #8256
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L17+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L17+12
	ldr	r1, .L17+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L17+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	win.part.0
.L14:
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
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
	ldr	r4, .L22
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L22+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	ldr	r3, .L22+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L22+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L22+16
	ldr	r1, .L22+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L22+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	lose.part.0
.L19:
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	.align	2
.L22:
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
	ldr	r4, .L26
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #20]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L26+4
	mov	lr, pc
	bx	r4
	mov	r2, #8
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L26+8
	ldr	r2, .L26+12
	ldr	r1, .L26+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L26+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L26+24
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L26+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L30
	ldr	r4, .L30+4
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L30+8
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #20480
	mov	r3, #928
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L30+16
	ldr	r1, .L30+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L30+24
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L30+28
	ldr	r2, .L30+32
	ldr	r1, .L30+36
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L30+40
	ldr	r1, .L30+44
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L30+48
	ldr	r1, .L30+52
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L30+56
	ldr	r1, .L30+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #4864
	mov	r2, #1
	ldr	r3, .L30+64
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	hideSprites
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
	ldr	r4, .L44
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L33
	ldr	r2, .L44+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L42
.L33:
	tst	r3, #1
	beq	.L32
	ldr	r3, .L44+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L43
.L32:
	pop	{r4, lr}
	bx	lr
.L43:
	ldr	r3, .L44+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L42:
	ldr	r3, .L44+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L33
.L45:
	.align	2
.L44:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	unpauseSound
	.size	pause, .-pause
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
	ldr	r3, .L65
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L65+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L60
	ldr	r4, .L65+12
.L47:
	ldr	r3, .L65+16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L62
.L49:
	ldr	r3, .L65+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L50
	ldr	r2, .L65+24
	ldrh	r2, [r2]
	ands	r2, r2, #2
	beq	.L63
.L50:
	tst	r3, #8
	beq	.L52
	ldr	r3, .L65+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L64
.L52:
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L63:
	ldr	r1, .L65+28
	ldr	r0, [r1]
	cmp	r0, #0
	moveq	r2, #1
	str	r2, [r1]
	b	.L50
.L60:
	ldr	r3, .L65+32
	ldr	r3, [r3]
	cmp	r3, #4
	ble	.L48
	mov	r5, #67108864
	mov	r6, #0
	ldr	r3, .L65+36
	strh	r6, [r5, #16]	@ movhi
	ldr	r4, .L65+12
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L65+40
	strh	r6, [r5, #20]	@ movhi
	str	r2, [r3]
	ldr	r3, .L65+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L49
.L62:
	mov	r2, #67108864
	ldr	r1, .L65+36
	strh	r3, [r2, #16]	@ movhi
	strh	r3, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L65+40
	str	r2, [r3]
	b	.L49
.L48:
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L65+36
	strh	r2, [r3, #16]	@ movhi
	ldr	r4, .L65+12
	strh	r2, [r3, #20]	@ movhi
	mov	lr, pc
	bx	r1
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L65+40
	str	r2, [r3]
	b	.L47
.L64:
	ldr	r3, .L65+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L52
.L66:
	.align	2
.L65:
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
	ldr	r3, .L69
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L69+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r3, .L73
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L73+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r4, .L78
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L78+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r3, #9472
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L78+8
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L78+12
	ldr	r1, .L78+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L78+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	instruct.part.0
.L75:
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	.align	2
.L78:
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
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L82+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r4, .L87
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	ldr	r1, .L87+4
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r0, #3
	ldr	r3, .L87+8
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L87+12
	mov	r2, #100663296
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L87+16
	ldr	r1, .L87+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, r5, r6, lr}
	bne	loseItems.part.0
.L84:
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	DMANow
	.word	loseItemsPal
	.word	8464
	.word	loseItemsTiles
	.word	100696064
	.word	loseItemsMap
	.word	oldButtons
	.size	loseItems, .-loseItems
	.align	2
	.global	goToChoosePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChoosePlayer, %function
goToChoosePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4352
	mov	r5, #67108864
	ldr	r4, .L91
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L91+4
	mov	lr, pc
	bx	r4
	mov	r2, #4096
	mov	r3, #784
	strh	r2, [r5, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L91+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L91+12
	mov	r0, #3
	ldr	r1, .L91+16
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L91+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	DMANow
	.word	choosePlayerPal
	.word	choosePlayerTiles
	.word	100696064
	.word	choosePlayerMap
	.word	state
	.size	goToChoosePlayer, .-goToChoosePlayer
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
	bl	goToChoosePlayer
	bl	goToGame
	ldr	r3, .L95
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r2, .L95+4
	ldr	r3, .L95+8
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+12
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldr	r2, .L95+16
	ldr	r3, .L95+20
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L96:
	.align	2
.L95:
	.word	waitForVBlank
	.word	state
	.word	setupSounds
	.word	setupInterrupts
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
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
	ldr	r4, .L109
	ldr	r5, .L109+4
	ldr	r3, [r4]
	ldrh	r2, [r5]
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r4]
	beq	.L98
	ldr	r3, .L109+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L107
.L98:
	tst	r2, #1
	beq	.L97
	ldr	r3, .L109+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L108
.L97:
	pop	{r4, r5, r6, lr}
	bx	lr
.L108:
	ldr	r3, .L109+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L109+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L107:
	bl	goToChoosePlayer
	ldr	r0, [r4]
	ldr	r3, .L109+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L109+28
	ldr	r2, .L109+32
	mov	r3, #1
	ldr	r1, .L109+36
	ldr	r0, .L109+40
	mov	lr, pc
	bx	r4
	ldrh	r2, [r5]
	b	.L98
.L110:
	.align	2
.L109:
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
	.global	choosePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	choosePlayer, %function
choosePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L128
	ldrh	r3, [r3]
	tst	r3, #32
	push	{r4, lr}
	beq	.L112
	ldr	r2, .L128+4
	ldrh	r2, [r2]
	tst	r2, #32
	beq	.L125
.L112:
	tst	r3, #16
	beq	.L113
	ldr	r2, .L128+4
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L126
.L113:
	tst	r3, #8
	beq	.L114
	ldr	r3, .L128+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L127
.L114:
	ldr	r3, .L128+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L128+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L126:
	ldr	r0, .L128+16
	ldr	r2, [r0]
	add	r2, r2, #1
	eor	r1, r2, r2, asr #31
	ldr	ip, .L128+20
	sub	r1, r1, r2, asr #31
	and	r1, r1, #3
	str	r2, [r0]
	str	r1, [ip]
	b	.L113
.L125:
	ldr	r0, .L128+16
	ldr	r2, [r0]
	sub	r2, r2, #1
	eor	r1, r2, r2, asr #31
	ldr	ip, .L128+20
	sub	r1, r1, r2, asr #31
	and	r1, r1, #3
	str	r2, [r0]
	str	r1, [ip]
	b	.L112
.L127:
	bl	goToGame
	b	.L114
.L129:
	.align	2
.L128:
	.word	oldButtons
	.word	buttons
	.word	displayPlayer
	.word	drawGame
	.word	revolver
	.word	choice
	.size	choosePlayer, .-choosePlayer
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
	ldr	r3, .L145
	mov	lr, pc
	bx	r3
	ldr	r8, .L145+4
	ldr	r6, .L145+8
	ldr	r7, .L145+12
	ldr	r5, .L145+16
	ldr	fp, .L145+20
	ldr	r10, .L145+24
	ldr	r9, .L145+28
	ldr	r4, .L145+32
.L131:
	ldr	r2, [r8]
	ldr	r1, [r6]
	ldrh	r3, [r7]
.L132:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	add	r2, r2, #1
	strh	r3, [r7]	@ movhi
	cmp	r1, #7
	ldrls	pc, [pc, r1, asl #2]
	b	.L132
.L134:
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L135
	.word	.L133
.L133:
	str	r2, [r8]
	ldr	r3, .L145+36
	mov	lr, pc
	bx	r3
	b	.L131
.L135:
	str	r2, [r8]
	ldr	r3, .L145+40
	mov	lr, pc
	bx	r3
	b	.L131
.L136:
	str	r2, [r8]
	ldr	r3, .L145+44
	mov	lr, pc
	bx	r3
	b	.L131
.L137:
	str	r2, [r8]
	ldr	r3, .L145+48
	mov	lr, pc
	bx	r3
	b	.L131
.L138:
	str	r2, [r8]
	ldr	r3, .L145+52
	mov	lr, pc
	bx	r3
	b	.L131
.L139:
	str	r2, [r8]
	mov	lr, pc
	bx	r9
	b	.L131
.L140:
	str	r2, [r8]
	mov	lr, pc
	bx	r10
	b	.L131
.L141:
	str	r2, [r8]
	mov	lr, pc
	bx	fp
	b	.L131
.L146:
	.align	2
.L145:
	.word	initialize
	.word	.LANCHOR0
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	instruct
	.word	67109120
	.word	choosePlayer
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
	.comm	choice,4,4
	.comm	revolver,4,4
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

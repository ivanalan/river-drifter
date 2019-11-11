#include "myLib.h"
#include "splashScreen.h"
#include "pause.h"
#include "river.h"
#include "lose.h"
#include "win.h"
#include "instructions.h"
#include "spritesheet.h"

// Prototypes
void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();
void goToInstruct();
void start();
void game();
void pause();
void win();
void lose();
void instruct();

// Shadow OAM
OBJ_ATTR shadowOAM[128];

// Variables
unsigned short buttons;
unsigned short oldButtons;
extern int time = 0;

// Random Seed
int seed;

int livesremaining;

enum
{
    START,
    GAME,
    INSTRUCT,
    PAUSE,
    WIN,
    LOSE
};
int state;

int main()
{

    initialize();

    while (1)
    {
        time++;

        oldButtons = buttons;
        buttons = BUTTONS;

        switch (state)
        {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case INSTRUCT:
            instruct();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

void initialize()
{

    goToStart();

    buttons = BUTTONS;
}
void goToStart()
{

    //init, restart game
    initGame();
    hideSprites();
    REG_BG0HOFF = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    //load menu screen
    DMANow(3, splashScreenPal, PALETTE, splashScreenPalLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_SMALL;
    DMANow(3, splashScreenTiles, &CHARBLOCK[0], splashScreenTilesLen / 2);
    DMANow(3, splashScreenMap, &SCREENBLOCK[16], splashScreenMapLen / 2);

    state = START;
}
void start()
{
    seed++;

    //game screen
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToGame();
        srand(seed);
    }

    //instructions screen
    if (BUTTON_PRESSED(BUTTON_A))
    {
        goToInstruct();
    }
}
void goToWin()
{
    waitForVBlank();
    state = WIN;
}

void win()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    //load win screen
    DMANow(3, winPal, PALETTE, winPalLen / 2);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_SMALL;
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[16], winMapLen / 2);

    //go back to start/reset
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToStart();
    }
}
void lose()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    //load lose screen
    DMANow(3, losePal, PALETTE, losePalLen / 2);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_SMALL;
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[16], loseMapLen / 2);

    //go back to start/reset
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToStart();
    }
}
void goToPause()
{

    REG_DISPCTL = MODE0 | BG1_ENABLE;

    //load pause screen
    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(0) | BG_SIZE_SMALL;
    DMANow(3, pauseTiles, &CHARBLOCK[2], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[0], pauseMapLen / 2);

    waitForVBlank();
    state = PAUSE;
}
void pause()
{
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_A))
    {
        goToStart();
    }
}
void goToGame()
{
    //load bg screen
    DMANow(3, riverPal, PALETTE, riverPalLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_WIDE;
    DMANow(3, riverTiles, &CHARBLOCK[0], riverTilesLen / 2);
    DMANow(3, riverMap, &SCREENBLOCK[16], riverMapLen / 2);

    //setup sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    state = GAME;
}

void game()
{
    updateGame();
    drawGame();

    //win condition
    if (BUTTON_HELD(BUTTON_B))
    {
        REG_BG0HOFF = 0;
        goToWin();
    }

    //lose condition
    if (livesremaining == 0)
    {
        REG_BG0HOFF = 0;
        goToLose();
    }

    //pause condition
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToPause();
    }

    waitForVBlank();
}

void goToLose()
{
    waitForVBlank();
    state = LOSE;
}

void goToInstruct()
{
    waitForVBlank();
    state = INSTRUCT;
}

void instruct()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    //load instructions screen
    DMANow(3, instructionsPal, PALETTE, instructionsPalLen / 2);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_SMALL;
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[16], instructionsMapLen / 2);

    //go back to start/reset
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToStart();
    }
}
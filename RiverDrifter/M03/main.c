/*
River Drifter - GAME INFO

WHAT IS FINISHED?
- Fixed bug so that Items collected can now go to 99
- Updated river graphic and sky background
- Parallax Simultaneous backgrounds
- Added Distance Traveled on top of screen
- Cheat
- Added Lose condition if < 5 items collected

WHAT NEEDS TO BE ADDED?
- Make cheat change player color
- Actual Graphics for sprites
- Update Instructions Page
- Animation
- Sound

BUGS?
- None I am aware of so far

HOW TO PLAY?
- Press enter to start game, pause  
- Press x to restart game from pause, press start to go back to game from pause
- Pressing z during game activates cheat which allows you to be invincible to twigs
- Press up arrow to move up
- Press down arrow to move down
- Press x to throw rock and "sink" twigs
- To win collect more than 5 items and reach the end of the river
- Hitting a twig will take away a life

*/
#include "myLib.h"
#include "splashScreen.h"
#include "pause.h"
#include "river.h"
#include "river1.h"
#include "topsky.h"
#include "lose.h"
#include "win.h"
#include "loseItems.h"
#include "instructions.h"
#include "spritesheet.h"

// Prototypes
void initialize();
void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();
void goToLoseItems();
void goToInstruct();
void start();
void game();
void pause();
void win();
void lose();
void loseItems();
void instruct();

// Shadow OAM
OBJ_ATTR shadowOAM[128];

// Variables
unsigned short buttons;
unsigned short oldButtons;
extern int time = 0;
int endGame;

// Random Seed
int seed;

int livesremaining;
int itemsCollected;
int cheat;

enum
{
    START,
    GAME,
    INSTRUCT,
    PAUSE,
    WIN,
    LOSE,
    LOSEITEMS
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
        case LOSEITEMS:
            loseItems();
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
    REG_BG1HOFF = 0;
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
    //load river screen
    DMANow(3, river1Pal, PALETTE, river1PalLen / 2);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_WIDE;
    DMANow(3, river1Tiles, &CHARBLOCK[0], river1TilesLen / 2);
    DMANow(3, river1Map, &SCREENBLOCK[16], river1MapLen / 2);

    //load sky screen
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(20) | BG_SIZE_WIDE;
    DMANow(3, topskyTiles, &CHARBLOCK[1], topskyTilesLen / 2);
    DMANow(3, topskyMap, &SCREENBLOCK[20], topskyMapLen / 2);

    //setup sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    state = GAME;
}

void game()
{
    updateGame();
    drawGame();

    //Reached end of river
    if (endGame == 1)
    {
        // win condition
        if (itemsCollected >= 5)
        {
            REG_BG0HOFF = 0;
            goToWin();
        }
        //not enough items lose condition
        else
        {
            REG_BG0HOFF = 0;
            REG_BG1HOFF = 0;
            goToLoseItems();
        }
    }

    //lose condition
    if (livesremaining == 0)
    {
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        goToLose();
    }

    // activate Cheat
    if (BUTTON_PRESSED(BUTTON_B))
    {
        cheat = 1;
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

void goToLoseItems()
{
    waitForVBlank();
    state = LOSEITEMS;
}
void loseItems()
{
    REG_DISPCTL = MODE0 | BG1_ENABLE;

    //load lose screen
    DMANow(3, loseItemsPal, PALETTE, loseItemsPalLen / 2);
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_SMALL;
    DMANow(3, loseItemsTiles, &CHARBLOCK[0], loseItemsTilesLen / 2);
    DMANow(3, loseItemsMap, &SCREENBLOCK[16], loseItemsMapLen / 2);

    //go back to start/reset
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToStart();
    }
}

/*
River Drifter - GAME INFO

WHAT IS FINISHED WITH M04?
- Fixed bug on pause screen hoff
- Update Instructions Page
- Update Pause Page
- Update Splash Screen
- Added Splash Screen music that loops
- Aded Game play screen music
- Added sound effect when player hits branch
- Animated player so that they're paddling


WHAT NEEDS TO BE ADDED?
- Make cheat change player color


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
#include "sound.h"
#include "moonRiver.h"
#include "TitleSong.h"
#include "loseItems.h"
#include "instructions.h"
#include "spritesheet.h"
#include "choosePlayer.h"

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
void goToChoosePlayer();
void choosePlayer();
void loseItems();
void instruct();

// Shadow OAM
OBJ_ATTR shadowOAM[128];

// Variables
unsigned short buttons;
unsigned short oldButtons;
extern int time = 0;
int revolver;
int choice;
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
    LOSEITEMS,
    CHOOSEPLAYER
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
        case CHOOSEPLAYER:
            choosePlayer();
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
    //test
    goToStart();
    goToChoosePlayer();
    goToGame();
    goToLose();
    //test
    setupSounds();
    setupInterrupts();

    goToStart();

    buttons = BUTTONS;
}
void goToStart()
{
    //play title song
    stopSound();
    playSoundA(TitleSong, TITLESONGLEN, TITLESONGFREQ, 1);

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

    //choose player screen
    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToChoosePlayer();
        srand(seed);
        stopSound();
        playSoundA(moonRiver, MOONRIVERLEN, MOONRIVERFREQ, 1);
    }

    //instructions screen
    if (BUTTON_PRESSED(BUTTON_A))
    {
        stopSound();
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
    REG_BG1HOFF = 0;

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
        unpauseSound();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_A))
    {
        stopSound();
        goToStart();
    }
}
void goToGame()
{
    hideSprites();
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
            stopSound();
            goToWin();
        }
        //not enough items lose condition
        else
        {
            REG_BG0HOFF = 0;
            REG_BG1HOFF = 0;
            stopSound();
            goToLoseItems();
        }
    }

    //lose condition
    if (livesremaining == 0)
    {
        REG_BG0HOFF = 0;
        REG_BG1HOFF = 0;
        stopSound();
        goToLose();
    }

    // activate Cheat
    if (BUTTON_PRESSED(BUTTON_B))
    {
        if (cheat == 0)
        {
            cheat = 1;
        }
        else
        {
            cheat = 0;
        }
    }
    //pause condition
    if (BUTTON_PRESSED(BUTTON_START))
    {
        pauseSound();
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

void goToChoosePlayer()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    //load choose player screen
    DMANow(3, choosePlayerPal, PALETTE, choosePlayerPalLen / 2);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(16) | BG_SIZE_SMALL;
    DMANow(3, choosePlayerTiles, &CHARBLOCK[0], choosePlayerTilesLen / 2);
    DMANow(3, choosePlayerMap, &SCREENBLOCK[16], choosePlayerMapLen / 2);

    state = CHOOSEPLAYER;
}

void choosePlayer()
{

    if (BUTTON_PRESSED(BUTTON_LEFT))
    {
        revolver--;
        choice = abs(revolver) % 4;
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT))
    {
        revolver++;
        choice = abs(revolver) % 4;
    }

    if (BUTTON_PRESSED(BUTTON_START))
    {
        goToGame();
    }

    displayPlayer();
    drawGame();
}

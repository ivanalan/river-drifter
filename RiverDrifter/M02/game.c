#include "myLib.h"
#include "spritesheet.h"
#include <stdlib.h>

//Sprite Locations
//shadowOAM [0] = player
//shadowOAM [1] = digits (ex: 0,1,2,3,...)
//shadowOAM [2] = rock to be thrown

//shadowOAM [5] = "Lives: "
//shadowOAM [6] = "Items: "
//shadowOAM [7] = "Progress in River"

//shadowOAM [50 - 60] = Twig
//shadowOAM [16] = Shirt
//shadowOAM [17] = Short
//shadowOAM [18] = Boots
//shadowOAM [19] = Blanket
//shadowOAM [20] = Hat

//shadowOAM [80] = left end of progress bar
//shadowOAM [81] = middle part of progress bar
//shadowOAM [82] = right end of progress bar

typedef struct
{
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int distanceTraveled;
} PLAYER;

typedef struct
{
    int id;
    int row;
    int initRow;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int type;
    int active;
} ENEMY;

//prototypes
void initGame();
void updateGame();
void drawGame();

//player
void initPlayer();
void updatePlayer();
void drawPlayer();
#define LIVESREMAINING 3
extern int livesremaining = 3;
void initLives();
void updateLives(int lives);

//twig
void initTwig();
void updateTwig();
ENEMY findRandTwig();
void drawEnemy();
#define BULLETCOUNT 5
#define TWIGCOUNT 10

//Player bullets
void initBullets();
void fireBullet();
void updateBullets();

PLAYER player;
ENEMY twig[TWIGCOUNT];

// Shadow OAM
OBJ_ATTR shadowOAM[128];

extern int time;

// Horizontal Offset
unsigned short hOff;

void initGame()
{
    hOff = 0;
    time = 0;
    initPlayer();
    initTwig();
}
void initTwig()
{
    for (int i = 0; i < TWIGCOUNT; i++)
    {
        twig[i].id = i;
        twig[i].active = 0;

        twig[i].col = SCREENWIDTH;
        twig[i].initRow = (20 * (i % 6)) + 20;
        twig[i].row = (20 * (i % 6)) + 20;

        twig[i].height = 16;
        twig[i].width = 16;

        shadowOAM[i + 50].attr0 = twig[i].row | ATTR0_SQUARE;
        shadowOAM[i + 50].attr1 = twig[i].col | ATTR1_SMALL;
        shadowOAM[i + 50].attr2 = ATTR2_TILEID(2, 0);
    }
}

void initPlayer()
{
    player.row = SCREENHEIGHT / 2;
    player.col = (SCREENWIDTH / 2) - 80;
    player.rdel = 1;
    player.width = 16;
    player.height = 8;
    player.distanceTraveled = 0;
    shadowOAM[0].attr0 = 0 | ATTR0_WIDE;
    shadowOAM[0].attr1 = 0 | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0);
}

void updateGame()
{
    updatePlayer();
    updateTwig();
}

void updatePlayer()
{

    if (time % 2 == 0)
    {
        hOff++;
        player.distanceTraveled++;
    }
    if (BUTTON_HELD(BUTTON_UP) && player.row > 1)
    {
        player.row--;
    }

    if (BUTTON_HELD(BUTTON_DOWN) && player.row + player.height < SCREENHEIGHT - 1)
    {
        player.row++;
    }

    shadowOAM[0].attr0 = player.row | ATTR0_WIDE;
    shadowOAM[0].attr1 = player.col | ATTR1_TINY;

    REG_BG0HOFF = hOff;
}

void updateTwig()
{
    for (int i = 0; i < TWIGCOUNT; i++)
    {
        if (twig[i].active == 1)
        {

            if (time % 2 == 0)
            {
                twig[i].col -= 2;
            }
            if (twig[i].col < 1)
            {
                twig[i].active = 0;
                twig[i].row = 10;
                twig[i].col = SCREENWIDTH;
                shadowOAM[i + 50].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
            }
            shadowOAM[i + 50].attr0 = twig[i].row | ATTR0_SQUARE;
            shadowOAM[i + 50].attr1 = twig[i].col | ATTR1_SMALL;
        }
    }
    if (time % 100 == 0)
    {
        ENEMY rand = findRandTwig();
        twig[rand.id].row = rand.initRow;
        twig[rand.id].col = SCREENWIDTH;
        twig[rand.id].active = 1;
    }
}

ENEMY findRandTwig()
{
    ENEMY rands[TWIGCOUNT];
    int count = 0;
    for (int i = 0; i < TWIGCOUNT; i++)
    {
        if (twig[i].active == 0)
        {
            rands[count] = twig[i];
            count++;
        }
    }
    return rands[rand() % count];
}

void drawGame()
{
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
}
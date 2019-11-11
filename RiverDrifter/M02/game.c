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

//shadowOAM [30 - 34] = bullets (rocks to be thrown)

//shadowOAM [80] = left end of progress bar
//shadowOAM [81] = middle part of progress bar
//shadowOAM [82] = right end of progress bar
typedef struct
{
    int row;
    int col;
    int height;
    int width;
    int active;
    int erased;
    int distTraveled;
} BULLET;

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
extern int livesremaining;
void initLives();
void updateLives(int lives);

//twig
void initTwig();
void updateTwig();
ENEMY findRandTwig();
void drawEnemy();
#define BULLETCOUNT 1
#define TWIGCOUNT 10

//Player bullets
void initBullets();
void fireBullet();
void updateBullets();

PLAYER player;
ENEMY twig[TWIGCOUNT];
BULLET bullets[BULLETCOUNT];

// Shadow OAM
OBJ_ATTR shadowOAM[128];

extern int time;

// Horizontal Offset
unsigned short hOff;

void initGame()
{
    hOff = 0;
    time = 0;
    livesremaining = 3;
    initPlayer();
    initTwig();
    initBullets();
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

void initBullets()
{
    for (int i = 0; i < BULLETCOUNT; i++)
    {
        bullets[i].height = 8;
        bullets[i].width = 8;
        bullets[i].row = 10;
        bullets[i].col = 10;
        bullets[i].active = 0;
        bullets[i].erased = 0;
        bullets[i].distTraveled = 0;

        //bullets drawn from [30, 34]
        shadowOAM[i + 30].attr0 = bullets[i].row | ATTR0_HIDE | ATTR0_SQUARE;
        shadowOAM[i + 30].attr1 = bullets[i].col | ATTR1_TINY;
        shadowOAM[i + 30].attr2 = ATTR2_TILEID(4, 0);
    }
}

void updateGame()
{
    updatePlayer();
    updateTwig();
    updateBullets();
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

    //fire bullet
    if (BUTTON_PRESSED(BUTTON_A))
    {
        fireBullet();
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
            //decrease lives if collision with twig
            if (collision(twig[i].col, twig[i].row, twig[i].width, twig[i].height, player.col, player.row, player.width, player.height))
            {
                livesremaining = livesremaining - 1;
                twig[i].active = 0;
                twig[i].row = 10;
                twig[i].col = SCREENWIDTH;
                shadowOAM[i + 50].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
            }

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

void fireBullet()
{
    for (int i = 0; i < BULLETCOUNT; i++)
    {
        if (bullets[i].active == 0)
        {
            bullets[i].row = player.row;
            bullets[i].col = player.col + player.width;
            bullets[i].active = 1;
            bullets[i].erased = 0;
            break;
        }
    }
}

void updateBullets()
{
    for (int i = 0; i < BULLETCOUNT; i++)
    {
        if (bullets[i].active == 1)
        {
            shadowOAM[i + 30].attr0 = bullets[i].row | ATTR0_SQUARE;
            shadowOAM[i + 30].attr1 = bullets[i].col | ATTR1_TINY;
            bullets[i].col += 1;
            bullets[i].distTraveled += 1;

            //check if bullets hit twigs
            for (int j = 0; j < TWIGCOUNT; j++)
            {
                if (twig[j].active == 1)
                {
                    if (collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, twig[j].col, twig[j].row, twig[j].width, twig[j].height))
                    {
                        twig[j].active = 0;
                        twig[j].row = 10;
                        twig[j].col = SCREENWIDTH;
                        shadowOAM[j + 50].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
                        bullets[i].active = 0;
                        bullets[i].distTraveled = 0;
                        shadowOAM[i + 30].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
                    }
                }
            }
        }
        if (bullets[i].distTraveled > 50)
        {
            bullets[i].active = 0;
            bullets[i].distTraveled = 0;
            shadowOAM[i + 30].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
        }
    }
}

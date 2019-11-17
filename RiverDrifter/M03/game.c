#include "myLib.h"
#include "spritesheet.h"
#include <stdlib.h>

//Sprite Locations
//shadowOAM [0] = player
//shadowOAM [1] = digits (ex: 0,1,2,3,...)
//shadowOAM [2] = rock to be thrown

//shadowOAM [4] = "Lives: "
//shadowOAM [5] = digits (0,1,2,4 ...)

//shadowOAM [6] = "Items: "
//shadowOAM [7] = digits (ex: 0,1,2,3)
//shadowOAM [8] = "two digits"

//shadowOAM [10 - 20] = timeline
//shadowOAM [3] = player icon distance

//shadowOAM [50 - 60] = Twig
//shadowOAM [70] = Shirt
//shadowOAM [71] = Short
//shadowOAM [72] = Boots
//shadowOAM [73] = Blanket
//shadowOAM [74] = Hat

//shadowOAM [30 - 34] = bullets (rocks to be thrown)

enum
{
    SHIRT,
    SHORT,
    BOOTS,
    BLANKET,
    HAT
};

typedef struct
{
    int id;
    int row;
    int initRow;
    int col;
    int height;
    int width;
    int active;
    int type;
} CLOTHING;

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

//items
extern int itemsCollected;
void initItems();
void updateItems(int item);

//clothing
void initClothes();
void updateClothes();
CLOTHING findRandClothing();
#define CLOTHINGCOUNT 5

//lives
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

//timeline
void updateTimeline();

PLAYER player;
ENEMY twig[TWIGCOUNT];
BULLET bullets[BULLETCOUNT];
CLOTHING clothes[CLOTHINGCOUNT];

// Shadow OAM
OBJ_ATTR shadowOAM[128];

extern int time;
extern int endGame;

// Horizontal Offset
unsigned short hOff;

void initGame()
{
    endGame = 0;
    hOff = 0;
    time = 0;
    livesremaining = 3;
    itemsCollected = 0;
    initPlayer();
    initTwig();
    initLives();
    initBullets();
    initItems();
    initClothes();
}

void initItems()
{
    //"Items: "
    shadowOAM[6].attr0 = 4 | ATTR0_WIDE;
    shadowOAM[6].attr1 = 180 | ATTR1_SMALL;
    shadowOAM[6].attr2 = ATTR2_TILEID(0, 3);

    //intial "0"
    shadowOAM[7].attr0 = 4 | ATTR0_SQUARE;
    shadowOAM[7].attr1 = 215 | ATTR1_TINY;
    shadowOAM[7].attr2 = ATTR2_TILEID(9, 4);
}

void initClothes()
{
    //shadowOAM [70] = Shirt
    //shadowOAM [71] = Short
    //shadowOAM [72] = Boots
    //shadowOAM [73] = Blanket
    //shadowOAM [74] = Hat

    for (int i = 0; i < CLOTHINGCOUNT; i++)
    {
        clothes[i].id = i;
        clothes[i].initRow = (8 * (i % 10)) + 81;
        clothes[i].row = (8 * (i % 10)) + 81;
        clothes[i].col = SCREENWIDTH;
        clothes[i].active = 0;
        clothes[i].height = 8;
        clothes[i].width = 8;
        shadowOAM[i + 70].attr0 = clothes[i].row | ATTR0_SQUARE;
        shadowOAM[i + 70].attr1 = clothes[i].col | ATTR1_TINY;
        shadowOAM[i + 70].attr2 = ATTR2_TILEID(i + 5, 0);
    }
}

void initLives()
{
    //"lives: "
    shadowOAM[4].attr0 = 4 | ATTR0_WIDE;
    shadowOAM[4].attr1 = 2 | ATTR1_SMALL;
    shadowOAM[4].attr2 = ATTR2_TILEID(0, 2);

    //intial "3"
    shadowOAM[5].attr0 = 4 | ATTR0_SQUARE;
    shadowOAM[5].attr1 = 8 | ATTR1_TINY;
    shadowOAM[5].attr2 = ATTR2_TILEID(2, 4);
}
void initTwig()
{
    for (int i = 0; i < TWIGCOUNT; i++)
    {
        twig[i].id = i;
        twig[i].active = 0;

        twig[i].col = SCREENWIDTH;
        twig[i].initRow = (16 * (i % 5)) + 81;
        twig[i].row = (16 * (i % 5)) + 81;

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
    player.col = (SCREENWIDTH / 2) - 70;
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
    updateLives(livesremaining);
    updateItems(itemsCollected);
    updateClothes();
    updateTimeline();
}

void updateTimeline()
{
    int speed = 20;
    //update player distance icon
    shadowOAM[3].attr0 = 6 | ATTR0_WIDE;
    shadowOAM[3].attr1 = 74 + (player.distanceTraveled / speed) | ATTR1_TINY;
    shadowOAM[3].attr2 = ATTR2_TILEID(13, 0) | ATTR2_PRIORITY(0);

    int interval = 70;
    //left bracket
    shadowOAM[10].attr0 = 6 | ATTR0_SQUARE;
    shadowOAM[10].attr1 = interval | ATTR1_TINY;
    shadowOAM[10].attr2 = ATTR2_TILEID(10, 0);

    int length = 0;
    for (length = 0; length <= 8; length++)
    {
        interval += 8;
        //middle line
        shadowOAM[11 + length].attr0 = 6 | ATTR0_SQUARE;
        shadowOAM[11 + length].attr1 = interval | ATTR1_TINY;
        shadowOAM[11 + length].attr2 = ATTR2_TILEID(11, 0) | ATTR2_PRIORITY(1);
    }

    //right bracket
    shadowOAM[20].attr0 = 6 | ATTR0_SQUARE;
    shadowOAM[20].attr1 = (interval + 8) | ATTR1_TINY;
    shadowOAM[20].attr2 = ATTR2_TILEID(12, 0);

    //endGame if player icon reaches entire distance
    if ((74 + (player.distanceTraveled / speed)) == interval + 8)
    {
        endGame = 1;
    }
}

void updateClothes()
{
    //shadowOAM [70] = Shirt
    //shadowOAM [71] = Short
    //shadowOAM [72] = Boots
    //shadowOAM [73] = Blanket
    //shadowOAM [74] = Hat
    for (int i = 0; i < CLOTHINGCOUNT; i++)
    {
        if (clothes[i].active == 1)
        {
            //if player collects item
            if (collision(player.col, player.row, player.width, player.height, clothes[i].col, clothes[i].row, clothes[i].width, clothes[i].height))
            {
                itemsCollected++;
                clothes[i].active = 0;
                clothes[i].row = 10;
                clothes[i].col = SCREENWIDTH + 10;
                shadowOAM[i + 70].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
            }

            if (time % 2 == 0)
            {
                clothes[i].col -= 2;
            }
            if (clothes[i].col < 1)
            {
                clothes[i].active = 0;
                clothes[i].row = 10;
                clothes[i].col = SCREENWIDTH;
                shadowOAM[i + 70].attr0 = ATTR0_HIDE | ATTR0_SQUARE;
            }

            shadowOAM[i + 70].attr0 = clothes[i].row | ATTR0_SQUARE;
            shadowOAM[i + 70].attr1 = clothes[i].col | ATTR1_TINY;
        }
    }
    if (time % 257 == 0)
    {
        CLOTHING rand = findRandClothing();
        clothes[rand.id].row = rand.initRow;
        clothes[rand.id].col = SCREENWIDTH;
        clothes[rand.id].active = 1;
    }
}
CLOTHING findRandClothing()
{
    CLOTHING rands[CLOTHINGCOUNT];
    int count = 0;
    for (int i = 0; i < CLOTHINGCOUNT; i++)
    {
        if (clothes[i].active == 0)
        {
            rands[count] = clothes[i];
            count++;
        }
    }
    return rands[rand() % count];
}

void updateLives(int lives)
{
    if (lives == 2)
    {
        shadowOAM[5].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[5].attr1 = 35 | ATTR1_TINY;
        shadowOAM[5].attr2 = ATTR2_TILEID(1, 4);
    }
    else if (lives == 1)
    {
        shadowOAM[5].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[5].attr1 = 35 | ATTR1_TINY;
        shadowOAM[5].attr2 = ATTR2_TILEID(0, 4);
    }
    else
    {
        shadowOAM[5].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[5].attr1 = 35 | ATTR1_TINY;
        shadowOAM[5].attr2 = ATTR2_TILEID(2, 4);
    }

    //update lives
    shadowOAM[4].attr0 = 4 | ATTR0_WIDE;
    shadowOAM[4].attr1 = 2 | ATTR1_SMALL;
    shadowOAM[4].attr2 = ATTR2_TILEID(0, 2);
}

void updateItems(int items)
{
    if (items >= 10)
    {
        //left digit: '1'
        shadowOAM[7].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[7].attr1 = 215 | ATTR1_TINY;
        shadowOAM[7].attr2 = ATTR2_TILEID((items / 10) - 1, 4);

        //right digit:
        shadowOAM[8].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[8].attr1 = 222 | ATTR1_TINY;
        shadowOAM[8].attr2 = ATTR2_TILEID((items - 1) % 10, 4);
    }
    else if (items > 0)
    {
        //update number
        shadowOAM[7].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[7].attr1 = 215 | ATTR1_TINY;
        shadowOAM[7].attr2 = ATTR2_TILEID(items - 1, 4);
    }
    else
    {
        //intial "0"
        shadowOAM[7].attr0 = 4 | ATTR0_SQUARE;
        shadowOAM[7].attr1 = 215 | ATTR1_TINY;
        shadowOAM[7].attr2 = ATTR2_TILEID(9, 4);
    }

    //update "Items: "
    shadowOAM[6].attr0 = 4 | ATTR0_WIDE;
    shadowOAM[6].attr1 = 182 | ATTR1_SMALL;
    shadowOAM[6].attr2 = ATTR2_TILEID(0, 3);
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
    REG_BG1HOFF = hOff / 20;
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

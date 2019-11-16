# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 69 "myLib.h"
extern unsigned short *videoBuffer;
# 89 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 163 "myLib.h"
void hideSprites();
# 183 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 193 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 234 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "main.c" 2
# 1 "splashScreen.h" 1
# 22 "splashScreen.h"
extern const unsigned short splashScreenTiles[9504];


extern const unsigned short splashScreenMap[1024];


extern const unsigned short splashScreenPal[256];
# 3 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[9376];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 4 "main.c" 2
# 1 "river.h" 1
# 22 "river.h"
extern const unsigned short riverTiles[5760];


extern const unsigned short riverMap[2048];


extern const unsigned short riverPal[256];
# 5 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[9568];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 6 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[8256];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 7 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[9424];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 8 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 9 "main.c" 2


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


OBJ_ATTR shadowOAM[128];


unsigned short buttons;
unsigned short oldButtons;
extern int time = 0;


int seed;

int livesremaining;
int itemsCollected;

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
        buttons = (*(volatile unsigned short *)0x04000130);

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

    buttons = (*(volatile unsigned short *)0x04000130);
}
void goToStart()
{


    initGame();
    hideSprites();
    (*(volatile unsigned short *)0x04000010) = 0;

    (*(unsigned short *)0x4000000) = 0 | (1 << 8);


    DMANow(3, splashScreenPal, ((unsigned short *)0x5000000), 512 / 2);
    (*(volatile unsigned short *)0x4000008) = ((0) << 2) | ((16) << 8) | (0 << 14);
    DMANow(3, splashScreenTiles, &((charblock *)0x6000000)[0], 19008 / 2);
    DMANow(3, splashScreenMap, &((screenblock *)0x6000000)[16], 2048 / 2);

    state = START;
}
void start()
{
    seed++;


    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))))
    {
        goToGame();
        srand(seed);
    }


    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0)))))
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
    (*(unsigned short *)0x4000000) = 0 | (1 << 9);


    DMANow(3, winPal, ((unsigned short *)0x5000000), 512 / 2);
    (*(volatile unsigned short *)0x400000A) = ((0) << 2) | ((16) << 8) | (0 << 14);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 16512 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[16], 2048 / 2);


    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))))
    {
        goToStart();
    }
}
void lose()
{
    (*(unsigned short *)0x4000000) = 0 | (1 << 9);


    DMANow(3, losePal, ((unsigned short *)0x5000000), 512 / 2);
    (*(volatile unsigned short *)0x400000A) = ((0) << 2) | ((16) << 8) | (0 << 14);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 19136 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[16], 2048 / 2);


    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))))
    {
        goToStart();
    }
}
void goToPause()
{

    (*(unsigned short *)0x4000000) = 0 | (1 << 9);


    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);
    (*(volatile unsigned short *)0x400000A) = ((2) << 2) | ((0) << 8) | (0 << 14);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[2], 18752 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[0], 2048 / 2);

    waitForVBlank();
    state = PAUSE;
}
void pause()
{
    waitForVBlank();

    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))))
    {
        goToGame();
    }
    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0)))))
    {
        goToStart();
    }
}
void goToGame()
{

    DMANow(3, riverPal, ((unsigned short *)0x5000000), 512 / 2);
    (*(volatile unsigned short *)0x4000008) = ((0) << 2) | ((16) << 8) | (1 << 14);
    DMANow(3, riverTiles, &((charblock *)0x6000000)[0], 11520 / 2);
    DMANow(3, riverMap, &((screenblock *)0x6000000)[16], 4096 / 2);


    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);

    (*(unsigned short *)0x4000000) = 0 | (1 << 8) | (1 << 12);

    state = GAME;
}

void game()
{
    updateGame();
    drawGame();


    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 1))))
    {
        (*(volatile unsigned short *)0x04000010) = 0;
        goToWin();
    }


    if (livesremaining == 0)
    {
        (*(volatile unsigned short *)0x04000010) = 0;
        goToLose();
    }


    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))))
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
    (*(unsigned short *)0x4000000) = 0 | (1 << 9);


    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 512 / 2);
    (*(volatile unsigned short *)0x400000A) = ((0) << 2) | ((16) << 8) | (0 << 14);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 18848 / 2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[16], 2048 / 2);


    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))))
    {
        goToStart();
    }
}

//{{BLOCK(splashScreen)

//======================================================================
//
//	splashScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 594 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 19008 + 2048 = 21568
//
//	Time-stamp: 2019-11-07, 22:52:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPLASHSCREEN_H
#define GRIT_SPLASHSCREEN_H

#define splashScreenTilesLen 19008
extern const unsigned short splashScreenTiles[9504];

#define splashScreenMapLen 2048
extern const unsigned short splashScreenMap[1024];

#define splashScreenPalLen 512
extern const unsigned short splashScreenPal[256];

#endif // GRIT_SPLASHSCREEN_H

//}}BLOCK(splashScreen)

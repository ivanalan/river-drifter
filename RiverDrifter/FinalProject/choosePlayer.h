
//{{BLOCK(choosePlayer)

//======================================================================
//
//	choosePlayer, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 69 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2208 + 2048 = 4768
//
//	Time-stamp: 2019-12-03, 12:16:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CHOOSEPLAYER_H
#define GRIT_CHOOSEPLAYER_H

#define choosePlayerTilesLen 2208
extern const unsigned short choosePlayerTiles[1104];

#define choosePlayerMapLen 2048
extern const unsigned short choosePlayerMap[1024];

#define choosePlayerPalLen 512
extern const unsigned short choosePlayerPal[256];

#endif // GRIT_CHOOSEPLAYER_H

//}}BLOCK(choosePlayer)

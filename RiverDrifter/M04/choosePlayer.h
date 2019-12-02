
//{{BLOCK(choosePlayer)

//======================================================================
//
//	choosePlayer, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 49 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1568 + 2048 = 4128
//
//	Time-stamp: 2019-12-02, 13:27:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CHOOSEPLAYER_H
#define GRIT_CHOOSEPLAYER_H

#define choosePlayerTilesLen 1568
extern const unsigned short choosePlayerTiles[784];

#define choosePlayerMapLen 2048
extern const unsigned short choosePlayerMap[1024];

#define choosePlayerPalLen 512
extern const unsigned short choosePlayerPal[256];

#endif // GRIT_CHOOSEPLAYER_H

//}}BLOCK(choosePlayer)

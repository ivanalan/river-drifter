
//{{BLOCK(river)

//======================================================================
//
//	river, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 360 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 11520 + 4096 = 16128
//
//	Time-stamp: 2019-11-08, 00:11:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_RIVER_H
#define GRIT_RIVER_H

#define riverTilesLen 11520
extern const unsigned short riverTiles[5760];

#define riverMapLen 4096
extern const unsigned short riverMap[2048];

#define riverPalLen 512
extern const unsigned short riverPal[256];

#endif // GRIT_RIVER_H

//}}BLOCK(river)

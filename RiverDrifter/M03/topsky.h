
//{{BLOCK(topsky)

//======================================================================
//
//	topsky, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 482 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 15424 + 4096 = 20032
//
//	Time-stamp: 2019-11-17, 16:40:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TOPSKY_H
#define GRIT_TOPSKY_H

#define topskyTilesLen 15424
extern const unsigned short topskyTiles[7712];

#define topskyMapLen 4096
extern const unsigned short topskyMap[2048];

#define topskyPalLen 512
extern const unsigned short topskyPal[256];

#endif // GRIT_TOPSKY_H

//}}BLOCK(topsky)

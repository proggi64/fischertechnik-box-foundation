// Fischertechnik Box Foundation
// Elements
// Test HolderMirrorBand

use <../../Base/Placement.scad>
use <../../Elements/HolderMirrorBand.scad>

include <../../Base/PlacementOptions.scad>

HolderMirrorBand();

Place(130, 0, elementSpace=getHolderMirrorBandSpace(), rotation=Rotate90)
    HolderMirrorBand();

Place(150, 0, elementSpace=getHolderMirrorBandSpace(), rotation=Rotate270)
    HolderMirrorBand(20,30);

Place(170, 0)
    HolderMirrorBand(xRight=30);

Place(300, 0)
    HolderMirrorBand(xLeft=30);

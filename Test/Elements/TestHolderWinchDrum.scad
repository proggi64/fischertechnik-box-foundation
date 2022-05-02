// Fischertechnik Box Foundation
// Elements
// Test HolderWinchDrum

use <../../Base/Placement.scad>
use <../../Elements/HolderWinchDrum.scad>

include <../../Base/PlacementOptions.scad>

HolderWinchDrum();

Place(30, 0, elementSpace=getHolderWinchDrumSpace(), rotation=Rotate90)
    HolderWinchDrum();

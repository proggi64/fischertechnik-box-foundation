// Fischertechnik Box Foundation
// Elements
// Test FrameBracketWithWorm

use <../../Base/Placement.scad>
use <../../Elements/FrameBracketWithWorm.scad>

include <../../Base/PlacementOptions.scad>

FrameBracketWithWorm();

Place(60, 0, getFrameBracketWithWormSpace(), rotation=Rotate90)
    FrameBracketWithWorm();

Place(80, 0, getFrameBracketWithWormSpace(), rotation=Rotate270)
    FrameBracketWithWorm();

Place(100, 0, getFrameBracketWithWormSpace(), rotation=Rotate180)
    FrameBracketWithWorm();

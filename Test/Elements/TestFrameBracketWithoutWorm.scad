// Fischertechnik Box Foundation
// Elements
// Test FrameBracketWithoutWorm

use <../../Base/Placement.scad>
use <../../Elements/FrameBracketWithoutWorm.scad>

include <../../Base/PlacementOptions.scad>

FrameBracketWithoutWorm();

Place(60, 0, getFrameBracketWithoutWormSpace(), rotation=Rotate90)
    FrameBracketWithoutWorm();

Place(80, 0, getFrameBracketWithoutWormSpace(), rotation=Rotate270)
    FrameBracketWithoutWorm();

Place(100, 0, getFrameBracketWithoutWormSpace(), rotation=Rotate180)
    FrameBracketWithoutWorm();

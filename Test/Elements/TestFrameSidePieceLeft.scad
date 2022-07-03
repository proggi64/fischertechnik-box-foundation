// Fischertechnik Box Foundation
// Elements
// Test FrameSidePieceLeft

use <../../base/Placement.scad>
use <../../Elements/FrameSidePieceLeft.scad>

include <../../Base/PlacementOptions.scad>

FrameSidePieceLeft();

Place(getFrameSidePieceLeftSpace().x+15, 0, elementSpace=getFrameSidePieceLeftSpace(), rotation=Rotate90)
    FrameSidePieceLeft();
// Fischertechnik Box Foundation
// Elements
// Test FrameFlatPiece60

use <../../Base/Placement.scad>
use <../../Elements/FrameFlatPiece60.scad>

include <../../Base/PlacementOptions.scad>

FrameFlatPiece60();

Place(10, 0, elementSpace=getFrameFlatPiece60Space(4), rotation=Rotate90)
    FrameFlatPiece60(4);

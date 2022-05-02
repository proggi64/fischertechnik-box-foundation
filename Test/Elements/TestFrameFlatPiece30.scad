// Fischertechnik Box Foundation
// Elements
// Test FrameFlatPiece30

use <../../Base/Placement.scad>
use <../../Elements/FrameFlatPiece30.scad>

include <../../Base/PlacementOptions.scad>

FrameFlatPiece30();

Place(10, 0, elementSpace=getFrameFlatPiece30Space(4), rotation=Rotate90)
    FrameFlatPiece30(4);

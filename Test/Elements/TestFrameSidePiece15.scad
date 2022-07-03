// Fischertechnik Box Foundation
// Elements
// Test FrameSidePiece15

use <../../base/Placement.scad>
use <../../Elements/FrameSidePiece15.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameSidePiece15(count);

Place(getFrameSidePiece15Space(count).x+15, 0, elementSpace=getFrameSidePiece15Space(count), rotation=Rotate90)
    FrameSidePiece15(count);
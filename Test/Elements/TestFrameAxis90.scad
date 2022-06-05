// Fischertechnik Box Foundation
// Elements
// Test FrameAxis90

use <../../base/Placement.scad>
use <../../Elements/FrameAxis90.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis90();

Place(getFrameAxis90Space().x+15, 0, elementSpace=getFrameAxis90Space(), rotation=Rotate90)
    FrameAxis90();
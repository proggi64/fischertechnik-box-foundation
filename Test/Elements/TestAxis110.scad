// Fischertechnik Box Foundation
// Elements
// Test FrameAxis110

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis110.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis110();

Place(120, 0, elementSpace=getFrameAxis110Space(), rotation=Rotate90)
    FrameAxis110();

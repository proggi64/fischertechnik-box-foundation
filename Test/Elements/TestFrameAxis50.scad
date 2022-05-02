// Fischertechnik Box Foundation
// Elements
// Test FrameAxis50

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis50.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis50();

Place(60, 0, elementSpace=getFrameAxis50Space(), rotation=Rotate90)
    FrameAxis50();

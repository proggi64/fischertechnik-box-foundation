// Fischertechnik Box Foundation
// Elements
// Test FrameAxis60

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis60.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis60();

Place(70, 0, elementSpace=getFrameAxis60Space(), rotation=Rotate90)
    FrameAxis60();

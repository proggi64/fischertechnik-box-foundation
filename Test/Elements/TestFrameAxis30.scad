// Fischertechnik Box Foundation
// Elements
// Test FrameAxis30

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis30.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis30();

Place(40, 0, elementSpace=getFrameAxis30Space(), rotation=Rotate90)
    FrameAxis30();

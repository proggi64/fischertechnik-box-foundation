// Fischertechnik Box Foundation
// Elements
// Test FrameAxis80

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis80.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis80();

Place(90, 0, elementSpace=getFrameAxis80Space(), rotation=Rotate90)
    FrameAxis80();

// Fischertechnik Box Foundation
// Elements
// Test FrameAxis125

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis125.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis125();

Place(140, 0, elementSpace=getFrameAxis125Space(), rotation=Rotate90)
    FrameAxis125();

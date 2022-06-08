// Fischertechnik Box Foundation
// Elements
// Test FrameAxis40

use <../../base/Placement.scad>
use <../../Elements/FrameAxis40.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis40();

Place(getFrameAxis40Space().x+15, 0, elementSpace=getFrameAxis40Space(), rotation=Rotate90)
    FrameAxis40();
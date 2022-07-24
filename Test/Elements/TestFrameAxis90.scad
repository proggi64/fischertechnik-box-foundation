// Fischertechnik Box Foundation
// Elements
// Test FrameAxis90

use <../../base/Placement.scad>
use <../../Elements/FrameAxis90.scad>

include <../../Base/PlacementOptions.scad>

count = 1;

FrameAxis90(count);

Place(getFrameAxis90Space(count).x+15, 0, elementSpace=getFrameAxis90Space(count), rotation=Rotate90)
    FrameAxis90(count);
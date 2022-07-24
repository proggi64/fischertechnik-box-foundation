// Fischertechnik Box Foundation
// Elements
// Test FrameAxis180

use <../../base/Placement.scad>
use <../../Elements/FrameAxis180.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAxis180(count);

Place(getFrameAxis180Space(count).x+15, 0, elementSpace=getFrameAxis180Space(count), rotation=Rotate90)
    FrameAxis180(count);
// Fischertechnik Box Foundation
// Elements
// Test FrameBlock5

use <../../base/Placement.scad>
use <../../Elements/FrameBlock5.scad>

include <../../Base/PlacementOptions.scad>

count = 1;

FrameBlock5(count);

Place(getFrameBlock5Space(count).x+15, 0, elementSpace=getFrameBlock5Space(count), rotation=Rotate90)
    FrameBlock5(count);
// Fischertechnik Box Foundation
// Elements
// Test FrameAngleRight

use <../../base/Placement.scad>
use <../../Elements/FrameAngleRight.scad>

include <../../Base/PlacementOptions.scad>

count = 1;

FrameAngleRight();

Place(getFrameAngleRightSpace().x+15, 0, elementSpace=getFrameAngleRightSpace(count), rotation=Rotate90)
    FrameAngleRight(count);
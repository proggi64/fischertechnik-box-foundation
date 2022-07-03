// Fischertechnik Box Foundation
// Elements
// Test FrameAngle15

use <../../base/Placement.scad>
use <../../Elements/FrameAngle15.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAngle15(count);

Place(getFrameAngle15Space(count).x+15, 0, elementSpace=getFrameAngle15Space(count), rotation=Rotate90)
    FrameAngle15(count);
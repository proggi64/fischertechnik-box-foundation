// Fischertechnik Box Foundation
// Elements
// Test FrameAngle7p5

use <../../base/Placement.scad>
use <../../Elements/FrameAngle7p5.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAngle7p5(count);

Place(getFrameAngle7p5Space(count).x+15, 0, elementSpace=getFrameAngle7p5Space(count), rotation=Rotate90)
    FrameAngle7p5(count);
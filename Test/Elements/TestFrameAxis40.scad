// Fischertechnik Box Foundation
// Elements
// Test FrameAxis40

use <../../base/Placement.scad>
use <../../Elements/FrameAxis40.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAxis40(count);

Place(getFrameAxis40Space(count).x+15, 0, elementSpace=getFrameAxis40Space(count), rotation=Rotate90)
    FrameAxis40(count);
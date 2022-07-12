// Fischertechnik Box Foundation
// Elements
// Test FrameBlock5TwoStuds

use <../../base/Placement.scad>
use <../../Elements/FrameBlock5TwoStuds.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameBlock5TwoStuds(count);

Place(getFrameBlock5TwoStudsSpace(count).x+15, 0, elementSpace=getFrameBlock5TwoStudsSpace(count), rotation=Rotate90)
    FrameBlock5TwoStuds(count);
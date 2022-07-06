// Fischertechnik Box Foundation
// Elements
// Test FrameBlock5TwoPins

use <../../base/Placement.scad>
use <../../Elements/FrameBlock5TwoPins.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameBlock5TwoPins(count);

Place(getFrameBlock5TwoPinsSpace(count).x+15, 0, elementSpace=getFrameBlock5TwoPinsSpace(count), rotation=Rotate90)
    FrameBlock5TwoPins(count);
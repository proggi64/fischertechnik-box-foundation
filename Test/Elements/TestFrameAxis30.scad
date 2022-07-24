// Fischertechnik Box Foundation
// Elements
// Test FrameAxis30

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis30.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAxis30(count);

Place(40, 0, elementSpace=getFrameAxis30Space(count=count), rotation=Rotate90)
    FrameAxis30(count);

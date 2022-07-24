// Fischertechnik Box Foundation
// Elements
// Test FrameAxis60

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis60.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAxis60(count);

Place(70, 0, elementSpace=getFrameAxis60Space(count), rotation=Rotate90)
    FrameAxis60(count);

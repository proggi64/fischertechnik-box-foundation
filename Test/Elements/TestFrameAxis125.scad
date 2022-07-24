// Fischertechnik Box Foundation
// Elements
// Test FrameAxis125

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis125.scad>

include <../../Base/PlacementOptions.scad>

count = 1;

FrameAxis125(count);

Place(140, 0, elementSpace=getFrameAxis125Space(count), rotation=Rotate90)
    FrameAxis125(count);

// Fischertechnik Box Foundation
// Elements
// Test FrameAxis80

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis80.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAxis80(count);

Place(90, 0, elementSpace=getFrameAxis80Space(count), rotation=Rotate90)
    FrameAxis80(count);

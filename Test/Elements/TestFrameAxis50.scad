// Fischertechnik Box Foundation
// Elements
// Test FrameAxis50

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis50.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameAxis50(count);

Place(60, 0, elementSpace=getFrameAxis50Space(count), rotation=Rotate90)
    FrameAxis50(count);

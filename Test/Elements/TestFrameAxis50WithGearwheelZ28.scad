// Fischertechnik Box Foundation
// Elements
// Test FrameAxis50WithGearwheelZ28

use <../../base/Placement.scad>
use <../../Elements/FrameAxis50WithGearwheelZ28.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis50WithGearwheelZ28();

Place(getFrameAxis50WithGearwheelZ28Space().x+15, 0, elementSpace=getFrameAxis50WithGearwheelZ28Space(), rotation=Rotate90)
    FrameAxis50WithGearwheelZ28();
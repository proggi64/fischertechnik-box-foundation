// Fischertechnik Box Foundation
// Elements
// Test FrameAxis60WithGearwheelZ28

use <../../base/Placement.scad>
use <../../Elements/FrameAxis60WithGearwheelZ28.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis60WithGearwheelZ28();

Place(getFrameAxis60WithGearwheelZ28Space().x+15, 0, elementSpace=getFrameAxis60WithGearwheelZ28Space(), rotation=Rotate90)
    FrameAxis60WithGearwheelZ28();
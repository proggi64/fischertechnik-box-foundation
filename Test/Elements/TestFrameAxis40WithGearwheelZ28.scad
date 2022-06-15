// Fischertechnik Box Foundation
// Elements
// Test FrameAxis40WithGearwheelZ28

use <../../base/Placement.scad>
use <../../Elements/FrameAxis40WithGearwheelZ28.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis40WithGearwheelZ28();

Place(getFrameAxis40WithGearwheelZ28Space().x+15, 0, elementSpace=getFrameAxis40WithGearwheelZ28Space(), rotation=Rotate90)
    FrameAxis40WithGearwheelZ28();
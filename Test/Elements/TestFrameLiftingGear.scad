// Fischertechnik Box Foundation
// Elements
// Test FrameLiftingGear

use <../../base/Placement.scad>
use <../../Elements/FrameLiftingGear.scad>

include <../../Base/PlacementOptions.scad>

FrameLiftingGear();

Place(getFrameLiftingGearSpace().x+15, 0, elementSpace=getFrameLiftingGearSpace(), rotation=Rotate90)
    FrameLiftingGear();
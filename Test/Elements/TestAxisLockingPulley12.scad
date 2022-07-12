// Fischertechnik Box Foundation
// Elements
// Test AxisLockingPulley12

use <../../base/Placement.scad>
use <../../Elements/AxisLockingPulley12.scad>

include <../../Base/PlacementOptions.scad>

AxisLockingPulley12();

Place(getAxisLockingPulley12Space().x+15, 0, elementSpace=getAxisLockingPulley12Space(), rotation=Rotate90)
    AxisLockingPulley12();
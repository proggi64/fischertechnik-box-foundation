// Fischertechnik Box Foundation
// Elements
// Test AxisLockingGear10

use <../../base/Placement.scad>
use <../../Elements/AxisLockingGear10.scad>

include <../../Base/PlacementOptions.scad>

AxisLockingGear10();

Place(getAxisLockingGear10Space().x+15, 0, elementSpace=getAxisLockingGear10Space(), rotation=Rotate90)
    AxisLockingGear10();
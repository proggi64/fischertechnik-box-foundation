// Fischertechnik Box Foundation
// Elements
// Test AxisLockingWorm

use <../../base/Placement.scad>
use <../../Elements/AxisLockingWorm.scad>

include <../../Base/PlacementOptions.scad>

AxisLockingWorm();

Place(getAxisLockingWormSpace().x+15, 0, elementSpace=getAxisLockingWormSpace(), rotation=Rotate90)
    AxisLockingWorm();
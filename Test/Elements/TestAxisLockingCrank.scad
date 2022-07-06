// Fischertechnik Box Foundation
// Elements
// Test AxisLockingCrank

use <../../base/Placement.scad>
use <../../Elements/AxisLockingCrank.scad>

include <../../Base/PlacementOptions.scad>

AxisLockingCrank();

Place(getAxisLockingCrankSpace().x+15, 0, elementSpace=getAxisLockingCrankSpace(), rotation=Rotate90)
    AxisLockingCrank();
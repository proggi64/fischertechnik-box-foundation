// Fischertechnik Box Foundation
// Elements
// Test AxisLockingAxisCoupling

use <../../base/Placement.scad>
use <../../Elements/AxisLockingAxisCoupling.scad>

include <../../Base/PlacementOptions.scad>

AxisLockingAxisCoupling();

Place(getAxisLockingAxisCouplingSpace().x+15, 0, elementSpace=getAxisLockingAxisCouplingSpace(), rotation=Rotate90)
    AxisLockingAxisCoupling();
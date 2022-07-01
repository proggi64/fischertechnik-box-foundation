// Fischertechnik Box Library
// Axis for Locking Gear 10
// 35945

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 18;
depth = 18;

// getAxisLockingGear10Space()
// Gets the space the locking gear 10 needs

function getAxisLockingGear10Space() = [width, depth];

// AxisLockingGear10()
// Standing locking axis for locking gear 10.

module AxisLockingGear10() {
    space = [width, depth];
    Space(space);
    Center(space)
        LockingAxis();
}

// Tests
color("lightgray")
AxisLockingGear10();
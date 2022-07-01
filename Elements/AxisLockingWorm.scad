// Fischertechnik Box Library
// Axis for Locking Worm
// 35072

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 24;
depth = 24;

// getAxisLockingWormSpace()
// Gets the space locking worm needs

function getAxisLockingWormSpace() = [width, depth];

// AxisLockingWorm()
// Standing locking axis for locking worm.

module AxisLockingWorm() {
    space = [width, depth];
    Space(space);
    Center(space)
        LockingAxis();
}

// Tests
color("lightgray")
AxisLockingWorm();
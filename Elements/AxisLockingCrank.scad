// Fischertechnik Box Library
// Axis for Locking Crank
// 35088

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
depth = 12.5;
width = depth/2 + 15;

// getAxisLockingCrankSpace()
// Gets the space the locking crank needs

function getAxisLockingCrankSpace() = [width, depth];

// AxisLockingGear10()
// Standing locking axis for locking crank.

module AxisLockingCrank() {
    space = [width, depth];
    Space(space);
    Place(x=depth/2, alignY=AlignCenter, boxSpace=space)
        LockingAxis();
}

// Tests
color("lightgray")
AxisLockingCrank();
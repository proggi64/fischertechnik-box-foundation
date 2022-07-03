// Fischertechnik Box Library
// Axis for Locking Axis Coupling
// 35073

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 9;
depth = 9;  // with 1 mm space each side

// getAxisLockingAxisCouplingSpace()
// Gets the space a locking axis coupling needs

function getAxisLockingAxisCouplingSpace() = [width, depth];

// AxisLockingAxisCoupling()
// Standing locking axis coupling.

module AxisLockingAxisCoupling() {
    space = [width, depth];
    Space(space);
    Center(space)
        LockingAxis();
}

// Tests
color("lightgray")
AxisLockingAxisCoupling();
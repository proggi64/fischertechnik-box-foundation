// Fischertechnik Box Library
// Axis for Locking Pulley 12
// 136775

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 12;
depth = 12;

// getAxisLockingPulley12Space()
// Gets the space the locking pulley needs

function getAxisLockingPulley12Space() = [width, depth];

// AxisLockingPulley12()
// Standing locking axis for locking pulley.

module AxisLockingPulley12() {
    space = [width, depth];
    height = 10;
    Space(space);
    translate([width/2, depth/2])
    cylinder(d=getAxisBottomDiameter(), h=height, $fn=getFragments());
    translate([0, 0, height-getExcess()])
        Center(space)
            LockingAxis(5);
}

// Tests
color("lightgray")
AxisLockingPulley12();
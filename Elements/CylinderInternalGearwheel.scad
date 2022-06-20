// Fischertechnik Box Library
// Cylinders for internal gear wheel
// 35694

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 70;
depth = 70;
height = 14;

// getCylinderInternalGearWheelSpace
// Gets the space the cylinder for the internal gear wheel needs.

function getCylinderInternalGearWheelSpace() = [width, depth, height];

// CylinderInternalGearWheel
// Two cylinders for the internal gear wheel

module CylinderInternalGearWheel() {
    Space(getCylinderInternalGearWheelSpace());

    innerRingDiameter = 40;
    outerRingDiameter = 55;
    heightDifference = 5;
    Center(getCylinderInternalGearWheelSpace()) {
        Tube(height, outerDiameter=innerRingDiameter);
        Tube(height-heightDifference, outerDiameter=outerRingDiameter);
    }
}

// Test
color("lightgray")
CylinderInternalGearWheel();
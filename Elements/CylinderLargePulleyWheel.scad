// Fischertechnik Box Library
// Cylinders for large pulley wheel
// 31019

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;  // [1, 2]

/* [Hidden] */
width = 60;
depth = 60;
height = 15;
wheelThickness = 5;

// getCylinderLargePulleyWheelSpace
// Gets the space the cylinder for the large pulley wheel needs.

function getCylinderLargePulleyWheelSpace() = [width, depth, height];

// CylinderLargePulleyWheel
// Two cylinders for the large pulley wheel

module CylinderLargePulleyWheel(count=count) {
    Space(getCylinderLargePulleyWheelSpace());

    ringDiameter = 40;
    diameter = getHubRingDiameter();
    levelDiameter = getHubRingLevelDiameter();
    levelHeight = height - count * wheelThickness;

    Center(getCylinderLargePulleyWheelSpace()) {
        Tube(levelHeight, outerDiameter=ringDiameter);
        LeveledTube(height, diameter, levelHeight, levelDiameter);
    }
}

// Test
color("lightgray")
CylinderLargePulleyWheel(count);
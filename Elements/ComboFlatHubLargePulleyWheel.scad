// Fischertechnik Box Library
// Axis and cylinder for large pulley wheel with flat hub
// 31019, 31015

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
height = 10;

/* [Hidden] */
width = 60;
depth = 60;
wheelThickness = 5;

// getComboFlatHubLargePulleyWheelSpace
// Gets the space the cylinder for the large pulley wheel needs.

function getComboFlatHubLargePulleyWheelSpace() = [width, depth, height];

// ComboFlatHubLargePulleyWheel
// Two cylinders for the large pulley wheel
// height = Height of the axis (the ring will be 5 mm lower)

module ComboFlatHubLargePulleyWheel(height=height) {
    Space(getComboFlatHubLargePulleyWheelSpace());

    ringDiameter = 40;
    levelHeight = height - wheelThickness;

    Center(getComboFlatHubLargePulleyWheelSpace()) {
        Tube(levelHeight, outerDiameter=ringDiameter);
        LeveledAxis(height, levelHeight);
    }
}

// Test
color("lightgray")
ComboFlatHubLargePulleyWheel(height);
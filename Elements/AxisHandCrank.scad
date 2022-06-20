// Fischertechnik Box Library
// Axis for Hand Crank
// 31026

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 40;
depth = 20;

// getAxisHandCrankSpace()
// Gets the space the hand crank needs as width (.x and .y as a list)

function getAxisHandCrankSpace() = [width, depth];

// AxisHandCrank()
// Axis to stick a hand crank on it. This needs
// a 20x40 mm rectangle in the box. To support the placement
// the axis has a thin and sinked 20x40 mm base plate.

module AxisHandCrank() {
    axisHeight = 11.8;
    axisDiameter = 3.7;
    AxisWithSpace(axisHeight, getAxisHandCrankSpace(), diameter=axisDiameter);
    
    webLength = 10 + getAxisDiameter() / 2;
    webDepth = getDividerThickness();
    webHeight = 4.8;
    Center(getAxisHandCrankSpace(), [0, webDepth])
        Wall([webLength, webDepth, webHeight]);
}

// Test
color("lightgray") {
AxisHandCrank();
}
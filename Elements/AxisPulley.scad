// Fischertechnik Box Library
// Axis for Wheel Pulley
// 35795

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 22;
depth = 22;

// getAxisPulleySpace()
// Gets the space the axis wheel pulley needs as width and depth (.x and .y as a list)

function getAxisPulleySpace() = [width, depth];

// AxisPulley()
// Standing axis for wheel pulley.

module AxisPulley() {
    height = 16;
    levelHeight = 10;
    LeveledAxisWithSpace(height, levelHeight, getAxisPulleySpace());
}

// Tests
color("lightgray")
AxisPulley();
// Fischertechnik Box Library
// Axis for Cog Wheel 10 and Bevel Gear Wheel
// 31047 and 31051

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
space = 20;

// getAxisCogWheelSpace()
// Gets the space the winch drum holder needs as width (.x and .y as a list)

function getAxisCogWheelSpace() = [space, space];

// AxisCogWheel()
// Standing axis for a cog wheel 31047 or
// a bevel gear wheel 31051

module AxisCogWheel() {
    height = 11.8;
    AxisWithSpace(height, getAxisCogWheelSpace());
}

// Tests
color("lightgray")
AxisCogWheel();
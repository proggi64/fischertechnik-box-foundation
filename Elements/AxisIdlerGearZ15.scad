// Fischertechnik Box Library
// Axis for idler gear Z15
// 35695

use <../ModelBase/Simple.scad>

width = 27;
depth = 27;
height = 23;

// getAxisIdlerGearZ15Space()
// Gets the space of an axis for an idler gear Z15 (mot2)

function getAxisIdlerGearZ15Space() = [width, depth, height];

// AxisIdlerGearZ15()
// Axis for for an idler gear Z15 (mot2)

module AxisIdlerGearZ15() {
    LeveledAxisWithSpace(height, height-4, getAxisIdlerGearZ15Space());
}

// Tests
color("lightgray")
AxisIdlerGearZ15();
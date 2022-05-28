// Fischertechnik Box Library
// Axis with cylinder for idler gear Z15
// 35695

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

width = 27;
depth = 27;
height = 12.75;

// getAxisAndCylinderIdlerGearZ15Space()
// Gets the space of an axis for an idler gear Z15 (mot2)

function getAxisAndCylinderIdlerGearZ15Space() = [width, depth, height];

// AxisAndCylinderIdlerGearZ15()
// Axis for for an idler gear Z15 (mot2)

module AxisAndCylinderIdlerGearZ15() {
    AxisWithSpace(height, getAxisAndCylinderIdlerGearZ15Space());

    cylinderHeight = 9.5;
    diameter = 18;
    Center(getAxisAndCylinderIdlerGearZ15Space())
        Tube(cylinderHeight, outerDiameter=diameter);
}

// Tests
color("lightgray")
AxisAndCylinderIdlerGearZ15();
// Fischertechnik Box Library
// Axis for Coupling or Tube 15
// 31024, 31047, 31983

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
space = 10;

// getAxisCouplingSpace()
// Gets the space the axis coupling needs as width and depth (.x and .y as a list)

function getAxisCouplingSpace() = [space, space];

// AxisCoupling()
// Standing axis for an 8 mm coupling 31024, 31047, or tube 15 31983

module AxisCoupling() {
    axisHeight = 11.8;
    AxisWithSpace(axisHeight, getAxisCouplingSpace());
}

// Tests
color("lightgray")
AxisCoupling();
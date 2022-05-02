// Fischertechnik Box Library
// Axis for Dial for Electronic Building Blocks
// 36388

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

space = 15;

// getAxisDialSpace()
// Gets the space the axis for a dial needs as width and depth (.x and .y as a list)

function getAxisDialSpace() = [space, space];

// AxisDial()
// Standing axis for a dial 36388

module AxisDial() {
    height = 7.8;
    axisDiameter = 3;
    AxisWithSpace(height, getAxisDialSpace(), diameter=axisDiameter);
}

// Tests
color("lightgray")
AxisDial();
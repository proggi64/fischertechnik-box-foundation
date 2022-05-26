// Fischertechnik Box Library
// Axis for flat hub
// 31015
// 3D print tested

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 30;
depth = 30;

// getAxisFlatHubSpace()
// Gets the space the axis flat hub needs as width and depth (.x and .y as a list)

function getAxisFlatHubSpace() = [width, depth];

// AxisFlatHub()
// Standing axis for flat hub.

module AxisFlatHub() {
    height = 11.7;
    levelHeight = 1.9;
    correctedDiameter = getAxisDiameter() - 0.2;    // 3D print correction
    LeveledAxisWithSpace(height, levelHeight, getAxisFlatHubSpace(), diameter = correctedDiameter);
}

// Tests
color("lightgray")
AxisFlatHub();
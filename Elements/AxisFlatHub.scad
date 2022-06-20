// Fischertechnik Box Library
// Axis for flat hub
// 31015
// 3D print tested

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
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
    LeveledAxisWithSpace(height, levelHeight, getAxisFlatHubSpace());
}

// Tests
color("lightgray")
AxisFlatHub();
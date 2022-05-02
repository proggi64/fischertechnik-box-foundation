// Fischertechnik Box Library
// Frame for single 30 mm Axis
// 31034

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

length = 30;

// getFrameAxis30Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis30Space() = getFrameAxisSpace(length);

// FrameAxis30()
// Axis holder for a single 30 mm axis.

module FrameAxis30() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis30();
// Fischertechnik Box Library
// Frame for single 80 mm Axis
// 37384

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

length = 80;

// getFrameAxis80Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis80Space() = getFrameAxisSpace(length);

// FrameAxis80()
// Axis holder for a single 80 mm axis.

module FrameAxis80() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis80();
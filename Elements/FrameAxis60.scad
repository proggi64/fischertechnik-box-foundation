// Fischertechnik Box Library
// Frame for single 50 mm Axis
// 31032

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

length = 60;

// getFrameAxis60Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis60Space() = getFrameAxisSpace(length);

// FrameAxis60()
// Axis holder for a single 60 mm axis.

module FrameAxis60() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis60();
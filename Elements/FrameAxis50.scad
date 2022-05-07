// Fischertechnik Box Library
// Frame for single 50 mm Axis
// 31033

use <../ModelBase/Complex.scad>

length = 50;

// getFrameAxis50Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis50Space() = getFrameAxisSpace(length);

// FrameAxis50()
// Axis holder for a single 50 mm axis.

module FrameAxis50() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis50();
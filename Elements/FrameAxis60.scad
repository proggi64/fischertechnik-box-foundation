// Fischertechnik Box Library
// Frame for single 60 mm Axis
// 31032

use <../ModelBase/Complex.scad>

/* [Hidden] */
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
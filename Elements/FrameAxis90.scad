// Fischertechnik Box Library
// Frame for single 90 mm Axis
// 31040

use <../ModelBase/Complex.scad>

/* [Hidden] */
length = 90;

// getFrameAxis90Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis90Space() = getFrameAxisSpace(length);

// FrameAxis90()
// Axis holder for a single 90 mm axis.

module FrameAxis90() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis90();
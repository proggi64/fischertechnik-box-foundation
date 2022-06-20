// Fischertechnik Box Library
// Frame for single 110 mm Axis
// 31031

use <../ModelBase/Complex.scad>

/* [Hidden] */
length = 110;

// getFrameAxis110Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis110Space() = getFrameAxisSpace(length);

// FrameAxis110()
// Axis holder for a single 110 mm axis.

module FrameAxis110() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis110();
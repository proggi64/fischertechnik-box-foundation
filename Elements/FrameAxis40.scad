// Fischertechnik Box Library
// Frame for single 40 mm Axis (with Z28)
// 31064

use <../ModelBase/Complex.scad>

/* [Hidden] */
length = 40;

// getFrameAxis40Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis40Space() = getFrameAxisSpace(length);

// FrameAxis40()
// Axis holder for a single 50 mm axis.

module FrameAxis40() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis40();
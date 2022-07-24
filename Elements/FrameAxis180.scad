// Fischertechnik Box Library
// Frame for single 180 mm Axis
// 37527

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 180;

// getFrameAxis180Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis180Space(count) = getFrameAxisSpace(length, count);

// FrameAxis180(count=1)
// Axis holder for a single 90 mm axis.
// count = Count of axis

module FrameAxis180(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis180(count);
// Fischertechnik Box Library
// Frame for single 90 mm Axis
// 31040, 35066

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 90;

// getFrameAxis90Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis90Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis90(count=1)
// Axis holder for a single 90 mm axis.
// count = Count of axis

module FrameAxis90(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis90(count);
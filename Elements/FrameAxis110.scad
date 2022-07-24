// Fischertechnik Box Library
// Frame for single 110 mm Axis
// 31031

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 110;

// getFrameAxis110Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis110Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis110(count=1)
// Axis holder for a single 110 mm axis.
// count = Count of axis

module FrameAxis110(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis110(count);
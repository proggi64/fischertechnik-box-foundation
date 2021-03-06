// Fischertechnik Box Library
// Frame for single 40 mm Axis (also with Z28)
// 31064

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 40;

// getFrameAxis40Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis40Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis40(count=1)
// Axis holder for a single 50 mm axis.
// count = Count of axis

module FrameAxis40(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis40(count);
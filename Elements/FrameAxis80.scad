// Fischertechnik Box Library
// Frame for single 80 mm Axis
// 37384

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 80;

// getFrameAxis80Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis80Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis80(count=1)
// Axis holder for a single 80 mm axis.
// count = Count of axis

module FrameAxis80(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis80(count);
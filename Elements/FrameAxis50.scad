// Fischertechnik Box Library
// Frame for single 50 mm Axis
// 31033

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 50;

// getFrameAxis50Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis50Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis50(count=1)
// Axis holder for a single 50 mm axis.
// count = Count of axis

module FrameAxis50(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis50(count);
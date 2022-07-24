// Fischertechnik Box Library
// Frame for single 125 mm Axis
// 31036

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 125;

// getFrameAxis125Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis125Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis125(count=1)
// Axis holder for a single 125 mm axis.
// count = Count of axis

module FrameAxis125(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis125(count);
// Fischertechnik Box Library
// Frame for single 75 mm Locking Axis
// 35087

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 75;

// getFrameAxis75Space(count01)
// count = Count of axis
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis75Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis80(count = 1)
// count = Count of axis
// Axis holder for a single 80 mm axis.

module FrameAxis75(count = 1) {
    FrameAxis(length, count=count);
}

// Test
color("lightgray")
FrameAxis75(count);
// Fischertechnik Box Library
// Frame for single 45 mm Locking Axis
// 35064

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 45;

// getFrameAxis45Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis45Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis45(count=1)
// Axis holder for a single 50 mm axis.
// count = Count of axis

module FrameAxis45(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis45(count);
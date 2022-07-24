// Fischertechnik Box Library
// Frame for single 30 mm Axis
// 31034, 36063
// For standing axis see CylinderAxis30

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 30;

// getFrameAxis30Space(count=1)
// count = Count of axis
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis30Space(count=1) = getFrameAxisSpace(length, count=count);

// FrameAxis30(count=1)
// Axis holder for a single 30 mm axis.
// For standing axis see CylinderAxis30
// count = Count of axis

module FrameAxis30(count=1) {
    FrameAxis(length, count=count);
}

// Test
color("lightgray")
FrameAxis30(count);
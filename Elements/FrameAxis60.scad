// Fischertechnik Box Library
// Frame for single 60 mm Axis
// 31032, 35065

use <../ModelBase/Complex.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
length = 60;

// getFrameAxis60Space(count=1)
// Gets the width (.x) and depth (.y) of the axis frame.
// count = Count of axis

function getFrameAxis60Space(count=1) = getFrameAxisSpace(length, count);

// FrameAxis60(count=1)
// Axis holder for a single 60 mm axis.
// count = Count of axis

module FrameAxis60(count=1) {
    FrameAxis(length, count);
}

// Test
color("lightgray")
FrameAxis60(count);
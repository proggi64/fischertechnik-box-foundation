// Fischertechnik Box Library
// Frame for 40 mm Axis with gear wheel 28
// 31064

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <FrameAxis40.scad>

/* [Hidden] */
depth = 15;

// getFrameAxis40WithGearwheelZ28Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis40WithGearwheelZ28Space() = 
[
    getFrameAxis40Space().x,
    depth
];

// FrameAxis40WithGearwheelZ28()
// Axis holder for a 40 mm axis with gear wheel Z28.

module FrameAxis40WithGearwheelZ28() {
    Space(getFrameAxis40WithGearwheelZ28Space());
    CenterVertical(depth=getFrameAxis40Space().y, space=getFrameAxis40WithGearwheelZ28Space())
        FrameAxis40();
}

// Test
color("lightgray")
FrameAxis40WithGearwheelZ28();
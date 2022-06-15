// Fischertechnik Box Library
// Frame for 60 mm Axis with gear wheel 28
// 31063

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <FrameAxis60.scad>

/* [Hidden] */
depth = 15;

// getFrameAxis60WithGearwheelZ28Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis60WithGearwheelZ28Space() = 
[
    getFrameAxis60Space().x,
    depth
];

// FrameAxis60WithGearwheelZ28()
// Axis holder for a 60 mm axis with gear wheel Z28.

module FrameAxis60WithGearwheelZ28() {
    Space(getFrameAxis60WithGearwheelZ28Space());
    CenterVertical(depth=getFrameAxis60Space().y, space=getFrameAxis60WithGearwheelZ28Space())
        FrameAxis60();
}

// Test
color("lightgray")
FrameAxis60WithGearwheelZ28();
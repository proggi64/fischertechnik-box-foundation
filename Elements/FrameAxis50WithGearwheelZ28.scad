// Fischertechnik Box Library
// Frame for 50 mm Axis with gear wheel 28
// 185849

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <FrameAxis50.scad>

/* [Hidden] */
depth = 15;

// getFrameAxis50WithGearwheelZ28Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis50WithGearwheelZ28Space() = 
[
    getFrameAxis50Space().x,
    depth
];

// FrameAxis50WithGearwheelZ28()
// Axis holder for a 50 mm axis with gear wheel Z28.

module FrameAxis50WithGearwheelZ28() {
    Space(getFrameAxis50WithGearwheelZ28Space());
    CenterVertical(depth=getFrameAxis50Space().y, space=getFrameAxis50WithGearwheelZ28Space())
        FrameAxis50();
}

// Test
color("lightgray")
FrameAxis50WithGearwheelZ28();
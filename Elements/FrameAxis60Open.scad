// Fischertechnik Box Library
// Frame for single 60 mm Axis in 55mm distance an one open (mot1)
// 31032

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

length = 52.5;

// getFrameAxis60OpenSpace()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis60OpenSpace() = [
    getFrameAxisSpace(length).x + 7.5 + getDividerThickness(),
    getFrameAxisSpace(length).y,
    getFrameAxisSpace(length).z];

// FrameAxis60Open()
// Axis holder for a single 60 mm axis.

module FrameAxis60Open() {
    Space(getFrameAxis60OpenSpace());
    
    difference() {
        FrameAxis(length);
        translate([length+getDividerThickness(), getDividerThickness(), getFrameAxisHeight()-getFrameAxisDepth()])
            cube([getDividerThickness()*2, getFrameAxisDepth(), getFrameAxisDepth() + getExcess()]);
    }
}

// Test
color("lightgray")
FrameAxis60Open();
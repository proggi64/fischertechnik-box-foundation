// Fischertechnik Box Library
// Frame for single 125 mm Axis
// 31036

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

length = 125;

// getFrameAxis125Space()
// Gets the width (.x) and depth (.y) of the axis frame.

function getFrameAxis125Space() = getFrameAxisSpace(length);

// FrameAxis125()
// Axis holder for a single 125 mm axis.

module FrameAxis125() {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameAxis125();
// Fischertechnik Box Foundation
// ModelBase
// Test FrameAxis

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

FrameAxis(30);

translate([0, 10, 0])
    FrameAxis(40);

translate([0, 20, 0])
    FrameAxis(50);

translate([0, 30, 0])
    FrameAxis(60);

translate([0, 40, 0])
    FrameAxis(80);

translate([0, 50, 0])
    FrameAxis(110);

translate([0, 60, 0])
    FrameAxis(125);

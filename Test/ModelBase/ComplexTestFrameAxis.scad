// Fischertechnik Box Foundation
// ModelBase
// Test FrameAxis

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

FrameAxis(30);

translate([0, 10])
    FrameAxis(40);

translate([0, 20])
    FrameAxis(50);

translate([0, 30])
    FrameAxis(60);

translate([0, 40])
    FrameAxis(80);

translate([0, 50])
    FrameAxis(110);

translate([0, 60])
    FrameAxis(125);
    
translate([140, 0]) {
    FrameAxis(40, single=true);
    translate([0, 10])
        FrameAxis(40, cutThrough=true);
    translate([0, 20])
        FrameAxis(40, height=30);
    translate([0, 30])
        FrameAxis(40, count=4);
}

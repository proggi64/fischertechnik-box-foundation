// Fischertechnik Box Foundation
// ModelBase
// Test Axis with Space

use <../../ModelBase/Simple.scad>

AxisWithSpace(10, [10, 10]);

translate([15, 0, 0])
    AxisWithSpace(20, [10,20]);

translate([35, 0, 0])
    AxisWithSpace(20, [20,40], 12);

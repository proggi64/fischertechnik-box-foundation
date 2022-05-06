// Fischertechnik Box Foundation
// ModelBase
// Test Tube

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

Tube(10, innerDiameter=20);
color("green")
Tube(10, outerDiameter=20);

translate([30, 0])
    Tube(20, innerDiameter=10);

translate([60, 0])
    Tube(20, outerDiameter=10, innerDiameter=5);

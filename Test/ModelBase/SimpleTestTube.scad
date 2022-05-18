// Fischertechnik Box Foundation
// ModelBase
// Test Tube

use <../../ModelBase/Simple.scad>

Tube(10, innerDiameter=20);
color("lightblue")
Tube(10, outerDiameter=20);

translate([30, 0])
    Tube(20, innerDiameter=10);

translate([50, 0])
    Tube(20, outerDiameter=10, innerDiameter=5);

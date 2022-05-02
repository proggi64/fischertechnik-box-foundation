// Fischertechnik Box Foundation
// ModelBase
// Test Axis

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

Axis(10);

translate([15, 0, 0])
    Axis(20);

translate([25, 0, 0])
    Axis(20, diameter=10);

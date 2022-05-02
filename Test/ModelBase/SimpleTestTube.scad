// Fischertechnik Box Foundation
// ModelBase
// Test Tube

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

Tube(10, 20);

translate([30, 0])
    Tube(5, 15);

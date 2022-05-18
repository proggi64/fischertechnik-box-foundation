// Fischertechnik Box Foundation
// ModelBase
// Test LeveledAxisWithSpace

use <../../ModelBase/Simple.scad>

LeveledAxisWithSpace(10, 5, [15,15]);

translate([20, 0, 0])
    LeveledAxisWithSpace(20, 5, [10,20]);

translate([40, 0, 0])
    LeveledAxisWithSpace(20, 10, [20,10]);

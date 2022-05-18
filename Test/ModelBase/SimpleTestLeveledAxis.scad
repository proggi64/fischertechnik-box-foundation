// Fischertechnik Box Foundation
// ModelBase
// Test LeveledAxis

use <../../ModelBase/Simple.scad>

LeveledAxis(10, 5);

translate([10, 0, 0])
    LeveledAxis(20, 5);

translate([20, 0, 0])
    LeveledAxis(20, 10);

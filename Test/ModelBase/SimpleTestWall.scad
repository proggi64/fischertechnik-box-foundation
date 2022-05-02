// Fischertechnik Box Foundation
// ModelBase
// Test Wall

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

Wall([10, getDividerThickness(), 5]);

translate([0, 10])
    Wall([getDividerThickness(), 20, 10]);
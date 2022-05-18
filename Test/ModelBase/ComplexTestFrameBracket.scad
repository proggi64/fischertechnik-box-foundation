// Fischertechnik Box Foundation
// ModelBase
// Test FrameBracket

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

FrameBracket([15, getDividerThickness(), 5]);

translate([70,0])
    FrameBracket([15, getDividerThickness(), 10]);
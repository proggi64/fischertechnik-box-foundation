// Fischertechnik Box Foundation
// ModelBase
// Test FrameFlatPiece

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

FrameFlatPiece(4);

translate([30, 0, 0])
    FrameFlatPiece(2);

translate([0, 40, 0])
    FrameFlatPiece(3, 60);

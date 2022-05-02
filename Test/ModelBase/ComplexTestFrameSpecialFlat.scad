// Fischertechnik Box Foundation
// ModelBase
// Test FrameSpecialFlat

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

FrameSpecialFlat([30, 37,5], 10);

translate([40, 0])
FrameSpecialFlat([30, 34], 12.5);

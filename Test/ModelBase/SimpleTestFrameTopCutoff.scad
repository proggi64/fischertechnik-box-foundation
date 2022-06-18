// Fischertechnik Box Foundation
// ModelBase
// Test FrameTopCutoff

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

cutoffWidth = 5;
offset = 0;

difference() {
    Frame([10,10,10]);
    FrameTopCutoff([10,10,10], cutoffWidth, offset);
}

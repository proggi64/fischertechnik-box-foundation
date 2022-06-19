// Fischertechnik Box Foundation
// ModelBase
// Test FrameLeftCutoff

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

cutoffWidth = 5;
offset = 0;

difference() {
    Frame([10,10,10]);
    FrameLeftCutoff([10,10,10], cutoffWidth, offset);
}

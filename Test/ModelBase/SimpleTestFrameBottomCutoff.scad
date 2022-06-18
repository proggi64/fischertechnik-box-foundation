// Fischertechnik Box Foundation
// ModelBase
// Test FrameBottomCutoff

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

cutoffWidth = 5;
offset = 0;

difference() {
    Frame([10,10,10]);
    FrameBottomCutoff([10,10,10], cutoffWidth, offset);
}

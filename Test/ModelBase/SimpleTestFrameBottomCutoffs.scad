// Fischertechnik Box Foundation
// ModelBase
// Test FrameBottomCutoffs

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

width = 10;
count = 3;
cutoffWidth = 4;
tolerance = 1;

difference() {
    volume = [width * count,10,10];
    Frame(volume, tolerance);
    FrameBottomCutoffs(volume, count, cutoffWidth, tolerance);
}

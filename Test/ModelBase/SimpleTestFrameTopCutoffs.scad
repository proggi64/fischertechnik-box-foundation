// Fischertechnik Box Foundation
// ModelBase
// Test FrameTopCutoffs

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

width = 10;
count = 2;
cutoffWidth = 5;
tolerance = 1;

difference() {
    volume = [width * count,10,10];
    Frame(volume, tolerance);
    FrameTopCutoffs(volume, count, cutoffWidth, tolerance);
}

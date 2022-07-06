// Fischertechnik Box Foundation
// ModelBase
// Test FrameRightCutoffs

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

width = 10;
count = 4;
cutoffWidth = 2;
tolerance = 1;

difference() {
    volume = [10, width * count, 10];
    Frame(volume, tolerance);
    FrameRightCutoffs(volume, count, cutoffWidth, tolerance);
}

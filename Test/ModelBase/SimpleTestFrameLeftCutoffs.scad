// Fischertechnik Box Foundation
// ModelBase
// Test FrameLeftCutoffs

use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

depth = 10;
count = 2;
cutoffWidth = 5;
tolerance = 1;

difference() {
    volume = [10, depth * count, 10];
    Frame(volume, tolerance);
    FrameLeftCutoffs(volume, count, cutoffWidth, tolerance);
}

// Fischertechnik Box Foundation
// ModelBase
// Test FrameRails

use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

distance = 8.9;
height = 2.7;
volume = [30, 15, 10];

Frame(volume);
FrameRails(volume, distance, height);

translate([40, 0]) {
    biggerVolume = [60, 30, 15];
    Frame(biggerVolume);
    FrameRails(biggerVolume, distance + 30, height, TopDown);
}

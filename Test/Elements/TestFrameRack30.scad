// Fischertechnik Box Foundation
// Elements
// Test FrameRack30

use <../../Base/Placement.scad>
use <../../Elements/FrameRack30.scad>

include <../../Base/PlacementOptions.scad>

FrameRack30();

Place(40, 0, getFrameRack30Space(), rotation=Rotate90)
    FrameRack30();

Place(70, 0, getFrameRack30Space(2), rotation=Rotate90)
    FrameRack30(2);

Place(100, 0, getFrameRack30Space(3), rotation=Rotate180)
    FrameRack30(3);

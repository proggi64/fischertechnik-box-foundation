// Fischertechnik Box Foundation
// Elements
// Test FrameRack60

use <../../Base/Placement.scad>
use <../../Elements/FrameRack60.scad>

include <../../Base/PlacementOptions.scad>

FrameRack60();

Place(80, 0, getFrameRack60Space(), rotation=Rotate90)
    FrameRack60();

Place(110, 0, getFrameRack60Space(2), rotation=Rotate90)
    FrameRack60(2);

Place(150, 0, getFrameRack60Space(4))
    FrameRack60(4);

// Fischertechnik Box Foundation
// Elements
// Test FrameBlockWithPin

use <../../Base/Placement.scad>
use <../../Elements/FrameBlockWithPin.scad>

include <../../Base/PlacementOptions.scad>

FrameBlockWithPin();

Place(20, 0, elementSpace=getFrameBlockWithPinSpace(2), rotation=Rotate90)
    FrameBlockWithPin(2);

Place(40, 0, elementSpace=getFrameBlockWithPinSpace(8), rotation=Rotate90)
    FrameBlockWithPin(8);

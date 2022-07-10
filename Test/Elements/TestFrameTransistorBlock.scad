// Fischertechnik Box Foundation
// Elements
// Test FrameTransistorBlock

use <../../base/Placement.scad>
use <../../Elements/FrameTransistorBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameTransistorBlock();

Place(getFrameTransistorBlockSpace().x+15, 0, elementSpace=getFrameTransistorBlockSpace(), rotation=Rotate90)
    FrameTransistorBlock();
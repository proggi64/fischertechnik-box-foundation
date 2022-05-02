// Fischertechnik Box Foundation
// Elements
// Test FrameHingedBlock

use <../../Base/Placement.scad>
use <../../Elements/FrameHingedBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameHingedBlock();

Place(60, 0, getFrameHingedBlockSpace(), rotation=Rotate90)
    FrameHingedBlock();

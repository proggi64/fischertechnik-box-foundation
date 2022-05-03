// Fischertechnik Box Foundation
// Elements
// Test FrameAxis60Open

use <../../Base/Placement.scad>
use <../../Elements/FrameAxis60Open.scad>

include <../../Base/PlacementOptions.scad>

FrameAxis60Open();

Place(70, 0, getFrameAxis60OpenSpace(), rotation=Rotate90)
    FrameAxis60Open();

Place(80, 0, getFrameAxis60OpenSpace(), rotation=Rotate270)
    FrameAxis60Open();

Place(90, 0, getFrameAxis60OpenSpace(), rotation=Rotate180)
    FrameAxis60Open();

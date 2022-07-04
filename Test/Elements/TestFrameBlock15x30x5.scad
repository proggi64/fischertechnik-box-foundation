// Fischertechnik Box Foundation
// Elements
// Test FrameBlock15x30x5

use <../../base/Placement.scad>
use <../../Elements/FrameBlock15x30x5.scad>

include <../../Base/PlacementOptions.scad>

FrameBlock15x30x5();

Place(getFrameBlock15x30x5Space().x+15, 0, elementSpace=getFrameBlock15x30x5Space(), rotation=Rotate90)
    FrameBlock15x30x5();
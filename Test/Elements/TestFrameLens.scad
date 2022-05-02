// Fischertechnik Box Foundation
// Elements
// Test FrameLens

use <../../Base/Placement.scad>
use <../../Elements/FrameLens.scad>

include <../../Base/PlacementOptions.scad>

FrameLens();

Place(40, 0, getFrameLensSpace(), rotation=Rotate90)
    FrameLens();

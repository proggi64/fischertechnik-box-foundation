// Fischertechnik Box Foundation
// Elements
// Test FrameLightCap

use <../../Base/Placement.scad>
use <../../Elements/FrameLightCap.scad>

include <../../Base/PlacementOptions.scad>

FrameLightCap();

Place(25, 0, getFrameLightCapSpace(), rotation=Rotate90)
    FrameLightCap();

// Fischertechnik Box Foundation
// Elements
// Test AxisClip10

use <../../Base/Placement.scad>
use <../../Elements/AxisClip10.scad>

include <../../Base/PlacementOptions.scad>

AxisClip10();

Place(15, 0, getAxisClip10Space(), rotation=Rotate90)
    AxisClip10();

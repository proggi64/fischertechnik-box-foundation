// Fischertechnik Box Foundation
// Elements
// Test FramePulley

use <../../Base/Placement.scad>
use <../../Elements/FramePulley.scad>

include <../../Base/PlacementOptions.scad>

FramePulley();

Place(35, 0, getFramePulleySpace(), rotation=Rotate90)
    FramePulley();

Place(0, 30)
    FramePulley(4);

Place(0, 50)
    FramePulley(rows=4);

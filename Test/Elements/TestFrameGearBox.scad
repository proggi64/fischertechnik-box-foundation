// Fischertechnik Box Foundation
// Elements
// Test FrameGearBox

use <../../Base/Placement.scad>
use <../../Elements/FrameGearBox.scad>

include <../../Base/PlacementOptions.scad>

FrameGearBox();

Place(50, 0, getFrameGearBoxSpace(), rotation=Rotate90)
    FrameGearBox();

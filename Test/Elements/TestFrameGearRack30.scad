// Fischertechnik Box Foundation
// Elements
// Test FrameGearRack30

use <../../base/Placement.scad>
use <../../Elements/FrameGearRack30.scad>

include <../../Base/PlacementOptions.scad>

FrameGearRack30(true);

Place(getFrameGearRack30Space().x+15, 0, elementSpace=getFrameGearRack30Space(), rotation=Rotate90)
    FrameGearRack30();

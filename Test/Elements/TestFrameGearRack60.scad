// Fischertechnik Box Foundation
// Elements
// Test FrameGearRack60

use <../../base/Placement.scad>
use <../../Elements/FrameGearRack60.scad>

include <../../Base/PlacementOptions.scad>

FrameGearRack60();

Place(getFrameGearRack60Space().x+15, 0, elementSpace=getFrameGearRack60Space(), rotation=Rotate90)
    FrameGearRack60();
// Fischertechnik Box Foundation
// Elements
// Test FramePluggedResistor

use <../../Base/Placement.scad>
use <../../Elements/FramePluggedResistor.scad>

include <../../Base/PlacementOptions.scad>

FramePluggedResistor();

Place(35, 0, getFramePluggedResistorSpace(), rotation=Rotate90)
    FramePluggedResistor();

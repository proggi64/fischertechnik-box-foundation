// Fischertechnik Box Foundation
// Elements
// Test FrameMotor6V

use <../../Base/Placement.scad>
use <../../Elements/FrameMotor6V.scad>

include <../../Base/PlacementOptions.scad>

FrameMotor6V();

Place(60, 0, getFrameMotor6VSpace(), rotation=Rotate90)
    FrameMotor6V();

Place(120, 0, getFrameMotor6VSpace(), rotation=Rotate270)
    FrameMotor6V();

Place(180, 0, getFrameMotor6VSpace(), rotation=Rotate180)
    FrameMotor6V();

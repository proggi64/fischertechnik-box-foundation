// Fischertechnik Box Foundation
// Elements
// Test FrameMiniMotor

use <../../base/Placement.scad>
use <../../Elements/FrameMiniMotor.scad>

include <../../Base/PlacementOptions.scad>

FrameMiniMotor();

Place(getFrameMiniMotorSpace().x+15, 0, elementSpace=getFrameMiniMotorSpace(), rotation=Rotate90)
    FrameMiniMotor();
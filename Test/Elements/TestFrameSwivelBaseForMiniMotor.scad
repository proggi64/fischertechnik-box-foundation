// Fischertechnik Box Foundation
// Elements
// Test FrameSwivelBaseForMiniMotor

use <../../base/Placement.scad>
use <../../Elements/FrameSwivelBaseForMiniMotor.scad>

include <../../Base/PlacementOptions.scad>

FrameSwivelBaseForMiniMotor();

Place(getFrameSwivelBaseForMiniMotorSpace().x+15, 0, elementSpace=getFrameSwivelBaseForMiniMotorSpace(), rotation=Rotate90)
    FrameSwivelBaseForMiniMotor();
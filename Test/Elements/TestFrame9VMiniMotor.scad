// Fischertechnik Box Foundation
// Elements
// Test Frame9VMiniMotor

use <../../base/Placement.scad>
use <../../Elements/Frame9VMiniMotor.scad>

include <../../Base/PlacementOptions.scad>

Frame9VMiniMotor();

Place(getFrame9VMiniMotorSpace().x+15, 0, elementSpace=getFrame9VMiniMotorSpace(), rotation=Rotate90)
    Frame9VMiniMotor();

Place(getFrame9VMiniMotorSpace().x + getFrame9VMiniMotorSpace().y + 30, 0, elementSpace=getFrame9VMiniMotorSpace(), rotation=Rotate180)
    Frame9VMiniMotor();
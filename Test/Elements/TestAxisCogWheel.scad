// Fischertechnik Box Foundation
// Elements
// Test AxisCogWheel

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/AxisCogWheel.scad>

include <../../Base/PlacementOptions.scad>

AxisCogWheel();

Place(50, 0)
    DeployRow(getAxisCogWheelSpace().x*2, 
        [getAxisCogWheelSpace(), getAxisCogWheelSpace()],
        [Rotate0, Rotate0]) {
        AxisCogWheel();
        AxisCogWheel();
}
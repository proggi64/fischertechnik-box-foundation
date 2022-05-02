// Fischertechnik Box Foundation
// Elements
// Test AxisDial

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/AxisDial.scad>

include <../../Base/PlacementOptions.scad>

AxisDial();

Place(20, 0)
    DeployRow(getAxisDialSpace().x*2, 
        [getAxisDialSpace(), getAxisDialSpace()],
        [Rotate0, Rotate0]) {
        AxisDial();
        AxisDial();
}
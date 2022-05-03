// Fischertechnik Box Foundation
// Elements
// Test AxisCoupling

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/AxisCoupling.scad>

include <../../Base/PlacementOptions.scad>

AxisCoupling();

Place(20, 0)
    DeployHorizontal(getAxisCouplingSpace().x*2, 
        [getAxisCouplingSpace(), getAxisCouplingSpace()],
        [Rotate0, Rotate0]) {
        AxisCoupling();
        AxisCoupling();
}
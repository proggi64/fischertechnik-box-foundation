// Fischertechnik Box Foundation
// Elements
// Test AxisHandCrank

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/AxisHandCrank.scad>

include <../../Base/PlacementOptions.scad>

AxisHandCrank();

Place(50, 0)
    DeployRow(getAxisHandCrankSpace().y*2, 
        [getAxisHandCrankSpace(), getAxisHandCrankSpace()],
        [Rotate90, Rotate270]) {
        AxisHandCrank();
        AxisHandCrank();
}
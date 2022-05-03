// Fischertechnik Box Foundation
// Geometry Helpers Deployment
// Test DeployHorizontal

use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180]) {
    Cube();
    Cube();
    Cube();
}

translate([0, 30, 0])
DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate90, Rotate180, Rotate0]) {
    Cube();
    Cube();
    Cube();
}
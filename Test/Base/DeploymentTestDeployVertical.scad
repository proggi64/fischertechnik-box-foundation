// Fischertechnik Box Foundation
// Geometry Helpers Deployment
// Test DeployVertical

use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();
translate([0, 60])
    PlacementBase();

DeployVertical(
    getPlacementBaseSpace().y*2, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()]) {
    Cube();
    Cube();
    Cube();
}

translate([30, 0, 0])
DeployVertical(
    getPlacementBaseSpace().y*2, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace(), getCubeSpace()]) {
    Cube();
    Cube();
    Cube();
    Cube();
}
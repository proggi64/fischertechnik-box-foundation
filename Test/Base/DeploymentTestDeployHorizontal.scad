// Fischertechnik Box Foundation
// Geometry Helpers Deployment
// Test DeployHorizontal

use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    0, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180],
    alignY=AlignTop) {
    Cube();
    Cube();
    Cube();
}

translate([0, 30, 0])
DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate90, Rotate270, Rotate0],
    alignY=AlignCenter) {
    Cube();
    Cube();
    Cube();
}

translate([60,0]) {
    PlacementBase();
    
DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace()],
    [Rotate90, Rotate270],
    alignY=AlignTop) {
    Cube();
    Cube();
    }   
}
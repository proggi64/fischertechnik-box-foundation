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
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate0, Rotate0, Rotate0]) {
    Cube();
    Cube();
    Cube();
}

translate([30, 0, 0])
DeployVertical(
    getPlacementBaseSpace().y*2, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate0, Rotate0, Rotate90, Rotate0],
    alignX=AlignCenter) {
    Cube();
    Cube();
    Cube();
    Cube();
}

translate([60, 0]) {
    PlacementBase();
    translate([0, 60])
        PlacementBase();

    DeployVertical(
        getPlacementBaseSpace().y*2, 
        [getCubeSpace(), getCubeSpace(), getCubeSpace()],
        [Rotate90, Rotate270, Rotate0],
        alignX=AlignRight) {
        Cube();
        Cube();
        Cube();
    }

    translate([30, 0, 0])
    DeployVertical(
        0, 
        [getCubeSpace(), getCubeSpace(), getCubeSpace(), getCubeSpace()],
        [Rotate0, Rotate90, Rotate180, Rotate270],
        alignX=AlignCenter) {
        Cube();
        Cube();
        Cube();
        Cube();
    }
}
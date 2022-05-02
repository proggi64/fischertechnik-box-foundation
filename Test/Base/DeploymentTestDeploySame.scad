// Fischertechnik Box Foundation
// Base
// Test Deploy

use <../../Base/Deployment.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeploySame(getPlacementBaseSpace(), getCubeSpace())
    Cube();

translate([0, 20])
DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=3)
    Cube();

translate([0, 40])
DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=4)
    Cube();
    
translate([60, 0]) {
PlacementBase();
DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=4, rows=2)
    Cube();
}

translate([120, 0]) {
PlacementBase();
DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=2, rows=3, rotation=Rotate90)
    Cube();
}

translate([180, 0]) {
PlacementBase();
DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=1, rows=3, rotation=Rotate180)
    Cube();
translate([20,0])
DeploySame(getPlacementBaseSpace(), getCubeSpace(), columns=1, rows=3, rotation=Rotate270)
    Cube();
}
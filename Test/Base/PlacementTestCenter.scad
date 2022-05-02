// Fischertechnik Box Foundation
// Geometry Helpers Placement
// Test Center

use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

Center(getPlacementBaseSpace())
    Cube();

translate([60, 0]) {
    PlacementBase();
    Center(getPlacementBaseSpace(), getCubeSpace())
        Cube();
}

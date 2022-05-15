// Fischertechnik Box Foundation
// Geometry Helpers Placement
// Test CenterHorizontal

use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

CenterHorizontal(space=getPlacementBaseSpace())
    Cube();

translate([60, 0]) {
    PlacementBase();
    CenterHorizontal(width=getCubeSpace().x, y=10, space=getPlacementBaseSpace())
        Cube();
}

translate([120, 0]) {
    PlacementBase();
    CenterHorizontal(width=getCubeSpace().x, y=20, offset=-10, space=getPlacementBaseSpace())
        Cube();
}

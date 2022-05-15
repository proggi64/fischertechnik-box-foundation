// Fischertechnik Box Foundation
// Geometry Helpers Placement
// Test CenterVertical

use <../../Base/Placement.scad>

use <../TestHelper.scad>

PlacementBase();

CenterVertical(depth=getCubeSpace().y, space=getPlacementBaseSpace())
    Cube();

translate([60, 0]) {
    PlacementBase();
    CenterVertical(depth=getCubeSpace().y, x=10, space=getPlacementBaseSpace())
        Cube();
}

translate([120, 0]) {
    PlacementBase();
    CenterVertical(depth=getCubeSpace().y, x=20, offset=-10, space=getPlacementBaseSpace())
        Cube();
}

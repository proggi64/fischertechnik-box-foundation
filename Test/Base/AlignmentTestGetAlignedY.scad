// Fischertechnik Box Foundation
// Geometry Helpers Alignment
// Test getAlignedY

use <../../Base/Alignment.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();
bottomOffset = getAlignedY(getCubeSpace().y, getPlacementBaseSpace().y, AlignBottom);
translate([10, bottomOffset, 0])
    Cube();

centerOffset = getAlignedY(getCubeSpace().y, getPlacementBaseSpace().y, AlignCenter);
translate([25, centerOffset, 0])
    Cube();

topOffset = getAlignedX(getCubeSpace().y, getPlacementBaseSpace().y, AlignTop);
translate([10, topOffset, 0])
    Cube();

translate([getPlacementBaseSpace().x + 10, 0, 0]) {
    PlacementBase();    
    bottomWithOffset = getAlignedY(getCubeSpace().y, getPlacementBaseSpace().y, AlignBottom, 5);
    translate([10, bottomWithOffset, 0])
        Cube();

    centerWithOffset = getAlignedY(getCubeSpace().y, getPlacementBaseSpace().y, AlignCenter, 5);
    translate([25, centerWithOffset, 0])
        Cube();

    topWithOffset = getAlignedX(getCubeSpace().y, getPlacementBaseSpace().y, AlignTop, 5);
    translate([10, topWithOffset, 0])
        Cube();    
}
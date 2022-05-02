// Fischertechnik Box Foundation
// Geometry Helpers Alignment
// Test getAlignedX

use <../../Base/Alignment.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();
leftOffset = getAlignedX(getCubeSpace().x, getPlacementBaseSpace().x, AlignLeft);
translate([leftOffset, 0, 0])
    Cube();

centerOffset = getAlignedX(getCubeSpace().x, getPlacementBaseSpace().x, AlignCenter);
translate([centerOffset, 5, 0])
    Cube();

rightOffset = getAlignedX(getCubeSpace().x, getPlacementBaseSpace().x, AlignRight);
translate([rightOffset, 10, 0])
    Cube();

leftWithOffset = getAlignedX(getCubeSpace().x, getPlacementBaseSpace().x, AlignLeft, 2.5);
translate([leftWithOffset, 25, 0])
    Cube();

centerWithOffset = getAlignedX(getCubeSpace().x, getPlacementBaseSpace().x, AlignCenter, 2.5);
translate([centerWithOffset, 30, 0])
    Cube();

rightWithOffset = getAlignedX(getCubeSpace().x, getPlacementBaseSpace().x, AlignRight, 2.5);
translate([rightWithOffset, 35, 0])
    Cube();
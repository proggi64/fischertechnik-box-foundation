// Fischertechnik Box Foundation
// Elements
// Test AxisAndCylinderIdlerGearZ15

use <../../base/Placement.scad>
use <../../Elements/AxisAndCylinderIdlerGearZ15.scad>

include <../../Base/PlacementOptions.scad>

AxisAndCylinderIdlerGearZ15();

Place(getAxisAndCylinderIdlerGearZ15Space().x+15, 0, elementSpace=getAxisAndCylinderIdlerGearZ15Space(), rotation=Rotate90)
    AxisAndCylinderIdlerGearZ15();
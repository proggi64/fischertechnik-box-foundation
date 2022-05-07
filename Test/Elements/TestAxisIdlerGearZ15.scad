// Fischertechnik Box Foundation
// Elements
// Test AxisIdlerGearZ15

use <../../Base/Placement.scad>
use <../../Elements/AxisIdlerGearZ15.scad>

include <../../Base/PlacementOptions.scad>

AxisIdlerGearZ15();

Place(30, 0, getAxisIdlerGearZ15Space(), rotation=Rotate90)
    AxisIdlerGearZ15();

// Fischertechnik Box Foundation
// Elements
// Test HolderBatterySet

use <../../Base/Placement.scad>
use <../../Base/Boxes.scad>
use <../../Elements/HolderBatterySet.scad>

include <../../Base/PlacementOptions.scad>

color("lightgray")
{
    difference() {
        Box190();
        HolderBatterySetCutoffs();
    }
    HolderBatterySet();
}
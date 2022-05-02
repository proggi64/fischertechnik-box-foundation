// Fischertechnik Box Foundation
// ModelBase
// Test HolderBuildingPlate

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

HolderBuildingPlate(30);

translate([0, 20, 0])
    HolderBuildingPlate(60);

translate([0, 40, 0])
    HolderBuildingPlate(90);

translate([120, 0, 0])
    HolderBuildingPlate(45, 4);

translate([120, 40, 0])
    HolderBuildingPlate(120, 4, true);

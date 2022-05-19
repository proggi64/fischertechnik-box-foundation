// Fischertechnik Box Foundation
// ModelBase
// Test HolderBuildingPlate

use <../../ModelBase/Complex.scad>

HolderBuildingPlate(30);

translate([0, 20, 0])
    HolderBuildingPlate(60);

translate([0, 40, 0])
    HolderBuildingPlate(90);

translate([120, 0, 0])
    HolderBuildingPlate(90, 4, dock=true);

translate([120, 40, 0])
    HolderBuildingPlate(45, 4);

// Fischertechnik Box Foundation
// Elements
// Test HolderBuildingPlate45x30

use <../../Base/Placement.scad>
use <../../Elements/HolderBuildingPlate45x30.scad>

include <../../Base/PlacementOptions.scad>

HolderBuildingPlate45x30();

Place(60, 0, elementSpace=getHolderBuildingPlate45x30Space(2), rotation=Rotate90)
    HolderBuildingPlate45x30(2);

Place(90, 0, elementSpace=getHolderBuildingPlate45x30Space(8), rotation=Rotate270)
    HolderBuildingPlate45x30(8, true);

Place(160, 0)
    HolderBuildingPlate45x30(4, true);

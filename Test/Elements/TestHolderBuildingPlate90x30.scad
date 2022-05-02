// Fischertechnik Box Foundation
// Elements
// Test HolderBuildingPlate90x30

use <../../Base/Placement.scad>
use <../../Elements/HolderBuildingPlate90x30.scad>

include <../../Base/PlacementOptions.scad>

HolderBuildingPlate90x30();

Place(100, 0, elementSpace=getHolderBuildingPlate90x30Space(2), rotation=Rotate90)
    HolderBuildingPlate90x30(2);

Place(130, 0, elementSpace=getHolderBuildingPlate90x30Space(8), rotation=Rotate270)
    HolderBuildingPlate90x30(8, true);

Place(200, 0)
    HolderBuildingPlate90x30(4, true);

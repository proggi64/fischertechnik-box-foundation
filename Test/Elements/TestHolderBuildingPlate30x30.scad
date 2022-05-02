// Fischertechnik Box Foundation
// Elements
// Test HolderBuildingPlate30x30

use <../../Base/Placement.scad>
use <../../Elements/HolderBuildingPlate30x30.scad>

include <../../Base/PlacementOptions.scad>

HolderBuildingPlate30x30();

Place(40, 0, elementSpace=getHolderBuildingPlate30x30Space(2), rotation=Rotate90)
    HolderBuildingPlate30x30(2);

Place(65, 0, elementSpace=getHolderBuildingPlate30x30Space(8), rotation=Rotate270)
    HolderBuildingPlate30x30(8, true);

Place(130, 0)
    HolderBuildingPlate30x30(4, true);

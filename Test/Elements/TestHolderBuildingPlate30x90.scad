// Fischertechnik Box Foundation
// Elements
// Test HolderBuildingPlate30x90

use <../../Base/Placement.scad>
use <../../Elements/HolderBuildingPlate30x90.scad>

include <../../Base/PlacementOptions.scad>

HolderBuildingPlate30x90();

Place(100, 0, elementSpace=getHolderBuildingPlate30x90Space(2), rotation=Rotate90)
    HolderBuildingPlate30x90(2);

Place(130, 0, elementSpace=getHolderBuildingPlate30x90Space(8), rotation=Rotate270)
    HolderBuildingPlate30x90(8, true);

Place(200, 0)
    HolderBuildingPlate30x90(4, true);

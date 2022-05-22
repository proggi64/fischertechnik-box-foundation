// Fischertechnik Box Foundation
// Elements
// Test HolderBuildingPlate30x45

use <../../Base/Placement.scad>
use <../../Elements/HolderBuildingPlate30x45.scad>

include <../../Base/PlacementOptions.scad>

HolderBuildingPlate30x45();

Place(60, 0, elementSpace=getHolderBuildingPlate30x45Space(2), rotation=Rotate90)
    HolderBuildingPlate30x45(2);

Place(90, 0, elementSpace=getHolderBuildingPlate30x45Space(8), rotation=Rotate270)
    HolderBuildingPlate30x45(8, true);

Place(160, 0)
    HolderBuildingPlate30x45(4, true);

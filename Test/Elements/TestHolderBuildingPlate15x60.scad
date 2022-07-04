// Fischertechnik Box Foundation
// Elements
// Test HolderBuildingPlate15x60

use <../../base/Placement.scad>
use <../../Elements/HolderBuildingPlate15x60.scad>

include <../../Base/PlacementOptions.scad>

count=1;
dock=false;

HolderBuildingPlate15x60(count, dock);

Place(getHolderBuildingPlate15x60Space(count).x+15, 0, elementSpace=getHolderBuildingPlate15x60Space(), rotation=Rotate90)
    HolderBuildingPlate15x60(count, dock);
// Fischertechnik Box Foundation
// Elements
// Test FrameBuildingPlate5x15x30

use <../../base/Placement.scad>
use <../../Elements/FrameBuildingPlate5x15x30.scad>

include <../../Base/PlacementOptions.scad>

count=1;

FrameBuildingPlate5x15x30(count);

Place(getFrameBuildingPlate5x15x30Space(count).x+15, 0, elementSpace=getFrameBuildingPlate5x15x30Space(count), rotation=Rotate90)
    FrameBuildingPlate5x15x30(count);
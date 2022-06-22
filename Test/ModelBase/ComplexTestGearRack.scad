// Fischertechnik Box Foundation
// ModelBase Complex
// Test GearRack

use <../../Base/Placement.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

GearRack();

Place(50, 0, getGearRackSpace(), rotation=Rotate90)
    GearRack();

Place(80, 0, getGearRackSpace(60, true), rotation=Rotate270)
    GearRack(60, true);

Place(100, 0, getGearRackSpace(60, true), rotation=Rotate90)
    GearRack(60, true);

Place(120, 0, getGearRackSpace(60), rotation=Rotate90)
    GearRack(60);

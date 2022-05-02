// Fischertechnik Box Foundation
// Elements
// Test RailsBasePlate180x90

use <../../Base/Placement.scad>
use <../../Elements/RailsBasePlate180x90.scad>

include <../../Base/PlacementOptions.scad>

RailsBasePlate180x90();

Place(190, 0, elementSpace=getRailsBasePlate180x90Space(), rotation=Rotate90)
    RailsBasePlate180x90();

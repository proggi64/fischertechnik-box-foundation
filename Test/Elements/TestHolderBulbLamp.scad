// Fischertechnik Box Foundation
// Elements
// Test HolderBulbLamp

use <../../Base/Placement.scad>
use <../../Elements/HolderBulbLamp.scad>

include <../../Base/PlacementOptions.scad>

HolderBulbLamp();

Place(20, 0, elementSpace=getHolderBulbLampSpace(), rotation=Rotate90)
    HolderBulbLamp();

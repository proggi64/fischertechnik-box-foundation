// Fischertechnik Box Foundation
// Elements
// Test HolderTire45

use <../../base/Placement.scad>
use <../../Elements/HolderTire45.scad>

include <../../Base/PlacementOptions.scad>

HolderTire45();

Place(getHolderTire45Space().x+15, 0, elementSpace=getHolderTire45Space(2), rotation=Rotate90)
    HolderTire45(2);
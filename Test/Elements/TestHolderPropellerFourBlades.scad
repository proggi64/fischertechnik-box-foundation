// Fischertechnik Box Foundation
// Elements
// Test HolderPropellerFourBlades

use <../../base/Placement.scad>
use <../../Elements/HolderPropellerFourBlades.scad>

include <../../Base/PlacementOptions.scad>

HolderPropellerFourBlades();

Place(getHolderPropellerFourBladesSpace().x+15, 0, elementSpace=getHolderPropellerFourBladesSpace(), rotation=Rotate90)
    HolderPropellerFourBlades();
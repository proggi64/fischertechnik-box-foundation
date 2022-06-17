// Fischertechnik Box Foundation
// Elements
// Test HolderGearSupportWithWorm

use <../../base/Placement.scad>
use <../../Elements/HolderGearSupportWithWorm.scad>

include <../../Base/PlacementOptions.scad>

HolderGearSupportWithWorm();

Place(getHolderGearSupportWithWormSpace().x+15, 0, elementSpace=getHolderGearSupportWithWormSpace(), rotation=Rotate90)
    HolderGearSupportWithWorm();

Place(getHolderGearSupportWithWormSpace().x+getHolderGearSupportWithWormSpace().y+30, 0, elementSpace=getHolderGearSupportWithWormSpace(), rotation=Rotate180)
    HolderGearSupportWithWorm();
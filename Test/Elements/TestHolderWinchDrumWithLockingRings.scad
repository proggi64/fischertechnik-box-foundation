// Fischertechnik Box Foundation
// Elements
// Test HolderWinchDrumWithLockingRings

use <../../Base/Placement.scad>
use <../../Elements/HolderWinchDrumWithLockingRings.scad>

include <../../Base/PlacementOptions.scad>

HolderWinchDrumWithLockingRings();

Place(30, 0, elementSpace=getHolderWinchDrumWithLockingRingsSpace(), rotation=Rotate90)
    HolderWinchDrumWithLockingRings();

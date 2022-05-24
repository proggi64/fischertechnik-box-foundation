// Fischertechnik Box Foundation
// Elements
// Test ComboHolderWinchDrumWithLockingRings

use <../../Base/Placement.scad>
use <../../Elements/ComboHolderWinchDrumWithLockingRings.scad>

include <../../Base/PlacementOptions.scad>

ComboHolderWinchDrumWithLockingRings();

Place(30, 0, elementSpace=getComboHolderWinchDrumWithLockingRingsSpace(), rotation=Rotate90)
    ComboHolderWinchDrumWithLockingRings();

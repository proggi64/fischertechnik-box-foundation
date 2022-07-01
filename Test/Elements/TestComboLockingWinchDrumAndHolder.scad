// Fischertechnik Box Foundation
// Elements
// Test ComboLockingWinchDrumAndHolder

use <../../base/Placement.scad>
use <../../Elements/ComboLockingWinchDrumAndHolder.scad>

include <../../Base/PlacementOptions.scad>

ComboLockingWinchDrumAndHolder();

Place(getComboLockingWinchDrumAndHolderSpace().x+15, 0, elementSpace=getComboLockingWinchDrumAndHolderSpace(), rotation=Rotate90)
    ComboLockingWinchDrumAndHolder();
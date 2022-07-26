// Fischertechnik Box Foundation
// Elements
// Test CylinderLockingBevelGear

use <../../base/Placement.scad>
use <../../Elements/CylinderLockingBevelGear.scad>

include <../../Base/PlacementOptions.scad>

CylinderLockingBevelGear();

Place(getCylinderLockingBevelGearSpace().x+15, 0, elementSpace=getCylinderLockingBevelGearSpace(), rotation=Rotate90)
    CylinderLockingBevelGear();
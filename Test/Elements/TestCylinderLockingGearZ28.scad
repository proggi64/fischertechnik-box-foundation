// Fischertechnik Box Foundation
// Elements
// Test CylinderLockingGearZ28

use <../../base/Placement.scad>
use <../../Elements/CylinderLockingGearZ28.scad>

include <../../Base/PlacementOptions.scad>

CylinderLockingGearZ28();

Place(getCylinderLockingGearZ28Space().x+15, 0, elementSpace=getCylinderLockingGearZ28Space(), rotation=Rotate90)
    CylinderLockingGearZ28();
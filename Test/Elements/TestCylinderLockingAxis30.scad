// Fischertechnik Box Foundation
// Elements
// Test CylinderLockingAxis30

use <../../base/Placement.scad>
use <../../Elements/CylinderLockingAxis30.scad>

include <../../Base/PlacementOptions.scad>

CylinderLockingAxis30();

Place(getCylinderLockingAxis30Space().x+15, 0, elementSpace=getCylinderLockingAxis30Space(), rotation=Rotate90)
    CylinderLockingAxis30();
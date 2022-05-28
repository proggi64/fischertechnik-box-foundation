// Fischertechnik Box Foundation
// Elements
// Test CylinderInternalGearWheel

use <../../base/Placement.scad>
use <../../Elements/CylinderInternalGearWheel.scad>

include <../../Base/PlacementOptions.scad>

CylinderInternalGearWheel();

Place(getCylinderInternalGearWheelSpace().x+15, 0, elementSpace=getCylinderInternalGearWheelSpace(), rotation=Rotate90)
    CylinderInternalGearWheel();
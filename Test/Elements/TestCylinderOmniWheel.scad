// Fischertechnik Box Foundation
// Elements
// Test CylinderOmniWheel

use <../../base/Placement.scad>
use <../../Elements/CylinderOmniWheel.scad>

include <../../Base/PlacementOptions.scad>

CylinderOmniWheel();

Place(getCylinderOmniWheelSpace().x+15, 0, elementSpace=getCylinderOmniWheelSpace(), rotation=Rotate90)
    CylinderOmniWheel();
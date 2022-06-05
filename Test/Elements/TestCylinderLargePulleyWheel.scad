// Fischertechnik Box Foundation
// Elements
// Test CylinderLargePulleyWheel

use <../../base/Placement.scad>
use <../../Elements/CylinderLargePulleyWheel.scad>

include <../../Base/PlacementOptions.scad>

CylinderLargePulleyWheel();

Place(getCylinderLargePulleyWheelSpace().x+15, 0, elementSpace=getCylinderLargePulleyWheelSpace(), rotation=Rotate90)
    CylinderLargePulleyWheel(2);
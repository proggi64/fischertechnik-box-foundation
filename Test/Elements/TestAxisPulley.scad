// Fischertechnik Box Foundation
// Elements
// Test AxisPulley

use <../../base/Placement.scad>
use <../../Elements/AxisPulley.scad>

include <../../Base/PlacementOptions.scad>

AxisPulley();

Place(getAxisPulleySpace().x+15, 0, elementSpace=getAxisPulleySpace(), rotation=Rotate90)
    AxisPulley();
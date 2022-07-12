// Fischertechnik Box Foundation
// Elements
// Test AxisPropellerTip

use <../../base/Placement.scad>
use <../../Elements/AxisPropellerTip.scad>

include <../../Base/PlacementOptions.scad>

AxisPropellerTip();

Place(getAxisPropellerTipSpace().x+15, 0, elementSpace=getAxisPropellerTipSpace(), rotation=Rotate90)
    AxisPropellerTip();
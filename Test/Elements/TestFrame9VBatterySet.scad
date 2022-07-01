// Fischertechnik Box Foundation
// Elements
// Test Frame9VBatterySet

use <../../base/Placement.scad>
use <../../Elements/Frame9VBatterySet.scad>

include <../../Base/PlacementOptions.scad>

Frame9VBatterySet();

Place(getFrame9VBatterySetSpace().x+15, 0, elementSpace=getFrame9VBatterySetSpace(), rotation=Rotate90)
    Frame9VBatterySet();
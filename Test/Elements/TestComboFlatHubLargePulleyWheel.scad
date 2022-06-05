// Fischertechnik Box Foundation
// Elements
// Test ComboFlatHubLargePulleyWheel

use <../../base/Placement.scad>
use <../../Elements/ComboFlatHubLargePulleyWheel.scad>

include <../../Base/PlacementOptions.scad>

ComboFlatHubLargePulleyWheel();

Place(getComboFlatHubLargePulleyWheelSpace().x+15, 0, elementSpace=getComboFlatHubLargePulleyWheelSpace(), rotation=Rotate90)
    ComboFlatHubLargePulleyWheel(15);
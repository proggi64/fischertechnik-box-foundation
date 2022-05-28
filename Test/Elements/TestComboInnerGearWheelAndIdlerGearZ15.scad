// Fischertechnik Box Foundation
// Elements
// Test ComboInnerGearWheelAndIdlerGearZ15

use <../../base/Placement.scad>
use <../../Elements/ComboInnerGearWheelAndIdlerGearZ15.scad>

include <../../Base/PlacementOptions.scad>

ComboInnerGearWheelAndIdlerGearZ15();

Place(getComboInnerGearWheelAndIdlerGearZ15Space().x+15, 0, elementSpace=getComboInnerGearWheelAndIdlerGearZ15Space(), rotation=Rotate90)
    ComboInnerGearWheelAndIdlerGearZ15();
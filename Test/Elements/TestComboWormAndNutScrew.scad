// Fischertechnik Box Foundation
// Elements
// Test ComboWormAndNutScrew

use <../../base/Placement.scad>
use <../../Elements/ComboWormAndNutScrew.scad>

include <../../Base/PlacementOptions.scad>

ComboWormAndNutScrew();

Place(getComboWormAndNutScrewSpace().x+15, 0, elementSpace=getComboWormAndNutScrewSpace(), rotation=Rotate90)
    ComboWormAndNutScrew();
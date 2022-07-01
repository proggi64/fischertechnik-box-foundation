// Fischertechnik Box Foundation
// Elements
// Test PrintComboWormAndNutScrew

use <../../base/Placement.scad>
use <../../Elements/PrintComboWormAndNutScrew.scad>

include <../../Base/PlacementOptions.scad>

PrintComboWormAndNutScrew();

Place(getPrintComboWormAndNutScrewSpace().x+15, 0, elementSpace=getPrintComboWormAndNutScrewSpace(), rotation=Rotate90)
    PrintComboWormAndNutScrew();
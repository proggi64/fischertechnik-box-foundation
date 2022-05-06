// Fischertechnik Box Foundation
// Elements
// Test CylinderStepUpDownCog

use <../../Base/Placement.scad>
use <../../Elements/CylinderStepUpDownCog.scad>

include <../../Base/PlacementOptions.scad>

CylinderStepUpDownCog();

Place(20, 0, getCylinderStepUpDownCogSpace(), rotation=Rotate90)
    CylinderStepUpDownCog();
// Fischertechnik Box Foundation
// Elements
// Test CylinderClipContact

use <../../base/Placement.scad>
use <../../Elements/CylinderClipContact.scad>

include <../../Base/PlacementOptions.scad>

CylinderClipContact();

Place(getCylinderClipContactSpace().x+15, 0, elementSpace=getCylinderClipContactSpace(), rotation=Rotate90)
    CylinderClipContact();
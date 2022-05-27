// Fischertechnik Box Foundation
// Elements
// Test CylinderAndAxisSegmentDisc

use <../../base/Placement.scad>
use <../../Elements/CylinderAndAxisSegmentDisc.scad>

include <../../Base/PlacementOptions.scad>

CylinderAndAxisSegmentDisc();

Place(getCylinderAndAxisSegmentDiscSpace().x+15, 0, elementSpace=getCylinderAndAxisSegmentDiscSpace(), rotation=Rotate90)
    CylinderAndAxisSegmentDisc();
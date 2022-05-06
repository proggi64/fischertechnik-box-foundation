// Fischertechnik Box Foundation
// Elements
// Test CylinderAxis30

use <../../Base/Placement.scad>
use <../../Elements/CylinderAxis30.scad>

include <../../Base/PlacementOptions.scad>

CylinderAxis30();

Place(20, 0, getCylinderAxis30Space(), rotation=Rotate90)
    CylinderAxis30();
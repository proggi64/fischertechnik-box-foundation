// Fischertechnik Box Foundation
// Elements
// Test CylinderTire20

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderTire20.scad>

include <../../Base/PlacementOptions.scad>

CylinderTire20();

Place(40, 0)
    CylinderTire20(1);

Place(80, 0)
    CylinderTire20(2);

Place(120, 0)
    CylinderTire20(3);

Place(160, 0)
    CylinderTire20(4);

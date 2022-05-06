// Fischertechnik Box Foundation
// Elements
// Test CylinderGear

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderGear.scad>

include <../../Base/PlacementOptions.scad>

CylinderGear();

Place(40, 0)
    DeploySame(
        space=[getCylinderGearSpace().x*3, getCylinderGearSpace().y], 
        elementSpace=getCylinderGearSpace(),
        columns=3
        )
        CylinderGear();

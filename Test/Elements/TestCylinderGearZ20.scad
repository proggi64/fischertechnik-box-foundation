// Fischertechnik Box Foundation
// Elements
// Test CylinderGearZ20

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderGearZ20.scad>

include <../../Base/PlacementOptions.scad>

CylinderGearZ20();

Place(40, 0)
    DeploySame(
        space=[getCylinderGearZ20Space().x*3, getCylinderGearZ20Space().y], 
        elementSpace=getCylinderGearZ20Space(),
        columns=3
        )
        CylinderGearZ20();

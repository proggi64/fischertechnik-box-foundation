// Fischertechnik Box Foundation
// Elements
// Test CylinderGear

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderGear.scad>

include <../../Base/PlacementOptions.scad>

CylinderGear();

Place(40, 0)
    DeployRow(getCylinderGearSpace().x*3, 
        [getCylinderGearSpace(), getCylinderGearSpace(), getCylinderGearSpace()],
        [Rotate0, Rotate0, Rotate0]) {
        CylinderGear();
        CylinderGear();
        CylinderGear();
}
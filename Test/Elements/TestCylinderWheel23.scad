// Fischertechnik Box Foundation
// Elements
// Test CylinderWheel23

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderWheel23.scad>

include <../../Base/PlacementOptions.scad>

CylinderWheel23();

Place(40, 0)
    DeployRow(getCylinderWheel23Space().x*3, 
        [getCylinderWheel23Space(), getCylinderWheel23Space(), getCylinderWheel23Space()],
        [Rotate0, Rotate0, Rotate0]) {
        CylinderWheel23();
        CylinderWheel23();
        CylinderWheel23();
}
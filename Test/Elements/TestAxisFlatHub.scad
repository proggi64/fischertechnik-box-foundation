// Fischertechnik Box Foundation
// Elements
// Test AxisFlatHub

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/AxisFlatHub.scad>

include <../../Base/PlacementOptions.scad>

AxisFlatHub();

Place(40, 0)
    DeployRow(getAxisFlatHubSpace().x*2, 
        [getAxisFlatHubSpace(), getAxisFlatHubSpace()],
        [Rotate0, Rotate0]) {
        AxisFlatHub();
        AxisFlatHub();
}
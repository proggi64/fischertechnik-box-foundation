// Fischertechnik Box Foundation
// Elements
// Test AxisHub

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/AxisHub.scad>

include <../../Base/PlacementOptions.scad>

AxisHub();

Place(40, 0)
    DeployRow(90, 
        [getAxisHubSpace(), getAxisHubSpace(), getAxisHubSpace()],
        [Rotate0, Rotate0, Rotate0]) {
        AxisHub();
        AxisHub();
        AxisHub();
}
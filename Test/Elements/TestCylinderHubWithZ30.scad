// Fischertechnik Box Foundation
// Elements
// Test CylinderHubWithZ30

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderHubWithZ30.scad>

include <../../Base/PlacementOptions.scad>

CylinderHubWithZ30();

Place(60, 0)
    DeploySame(
        space=[getCylinderHubWithZ30Space().x*3, getCylinderHubWithZ30Space().y], 
        elementSpace=getCylinderHubWithZ30Space(),
        columns=3
        )
        CylinderHubWithZ30();

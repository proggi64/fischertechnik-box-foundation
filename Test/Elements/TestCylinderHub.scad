// Fischertechnik Box Foundation
// Elements
// Test CylinderHub

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderHub.scad>

include <../../Base/PlacementOptions.scad>

CylinderHub();

Place(40, 0)
    DeploySame(
        space=[getCylinderHubSpace().x*3, getCylinderHubSpace().y], 
        elementSpace=getCylinderHubSpace(),
        columns=3
        )
        CylinderHub();

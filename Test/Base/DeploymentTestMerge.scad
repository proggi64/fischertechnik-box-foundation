// Fischertechnik Box Foundation
// Geometry Helpers Deployment
// Test Merge

use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

space = [30, 15, 5];
volume = getFrameOuterVolume(space);

Merge(3, volume, Rotate0)
    Frame(space);
    
translate([0, 30])
Merge(3, volume, Rotate90)
    Frame(space);
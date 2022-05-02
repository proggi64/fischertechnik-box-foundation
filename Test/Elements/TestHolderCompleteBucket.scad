// Fischertechnik Box Foundation
// Elements
// Test HolderCompleteBucket

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/HolderCompleteBucket.scad>

include <../../Base/PlacementOptions.scad>

HolderCompleteBucket();

Place(120, 0, elementSpace=getHolderCompleteBucketSpace(), rotation=Rotate90)
    HolderCompleteBucket();
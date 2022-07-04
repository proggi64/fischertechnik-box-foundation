// Fischertechnik Box Foundation
// ModelBase
// Test Locking Tube

use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

LockingTube();

Place(10, rotation=Rotate90)
    LockingTube();

// Fischertechnik Box Foundation
// ModelBase
// Test Locking Axis

use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

height = 8;

LockingAxis(height);

Place(10, rotation=Rotate90)
    LockingAxis(height);

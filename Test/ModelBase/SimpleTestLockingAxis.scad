// Fischertechnik Box Foundation
// ModelBase
// Test Axis

use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

LockingAxis();

Place(10, rotation=Rotate90)
    LockingAxis();

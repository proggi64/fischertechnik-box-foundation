// Fischertechnik Box Foundation
// Elements
// Test ReedRelayHolder

use <../../base/Placement.scad>
use <../../Elements/ReedRelayHolder.scad>

include <../../Base/PlacementOptions.scad>

ReedRelayHolder();

Place(getReedRelayHolderSpace().x+15, 0, elementSpace=getReedRelayHolderSpace(), rotation=Rotate90)
    ReedRelayHolder();
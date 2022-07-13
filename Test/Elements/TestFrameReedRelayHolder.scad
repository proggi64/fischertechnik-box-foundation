// Fischertechnik Box Foundation
// Elements
// Test FrameReedRelayHolder

use <../../base/Placement.scad>
use <../../Elements/FrameReedRelayHolder.scad>

include <../../Base/PlacementOptions.scad>

FrameReedRelayHolder();

Place(getFrameReedRelayHolderSpace().x+15, 0, elementSpace=getFrameReedRelayHolderSpace(), rotation=Rotate90)
    FrameReedRelayHolder();
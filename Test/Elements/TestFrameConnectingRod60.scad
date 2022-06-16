// Fischertechnik Box Foundation
// Elements
// Test FrameConnectingRod60

use <../../base/Placement.scad>
use <../../Elements/FrameConnectingRod60.scad>

include <../../Base/PlacementOptions.scad>

FrameConnectingRod60();

Place(getFrameConnectingRod60Space().x+15, 0, elementSpace=getFrameConnectingRod60Space(), rotation=Rotate90)
    FrameConnectingRod60();
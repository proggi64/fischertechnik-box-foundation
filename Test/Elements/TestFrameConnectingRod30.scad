// Fischertechnik Box Foundation
// Elements
// Test FrameConnectingRod30

use <../../base/Placement.scad>
use <../../Elements/FrameConnectingRod30.scad>

include <../../Base/PlacementOptions.scad>

FrameConnectingRod30();

Place(getFrameConnectingRod30Space().x+15, 0, elementSpace=getFrameConnectingRod30Space(), rotation=Rotate90)
    FrameConnectingRod30();
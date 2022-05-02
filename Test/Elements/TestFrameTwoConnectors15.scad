// Fischertechnik Box Foundation
// Elements
// Test FrameTwoConnectors15

use <../../Base/Placement.scad>
use <../../Elements/FrameTwoConnectors15.scad>

include <../../Base/PlacementOptions.scad>

FrameTwoConnectors15();

Place(20, 0, getFrameTwoConnectors15Space(), rotation=Rotate90)
    FrameTwoConnectors15();

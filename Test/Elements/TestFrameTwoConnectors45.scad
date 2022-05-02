// Fischertechnik Box Foundation
// Elements
// Test FrameTwoConnectors30

use <../../Base/Placement.scad>
use <../../Elements/FrameTwoConnectors45.scad>

include <../../Base/PlacementOptions.scad>

FrameTwoConnectors45();

Place(60, 0, getFrameTwoConnectors45Space(), rotation=Rotate90)
    FrameTwoConnectors45();

Place(80, 0, getFrameTwoConnectors45Space(), rotation=Rotate270)
    FrameTwoConnectors45();

Place(100, 0, getFrameTwoConnectors45Space(), rotation=Rotate180)
    FrameTwoConnectors45();

// Fischertechnik Box Foundation
// Elements
// Test FrameTwoConnectors30

use <../../Base/Placement.scad>
use <../../Elements/FrameTwoConnectors30.scad>

include <../../Base/PlacementOptions.scad>

FrameTwoConnectors30();

Place(40, 0, getFrameTwoConnectors30Space(), rotation=Rotate90)
    FrameTwoConnectors30();

Place(60, 0, getFrameTwoConnectors30Space(), rotation=Rotate270)
    FrameTwoConnectors30();

Place(80, 0, getFrameTwoConnectors30Space(), rotation=Rotate180)
    FrameTwoConnectors30();

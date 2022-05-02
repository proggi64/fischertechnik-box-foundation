// Fischertechnik Box Foundation
// Elements
// Test FrameTwoStrut30

use <../../Base/Placement.scad>
use <../../Elements/FrameTwoStrut30.scad>

include <../../Base/PlacementOptions.scad>

FrameTwoStrut30();

Place(60, 0, getFrameTwoStrut30Space(), rotation=Rotate90)
    FrameTwoStrut30();

Place(80, 0, getFrameTwoStrut30Space(), rotation=Rotate270)
    FrameTwoStrut30();

Place(100, 0, getFrameTwoStrut30Space(), rotation=Rotate180)
    FrameTwoStrut30();

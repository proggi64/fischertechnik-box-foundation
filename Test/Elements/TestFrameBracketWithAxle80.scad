// Fischertechnik Box Foundation
// Elements
// Test FrameBracketWithAxle80

use <../../Base/Placement.scad>
use <../../Elements/FrameBracketWithAxle80.scad>

include <../../Base/PlacementOptions.scad>

FrameBracketWithAxle80();

Place(90, 0, getFrameBracketWithAxle80Space(), rotation=Rotate90)
    FrameBracketWithAxle80();

Place(110, 0, getFrameBracketWithAxle80Space(), rotation=Rotate270)
    FrameBracketWithAxle80();

Place(130, 0, getFrameBracketWithAxle80Space(), rotation=Rotate180)
    FrameBracketWithAxle80();

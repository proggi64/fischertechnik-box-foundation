// Fischertechnik Box Foundation
// Elements
// Test FrameBracketCombo

use <../../Base/Placement.scad>
use <../../Elements/FrameBracketCombo.scad>

include <../../Base/PlacementOptions.scad>

FrameBracketCombo();

Place(60, 0, getFrameBracketComboSpace(), rotation=Rotate90)
    FrameBracketCombo();

Place(100, 0, getFrameBracketComboSpace(), rotation=Rotate270)
    FrameBracketCombo();

Place(140, 0, getFrameBracketComboSpace(), rotation=Rotate180)
    FrameBracketCombo();

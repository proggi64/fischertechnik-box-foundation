// Fischertechnik Box Foundation
// Elements
// Test FramePulley

use <../../Base/Placement.scad>
use <../../Elements/FramePushButton.scad>

include <../../Base/PlacementOptions.scad>

FramePushButton();

Place(40, 0, getFramePushButtonSpace(), rotation=Rotate90)
    FramePushButton();

Place(85, 0, getFramePushButtonSpace(), rotation=Rotate180)
    FramePushButton();

Place(125, 0, getFramePushButtonSpace(), rotation=Rotate270)
    FramePushButton();

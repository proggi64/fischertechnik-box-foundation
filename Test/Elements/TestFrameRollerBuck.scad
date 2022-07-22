// Fischertechnik Box Foundation
// Elements
// Test FrameRollerBuck

use <../../base/Placement.scad>
use <../../Elements/FrameRollerBuck.scad>

include <../../Base/PlacementOptions.scad>

count = 1;

FrameRollerBuck(count);

Place(getFrameRollerBuckSpace(count).x+15, 0, elementSpace=getFrameRollerBuckSpace(count), rotation=Rotate90)
    FrameRollerBuck(count);
// Fischertechnik Box Foundation
// Elements
// Test FrameSingleLayingStandardBlock

use <../../base/Placement.scad>
use <../../Elements/FrameSingleLayingStandardBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameSingleLayingStandardBlock();

Place(getFrameSingleLayingStandardBlockSpace().x+15, 0, elementSpace=getFrameSingleLayingStandardBlockSpace(), rotation=Rotate90)
    FrameSingleLayingStandardBlock();
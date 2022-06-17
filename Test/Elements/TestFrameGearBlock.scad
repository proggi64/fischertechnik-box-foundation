// Fischertechnik Box Foundation
// Elements
// Test FrameGearBlock

use <../../base/Placement.scad>
use <../../Elements/FrameGearBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameGearBlock();

Place(getFrameGearBlockSpace().x+15, 0, elementSpace=getFrameGearBlockSpace(), rotation=Rotate90)
    FrameGearBlock();

Place(getFrameGearBlockSpace().x+getFrameGearBlockSpace().y+30, 0, elementSpace=getFrameGearBlockSpace(), rotation=Rotate180)
    FrameGearBlock();
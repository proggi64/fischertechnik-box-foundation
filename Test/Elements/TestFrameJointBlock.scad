// Fischertechnik Box Foundation
// Elements
// Test FrameJointBlock

use <../../Base/Placement.scad>
use <../../Elements/FrameJointBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameJointBlock();

Place(50, 0, getFrameJointBlockSpace(), rotation=Rotate90)
    FrameJointBlock();

Place(100, 0, getFrameJointBlockSpace(), rotation=Rotate180)
    FrameJointBlock();

Place(150, 0, getFrameJointBlockSpace(), rotation=Rotate270)
    FrameJointBlock();

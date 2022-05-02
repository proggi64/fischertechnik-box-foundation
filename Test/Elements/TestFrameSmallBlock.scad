// Fischertechnik Box Foundation
// Elements
// Test FrameSmallBlock

use <../../Base/Placement.scad>
use <../../Elements/FrameSmallBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameSmallBlock();

Place(20, 0, getFrameSmallBlockSpace(), rotation=Rotate90)
    FrameSmallBlock();

Place(40, 0)
    FrameSmallBlock(2);

Place(70, 0, getFrameSmallBlockSpace(4), rotation=Rotate270)
    FrameSmallBlock(4);

Place(0, 50, getFrameSmallBlockSpace(rows=2), rotation=Rotate90)
    FrameSmallBlock(rows=2);

Place(50, 50)
    FrameSmallBlock(rows=3);

Place(70, 50, getFrameSmallBlockSpace(2,4), rotation=Rotate270)
    FrameSmallBlock(2,4);

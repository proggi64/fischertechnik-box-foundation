// Fischertechnik Box Foundation
// Elements
// Test FrameStandardBlock

use <../../Base/Placement.scad>
use <../../Elements/FrameStandardBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameStandardBlock();

Place(20, 0, getFrameStandardBlockSpace(2), rotation=Rotate90)
    FrameStandardBlock(2);

Place(40, 0)
    FrameStandardBlock(2);

Place(80, 0, getFrameStandardBlockSpace(4), rotation=Rotate270)
    FrameStandardBlock(4);

Place(0, 80, getFrameStandardBlockSpace(rows=2), rotation=Rotate90)
    FrameStandardBlock(rows=2);

Place(50, 80)
    FrameStandardBlock(rows=3);

Place(70, 80, getFrameStandardBlockSpace(2,4), rotation=Rotate270)
    FrameStandardBlock(2,4);

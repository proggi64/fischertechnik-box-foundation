// Fischertechnik Box Foundation
// Elements
// Test FrameToothedTileBarWithControlLinks

use <../../Base/Placement.scad>
use <../../Elements/FrameToothedTileBarWithControlLinks.scad>

include <../../Base/PlacementOptions.scad>

FrameToothedTileBarWithControlLinks();

Place(80, 0, getFrameToothedTileBarWithControlLinksSpace(), rotation=Rotate90)
    FrameToothedTileBarWithControlLinks();

Place(120, 0, getFrameToothedTileBarWithControlLinksSpace(), rotation=Rotate180)
    FrameToothedTileBarWithControlLinks();

Place(200, 0, getFrameToothedTileBarWithControlLinksSpace(), rotation=Rotate270)
    FrameToothedTileBarWithControlLinks();

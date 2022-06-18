// Fischertechnik Box Foundation
// Elements
// Test FrameGearBlockWithWorm

use <../../base/Placement.scad>
use <../../Elements/FrameGearBlockWithWorm.scad>

include <../../Base/PlacementOptions.scad>

FrameGearBlockWithWorm();

Place(getFrameGearBlockWithWormSpace().x+15, 0, elementSpace=getFrameGearBlockWithWormSpace(), rotation=Rotate90)
    FrameGearBlockWithWorm();
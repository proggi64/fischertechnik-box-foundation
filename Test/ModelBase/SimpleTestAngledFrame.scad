// Fischertechnik Box Foundation
// ModelBase
// Test AngledFrame

use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

AngledFrame(32.5, 15, 32.5, 15, 5);

Place(50, 0, getAngledFrameOuterVolume(45, 15, 30, 30, 10), rotation=Rotate90)
    AngledFrame(45, 15, 30, 30, 10);

Place(100, 0, getAngledFrameOuterVolume(45, 15, 75, 15, 10), rotation=Rotate180)
    AngledFrame(45, 15, 75, 15, 30);

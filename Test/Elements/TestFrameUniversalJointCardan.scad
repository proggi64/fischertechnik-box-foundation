// Fischertechnik Box Foundation
// Elements
// Test FrameUniversalJointCardan

use <../../Base/Placement.scad>
use <../../Elements/FrameUniversalJointCardan.scad>

include <../../Base/PlacementOptions.scad>

FrameUniversalJointCardan();

Place(50, 0, getFrameUniversalJointCardanSpace(), rotation=Rotate90)
    FrameUniversalJointCardan();

Place(100, 0, getFrameUniversalJointCardanSpace(), rotation=Rotate180)
    FrameUniversalJointCardan();

Place(150, 0, getFrameUniversalJointCardanSpace(), rotation=Rotate270)
    FrameUniversalJointCardan();

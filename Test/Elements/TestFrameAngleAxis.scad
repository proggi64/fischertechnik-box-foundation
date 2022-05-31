// Fischertechnik Box Foundation
// Elements
// Test FrameAngleAxis

use <../../base/Placement.scad>
use <../../Elements/FrameAngleAxis.scad>

include <../../Base/PlacementOptions.scad>

FrameAngleAxis();

Place(getFrameAngleAxisSpace().x+15, 0, elementSpace=getFrameAngleAxisSpace(), rotation=Rotate90)
    FrameAngleAxis();
    
Place(2*(getFrameAngleAxisSpace().x+15), 0, elementSpace=getFrameAngleAxisSpace(3), rotation=Rotate270)
    FrameAngleAxis(3);
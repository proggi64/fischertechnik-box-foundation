// Fischertechnik Box Foundation
// Elements
// Test FrameMiniPushButton

use <../../base/Placement.scad>
use <../../Elements/FrameMiniPushButton.scad>

include <../../Base/PlacementOptions.scad>

FrameMiniPushButton();

Place(getFrameMiniPushButtonSpace().x+15, 0, elementSpace=getFrameMiniPushButtonSpace(), rotation=Rotate90)
    FrameMiniPushButton();

Place(getFrameMiniPushButtonSpace().x+getFrameMiniPushButtonSpace().y+30, 0, elementSpace=getFrameMiniPushButtonSpace(), rotation=Rotate180)
    FrameMiniPushButton();
// Fischertechnik Box Foundation
// BoxeInlays Test
// Test Box190Inlay

use <../../Base/Boxes.scad>
use <../../Base/BoxInlays.scad>

include <../../Base/PlacementOptions.scad>

translate([0,0,-0.8]) {
    #Box190();
    #BoxWeb(LowerLeft, LeftOfCorner, 8, webWidth=1.6);
    #BoxWeb(UpperLeft, RightOfCorner, 8, webWidth=1.6);
    #BoxWeb(LowerRight, RightOfCorner, 8, webWidth=1.6);
    #BoxWeb(UpperRight, LeftOfCorner, 8, webWidth=1.6);
}

Box190Inlay();

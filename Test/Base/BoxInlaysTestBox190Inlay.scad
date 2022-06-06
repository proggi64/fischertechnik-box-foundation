// Fischertechnik Box Foundation
// BoxeInlays Test
// Test Box190Inlay

use <../../Base/Boxes.scad>
use <../../Base/BoxInlays.scad>

include <../../Base/PlacementOptions.scad>

translate([0,0,-0.8])
    #Box190();
Box190Inlay();

Box190InlayWeb(AlignBottom, 1);
Box190InlayWeb(AlignBottom, 7);

Box190InlayWeb(AlignTop, 0);
Box190InlayWeb(AlignTop, 8);

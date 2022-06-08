// Fischertechnik Box Foundation
// BoxeInlays Test
// Test Box190Inlay

use <../../Base/Boxes.scad>
use <../../Base/BoxInlays.scad>

include <../../Base/PlacementOptions.scad>

difference() {
//Box190Inlay();
    translate([1.9, 1.3, -1])
scale([0.9, 0.9, 1.1])
    Box190Inlay();
}

Box190InlayWeb(AlignBottom, 0);
Box190InlayWeb(AlignBottom, 1);
Box190InlayWeb(AlignBottom, 2);
Box190InlayWeb(AlignBottom, 3);
Box190InlayWeb(AlignBottom, 4);
Box190InlayWeb(AlignBottom, 5);
Box190InlayWeb(AlignBottom, 6);
Box190InlayWeb(AlignBottom, 7);
Box190InlayWeb(AlignBottom, 8);

Box190InlayWeb(AlignTop, 0);
Box190InlayWeb(AlignTop, 8);

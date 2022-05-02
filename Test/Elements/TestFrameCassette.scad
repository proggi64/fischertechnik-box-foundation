// Fischertechnik Box Foundation
// Elements
// Test FrameCassette

use <../../Base/Placement.scad>
use <../../Elements/FrameCassette.scad>

include <../../Base/PlacementOptions.scad>

FrameCassette();

Place(0, 80)
    FrameCassette(alignX=AlignLeft);

Place(80, 80)
    FrameCassette(alignX=AlignRight);

Place(0, 160)
    FrameCassette(alignY=AlignBottom);

Place(80, 160)
    FrameCassette(alignY=AlignTop);

Place(0, 240)
    FrameCassette(alignX=AlignLeft, alignY=AlignBottom);

Place(80, 240)
    FrameCassette(alignX=AlignLeft, alignY=AlignTop);

Place(0, 320)
    FrameCassette(alignX=AlignRight, alignY=AlignBottom);

Place(80, 320)
    FrameCassette(alignX=AlignRight, alignY=AlignTop);

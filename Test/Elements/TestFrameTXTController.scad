// Fischertechnik Box Foundation
// Elements
// Test FrameTXTController

use <../../Base/Placement.scad>
use <../../Elements/FrameTXTController.scad>

include <../../Base/PlacementOptions.scad>

FrameTXTController();

Place(0, 100)
    FrameTXTController(alignX=AlignLeft);

Place(100, 100)
    FrameTXTController(alignX=AlignRight);

Place(0, 200)
    FrameTXTController(alignY=AlignBottom);

Place(100, 200)
    FrameTXTController(alignY=AlignTop);

Place(0, 300)
    FrameTXTController(alignX=AlignLeft, alignY=AlignBottom);

Place(100, 300)
    FrameTXTController(alignX=AlignLeft, alignY=AlignTop);

Place(0, 400)
    FrameTXTController(alignX=AlignRight, alignY=AlignBottom);

Place(100, 400)
    FrameTXTController(alignX=AlignRight, alignY=AlignTop);

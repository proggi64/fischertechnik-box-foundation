// Fischertechnik Box Foundation
// Elements
// Test FrameBTSmartController

use <../../Base/Placement.scad>
use <../../Elements/FrameBTSmartController.scad>

include <../../Base/PlacementOptions.scad>

FrameBTSmartController();

Place(0, 100)
    FrameBTSmartController(alignX=AlignLeft);

Place(100, 100)
    FrameBTSmartController(alignX=AlignRight);

Place(0, 200)
    FrameBTSmartController(alignY=AlignBottom);

Place(100, 200)
    FrameBTSmartController(alignY=AlignTop);

Place(0, 300)
    FrameBTSmartController(alignX=AlignLeft, alignY=AlignBottom);

Place(100, 300)
    FrameBTSmartController(alignX=AlignLeft, alignY=AlignTop);

Place(0, 400)
    FrameBTSmartController(alignX=AlignRight, alignY=AlignBottom);

Place(100, 400)
    FrameBTSmartController(alignX=AlignRight, alignY=AlignTop);

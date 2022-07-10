// Fischertechnik Box Foundation
// Elements
// Test FrameElectronicsController

use <../../base/Placement.scad>
use <../../Elements/FrameElectronicsController.scad>

include <../../Base/PlacementOptions.scad>

/* [Element Parameters] */
alignX = 0;   // [0:NoAlign, 1:AlignLeft, 4:AlignRight]
alignY = 0;   // [0:NoAlign, 2:AlignBottom, 5:AlignTop]

FrameElectronicsController(alignX, alignY);

Place(getFrameElectronicsControllerSpace().x+15, 0, elementSpace=getFrameElectronicsControllerSpace(), rotation=Rotate90)
    FrameElectronicsController(alignX, alignY);
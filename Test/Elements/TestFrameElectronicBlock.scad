// Fischertechnik Box Foundation
// Elements
// Test FrameElectronicBlock

use <../../Base/Placement.scad>
use <../../Elements/FrameElectronicBlock.scad>

include <../../Base/PlacementOptions.scad>

FrameElectronicBlock();

Place(0, 85)
    FrameElectronicBlock(alignX=AlignLeft);

Place(80, 85)
    FrameElectronicBlock(alignX=AlignRight);

Place(0, 170)
    FrameElectronicBlock(alignY=AlignBottom);

Place(80, 170)
    FrameElectronicBlock(alignY=AlignTop);

Place(0, 260)
    FrameElectronicBlock(alignX=AlignLeft, alignY=AlignBottom);

Place(80, 260)
    FrameElectronicBlock(alignX=AlignLeft, alignY=AlignTop);

Place(0, 350)
    FrameElectronicBlock(alignX=AlignRight, alignY=AlignBottom);

Place(80, 350)
    FrameElectronicBlock(alignX=AlignRight, alignY=AlignTop);

// Fischertechnik Box Foundation
// Elements
// Test FrameBlockWithStud

use <../../Base/Placement.scad>
use <../../Elements/FrameBlockWithStud.scad>

include <../../Base/PlacementOptions.scad>

FrameBlockWithStud();

Place(20, 0, elementSpace=getFrameBlockWithStudSpace(2), rotation=Rotate90)
    FrameBlockWithStud(2);

Place(40, 0, elementSpace=getFrameBlockWithStudSpace(8), rotation=Rotate90)
    FrameBlockWithStud(8);

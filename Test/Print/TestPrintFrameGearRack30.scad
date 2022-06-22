// Fischertechnik Box Foundation
// Elements
// Test PrintFrameGearRack30

use <../../base/Placement.scad>
use <../../Elements/PrintFrameGearRack30.scad>

include <../../Base/PlacementOptions.scad>

PrintFrameGearRack30();

Place(getPrintFrameGearRack30Space().x+15, 0, elementSpace=getPrintFrameGearRack30Space(), rotation=Rotate90)
    PrintFrameGearRack30();
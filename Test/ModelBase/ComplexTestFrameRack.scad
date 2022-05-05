// Fischertechnik Box Foundation
// ModelBase Complex
// Test FrameRack

use <../../Base/Placement.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

FrameRack();

Place(40, 0, getFrameRackSpace(2), rotation=Rotate90)
    FrameRack(2);

Place(80, 0, getFrameRackSpace(2, 2), rotation=Rotate90)
    FrameRack(2, 2);

Place(120, 0, getFrameRackSpace(1, 4))
    FrameRack(1, 4);

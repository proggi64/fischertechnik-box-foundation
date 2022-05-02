// Fischertechnik Box Foundation
// Elements
// Test FrameAperture

use <../../Base/Placement.scad>
use <../../Elements/FrameAperture.scad>

include <../../Base/PlacementOptions.scad>

FrameAperture();

Place(40, 0, elementSpace=getFrameApertureSpace(), rotation=Rotate90)
    FrameAperture();

// Fischertechnik Box Foundation
// Elements
// Test FrameControlLight

use <../../Base/Placement.scad>
use <../../Elements/FrameControlLight.scad>

include <../../Base/PlacementOptions.scad>

FrameControlLight();

Place(10, 0, elementSpace=getFrameControlLightSpace(), rotation=Rotate90)
    FrameControlLight();
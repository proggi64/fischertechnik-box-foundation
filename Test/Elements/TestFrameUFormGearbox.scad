// Fischertechnik Box Foundation
// Elements
// Test FrameUFormGearbox

use <../../base/Placement.scad>
use <../../Elements/FrameUFormGearbox.scad>

include <../../Base/PlacementOptions.scad>

FrameUFormGearbox();

Place(getFrameUFormGearboxSpace().x+15, 0, elementSpace=getFrameUFormGearboxSpace(), rotation=Rotate270)
    FrameUFormGearbox();
// Fischertechnik Box Foundation
// Elements
// Test FrameDifferentialGearbox

use <../../base/Placement.scad>
use <../../Elements/FrameDifferentialGearbox.scad>

include <../../Base/PlacementOptions.scad>

FrameDifferentialGearbox();

Place(getFrameDifferentialGearboxSpace().x+15, 0, elementSpace=getFrameDifferentialGearboxSpace(), rotation=Rotate90)
    FrameDifferentialGearbox();

Place(getFrameDifferentialGearboxSpace().x+ getFrameDifferentialGearboxSpace(120).y+30, 0, elementSpace=getFrameDifferentialGearboxSpace(120), rotation=Rotate90)
    FrameDifferentialGearbox(120);
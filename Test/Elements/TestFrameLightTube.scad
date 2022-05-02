// Fischertechnik Box Foundation
// Elements
// Test FrameLightTube

use <../../Base/Placement.scad>
use <../../Elements/FrameLightTube.scad>

include <../../Base/PlacementOptions.scad>

FrameLightTube();

Place(35, 0, getFrameLightTubeSpace(), rotation=Rotate90)
    FrameLightTube();

Place(60, 0, getFrameLightTubeSpace(), rotation=Rotate180)
    FrameLightTube();

Place(95, 0, getFrameLightTubeSpace(), rotation=Rotate270)
    FrameLightTube();

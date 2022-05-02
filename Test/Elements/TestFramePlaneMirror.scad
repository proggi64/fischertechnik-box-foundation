// Fischertechnik Box Foundation
// Elements
// Test FramePlaneMirror

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/FramePlaneMirror.scad>

include <../../Base/PlacementOptions.scad>

FramePlaneMirror();

Place(35, 0, getFramePlaneMirrorSpace(), rotation=Rotate90)
    FramePlaneMirror();

translate([0, 50])
    Merge(2, getFramePlaneMirrorSpace(), Rotate0)
        FramePlaneMirror();
// Fischertechnik Box Foundation
// Elements
// Test FrameConcaveMirror

use <../../Base/Placement.scad>
use <../../Elements/FrameConcaveMirror.scad>

include <../../Base/PlacementOptions.scad>

FrameConcaveMirror();

Place(45, 0, elementSpace=getFrameConcaveMirrorSpace(), rotation=Rotate90)
    FrameConcaveMirror();
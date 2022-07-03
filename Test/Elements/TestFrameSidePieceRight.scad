// Fischertechnik Box Foundation
// Elements
// Test FrameSidePieceRight

use <../../base/Placement.scad>
use <../../Elements/FrameSidePieceRight.scad>

include <../../Base/PlacementOptions.scad>

FrameSidePieceRight();

Place(getFrameSidePieceRightSpace().x+15, 0, elementSpace=getFrameSidePieceRightSpace(), rotation=Rotate90)
    FrameSidePieceRight();
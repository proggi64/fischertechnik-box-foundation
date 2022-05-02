// Fischertechnik Box Foundation
// Elements
// Test HolderLinkBeam

use <../../Base/Placement.scad>
use <../../Elements/HolderLinkBeam.scad>

include <../../Base/PlacementOptions.scad>

HolderLinkBeam();

Place(100, 0, elementSpace=getHolderLinkBeamSpace(), rotation=Rotate90)
    HolderLinkBeam();

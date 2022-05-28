// Fischertechnik Box Foundation
// Elements
// Test HolderSpringLeg

use <../../base/Placement.scad>
use <../../Elements/HolderSpringLeg.scad>

include <../../Base/PlacementOptions.scad>

HolderSpringLeg();

Place(getHolderSpringLegSpace().x+15, 0, elementSpace=getHolderSpringLegSpace(), rotation=Rotate90)
    HolderSpringLeg();

Place(getHolderSpringLegSpace().x + getHolderSpringLegSpace().y+30)
    HolderSpringLeg(count=4, dock=true);
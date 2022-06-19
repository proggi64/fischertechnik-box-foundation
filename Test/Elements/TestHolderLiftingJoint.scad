// Fischertechnik Box Foundation
// Elements
// Test HolderLiftingJoint

use <../../base/Placement.scad>
use <../../Elements/HolderLiftingJoint.scad>

include <../../Base/PlacementOptions.scad>

HolderLiftingJoint();

Place(getHolderLiftingJointSpace().x+15, 0, elementSpace=getHolderLiftingJointSpace(), rotation=Rotate90)
    HolderLiftingJoint();
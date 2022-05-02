// Fischertechnik Box Foundation
// Elements
// Test AxisHub

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/ComboCompleteBucketPlusCouplingBrackets.scad>

include <../../Base/PlacementOptions.scad>

ComboCompleteBucketPlusCouplingBrackets();

Place(120, 0, elementSpace=getComboCompleteBucketPlusCouplingBracketsSpace(), rotation=Rotate90)
    ComboCompleteBucketPlusCouplingBrackets();
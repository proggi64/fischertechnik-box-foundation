// Fischertechnik Box Foundation
// Elements
// Test FrameCouplingBracket

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/FrameCouplingBracket.scad>

include <../../Base/PlacementOptions.scad>

FrameCouplingBracket();

Place(20, 0, elementSpace=getFrameCouplingBracketSpace(), rotation=Rotate90)
    FrameCouplingBracket();
    
Place(60, 0, elementSpace=getFrameCouplingBracketSpace(), rotation=Rotate180)
    FrameCouplingBracket();
    
Place(80, 0, elementSpace=getFrameCouplingBracketSpace(), rotation=Rotate270)
    FrameCouplingBracket();
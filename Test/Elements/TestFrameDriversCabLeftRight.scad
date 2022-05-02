// Fischertechnik Box Foundation
// Elements
// Test FrameDriversCabLeftRight

use <../../Base/Placement.scad>
use <../../Elements/FrameDriversCabLeftRight.scad>

include <../../Base/PlacementOptions.scad>

FrameDriversCabLeftRight();

Place(110, 0, elementSpace=getFrameDriversCabLeftRightSpace(), rotation=Rotate90)
    FrameDriversCabLeftRight();
    
Place(170, 0, elementSpace=getFrameDriversCabLeftRightSpace(), rotation=Rotate270)
    FrameDriversCabLeftRight();
    
Place(0, 60, elementSpace=getFrameDriversCabLeftRightSpace(), rotation=Rotate180)
    FrameDriversCabLeftRight();
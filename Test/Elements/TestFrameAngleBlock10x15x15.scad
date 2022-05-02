// Fischertechnik Box Foundation
// Elements
// Test FrameAngleBlock10x15x15

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/FrameAngleBlock10x15x15.scad>

include <../../Base/PlacementOptions.scad>

FrameAngleBlock10x15x15();

Place(25, 0, elementSpace=getFrameAngleBlock10x15x15Space(2), rotation=Rotate90)
    FrameAngleBlock10x15x15(2);
    
Place(55, 0, elementSpace=getFrameAngleBlock10x15x15Space(3), rotation=Rotate180)
    FrameAngleBlock10x15x15(3);
    
Place(80, 0, elementSpace=getFrameAngleBlock10x15x15Space(4), rotation=Rotate270)
    FrameAngleBlock10x15x15(4);
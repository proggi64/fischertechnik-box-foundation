// Fischertechnik Box Foundation
// Elements
// Test FrameAngleEquilateral

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/FrameAngleEquilateral.scad>

include <../../Base/PlacementOptions.scad>

FrameAngleEquilateral();

Place(25, 0, elementSpace=getFrameAngleEquilateralSpace(2), rotation=Rotate90)
    FrameAngleEquilateral(2);
    
Place(55, 0, elementSpace=getFrameAngleEquilateralSpace(3), rotation=Rotate180)
    FrameAngleEquilateral(3);
    
Place(110, 0, elementSpace=getFrameAngleEquilateralSpace(4), rotation=Rotate270)
    FrameAngleEquilateral(4);
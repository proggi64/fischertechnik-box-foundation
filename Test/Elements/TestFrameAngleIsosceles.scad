// Fischertechnik Box Foundation
// Elements
// Test FrameAngleIsosceles

use <../../Base/Placement.scad>
use <../../Elements/FrameAngleIsosceles.scad>

include <../../Base/PlacementOptions.scad>

FrameAngleIsosceles();

Place(25, 0, elementSpace=getFrameAngleIsoscelesSpace(2), rotation=Rotate90)
    FrameAngleIsosceles(2);
    
Place(55, 0, elementSpace=getFrameAngleIsoscelesSpace(3), rotation=Rotate180)
    FrameAngleIsosceles(3);
    
Place(110, 0, elementSpace=getFrameAngleIsoscelesSpace(4), rotation=Rotate270)
    FrameAngleIsosceles(4);
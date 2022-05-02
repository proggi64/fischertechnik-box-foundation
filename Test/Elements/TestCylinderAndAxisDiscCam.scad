// Fischertechnik Box Foundation
// Elements
// Test CylinderAndAxisDiscCam

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderAndAxisDiscCam.scad>

include <../../Base/PlacementOptions.scad>

CylinderAndAxisDiscCam();

Place(60, 0, elementSpace=getCylinderAndAxisDiscCamSpace(), rotation=Rotate90)
    CylinderAndAxisDiscCam();
    
Place(110, 0, elementSpace=getCylinderAndAxisDiscCamSpace(), rotation=Rotate180)
    CylinderAndAxisDiscCam();
    
Place(170, 0, elementSpace=getCylinderAndAxisDiscCamSpace(), rotation=Rotate270)
    CylinderAndAxisDiscCam();
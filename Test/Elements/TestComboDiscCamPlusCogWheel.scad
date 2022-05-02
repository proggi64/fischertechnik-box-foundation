// Fischertechnik Box Foundation
// Elements
// Test CylinderAndAxisDiscCam

use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/ComboDiscCamPlusCogWheel.scad>

include <../../Base/PlacementOptions.scad>

ComboDiscCamPlusCogWheel();

Place(60, 0, elementSpace=getComboDiscCamPlusCogWheelSpace(), rotation=Rotate90)
    ComboDiscCamPlusCogWheel();
    
Place(110, 0, elementSpace=getComboDiscCamPlusCogWheelSpace(), rotation=Rotate180)
    ComboDiscCamPlusCogWheel();
    
Place(170, 0, elementSpace=getComboDiscCamPlusCogWheelSpace(), rotation=Rotate270)
    ComboDiscCamPlusCogWheel();
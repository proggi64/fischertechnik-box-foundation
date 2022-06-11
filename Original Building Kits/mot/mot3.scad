// OpenSCAD Box mot3

// **** in Arbeit

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/AxisClip10.scad>
use <../../Elements/ComboInnerGearWheelAndIdlerGearZ15.scad>
use <../../Elements/CylinderAndAxisSegmentDisc.scad>
use <../../Elements/FrameRack60.scad>

module RackFrame() {
    Place(
        elementSpace=getFrameRack60Space(4), 
        rotation=Rotate270, 
        alignX=AlignRight) {
        FrameRack60(4, alignX = AlignLeft, alignY = AlignBottom);
    }
}

color("lightgray") {
#Box190();

upperWebDistance = 6;
    
BoxWeb(UpperLeft, LeftOfCorner, upperWebDistance, webThickness=getDividerThickness());
BoxWeb(UpperRight, RightOfCorner, upperWebDistance, webThickness=getDividerThickness());

lowerWebDistance = 11;
    
BoxWeb(LowerLeft, RightOfCorner, lowerWebDistance);
BoxWeb(UpperRight, LeftOfCorner, 63.4, webThickness=getDividerThickness());

ComboInnerGearWheelAndIdlerGearZ15();
Place(x=getComboInnerGearWheelAndIdlerGearZ15Space().x - 6, elementSpace=getCylinderAndAxisSegmentDiscSpace(), rotation=Rotate90)
    CylinderAndAxisSegmentDisc();

RackFrame();
   
}

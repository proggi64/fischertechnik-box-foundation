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

module RackFrame() {
    Place(
        elementSpace=getFrameRackSpace(2, 4), 
        rotation=Rotate270, 
        alignX=AlignRight) {
        RackBase(2, 4, alignX = AlignLeft, alignY = AlignBottom);
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
    
RackFrame();
}

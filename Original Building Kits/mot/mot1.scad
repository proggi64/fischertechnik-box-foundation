// OpenSCAD Box mot1

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/HolderBatterySet.scad>
use <../../Elements/FrameJointBlock.scad>
use <../../Elements/AxisFlatHub.scad>
use <../../Elements/CylinderGear.scad>
use <../../Elements/FrameUniversalJointCardan.scad>
use <../../Elements/FrameAxis60Open.scad>


color("lightgray") {
// Use cutoffs for the battery set at the box' right wall
difference() {
    Box190();
    HolderBatterySetCutoffs();
}
HolderBatterySet();

upperWebDistance = 15;
BoxWeb(UpperLeft, RightOfCorner, upperWebDistance, webThickness=getDividerThickness());
BoxWeb(UpperRight, LeftOfCorner, upperWebDistance, webThickness=getDividerThickness());
Place(y=upperWebDistance, alignY=AlignTop)
    Wall([getBox190Space().x, getDividerThickness(), 15]);
    
CenterHorizontal(0, 20)
    Text("mot 1");

leftElementOffset = 7;
bottomElementOffset = 41;

jointsGroupSpace = [38, 63, 10];
translate([leftElementOffset, bottomElementOffset]) {
    Place(
        elementSpace=getFrameUniversalJointCardanSpace(), 
        boxSpace=jointsGroupSpace, 
        alignY=AlignTop, 
        alignX=AlignRight, 
        rotation=Rotate90)
        FrameUniversalJointCardan();
    Place(
        elementSpace=getFrameJointBlockSpace(), 
        boxSpace=jointsGroupSpace, 
        alignY=AlignBottom, 
        alignX=AlignRight, 
        rotation=Rotate270)
        FrameJointBlock();
    }
    
    Place(
        x=leftElementOffset+jointsGroupSpace.x+4, 
        y=bottomElementOffset-7.5-getDividerThickness(), 
        rotation=Rotate90, 
        elementSpace=getFrameAxis60OpenSpace())
        FrameAxis60Open();
}



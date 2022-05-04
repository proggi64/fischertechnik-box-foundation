// OpenSCAD Box mot1

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/HolderBatterySet.scad>
use <../../Elements/FrameJointBlock.scad>
use <../../Elements/FrameUniversalJointCardan.scad>
use <../../Elements/FrameAxis60Open.scad>
use <../../Elements/FrameMotor6V.scad>
use <../../Elements/AxisCoupling.scad>
use <../../Elements/FrameBracketWithAxle80.scad>
use <../../Elements/FrameBracketCombo.scad>
use <../../Elements/AxisFlatHub.scad>
use <../../Elements/CylinderGear.scad>


color("lightgray") {
// Use cutoffs for the battery set at the box' right wall
difference() {
    Box190();
    HolderBatterySetCutoffs();
}
HolderBatterySet();

upperWebDistance = 13;
BoxWeb(UpperLeft, RightOfCorner, upperWebDistance + getDividerThickness(), webThickness=getDividerThickness());
BoxWeb(UpperRight, LeftOfCorner, upperWebDistance + getDividerThickness(), webThickness=getDividerThickness());
wallVolume = [getBox190Space().x, getDividerThickness(), 15];
Place(y=upperWebDistance, alignY=AlignTop, elementSpace=wallVolume)
    Wall([getBox190Space().x, getDividerThickness(), 15]);
    
CenterHorizontal(0, 20)
    Text("mot 1");

leftElementOffset = 5;
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

Place(
    x=leftElementOffset+jointsGroupSpace.x+17,
    y=upperWebDistance,
    elementSpace=getFrameMotor6VSpace(),
    alignY=AlignTop,
    rotation=Rotate90)
    FrameMotor6V();

Place(
    x=leftElementOffset+jointsGroupSpace.x+getFrameMotor6VSpace().x+16,
    y=getHolderBatterySetSpace().y - getDividerThickness(),
    elementSpace=getFrameBracketWithAxle80Space(),
    rotation=Rotate90)
    FrameBracketWithAxle80();

Place(x=95, y=bottomElementOffset)
    AxisCoupling();

Place(
    x=getCylinderGearSpace().x,
    y=37,
    elementSpace=getAxisFlatHubSpace(),
    alignX=AlignRight)
    AxisFlatHub();

Place(
    y=35,
    elementSpace=getCylinderGearSpace(),
    alignX=AlignRight)
    CylinderGear();

Place(
    y=25,
    x=4, 
    elementSpace=getFrameBracketComboSpace(),
    alignX=AlignRight,
    alignY=AlignTop)
    FrameBracketCombo();
}

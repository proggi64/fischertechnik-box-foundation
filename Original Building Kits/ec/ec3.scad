// OpenSCAD Box ec 3

use <../../Base/Constants.scad>
use <../../Base/Alignment.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/FrameElectronicBlockConnector.scad>
use <../../Elements/FrameElectronicBlock.scad>
use <../../Elements/FrameStandardBlock.scad>
use <../../Elements/FramePlaneMirror.scad>
use <../../Elements/FrameConcaveMirror.scad>
use <../../Elements/FrameLens.scad>
use <../../Elements/FrameAperture.scad>
use <../../Elements/FrameJointBlock.scad>
use <../../Elements/HolderMirrorBand.scad>
use <../../Elements/FramePushButton.scad>

module TwoPlaneMirrors() {
    FramePlaneMirror();
    translate([getFramePlaneMirrorSpace().x - getDividerThickness(), 0])
        FramePlaneMirror();
}

function getTwoPlaneMirrorsSpace() = [
    getFramePlaneMirrorSpace().x*2 - getDividerThickness(), 
    getFramePlaneMirrorSpace().y];

translate([0,0,0])
color("lightgray") {

Box190();
BoxWeb(LowerLeft, RightOfCorner, 7.5);
BoxWeb(LowerRight, LeftOfCorner, 15.2);
webDistance = (getBox190Space().x - 61)/2;
BoxWeb(UpperRight, RightOfCorner, webDistance);
BoxWeb(UpperLeft, LeftOfCorner, webDistance);

upperWebDistance = 8.2 - getDividerThickness();
BoxWeb(UpperLeft, RightOfCorner, upperWebDistance, webWidth=15, webThickness=getDividerThickness());
BoxWeb(UpperRight, LeftOfCorner, upperWebDistance, webWidth=15, webThickness=getDividerThickness());

Place(65.5, 62.7)    
    Text("ec 3");

Place(90.5, 72) {
    FramePushButton();
}

distance = 6.0;
rowDuoWidth = 2*getFrameApertureSpace().x + distance; 

Place(distance, 82) {
    DeployHorizontal(rowDuoWidth, [
        getTwoPlaneMirrorsSpace(),
        getFrameConcaveMirrorSpace()],
        [Rotate0, Rotate0]) {
    TwoPlaneMirrors();
    FrameConcaveMirror();
    }
}

rowTripleWidth = 2*getFrameApertureSpace().x + getFrameStandardBlockSpace(2,2).x + 2*distance;

Place(distance, 45) {
    DeployHorizontal(rowTripleWidth, [
        getFrameLensSpace(),
        getFrameLensSpace(),
        getFrameStandardBlockSpace(2,2)],
        [Rotate0, Rotate0, Rotate0]) {
    FrameLens();
    FrameLens();
    FrameStandardBlock(columns=2);
    }
}

// Some manual placement
Place(1.5, 36.6) 
    HolderMirrorBand(xRight=36.1);
translate([123.4, 34.8, -getExcess()]) 
    cube([getDividerThickness(), 12.5, 10+getExcess()]);

edgeDistance = getStandardEdgeDistance() + getDividerThickness();

Place(distance, edgeDistance) {    
    DeployHorizontal(rowTripleWidth, [
        getFrameApertureSpace(),
        getFrameApertureSpace(),
        getFrameStandardBlockSpace(2,2)],
        [Rotate0, Rotate0, Rotate0]) {
        FrameAperture();
        FrameAperture();
        FrameStandardBlock(columns=2, rows=2);   
    }
}

Place(edgeDistance, 7.0, elementSpace=getFrameJointBlockSpace(), alignX=AlignRight, alignY=AlignTop, rotation=Rotate180)
    FrameJointBlock();

Place (136, 89)
    FrameElectronicBlockConnector();

Place(elementSpace=getFrameElectronicBlockSpace(AlignRight, AlignBottom), alignX=AlignRight)
    FrameElectronicBlock(AlignRight, AlignBottom);
    
}
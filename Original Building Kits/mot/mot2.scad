// OpenSCAD Box mot2

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/CylinderHubWithZ30.scad>
use <../../Elements/CylinderAxis30.scad>
use <../../Elements/CylinderStepUpDownCog.scad>
use <../../Elements/FrameGearBox.scad>
use <../../Elements/AxisClip10.scad>
use <../../Elements/AxisIdlerGearZ15.scad>

module RackFrames() {
    Place(0.5, -getDividerThickness()-0.2, elementSpace=getFrameRackSpace(2, 4), rotation=Rotate270, alignY=AlignTop) {
        RackBase(1, 2);    
        Place(0, getFrameRackSpace(1, 2).y - 2*getDividerThickness() - getTolerance())
            RackBase(2, 2);
    }
    translate([-getDividerThickness(), getBox190Space().y - getDividerThickness() - 15, -getExcess()]) {
        cube([5, getDividerThickness(), getRackInnerHeight() + getExcess()]);
        translate([0, -30])
            cube([5, getDividerThickness(), getRackInnerHeight() + getExcess()]);
    }
}

module LeftFrames() {
    wallHeight = 13;
    widthA = getFrameRackSpace(1, 2).x + 2*getDividerThickness();
    depthA = 29.8;
    
    wallASpace = [getDividerThickness(), depthA + getDividerThickness(), wallHeight];
    wallABSpace = [getFrameRackSpace(1, 2).x + getDividerThickness(), getDividerThickness(), wallHeight];
    wallBSpace = [getDividerThickness(), (getBox190Space().y - depthA) + 2*getDividerThickness(), wallHeight];
    wallCSpace = [getFrameRackSpace(1, 4).y, getDividerThickness(), wallHeight];
    
    Place(x = widthA, y = -getDividerThickness(), elementSpace=wallASpace, alignY=AlignTop)
        Wall(wallASpace);
    Place(x = widthA, y=getBox190Space().y - depthA)
        Wall(wallABSpace);
    Place(x = widthA + getFrameRackSpace(1, 2).x, y = -getDividerThickness())
        Wall(wallBSpace);
    Place(y=getBox190Space().y - depthA - getFrameRackSpace(1, 2).x + getDividerThickness())
        Wall(wallCSpace);
}

groupX = 100;

module Z30Hubs() {
    Place (getFrameRackSpace(2, 4).y)
    DeploySame(space=[groupX, 52], elementSpace=getCylinderHubWithZ30Space()) {
        CylinderHubWithZ30();
    }
}

webDistance = 16;

module Axis30Group() {
    axis30GroupSpace = [getCylinderAxis30Space().x, getCylinderAxis30Space().y*2];
    Place(
        x = webDistance + 2*getDividerThickness(), 
        y = 4,
        elementSpace = axis30GroupSpace,
        alignX=AlignRight, 
        alignY=AlignTop)
        DeploySame(columns=1, rows=2, elementSpace=getCylinderAxis30Space(), space=axis30GroupSpace)
            CylinderAxis30();
}

module GearBox() {
    Place(
        x = getFrameRackSpace(2, 4).y,
        y = getCylinderHubWithZ30Space().y + 2 * getDividerThickness()
        )
        Center(
            space=[100, getFrameGearBoxSpace().y],
            elementSpace=getFrameGearBoxSpace()
            )
            FrameGearBox();
}

module ClipGroups() {
    module ClipGroup() {
        AxisClip10();
        translate([getAxisClip10Space().x, 0])
            AxisClip10();
    }
    Place(
        x = getFrameRackSpace(2, 4).y + getDividerThickness(), 
        y = getCylinderHubWithZ30Space().y) {
        ClipGroup();
        translate([getFrameGearBoxSpace().x + 2*getAxisClip10Space().x + getDividerThickness(), 0])
            ClipGroup();
    }
}

color("lightgray") {
Box190();

BoxWeb(UpperLeft, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(UpperRight, RightOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerRight, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerLeft, LeftOfCorner, 7);
Place(x=webDistance + getDividerThickness(), alignX=AlignRight)
    Wall([getDividerThickness(), getBox190Space().y, 28]);

RackFrames();
LeftFrames();
    
Axis30Group();

GearBox();
ClipGroups();

Z30Hubs();

Place(
    x = getFrameRackSpace(2, 4).y, 
    y = getCylinderHubWithZ30Space().y + getAxisClip10Space().y + 4) {
    AxisIdlerGearZ15();
    translate([getFrameGearBoxSpace().x + 2*getAxisClip10Space().x + getDividerThickness() + 4, 5])
        CylinderStepUpDownCog();
    }

}

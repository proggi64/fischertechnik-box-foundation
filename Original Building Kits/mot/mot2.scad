// OpenSCAD Box mot2

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/CylinderHubWithZ30.scad>

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

module Z30Hubs() {
    Place (getFrameRackSpace(2, 4).y)
    DeploySame(space=[100, 52], elementSpace=getCylinderHubWithZ30Space()) {
        CylinderHubWithZ30();
    }
}

color("lightgray") {
Box190();

webDistance = 16;
BoxWeb(UpperLeft, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(UpperRight, RightOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerRight, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerLeft, LeftOfCorner, 7);
Place(x=webDistance + getDividerThickness(), alignX=AlignRight)
    Wall([getDividerThickness(), getBox190Space().y, 28]);

RackFrames();
LeftFrames();
    
Z30Hubs();
}

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
    Place(0.5, 0, elementSpace=getFrameRackSpace(2, 4), rotation=Rotate270, alignY=AlignTop) {
        RackBase(1, 2);    
        Place(0, getFrameRackSpace(1, 2).y - 2*getDividerThickness() - getTolerance())
            RackBase(2, 2, alignX=AlignRight, alignY=AlignTop);
    }
}

module LeftFrames() {
    wallHeight = 13;
    widthA = getFrameRackSpace(1, 2).x + 2*getDividerThickness();
    depthA = 30 + getDividerThickness();
    
    wallASpace = [getDividerThickness(), depthA, wallHeight];
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
        x = webDistance + getDividerThickness(), 
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
        y = getCylinderHubWithZ30Space().y + 2 * getDividerThickness() + 0.4
        ) {
        Center(
            space=[100, getFrameGearBoxSpace().y],
            elementSpace=getFrameGearBoxSpace()
            ) {
            FrameGearBox();
            Center(space=getFrameGearBoxSpace())
                Text("mot2");
        }
    }
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

axisLength = 110;
comboDepth = 25;
comboWidth = getFrameAxisSpace(axisLength).x;
comboHeight = getFrameAxisHeight();
diff = getFrameAxisDepth() + 3.8;

function getAxisComboSpace() = [comboWidth, comboDepth, comboHeight];

// Individual combined axis holders at the upper edge for three different axis
module AxisCombo() {    
    Space(getAxisComboSpace());
    
    innerWidth = 7;
    innerDepth = 20;
    frameSpace = [innerWidth, innerDepth, comboHeight];
    cutoffVolume60 = [60, getFrameAxisDepth(), getFrameAxisDepth() + getExcess()];
    cutoffVolume110 = [axisLength, getFrameAxisDepth(), getFrameAxisDepth() + getExcess()];
    cutoffHeight = comboHeight - getFrameAxisDepth();
    clamp = 0.2;
    
    module AxisFrames() {
        // Left and right frames (default columns value of DeploySame is 2)
        DeploySame(space=getAxisComboSpace(), elementSpace=frameSpace)
            DockableFrame(frameSpace, wallTop=false);
        // Middle frame
        translate([50-getTolerance(), diff])
            Frame([frameSpace.x, getFrameAxisDepth(), getFrameAxisHeight()]);
    }
    
    difference() {
        AxisFrames();
        // cutoffs for the three axis
        translate([
            getDividerThickness()+getTolerance()/2, 
            getDividerThickness() + clamp, 
            cutoffHeight]) {
            cube(cutoffVolume110);
            translate([50, diff])
                cube(cutoffVolume60);
            translate([0, 2*diff])
                cube(cutoffVolume110);
        }
    }
}

color("lightgray") {
Box190();
    
// Box webs and right wall
BoxWeb(UpperLeft, LeftOfCorner, webDistance+2, webThickness=getDividerThickness());
BoxWeb(UpperRight, RightOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerRight, LeftOfCorner, webDistance, webThickness=getDividerThickness());
BoxWeb(LowerLeft, LeftOfCorner, 7);
Place(x=webDistance + getDividerThickness(), alignX=AlignRight)
    Wall([getDividerThickness(), getBox190Space().y, 28]);

// Frames and holders for the four racks and the cassette
RackFrames();
LeftFrames();

// Two standing axis 30
Axis30Group();

// Frame for the gear box
GearBox();
// Four clip axis left and right of the gear box
ClipGroups();

// Two axis for the Z30 with hubs
Z30Hubs();

Place(
    x = getFrameRackSpace(2, 4).y, 
    y = getCylinderHubWithZ30Space().y + getAxisClip10Space().y + 4) {
    AxisIdlerGearZ15();
    translate([getFrameGearBoxSpace().x + 2*getAxisClip10Space().x + getDividerThickness() + 4, 5])
        CylinderStepUpDownCog();
    }

// Individual docked combination of holders for three axis at the upper wall
Place(
    x=getFrameRackSpace(1, 2).x + 2*getDividerThickness() + 4,
    y = -getDividerThickness(),
    elementSpace=getAxisComboSpace(), alignY=AlignTop)
    AxisCombo();
}

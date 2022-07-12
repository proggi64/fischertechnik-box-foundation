// Box 190x130
// Electronics Box 1/3
// 524326

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

use <../../Elements/FrameMiniPushButton.scad>
use <../../Elements/AxisLockingGear10.scad>
use <../../Elements/Frame9VBatterySet.scad>
use <../../Elements/FrameTransistorBlock.scad>
use <../../Elements/FrameUFormGearbox.scad>
use <../../Elements/FrameMiniMotor.scad>
use <../../Elements/FrameBlockWithStud.scad>
use <../../Elements/CylinderLockingGearZ28.scad>
use <../../Elements/FrameElectronicsController.scad>

include <../../Base/PlacementOptions.scad>

Box190();
Place(147, 20)
    Text("PROFI");
Place(147, 12)
    Text("Electronics 1/3");

// Cables 30x 31336, 22x 31337, Transistors 2x 152860, 1x 36437, 1x 35443
cableBoxInnerVolume = [25, 90, 30];
DockableFrame(cableBoxInnerVolume, wallLeft=false, wallBottom=false);

cableBoxOuterVolume = getFrameOuterVolume(cableBoxInnerVolume);
distFirstPushButton = 5;
xRightCableBox = cableBoxOuterVolume.x;
xPushButton1 = xRightCableBox + distFirstPushButton;
yPushButton = 7.5;
distPushButton = 5;

// 2x 37783
Place(
    x=xPushButton1, 
    y=yPushButton, 
    elementSpace=getFrameMiniPushButtonSpace(), 
    rotation=Rotate270)
    FrameMiniPushButton();

xPushButton2 = xPushButton1 + getFrameMiniPushButtonSpace().y + distPushButton;
Place(
    x=xPushButton2, 
    y=yPushButton, 
    elementSpace=getFrameMiniPushButtonSpace(), 
    rotation=Rotate270)
    FrameMiniPushButton();

// 2x 35945
distGear = 3;
distGears = 4;
xGear1 = xPushButton2 + getFrameMiniPushButtonSpace().y + distGear;
yGear = 2;
Place(
    x=xGear1,
    y=yGear)
    AxisLockingGear10();
xGear2 = xGear1 + getAxisLockingGear10Space().x + distGears;
Place(
    x=xGear2,
    y=yGear)
    AxisLockingGear10();

// 1x 31082
Place(
    x = xGear2 + (getAxisLockingGear10Space().x - getCylinderLockingGearZ28Space().x)/2,
    y = yGear + getAxisLockingGear10Space().y + 2)
    CylinderLockingGearZ28();

// 1x 135719
Place(
    elementSpace=getFrame9VBatterySetSpace(),
    alignX=AlignRight)
    Frame9VBatterySet(alignX=AlignRight, alignY=AlignBottom);

// 2x 152059, 152218
distYTransistors = 7.5;
yTransistors = yPushButton + getFrameMiniPushButtonSpace().x + distYTransistors;
Place(
    x=xPushButton1,
    y=yTransistors,
    elementSpace=getFrameTransistorBlockSpace(),
    rotation=Rotate90)
    FrameTransistorBlock();

distXTransistors = 7.5;
xTransistor2 = xPushButton1 + getFrameTransistorBlockSpace().y + distXTransistors;
Place(
    x=xTransistor2,
    y=yTransistors,
    elementSpace=getFrameTransistorBlockSpace(),
    rotation=Rotate90)
    FrameTransistorBlock();

// 1x 31078
xGearbox = xTransistor2 + getFrameTransistorBlockSpace().y + 10;
yGearbox = yTransistors + (getFrameTransistorBlockSpace().x - getFrameUFormGearboxSpace().y)/2;
Place(
    x=xGearbox,
    y=yGearbox)
    FrameUFormGearbox();

// 1x 137096
yMotor = yTransistors + (getFrameTransistorBlockSpace().x - getFrameMiniMotorSpace().y)/2;
Place(
    x=5,
    y=yMotor,
    elementSpace=getFrameMiniMotorSpace(),
    alignX=AlignRight)
    FrameMiniMotor();

// 5x 38216, 2x 152200, 1x 152222
firstLightXDist = 6;
xFirstLight = xRightCableBox - getFrameBlockWithStudSpace().x;
yFirstLight = cableBoxOuterVolume.y - getDividerThickness() + firstLightXDist;
lightSpaceWidth = 95;

Place(xFirstLight, yFirstLight)
    DeployHorizontal(
        lightSpaceWidth,
        [getFrameBlockWithStudSpace(), getFrameBlockWithStudSpace(2), getFrameBlockWithStudSpace(2)]) {
        FrameBlockWithStud();
        FrameBlockWithStud(2);
        FrameBlockWithStud(2);
        }

// 2x 38216, 2x 152219
yLightDist = 6;
ySecondLight = yFirstLight - yLightDist - getFrameBlockWithStudSpace().y;

Place(xFirstLight, ySecondLight)
    DeployHorizontal(
        lightSpaceWidth,
        [getFrameBlockWithStudSpace(), getFrameBlockWithStudSpace(2), getFrameBlockWithStudSpace(2)]) {
        Space(getFrameBlockWithStudSpace()); // Dummy!
        FrameBlockWithStud(2);
        FrameBlockWithStud(2);
        }

// 1x 152063
Place(alignX=AlignRight, alignY=AlignTop, elementSpace=getFrameElectronicsControllerSpace())
    FrameElectronicsController(alignX=AlignRight, alignY=AlignTop);

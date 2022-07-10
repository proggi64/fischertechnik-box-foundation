// Box 190x130
// Electronics Box 1
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
use <../../Elements/FrameBlockWithPin.scad>
use <../../Elements/CylinderLockingGearZ28.scad>

include <../../Base/PlacementOptions.scad>

Box190();
Place(147, 20)
    Text("PROFI");
Place(147, 12)
    Text("Electronics 1/3");

cableBoxInnerVolume = [25, 90, 30];
DockableFrame(cableBoxInnerVolume, wallLeft=false, wallBottom=false);

cableBoxOuterVolume = getFrameOuterVolume(cableBoxInnerVolume);
distFirstPushButton = 5;
xRightCableBox = cableBoxOuterVolume.x;
xPushButton1 = xRightCableBox + distFirstPushButton;
yPushButton = 7.5;
distPushButton = 5;

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

Place(
    x = xGear2 + (getAxisLockingGear10Space().x - getCylinderLockingGearZ28Space().x)/2,
    y = yGear + getAxisLockingGear10Space().y + 2)
    CylinderLockingGearZ28();

Place(
    elementSpace=getFrame9VBatterySetSpace(),
    alignX=AlignRight)
    Frame9VBatterySet(alignX=AlignRight, alignY=AlignBottom);

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

xGearbox = xTransistor2 + getFrameTransistorBlockSpace().y + 10;
yGearbox = yTransistors + (getFrameTransistorBlockSpace().x - getFrameUFormGearboxSpace().y)/2;
Place(
    x=xGearbox,
    y=yGearbox)
    FrameUFormGearbox();

yMotor = yTransistors + (getFrameTransistorBlockSpace().x - getFrameMiniMotorSpace().y)/2;
Place(
    x=5,
    y=yMotor,
    elementSpace=getFrameMiniMotorSpace(),
    alignX=AlignRight)
    FrameMiniMotor();

firstLightXDist = 6;
xFirstLight = xRightCableBox - getFrameBlockWithPinSpace().x;
yFirstLight = cableBoxOuterVolume.y - getDividerThickness() + firstLightXDist;
lightSpaceWidth = 95;

Place(xFirstLight, yFirstLight)
    DeployHorizontal(
        lightSpaceWidth,
        [getFrameBlockWithPinSpace(), getFrameBlockWithPinSpace(2), getFrameBlockWithPinSpace(2)]) {
        FrameBlockWithPin();
        FrameBlockWithPin(2);
        FrameBlockWithPin(2);
        }

yLightDist = 6;
ySecondLight = yFirstLight - yLightDist - getFrameBlockWithPinSpace().y;

Place(xFirstLight, ySecondLight)
    DeployHorizontal(
        lightSpaceWidth,
        [getFrameBlockWithPinSpace(), getFrameBlockWithPinSpace(2), getFrameBlockWithPinSpace(2)]) {
        Space(getFrameBlockWithPinSpace()); // Dummy!
        FrameBlockWithPin(2);
        FrameBlockWithPin(2);
        }

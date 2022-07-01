// Box 130x95
// PLUS Motor Set XS
// 505281

use <../../Base/Boxes.scad>
use <../../Base/Placement.scad>

use <../../ModelBase/Simple.scad>

use <../../Elements/FrameMiniMotor.scad>
use <../../Elements/FrameUFormGearbox.scad>
use <../../Elements/FrameAxis60WithGearwheelZ28.scad>
use <../../Elements/FrameSmallBlock.scad>
use <../../Elements/Frame9VBatterySet.scad>
use <../../Elements/ComboLockingWinchDrumAndHolder.scad>

include <../../Base/PlacementOptions.scad>

Box130();
boxSpace=getBox130Space();

Place(5, 2, alignY=AlignTop, elementSpace=getFrameMiniMotorSpace(), boxSpace=boxSpace, rotation=Rotate90)
    FrameMiniMotor();

Place(5, 2, rotation=Rotate90, elementSpace=getFrameUFormGearboxSpace())
    FrameUFormGearbox();

column2 = 8 + getFrameMiniMotorSpace().y;
Place(column2, 2, alignY=AlignTop, elementSpace=getFrameAxis60WithGearwheelZ28Space(), boxSpace=boxSpace, rotation=Rotate90)
    FrameAxis60WithGearwheelZ28();

Divider(15, align=AlignRight, boxSpace=boxSpace);

Place(column2, 2)
    FrameSmallBlock(2);

column3 = column2 + getFrameAxis60WithGearwheelZ28Space().y + 4;
Place(column3, 2, alignY=AlignTop, elementSpace=getFrame9VBatterySetSpace(), boxSpace=boxSpace, rotation=Rotate90)
    Frame9VBatterySet();

column4 = column3 + getFrame9VBatterySetSpace().y + 4;
Place(column4, 2, alignY=AlignTop, elementSpace=getComboLockingWinchDrumAndHolderSpace(), boxSpace=boxSpace, rotation=Rotate90)
    ComboLockingWinchDrumAndHolder();
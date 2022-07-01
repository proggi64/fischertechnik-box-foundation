// Box 130x95
// PLUS Motor Set XS
// 505281

use <../../Base/Boxes.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>

use <../../ModelBase/Simple.scad>

use <../../Elements/FrameMiniMotor.scad>
use <../../Elements/FrameUFormGearbox.scad>
use <../../Elements/FrameAxis60WithGearwheelZ28.scad>
use <../../Elements/CylinderLockingGearZ28.scad>
use <../../Elements/Frame9VBatterySet.scad>
use <../../Elements/ComboLockingWinchDrumAndHolder.scad>
use <../../Elements/AxisLockingGear10.scad>
use <../../Elements/AxisLockingWorm.scad>

include <../../Base/PlacementOptions.scad>

Box130();

boxSpace=getBox130Space();

Place(x=3, y=3, alignX = AlignCenter, alignY=AlignCenter, boxSpace=boxSpace, rotation=Rotate270)
    Text("Motor Set XS");

Place(5, 2, alignY=AlignTop, elementSpace=getFrameMiniMotorSpace(), boxSpace=boxSpace, rotation=Rotate90)
    FrameMiniMotor();

Place(5, 2, rotation=Rotate90, elementSpace=getFrameUFormGearboxSpace())
    FrameUFormGearbox();

column2 = 8 + getFrameMiniMotorSpace().y;
Place(column2, 2, alignY=AlignTop, elementSpace=getFrameAxis60WithGearwheelZ28Space(), boxSpace=boxSpace, rotation=Rotate90)
    FrameAxis60WithGearwheelZ28();

Divider(15, align=AlignRight, boxSpace=boxSpace);

Place(column2, 2)
    CylinderLockingGearZ28();

column3 = column2 + getFrameAxis60WithGearwheelZ28Space().y + 4;
Place(column3, 2, alignY=AlignTop, elementSpace=getFrame9VBatterySetSpace(), boxSpace=boxSpace, rotation=Rotate90)
    Frame9VBatterySet();

column4 = column3 + getFrame9VBatterySetSpace().y + 4;
centerSpace = getComboLockingWinchDrumAndHolderSpace();
Place(column4, 2, alignY=AlignTop, elementSpace=centerSpace, boxSpace=boxSpace, rotation=Rotate90)
    ComboLockingWinchDrumAndHolder();

Place(column4-3, 30)
    AxisLockingWorm();

Place(column4, 10.6)
    AxisLockingGear10();

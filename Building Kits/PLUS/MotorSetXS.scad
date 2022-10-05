// Box 130x95
// PLUS Motor Set XS
// 505281

use <../../Base/Boxes.scad>
use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Rotation.scad>
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
use <../../Elements/AxisLockingAxisCoupling.scad>
use <../../Elements/ComboWormAndNutScrew.scad>
use <../../Elements/CylinderLockingBevelGear.scad>

use <../../Elements/FrameAxis90.scad>
use <../../Elements/FrameAxis75.scad>
use <../../Elements/FrameAxis60.scad>
use <../../Elements/FrameAxis45.scad>
use <../../Elements/FrameSmallblock.scad>

include <../../Base/PlacementOptions.scad>

Box190();

// Cables
Divider(20, align=AlignTop);

volume = [getDividerThickness(), 20 + 2*getDividerThickness(), getSmallPartsFrameHeight()];
// Separated Small Parts
Place(x=110, y=-getDividerThickness(), alignY=AlignTop, elementSpace=volume)
    Wall(volume);

// Smaller space for first group of elements
translate([0, 5]) {
boxSpace=getBox130Space();

Place(x=3, y=3, alignX = AlignCenter, alignY=AlignCenter, boxSpace=boxSpace, rotation=Rotate270)
    Text("Motor Set XS");

// 137096 Motor XS
Place(5, 2, alignY=AlignTop, elementSpace=getFrameMiniMotorSpace(), boxSpace=boxSpace, rotation=Rotate90)
    FrameMiniMotor();

// 31078 U-Form Gearbox
Place(5, 2, rotation=Rotate90, elementSpace=getFrameUFormGearboxSpace())
    FrameUFormGearbox();

// 31063 Axis 60 with Gear 28
column2 = 8 + getFrameMiniMotorSpace().y;
Place(column2, 2, alignY=AlignTop, elementSpace=getFrameAxis60WithGearwheelZ28Space(), boxSpace=boxSpace, rotation=Rotate90)
    FrameAxis60WithGearwheelZ28();

// 31082 Locking Axis  with Gear 28
Place(column2, 10)
    CylinderLockingGearZ28();

// 135719 9V Battery Set
column3 = column2 + getFrameAxis60WithGearwheelZ28Space().y + 4;
Place(column3, 2, alignY=AlignTop, elementSpace=getFrame9VBatterySetSpace(), boxSpace=boxSpace, rotation=Rotate90)
    Frame9VBatterySet();

// 35069, 35070 Locking Winch with Drum
column4 = column3 + getFrame9VBatterySetSpace().y + 4;
centerSpace = getComboLockingWinchDrumAndHolderSpace();
Place(column4, 2, alignY=AlignTop, elementSpace=centerSpace, boxSpace=boxSpace, rotation=Rotate90)
    ComboLockingWinchDrumAndHolder();

// 35072 Locking Worm
Place(column4-3, 30)
    AxisLockingWorm();

// 35945 2x Locking Gear 10
Place(column4, 12)
    AxisLockingGear10();
Place(column4, -5)
    RotateFix(getAxisLockingGear10Space(), Rotate90)
        AxisLockingGear10();
}

// Additional space for some elements
translate([112, 5]) {
    partSpace = [70, 94];
    
    Place(elementSpace=getFrameAxis90Space(), rotation=Rotate90)
        FrameAxis90();

    Place(x=10, elementSpace=getFrameAxis75Space(), rotation=Rotate90)
        FrameAxis75();

    Place(x=20, elementSpace=getFrameAxis60Space(), rotation=Rotate90)
        FrameAxis60();

    Place(x=30, elementSpace=getFrameAxis45Space(), rotation=Rotate90)
        FrameAxis45();

    Place(x=45)
        FrameSmallBlock(2);
    
    Place(x=19, boxSpace=partSpace, elementSpace=getAxisLockingAxisCouplingSpace(), alignY=AlignTop)
        AxisLockingAxisCoupling();
    Place(x=29, boxSpace=partSpace, elementSpace=getAxisLockingAxisCouplingSpace(), alignY=AlignTop)
        AxisLockingAxisCoupling();
    Place(x=29, y=12, boxSpace=partSpace, elementSpace=getAxisLockingAxisCouplingSpace(), alignY=AlignTop)
        AxisLockingAxisCoupling();
        
    Place(x=46, y=24, elementSpace=getComboWormAndNutScrewSpace(), rotation=Rotate90)
        ComboWormAndNutScrew();
        
    Place(x=42, y=5, boxSpace=partSpace, elementSpace=getCylinderLockingBevelGearSpace(), alignY=AlignTop)
        CylinderLockingBevelGear();    
    Place(x=55, y=5, boxSpace=partSpace, elementSpace=getCylinderLockingBevelGearSpace(), alignY=AlignTop)
        CylinderLockingBevelGear();    
    
}
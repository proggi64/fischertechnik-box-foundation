// OpenSCAD Box mot3

// **** in Arbeit

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/AxisClip10.scad>
use <../../Elements/AxisCogWheel.scad>
use <../../Elements/FrameDifferentialGearbox.scad>
use <../../Elements/FrameSingleLayingStandardBlock.scad>
use <../../Elements/HolderSpringLeg.scad>
use <../../Elements/FrameAngleIsosceles.scad>
use <../../Elements/FrameAngleEquilateral.scad>
use <../../Elements/ComboInnerGearWheelAndIdlerGearZ15.scad>
use <../../Elements/CylinderAndAxisSegmentDisc.scad>
use <../../Elements/FrameRack60.scad>

/* [Box Parameters] */
lengthDifferentialGearBoxAxis = 110;    // [110, 120]

module RackFrame() {
    Place(
        elementSpace=getFrameRack60Space(4), 
        rotation=Rotate270, 
        alignX=AlignRight) {
        FrameRack60(4, alignX = AlignLeft, alignY = AlignBottom);
    }
}

color("lightgray") {
#Box190();

upperWebDistance = 6;
    
BoxWeb(UpperLeft, LeftOfCorner, upperWebDistance, webThickness=getDividerThickness());
BoxWeb(UpperRight, RightOfCorner, upperWebDistance, webThickness=getDividerThickness());

lowerWebDistance = 11;
    
BoxWeb(LowerLeft, RightOfCorner, lowerWebDistance);
BoxWeb(UpperRight, LeftOfCorner, 62.3, webThickness=getDividerThickness());

ComboInnerGearWheelAndIdlerGearZ15();
Place(x=getComboInnerGearWheelAndIdlerGearZ15Space().x - 6, elementSpace=getCylinderAndAxisSegmentDiscSpace(), rotation=Rotate90)
    CylinderAndAxisSegmentDisc();

RackFrame();

springLegY = 78;
Place(y=springLegY, elementSpace= getHolderSpringLegSpace(4), rotation=Rotate90)
    HolderSpringLeg(4, true);

clipsX = 40;
clipsY = springLegY - 3.4;
clipsDistance = 20;
Place(clipsX, clipsY)
    AxisClip10(12, 7);
Place(clipsX + clipsDistance, clipsY)
    AxisClip10(12, 7);

angleIsoscelesX = 69.3;
angleIsoscelesY = clipsY - getFrameAngleIsoscelesSpace(4).y;
Place(x = angleIsoscelesX, y = angleIsoscelesY)
    FrameAngleIsosceles(4);

angleEquilateralX = angleIsoscelesX + getFrameAngleIsoscelesSpace(4).x - getDividerThickness();
angleEquilateralY = angleIsoscelesY + 5.6;
Place(x = angleEquilateralX, y = angleEquilateralY)
    FrameAngleEquilateral(2);

cogWheelX = 18;
cogWheelY = angleEquilateralY + 10;
cogWheelDistance = 5;
Place(x = cogWheelX, y = cogWheelY, alignX = AlignRight)
    AxisCogWheel();
Place(x = cogWheelX, y = cogWheelY + getAxisCogWheelSpace().y + cogWheelDistance, alignX = AlignRight)
    AxisCogWheel();

gearBoxXBase = 42;
gearBoxX = gearBoxXBase - (lengthDifferentialGearBoxAxis - 110)/2;
gearBoxY = springLegY + 10 - getDividerThickness();
Place(x = gearBoxX, y = gearBoxY)
    FrameDifferentialGearbox(lengthDifferentialGearBoxAxis);

clip10SpaceX = getAxisClip10Space().x + clipsDistance;
clip10UpX = gearBoxX + 
    (getFrameDifferentialGearboxSpace(lengthDifferentialGearBoxAxis).x - clip10SpaceX) / 2;
clip10UpY = gearBoxY + 13;
Place(clip10UpX, clip10UpY)
    AxisClip10(12, 7);
Place(clip10UpX + clipsDistance, clip10UpY)
    AxisClip10(12, 7);

blockXLeft = gearBoxXBase;
blockXRight = gearBoxXBase + getFrameDifferentialGearboxSpace(110).x - getFrameSingleLayingStandardBlockSpace().x;
blockY = gearBoxY + getFrameDifferentialGearboxSpace().y + 3.2;
Place(x = blockXLeft, y = blockY)
    FrameSingleLayingStandardBlock();
Place(x = blockXRight, y = blockY)
    FrameSingleLayingStandardBlock();
}

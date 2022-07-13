// Box 190x130
// Electronics Box 2/3
// 524326

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

use <../../Elements/FrameRack60.scad>   // 2x
use <../../Elements/CylinderHub.scad>   // 1x
use <../../Elements/AxisLockingAxisCoupling.scad>   // 1x
use <../../Elements/CylinderHubWithZ30.scad>    // 1x
use <../../Elements/HolderPropellerFourBlades.scad>    // 1x
use <../../Elements/AxisPropellerTip.scad>  // 1x
use <../../Elements/FrameSmallBlock.scad>  // 11x, 8x
use <../../Elements/FrameStandardBlock.scad>  // 2x
use <../../Elements/FrameBuildingPlate5x15x30.scad> // 6x
use <../../Elements/AxisLockingPulley12.scad>   // 1x
use <../../Elements/FrameAngleBlock10x15x15.scad>   // 8x
use <../../Elements/AxisCoupling.scad>  // 2x
use <../../Elements/FrameReedRelayHolder.scad>  // 8x

include <../../Base/PlacementOptions.scad>

Box190();

// 2x 31053
Place(rotation=Rotate90, elementSpace=getFrameRack60Space(2))
    FrameRack60(2, alignX=AlignRight, alignY=AlignBottom);

// 1x 31058, 35031, 36264
xDistZ30 = 3;
yDistZ30 = 2;
xZ30 = getFrameRack60Space(2).y + xDistZ30;
Place(x=xZ30, y=yDistZ30)
    CylinderHubWithZ30();

// 1x 31058, 35031
yDistHub = 0.4;
xHub = (getFrameRack60Space(2).y - getCylinderHubSpace().x) / 2;
yHub = getFrameRack60Space(2).x + yDistHub;
Place(x=xHub, y=yHub)
    CylinderHub();

// 1x 36337, 1x 37681, 2x 31983, 1x 136775

xProp = xZ30 + getCylinderHubWithZ30Space().x;
Place(x = xProp) {
    HolderPropellerFourBlades();
    translate([2, (getHolderPropellerFourBladesSpace().y - getAxisPropellerTipSpace().y)/2])
        AxisPropellerTip();
    translate([
        getHolderPropellerFourBladesSpace().x - getAxisLockingPulley12Space().x - 2, 
        (getHolderPropellerFourBladesSpace().y - getAxisLockingPulley12Space().y)/2])
        AxisLockingPulley12();
    translate([
        (getHolderPropellerFourBladesSpace().x - getAxisCouplingSpace().x)/2, 
        2])
        AxisCoupling();
    translate([
        (getHolderPropellerFourBladesSpace().x - getAxisCouplingSpace().x)/2, 
        getHolderPropellerFourBladesSpace().y - getAxisCouplingSpace().y - 2])
        AxisCoupling();
}

 AxisCoupling();

// 2x 31597 3x 31848 16x 31982 2x 36323 1x 36981 7x 37679
smallPartsFrameVolume = [30, 30, 20];
Place(alignY=AlignTop, elementSpace=getFrameOuterVolume(smallPartsFrameVolume))
    AlignedFrame(smallPartsFrameVolume, alignX=AlignLeft, alignY=AlignTop);

// 6x 38428 5x15x30
block5x15x30Volume = [30 + getTolerance(), 30 + getTolerance(), 8];
Place(alignX=AlignRight, elementSpace=getFrameOuterVolume(block5x15x30Volume))
    AlignedFrame(block5x15x30Volume, alignY=AlignBottom, alignX=AlignRight);

// 11x 37237
ySmallBlock = getHolderPropellerFourBladesSpace().y;
xSmallBlock1 = getFrameRack60Space(2).y - getDividerThickness();
Place(x=xSmallBlock1, y=ySmallBlock)
    FrameSmallBlock(11);
// 8x 37468
xSmallBlock2 = xSmallBlock1 + getFrameSmallBlockSpace(11).x - getDividerThickness();
Place(x=xSmallBlock2, y=ySmallBlock)
    FrameSmallBlock(8);

// 8x 38423
yAngleBlock = ySmallBlock + getFrameSmallBlockSpace(11).y - getDividerThickness();
Place(x=xSmallBlock1, y=yAngleBlock)
    FrameAngleBlock10x15x15(8);

// 8x 35969
xReedRelaisHolder = xSmallBlock1 + getFrameAngleBlock10x15x15Space(8).x - getDividerThickness(); 
yReedRelaisHolder = yAngleBlock;
Place(x=xReedRelaisHolder, y=yReedRelaisHolder)
    FrameReedRelayHolder(8);

// 2x 31426, 31436
twoBlocksVolume = [30 + getTolerance(), 15, 8];
Place(
    y=getFrameOuterVolume(block5x15x30Volume).y - getDividerThickness(), 
    alignX=AlignRight, 
    elementSpace=getFrameOuterVolume(twoBlocksVolume))
    AlignedFrame(twoBlocksVolume, alignX=AlignRight);

// 1x 31918  Winkelstein mit Nuten
// 2x 32850  Riegelstein 15x15x15
// 1x 35063  Rastachse 30
// 1x 35066  Rastachse 90
// 1x 35073  Rastkupplung
// 3x 38241  Bauplatte 15x30
// 4x 38242  Bauplatte 15x45
// 3x 38413  Achse 30
// 1x 38414  Achse 40

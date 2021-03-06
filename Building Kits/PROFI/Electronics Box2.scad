// Box 190x130
// Electronics Box 2/3
// 524326

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Rotation.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>
use <../../ModelBase/Complex.scad>

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
use <../../Elements/HolderBuildingPlate30x45.scad>  // 4x
use <../../Elements/HolderBuildingPlate30x30.scad>  // 3x
use <../../Elements/AxisLockingAxisCoupling.scad>   

include <../../Base/PlacementOptions.scad>

Box190();
Place(x=ySmallBlock + 22, y = ySmallBlock + 10)
Text("Electronics 2/3");

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

// 4x 38242  Bauplatte 15x45
Place(x=xSmallBlock1, alignY=AlignTop, rotation=Rotate180, elementSpace=getHolderBuildingPlate30x45Space(4))
    HolderBuildingPlate30x45(4, dock=true);

// 3x 38241  Bauplatte 15x30
xPlates = xSmallBlock1 + getHolderBuildingPlate30x45Space(4).x + 1;
Place(x=xPlates, alignY=AlignTop, rotation=Rotate180, elementSpace=getHolderBuildingPlate30x30Space(3))
    HolderBuildingPlate30x30(3, dock=true);

// 3x 36912, 1x 38543 Rastachsen
lockingAxis30Width = 30.0 + getAxisTolerance();
lockingAxisDepth = getAxisDiameter();
bearingLength = 8.8;
lockingAxis30LoadHeight = 3 * getAxisDiameter();
lockingAxis30Volume = [lockingAxis30Width, lockingAxisDepth, lockingAxis30LoadHeight];

module FrameThreeLockingAxis30(volume) {
    height = 20.0;
    ElevatedFramesWithCutoff(lockingAxis30Volume, lockingAxisDepth, height, bearingLength, single=true);
}

lockingAxis90Width = 90.0 + getAxisTolerance();
lockingAxis90LoadHeight = getAxisDiameter();
lockingAxis90Volume = [lockingAxis90Width, lockingAxisDepth, lockingAxis90LoadHeight];

module FrameSingleLockingAxis90(volume=lockingAxis90Volume) {
    height = 24.0;
    ElevatedFramesWithCutoff(volume, lockingAxisDepth, height, bearingLength, single=true);
}

module FrameLockingAxisEnd() {
    loadHeight = lockingAxis30LoadHeight + lockingAxis90LoadHeight;
    volume = [lockingAxis90Volume.x, lockingAxis90Volume.y, loadHeight];
    FrameSingleLockingAxis90(volume);
}

xLockingAxis = xPlates;
yLockingAxis = yAngleBlock + getFrameReedRelayHolderSpace(8).y + 1.5*getDividerThickness();
Place(x = xLockingAxis, y = yLockingAxis)
{
    FrameSingleLockingAxis90();

    translate([getFrameOuterVolume(lockingAxis90Volume).x - getFrameOuterVolume(lockingAxis30Volume).x, 0])
        FrameThreeLockingAxis30(lockingAxis30Volume);
    
    RotateFix(space=getFrameOuterVolume(lockingAxis90Volume, tolerance=0), rotation=Rotate180)
        FrameLockingAxisEnd();
}

// 1x 31918  Winkelstein mit Nuten
xAngleBlock = xPlates + getHolderBuildingPlate30x30Space(3).x + 1;
angleBlockVolume = [15, 15, 6];
Place(x=xAngleBlock, alignY = AlignTop, elementSpace=getFrameOuterVolume(angleBlockVolume))
    AlignedFrame(angleBlockVolume, alignY=AlignTop);

// 2x 32850  Riegelstein 15x15x15
xLockingBlock = xAngleBlock + getFrameStandardBlockSpace().x - getDividerThickness();
lockingBlockVolume = [30, 15, 8];
Place(x=xLockingBlock, alignY = AlignTop, elementSpace=getFrameOuterVolume(lockingBlockVolume))
    AlignedFrame(lockingBlockVolume, alignY=AlignTop);

// 1x 35073  Rastkupplung
Place(x=6, y=5, alignX=AlignRight, alignY=AlignTop, elementSpace=getAxisLockingAxisCouplingSpace())
    AxisLockingAxisCoupling();

// 3x 38413  Achse 30
// 1x 38414  Achse 40
xAxis = xLockingAxis + 50;
yAxis = yLockingAxis + getFrameOuterVolume(lockingAxis90Volume).y - 2*getDividerThickness();
axis40Volume = [40, getAxisDiameter(), getAxisDiameter()];
Place(x = xAxis, y = yAxis)
{
    FrameSingleLockingAxis90(axis40Volume);

    translate([getFrameOuterVolume(axis40Volume).x - getFrameOuterVolume(lockingAxis30Volume).x, 0])
        FrameThreeLockingAxis30(lockingAxis30Volume);
    
    RotateFix(space=getFrameOuterVolume(axis40Volume, tolerance=0), rotation=Rotate180)
        FrameLockingAxisEnd();
}

// Box 190x130
// Electronics Box 3/3
// 524326

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

use <../../Elements/HolderBuildingPlate30x90.scad>
use <../../Elements/FrameBlockWithPin.scad>
use <../../Elements/FrameStandardBlock.scad>
use <../../Elements/FrameBlock15x30x5.scad>
use <../../Elements/FrameBuildingPlate5x15x30.scad>
use <../../Elements/FrameAngle15.scad>
use <../../Elements/AxisCoupling.scad>
use <../../Elements/FrameAngleEquilateral.scad> // 1x

include <../../Base/PlacementOptions.scad>

Box190();

// 3x 36293
webDistance = 30 + getTolerance();
webWidth = 15;
BoxWeb(
    corner = UpperRight,
    side = RightOfCorner,
    distance = webDistance,
    webWidth = webWidth,
    webThickness=getDividerThickness());
BoxWeb(
    corner = LowerRight,
    side = LeftOfCorner,
    distance = webDistance,
    webWidth = webWidth,
    webThickness=getDividerThickness());

// 3x 38485
HolderBuildingPlate30x90(3, dock=true);

xBlock1Dist = 2;
yBlock1Dist = 2;

// 5x 35049
xBlock2 = getHolderBuildingPlate30x90Space(3).x + xBlock1Dist;
yBlock2 = yBlock1Dist;
Place(xBlock2, yBlock2)
    #FrameBlock15x30x5(5);

xAngle2 = webDistance + getFrameAngleEquilateralSpace().x;
Place(xAngle2, yBlock2+5, alignX=AlignRight)
    FrameAngleEquilateral();

// 4x 38240
xBlock1 = xBlock1Dist;
yBlock1 = getHolderBuildingPlate30x90Space(3).y + yBlock1Dist;
Place(xBlock1, yBlock1)
    FrameBlockWithPin(4);

// 7x 31981
xAngle = xBlock1 + getFrameBlockWithPinSpace(4).x + 2*xBlock1Dist;
yAngle = yBlock1;
Place(xAngle, yAngle)
    FrameAngle15(7);

// 8x 32879
blockVolume = [30, 60, 8];
outerBlockVolume = getFrameOuterVolume(blockVolume);
Place(alignY=AlignTop, elementSpace=outerBlockVolume) {
    AlignedFrame(blockVolume, alignX=AlignLeft, alignY=AlignTop);
}
// 8x 32881
xMerge = blockVolume.x + 2*getDividerThickness() - getTolerance()/2;
Place(x=xMerge, alignY=AlignTop, elementSpace=outerBlockVolume)
    AlignedFrame(blockVolume, alignY=AlignTop);
// 4x 36920
block2Volume = [15, 60, 8];
xMerge2 = xMerge + blockVolume.x + getDividerThickness() + getTolerance();
Place(x=xMerge2, alignY=AlignTop, elementSpace=outerBlockVolume)
    AlignedFrame(block2Volume, alignY=AlignTop);

// 5x 36922
xMerge3 = xMerge2 + block2Volume.x + getDividerThickness() + getTolerance();
Place(x=xMerge3, alignY=AlignTop, elementSpace=outerBlockVolume)
    AlignedFrame(block2Volume, alignY=AlignTop);

single15Volume = [15, 15, 8];
outerSingle15Volume= getFrameOuterVolume(single15Volume);
xMerge4 = xMerge3 + block2Volume.x + getDividerThickness() + getTolerance();
Place(x=xMerge4, alignY=AlignTop, elementSpace=outerSingle15Volume)
    AlignedFrame(single15Volume, alignY=AlignTop);

// 11x 32064
sixBlocksSpace = getFrameBlockWithPinSpace(6);
xPins2 = webDistance;
Place(x=xPins2, y=yPins, alignX=AlignRight, alignY=AlignTop, rotation=Rotate90, elementSpace=sixBlocksSpace)
    FrameBlockWithPin(6);

fiveBlocksSpace = getFrameBlockWithPinSpace(5);
xPins1 = xPins2 + sixBlocksSpace.y - getDividerThickness();
yPins=-getDividerThickness();
Place(x=xPins1, y=yPins, alignX=AlignRight, alignY=AlignTop, rotation=Rotate90, elementSpace=fiveBlocksSpace)
    FrameBlockWithPin(5);

// 2x 32330
outerPlateSpace = getFrameBuildingPlate5x15x30Space(2);
xPlates = xMerge4 + outerSingle15Volume.x - outerPlateSpace.y;
yPlates = outerSingle15Volume.y + 2;
Place(x=xPlates, y=yPlates, alignY=AlignTop, rotation=Rotate90, elementSpace=outerPlateSpace)
    FrameBuildingPlate5x15x30(2);

// 2x 31983
couplingSpace = getAxisCouplingSpace();
xCoupling = xPlates + 2;
Place(x=xCoupling, y=60)
    AxisCoupling();
Place(x=xCoupling, y=60 - couplingSpace.y - 2)
    AxisCoupling();

// OpenSCAD Box ec 1

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../Base/BoxInlays.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/FrameLightCap.scad>
use <../../Elements/FrameLightTube.scad>
use <../../Elements/FrameBlockWithPin.scad>
use <../../Elements/FrameCassette.scad>
use <../../Elements/FrameElectronicBlockConnector.scad>
use <../../Elements/FramePhotoResistor30.scad>
use <../../Elements/FrameElectronicBlock.scad>
use <../../Elements/HolderBulbLamp.scad>

/* [Box Parameters] */
// Complete box (false) or inlay for empty box (true)
inlay = false;

/* [Hidden] */
lightCapGroupSpace = [43, 40];

module LightCapGroup() {
    DeploySame(lightCapGroupSpace, getFrameLightCapSpace(), rows=2)
        FrameLightCap();
}

color("lightgray") {
if (inlay) {
    Box190Inlay();
} else {
    Box190();
    BoxWeb(LowerLeft, RightOfCorner, 15.2);
    BoxWeb(LowerRight, LeftOfCorner, 15.2);
    BoxWeb(UpperRight, RightOfCorner, 5);
    BoxWeb(UpperLeft, LeftOfCorner, 5);
}

CenterHorizontal(0, 90)
    Text("ec 1");

Place(7.5, 2.5, lightCapGroupSpace, alignY=AlignTop)
    LightCapGroup();

Place(7.5, 2.5, lightCapGroupSpace, alignX=AlignRight, alignY=AlignTop)
    LightCapGroup();
    
Place(elementSpace=getFrameCassetteSpace(alignY=AlignTop), alignX=AlignCenter, alignY=AlignTop)
    FrameCassette(alignY=inlay ? NoAlign : AlignTop);
    
centeredWidth = getFrameCassetteSpace(DockTop).x;

Place(y=36, elementSpace=getFrameCassetteSpace(DockTop), alignX=AlignCenter) {
DeployHorizontal(
    centeredWidth,
    [getFrameBlockWithPinSpace(),
     getFramePhotoResistor30Space(),
     getFrameBlockWithPinSpace()],
    [Rotate90, Rotate270, Rotate90]) {
        FrameBlockWithPin();
        FramePhotoResistor30();
        FrameBlockWithPin();
    }
}

elementWidth = 53 + 2*getDividerThickness();
rightShift = centeredWidth - elementWidth - 5;
CenterHorizontal(centeredWidth, 13.0, rightShift) {
    DeployHorizontal(
        58 + 2*getDividerThickness(),
        [getFrameLightTubeSpace(),
         getFrameBlockWithPinSpace()],
        [Rotate180, Rotate90]) {
            FrameLightTube();
            FrameBlockWithPin();
    }
}

xInlayDiff = inlay ? (getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom).x - getFrameElectronicBlockSpace().x) : 0;
yInlayDiff = inlay ? (getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom).y - getFrameElectronicBlockSpace().y) : 0;
Place(xInlayDiff, yInlayDiff)
    FrameElectronicBlock(alignX=inlay ? NoAlign : AlignLeft, alignY=inlay ? NoAlign : AlignBottom);

Place(y=yInlayDiff, elementSpace=getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom), alignX=AlignRight)
    FrameElectronicBlock(alignX=inlay ? NoAlign : AlignRight, alignY=inlay ? NoAlign : AlignBottom);

twoBulbLampsWidth = getHolderBulbLampSpace().x*2;
CenterHorizontal(width=twoBulbLampsWidth, y=1.5)
    DeploySame([twoBulbLampsWidth, getHolderBulbLampSpace().y], getHolderBulbLampSpace())
        HolderBulbLamp();

yOffsetConnectors = 1.5 + (getHolderBulbLampSpace().y - getFrameElectronicBlockConnectorSpace().y)/2;
CenterHorizontal(width=72, y=yOffsetConnectors)
    DeploySame([72, getFrameElectronicBlockConnectorSpace().y], getFrameElectronicBlockConnectorSpace())
        FrameElectronicBlockConnector();
}
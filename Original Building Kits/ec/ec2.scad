// OpenSCAD Box ec 2

use <../../Base/Constants.scad>
use <../../Base/Alignment.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../Base/BoxInlays.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/FrameLightCap.scad>
use <../../Elements/FrameLightTube.scad>
use <../../Elements/FrameBlockWithStud.scad>
use <../../Elements/FrameCassette.scad>
use <../../Elements/FrameElectronicBlockConnector.scad>
use <../../Elements/FramePhotoResistor30.scad>
use <../../Elements/FrameElectronicBlock.scad>
use <../../Elements/FrameStandardBlock.scad>
use <../../Elements/FramePushButton.scad>
use <../../Elements/FramePluggedResistor.scad>
use <../../Elements/FramePluggedCapacitor.scad>
use <../../Elements/FrameControlLight.scad>
use <../../Elements/AxisDial.scad>

/* [Box Parameters] */
// Complete box (false) or inlay for empty box (true)
inlay = false;

color("lightgray") {

webDistance = 15.2;    
    
if (inlay) {
    Box190Inlay();
} else {
    Box190();
    BoxWeb(LowerLeft, LeftOfCorner, webDistance);
    BoxWeb(LowerRight, RightOfCorner, webDistance);
    BoxWeb(UpperRight, LeftOfCorner, webDistance);
    BoxWeb(UpperLeft, RightOfCorner, 5);
}

Place(33, 34)
    Text("ec 2");

//-----
// Deploy left elements

xInlayDiff = inlay ? (getFrameCassetteSpace(alignX=AlignRight, alignY=AlignBottom).x - getFrameCassetteSpace().x) : 0;
yInlayDiff = inlay ? (getFrameCassetteSpace(alignX=AlignRight, alignY=AlignBottom).y - getFrameCassetteSpace().y) : 0;

Place(xInlayDiff, yInlayDiff)
    FrameCassette(alignX=inlay ? NoAlign : AlignLeft, alignY=inlay ? NoAlign : AlignBottom);

rowWidth = 60 + 2*getDividerThickness() + getTolerance();    
yPos1 = getFrameCassetteSpace(AlignLeft, AlignBottom).y + 6.0;

Place(getStandardEdgeDistance(), yPos1)    
    DeployHorizontal(rowWidth, 
            [
                getFrameLightCapSpace(),
                getFrameBlockWithStudSpace(),
                getFrameStandardBlockSpace()
            ],
            [
                Rotate0,
                Rotate90, 
                Rotate0
            ]) {
        FrameLightCap();
        FrameBlockWithStud();
        FrameStandardBlock(height=8);
    }

yPos2 = yPos1 + getFrameLightCapSpace().y + 6;

Place(getStandardEdgeDistance(), yPos2)
    DeployHorizontal(rowWidth,
            [
                getFramePluggedResistorSpace(),
                getFramePluggedCapacitorSpace()
            ],
            [
                Rotate0,
                Rotate0
            ]) {
        FramePluggedResistor();
        FramePluggedCapacitor();
    }

translate([
    getStandardEdgeDistance() + getAlignedX(getAxisDialSpace().x, rowWidth, AlignCenter), 
    yPos2 + getAlignedY(getAxisDialSpace().y, getFramePluggedResistorSpace().y, AlignCenter)])
    AxisDial();

yPos3 = yPos2 + getFramePluggedResistorSpace().y + 6;

Place(getStandardEdgeDistance(), yPos3)
    DeployHorizontal(rowWidth,
            [
                getFrameElectronicBlockConnectorSpace(),
                getFrameControlLightSpace(),
                getFrameElectronicBlockConnectorSpace()
            ],
            [
                Rotate0,
                Rotate0,
                Rotate0
            ]) {
        FrameElectronicBlockConnector();
        translate([0, -getFrameControlLightSpace().y+getFrameElectronicBlockConnectorSpace().y])
            FrameControlLight();
        FrameElectronicBlockConnector();
    }

    
//-----
// Deploy center elements

Place(
    x=5 + getStandardEdgeDistance(), 
    y=getStandardEdgeDistance(), 
    elementSpace=[45, 70], 
    alignX = AlignCenter)
    
    DeployVertical(115, 
        [getFramePushButtonSpace(), 
        getFrameBlockWithStudSpace(), 
        getFrameBlockWithStudSpace(), 
        getFrameBlockWithStudSpace()]
        )
    {
        Center([45, getFramePushButtonSpace().y], getFramePushButtonSpace()) {
            FramePushButton();
        }
        
        DeployHorizontal(45, 
            [
                getFramePhotoResistor30Space(),
                getFrameLightCapSpace()
            ],
            [
                Rotate270, 
                Rotate0
            ]) {
            FramePhotoResistor30();
            FrameLightCap();
        }
        
        DeploySame([45, getFrameBlockWithStudSpace().y],
                getFrameBlockWithStudSpace(),
                rotation=Rotate90
            ) {
            FrameBlockWithStud();
        }

        DeployHorizontal(45, 
            [
                getFrameBlockWithStudSpace(),
                getFrameLightCapSpace()
            ],
            [
                Rotate270, 
                Rotate0
            ]) {
            FrameBlockWithStud();
            FrameLightCap();
        }
    }
        
//-----
// Deploy right elements

Place(5, webDistance, getFrameLightTubeSpace(), AlignRight, AlignTop, rotation=Rotate180)
    FrameLightTube();

yBlockInlayDiff = inlay ? (getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom).y - getFrameElectronicBlockSpace().y) : 0;
Place(y=yBlockInlayDiff, elementSpace=getFrameElectronicBlockSpace(AlignRight, AlignBottom), alignX=AlignRight)
    FrameElectronicBlock(alignX=inlay ? NoAlign : AlignRight, alignY=inlay ? NoAlign : AlignBottom);
}
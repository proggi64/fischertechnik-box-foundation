// OpenSCAD Box ec 2

use <../../Base/Constants.scad>
use <../../Base/Alignment.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

use <../../Elements/FrameLightCap.scad>
use <../../Elements/FrameLightTube.scad>
use <../../Elements/FrameBlockWithPin.scad>
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

color("lightgray") {

webDistance = 15.2;    
    
Box190();
BoxWeb(LowerLeft, LeftOfCorner, webDistance);
BoxWeb(LowerRight, RightOfCorner, webDistance);
BoxWeb(UpperRight, LeftOfCorner, webDistance);
BoxWeb(UpperLeft, RightOfCorner, 5);

Place(33, 34)
    Text("ec 2");

//-----
// Deploy left elements

Place()
    FrameCassette(AlignLeft, AlignBottom);

rowWidth = 60 + 2*getDividerThickness() + getTolerance();    
yPos1 = getFrameCassetteSpace(AlignLeft, AlignBottom).y + 6.0;

Place(getStandardEdgeDistance(), yPos1)    
    DeployHorizontal(rowWidth, 
            [
                getFrameLightCapSpace(),
                getFrameBlockWithPinSpace(),
                getFrameStandardBlockSpace()
            ],
            [
                Rotate0,
                Rotate90, 
                Rotate0
            ]) {
        FrameLightCap();
        FrameBlockWithPin();
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
        getFrameBlockWithPinSpace(), 
        getFrameBlockWithPinSpace(), 
        getFrameBlockWithPinSpace()]
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
        
        DeploySame([45, getFrameBlockWithPinSpace().y],
                getFrameBlockWithPinSpace(),
                rotation=Rotate90
            ) {
            FrameBlockWithPin();
        }

        DeployHorizontal(45, 
            [
                getFrameBlockWithPinSpace(),
                getFrameLightCapSpace()
            ],
            [
                Rotate270, 
                Rotate0
            ]) {
            FrameBlockWithPin();
            FrameLightCap();
        }
    }
        
//-----
// Deploy right elements

Place(5, webDistance, getFrameLightTubeSpace(), AlignRight, AlignTop, rotation=Rotate180)
    FrameLightTube();

Place(elementSpace=getFrameElectronicBlockSpace(AlignRight, AlignBottom), alignX=AlignRight)
    FrameElectronicBlock(AlignRight, AlignBottom);
    
}
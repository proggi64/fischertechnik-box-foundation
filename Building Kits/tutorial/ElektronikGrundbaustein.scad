// Box 130x95
// h4 G
// Elektronik Grundbeistein
// 39581

use <../../Base/Constants.scad>
use <../../Base/Boxes.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>
use <../../Elements/FrameElectronicBlock.scad>
use <../../Elements/FrameElectronicBlockConnector.scad>
use <../../Elements/FrameControlLight.scad>
use <../../Elements/AxisDial.scad>

include <../../Base/PlacementOptions.scad>

Box130();

boxSpace=getBox130Space();
electronicBlockSpace = getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom);

dividerWidth = 20;
leftOffset = dividerWidth + getDividerThickness();
rightOffset = getBox130Space().x - electronicBlockSpace.x;

distance = 15;
bottomOffset = 15;
topOffset = 15;

partsSpace = [rightOffset - leftOffset - 2*distance, boxSpace.y - bottomOffset - topOffset];
dialSpace = [partsSpace.x + 16, partsSpace.y];

Divider(dividerWidth, boxSpace=boxSpace);

partsXPosition = leftOffset + distance;
partsYPosition = bottomOffset;

Place(partsXPosition, partsYPosition) {
    #cube([partsSpace.x, partsSpace.y, 2]);

    DeploySame(partsSpace, getFrameElectronicBlockConnectorSpace(), rotation=Rotate90, columns=1)
        FrameElectronicBlockConnector();
    
    CenterVertical(depth=getFrameControlLightSpace().y, space=partsSpace)
        DeploySame(partsSpace, getFrameControlLightSpace())
            FrameControlLight();

    Place(elementSpace=getAxisDialSpace(), alignY=AlignTop, boxSpace=partsSpace)
        CenterHorizontal(width=getAxisDialSpace().x, space=partsSpace)
            AxisDial();
}

Place(alignX=AlignRight, alignY=AlignBottom, 
    elementSpace=electronicBlockSpace,
    boxSpace=getBox130Space())
    FrameElectronicBlock(alignX=AlignRight, alignY=AlignBottom);


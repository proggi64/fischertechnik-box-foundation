// Box 130x95
// ElectronicBlockBoxBase

<<<<<<< HEAD:Building Kits/ElectronicBlockBoxBase.scad
use <../Base/Boxes.scad>
use <../Base/Placement.scad>
use <../Base/Deployment.scad>
use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../Elements/FrameControlLight.scad>
use <../Elements/AxisDial.scad>
use <../Elements/FrameElectronicBlock.scad>
use <../Elements/FrameElectronicBlockConnector.scad>
=======
use <../../Base/Boxes.scad>
use <../../Base/Placement.scad>
use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>
use <../../Elements/FrameControlLight.scad>
use <../../Elements/AxisDial.scad>
use <../../Elements/FrameElectronicBlock.scad>
use <../../Elements/FrameElectronicBlockConnector.scad>
>>>>>>> 09cfeafdbaaea7357f4896b71753d6abe336dbed:Building Kits/hobby/ElectronicBlockBoxBase.scad

include <../../Base/PlacementOptions.scad>

// Count of connectors
connectors = 2;
// Count of dials
dials=1;
// Count of control lights
controlLights=1;
// Name of the box
text="h4 G";

module ElectronicBlockBoxBase(connectors=2, controlLights=0, dials=0, text="") {
    Box130();

    boxSpace=getBox130Space();

    dividerWidth = 20;
    leftOffset = dividerWidth + getDividerThickness();
    electronicBlockSpace = getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom);
    rightOffset = getBox130Space().x - electronicBlockSpace.x;
    distance = 15;
    bottomOffset = 15;
    topOffset = 15;
    partsSpace = [rightOffset - leftOffset - 2*distance, boxSpace.y - bottomOffset - topOffset];
    dialSpace = [partsSpace.x + 16, partsSpace.y];

    translate([leftOffset + distance, bottomOffset]) {
        DeploySame(partsSpace, getFrameElectronicBlockConnectorSpace(), rotation=Rotate90, columns=connectors)
            FrameElectronicBlockConnector();
        
        Place(elementSpace=getFrameControlLightSpace(), alignY=AlignCenter, boxSpace=partsSpace)
            DeploySame(partsSpace, getFrameControlLightSpace(), columns=controlLights)
                FrameControlLight();
        
        alignY = (controlLights != 0) ? AlignTop : AlignCenter;
        Place(x=-8, elementSpace=getAxisDialSpace(), alignY=alignY, boxSpace=partsSpace)
            DeploySame(dialSpace, getAxisDialSpace(), columns=dials)
                AxisDial();

        CenterHorizontal(y=-8, space=partsSpace)
            Text(text);
    }

    Divider(dividerWidth, boxSpace=boxSpace);

    Place(alignX=AlignRight, alignY=AlignBottom, 
        elementSpace=electronicBlockSpace,
        boxSpace=getBox130Space())
        FrameElectronicBlock(alignX=AlignRight, alignY=AlignBottom);
    
}

// Test
<<<<<<< HEAD:Building Kits/ElectronicBlockBoxBase.scad
color("lightgray")
ElectronicBlockBoxBase(connectors, controlLights, dials, text);
=======
ElectronicBlockBoxBase();
>>>>>>> 09cfeafdbaaea7357f4896b71753d6abe336dbed:Building Kits/hobby/ElectronicBlockBoxBase.scad

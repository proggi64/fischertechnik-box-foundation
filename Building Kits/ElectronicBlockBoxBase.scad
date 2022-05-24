// Box 130x95
// ElectronicBlockBoxBase

use <../Base/Boxes.scad>
use <../Base/Placement.scad>
use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../Elements/FrameControlLight.scad>
use <../Elements/AxisDial.scad>
use <../Elements/FrameElectronicBlock.scad>
use <../Elements/FrameElectronicBlockConnector.scad>

include <../Base/PlacementOptions.scad>

module ElectronicBlockBoxBase() {
    Box130();

    boxSpace=getBox130Space();

    dividerWidth = 20;
    leftOffset = dividerWidth + getDividerThickness();
    electronicBlockSpace = getFrameElectronicBlockSpace(alignX=AlignRight, alignY=AlignBottom);
    rightOffset = getBox130Space().x - electronicBlockSpace.x;
    distance = 10;
    bottomOffset = 15;
    topOffset = 25;
    partsSpace = [rightOffset - leftOffset - 2*distance, boxSpace.y - bottomOffset - topOffset];

    translate([leftOffset + distance, bottomOffset]) {
        #cube([partsSpace.x, partsSpace.y, 5]);
    }

    Divider(dividerWidth, boxSpace=boxSpace);

    Place(alignX=AlignRight, alignY=AlignBottom, 
        elementSpace=electronicBlockSpace,
        boxSpace=getBox130Space())
        FrameElectronicBlock(alignX=AlignRight, alignY=AlignBottom);
}

// Test
ElectronicBlockBoxBase();
// Fischertechnik Box Foundation
// Geometry Helpers Placement

use <Constants.scad>
use <Alignment.scad>
use <Rotation.scad>
use <Boxes.scad>

include <PlacementOptions.scad>

// Place(x=0, y=0, elementSpace=[0,0], alignX=AlignLeft, alignY=AlignBottom, rotation=Rotate0, boxSpace=getBox190Space())
// Places the child at the specified position
// y = Y-Position. This is a relative position when an X aligment is specified.
// x = X-Position. This is a relative position when an Y aligment is specified.
// elementSpace = space of the element to be placed [x,y]
// alignX = -1=NoAlign, 0 AlignLeft, 1 AlignCenter, 3 AlignRight (elementSpace and boxSpace required!)
// alignY = -1=NoAlign, 2 AlignBottom, 1 AlignCenter, 4 AlignTop (elementSpace and boxSpace required!)
// rotation = 0 Rotate0 0 degrees, 1 Rotate90 90 degrees, 
// 2 Rotate180 180 degrees, 3 Rotate270 270 degrees (equivalent to -90)
// boxSpace = Inner space of the box where the placement occurs [x,y] - default is Box 190x130 inner space

module Place(x=0, y=0, elementSpace=[0,0], 
  alignX=AlignLeft, alignY=AlignBottom, 
  rotation=NoRotation, boxSpace=getBox190Space()) {

    module Position(x, y, space, rotation=Rotate0) {
        translate([x, y, 0])
            RotateFix(space, rotation)
                children();
    }

    space = getRotatedSpace(elementSpace, rotation);
    alignedX = getAlignedX(space.x, boxSpace.x, alignX, x);
    alignedY = getAlignedY(space.y, boxSpace.y, alignY, y);
    Position(alignedX, alignedY, elementSpace, rotation)
        children();
}

// Center(space=getBox130Space(), elementSpace=[0,0])
// space = Space where the children is centered. For cylinder use centered=true and no elementSpace.
// elementSpace = space of the element to be centered [x,y]

module Center(space=getBox190Space(), elementSpace=[0,0]) {
    translate([(space.x - elementSpace.x) / 2, (space.y - elementSpace.y) / 2])
        children();
}

// CenterHorizontal(width=0, y=0, offset=0, space=getBox130Space())
// space = Space where the children is centered. For cylinder use centered=true and no elementSpace.
// elementSpace = space of the element to be centered [x,y]

module CenterHorizontal(width=0, y=0, offset=0, space=getBox190Space()) {
    translate([(space.x - width) / 2 + offset, y])
        children(0);
}

// CenterVertical(depth=0, x=0, offset=0, space=getBox130Space())
// space = Space where the children is centered. For cylinder use centered=true and no elementSpace.
// elementSpace = space of the element to be centered [x,y]

module CenterVertical(depth=0, x=0, offset=0, space=getBox190Space()) {
    translate([x, (space.y - depth) / 2 + offset])
        children(0);
}

// getIsVertical(align)
// True if the specified alignment needs a vertical orientation for a divider (AlignRight, AlignLeft)

function getIsVertical(align) = (align == AlignRight || align == AlignLeft);

// getIsHorizontal(align)
// True if the specified alignment needs a horizontal orientation for a divider (AlignTop, AlignBottom)

function getIsHorizontal(align) = (align == AlignTop || align == AlignBottom);

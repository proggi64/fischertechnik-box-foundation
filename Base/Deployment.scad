// Fischertechnik Box Foundation
// Geometry Helpers Deployment

use <Constants.scad>
use <Helper.scad>
use <Placement.scad>
use <Alignment.scad>
use <Rotation.scad>

include <PlacementOptions.scad>

// getWidthSum(spaces, rotations, count, i=0)
// Gets the sum of the width of count specified spaces, including rotations for each space.
// spaces = List of spaces from which the width should be added. Used internally for DeployRow.
// rotations = specify rotations for each space to get its correct width
// i = The space index offset used to start to add (for recursive call)

function getWidthSum(spaces, rotations, i=0) = 
    (i < len(spaces)) ? 
        getRotatedSpace(spaces[i], getRotation(rotations, i)).x + getWidthSum(spaces, rotations, i+1) : 
        0;

// getDepthSum(spaces, rotations, i=0)
// Gets the sum of the depth of count specified spaces.
// spaces = List of spaces from which the width should be added. Used internally for DeployRow.
// rotations = specify rotations for each space to get its correct width
// count = The count of spaces from the specified spaces that should be included in the sum
// i = The space index offset used to start to add

function getDepthSum(spaces, rotations, i=0) = 
    (i < len(spaces)) ? 
        getRotatedSpace(spaces[i], getRotation(rotations, i)).y + getDepthSum(spaces, rotations, i+1) : 
        0;

// getX(spaces, rotations, distance, i)
// Calculates the X position of the space with the index i, when the spaces are placed with the given
// equal distances. Used internally for DeployHorizontal.
// spaces = List of spaces from which the width should be added
// rotations = specify rotations for each space to get its correct width
// distance = Equal distance between each space
// i = Index of the space to get its X position for

function getX(spaces, rotations, distance, i) = 
    (i == 0) ? 
        0 :
        (getRotatedSpace(spaces[i-1], getRotation(rotations, i-1)).x + distance + getX(spaces, rotations, distance, i-1));

// getY(spaces, distance, i)
// Gets the Y-distance of the spaces plus constant distance 
// between each space needs.
// spaces = Spaces of each element to deploy vertically. Only
// the depth (y) is used.
// rotations = specify rotations for each space to get its correct width
// distance = distance between each space when deployed.
// i = The highest index of the spaces used

function getY(spaces, rotations, distance, i) = 
    (i == 0) ? 
        0 :
        (getRotatedSpace(spaces[i-1], getRotation(rotations, i-1)).y + distance + getY(spaces, rotations, distance, i-1));

// getMaxDepth(spaces, i=0)
// Gets the maximum depth of the specified spaces and takes the rotations in count.
// spaces = List of spaces from which the width should be added. Used internally for DeployRow.
// rotations = specify rotations for each space to get its correct depth

function getMaxDepth(spaces, rotations, i=0) =
    max(getRotatedSpace(spaces[i], getRotation(rotations, i)).y, (i < len(spaces)-1) ? getMaxDepth(spaces, rotations, i+1) : 0);

// getMaxWidh(spaces, i=0)
// Gets the maximum width of the specified spaces and takes the rotations in count.
// spaces = List of spaces from which the width should be added. Used internally for DeployRow.
// rotations = specify rotations for each space to get its correct width

function getMaxWidth(spaces, rotations, i=0) =
    max(getRotatedSpace(spaces[i], getRotation(rotations, i)).x, (i < len(spaces)-1) ? getMaxWidth(spaces, rotations, i+1) : 0);

// DeployHorizontal(width, spaces, rotations)
// Deploys the elements in the specified width with equal distances.
// width = The width of the row in mm.
// spaces = The spaces of all elements to deploy.
// rotations = The rotations of each element: 0 Rotate0 0 degrees, 1 Rotate90 90 degrees, 
// 2 Rotate180 180 degrees, 3 Rotate270 270 degrees (equivalent to -90).
// alignY = NoAlign, AlignBottom (all elements on the same baseline), AlignCenter (all elements at the center
// of the deepest element), AlignTop (all elements at the top of the deepest element)

module DeployHorizontal(width=0, spaces=[], rotations=[NoRotation], alignY=NoAlign) {
    distance = (width == 0) ? 0 : (width - getWidthSum(spaces, rotations)) / (len(spaces)-1);
    
    alignmentY = 
        (alignY == AlignTop) ?
        getMaxDepth(spaces, rotations) :
        ((alignY == AlignCenter) ? 
            (getMaxDepth(spaces, rotations) / 2) :
            0);
    
    for (i = [0:1:$children-1]) {
        x = getX(spaces, rotations, distance, i);
        y = (alignY == AlignTop) ?
            (alignmentY - getRotatedSpace(spaces[i], getRotation(rotations, i)).y) :
            ((alignY == AlignCenter) ? 
            (alignmentY - getRotatedSpace(spaces[i], getRotation(rotations, i)).y/2) : 
            0);
            
        translate([x, y])
            RotateFix(spaces[i], getRotation(rotations, i))
                children(i);
    }
}

// DeployVertical(depth, spaces, rotations, alignX=NoAlign)
// Deploys the child elements in the specified depth vertically.
// depth = Depth of the space where the elements should be deployed.
// spaces = Spaces of all elements. Only the depth (y) will be used.
// rotations = The rotations of each element: 0 Rotate0 0 degrees, 1 Rotate90 90 degrees, 
// 2 Rotate180 180 degrees, 3 Rotate270 270 degrees (equivalent to -90).
// alignX = NoAlign, AlignLeft, AlignCenter (all elements at the center
// of the widest element), AlignRight (all elements at the right edge of the widest element)

module DeployVertical(depth=0, spaces=[], rotations=[NoRotation], alignX=NoAlign) {
    distance = (depth == 0) ? 0 : (depth - getDepthSum(spaces, rotations)) / (len(spaces)-1);

    alignmentX = 
    (alignX == AlignRight) ?
    getMaxWidth(spaces, rotations) :
    ((alignX == AlignCenter) ? 
        (getMaxWidth(spaces, rotations) / 2) :
        0);

    for (i = [0:1:$children-1]) {
        x = (alignX == AlignRight) ?
            (alignmentX - getRotatedSpace(spaces[i], getRotation(rotations, i)).x) :
            ((alignX == AlignCenter) ? 
            (alignmentX - getRotatedSpace(spaces[i], getRotation(rotations, i)).x/2) : 
            0);
        y = getY(spaces, rotations, distance, i);
        
        translate([x, y])
            RotateFix(spaces[i], getRotation(rotations, i))
                children(i);
    }
}

// DeploySame(space, elementSpace, columns=2, rows=1, rotation=Rotate0)
// Deploys columns and rows of the specified child in the specified space with
// equal distances
// space = The space where the element copies are deployed
// elementSpace = The space the child needs
// columns = Count of elements per row. When 1 then the element is centered. When 0, no element is deployed.
// rows = Count of rows deployed
// rotation = The rotation of the child that will be applied

module DeploySame(space, elementSpace, columns=2, rows=1, rotation=Rotate0) {
    if (columns > 0) {
        elementWidth = getRotatedSpace(elementSpace, rotation).x;
        columnDistance = (space.x > 0) ? (space.x - columns * elementWidth) / (columns > 1 ? columns - 1 : 1) : 0;
        startColumnOffset = (columns > 1) ? 0 : getAlignedX(elementWidth, space.x, align=AlignCenter);
        endColumnOffset = (space.x > 0) ? (space.x - elementWidth + getTolerance()) : (elementWidth * (columns-1));
        columnOffsetStep = elementWidth + columnDistance;
        
        elementDepth = getRotatedSpace(elementSpace, rotation).y;
        rowDistance = (space.y > 0) ? (space.y - rows * elementDepth) / (rows > 1 ? rows - 1 : 1) : 0;
        endRowOffset = (space.y > 0) ? (space.y - elementDepth) : (elementDepth * (rows - 1));
        rowOffsetStep = elementDepth + rowDistance;
        
        for (rowOffset = [0:rowOffsetStep:endRowOffset]) {
            for (columnOffset = [startColumnOffset:columnOffsetStep:endColumnOffset]) {
                translate([columnOffset, rowOffset])
                    RotateFix(elementSpace, rotation)
                        children(0);
            }
        }
    }
}

// getMergedRowWidth(spaces, rotations, count, i=0)
// Gets the width of the merged spaces with the specified rotations.
// Merging works with all elements with two frame walls. 
// The right and left walls are merged into one single wall.
// spaces = List of spaces from which the width should be added.
// rotations = specify rotations for each space to get its correct width
// i = The space index offset used to start to add (for recursive call)

function getMergedRowWidth(spaces, rotations, i=0) =
    (i < len(spaces)) ? 
        getRotatedSpace(spaces[i], getRotation(rotations, i)).x + getMergedRowWidth(spaces, rotations, i+1) - (i > 0 ? getDividerThickness() : 0) : 
        0;

// MergeRow(spaces, rotations, dividerThickness=0.8)
// Deploys the children so that all walls of the neighbors are merged in a single common wall.
// spaces = List of spaces of the children to get the sizes from.
// rotations = specify rotations for each space to get its correct width
// dividerThickness = Thickness of all dividers of the elements (default is 0.8)

module MergeRow(spaces, rotations=[NoRotation], dividerThickness = getDividerThickness()) {
    for (i = [0:1:$children-1]) {
        x = getX(spaces, rotations, -getDividerThickness(), i);
        translate([x, 0, 0])
            RotateFix(spaces[i], getRotation(rotations, i))
                children(i);
    }
}

// Merge(count, space, rotation, dividerThickness=0.8)
// Deploys the child count times so that all walls of the neighbors are merged in a single common wall.
// space = Space of the child to get the sizes from.
// rotation = rotation of the child to get the correct width
// dividerThickness = Thickness of all dividers of the element (default is 0.8)

module Merge(count, space, rotation=NoRotation, dividerThickness = getDividerThickness()) {
    x = getRotatedSpace(space, rotation).x - getDividerThickness();
    for (offset = [0:x:(count-1)*x]) {
        translate([offset, 0, 0])
            RotateFix(space, rotation)
                children(0);
    }
}
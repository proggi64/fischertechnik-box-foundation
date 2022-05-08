// Fischertechnik Box Foundation
// Geometry Helpers Deployment

use <Constants.scad>
use <Placement.scad>
use <Rotation.scad>

include <PlacementOptions.scad>

// getWidth(spaces, rotations, count, i=0)
// Gets the sum of the width of count specified spaces, including rotations for each space.
// spaces = List of spaces from which the width should be added. Used internally for DeployRow.
// rotations = specify rotations for each space to get its correct width
// count = The count of spaces from the specified spaces that should be included in the sum (for recursive call)
// i = The space index offset used to start to add (for recursive call)

function getWidth(spaces, rotations, count, i=0) = 
    (i < count) ? 
        getRotatedSpace(spaces[i], rotations[i]).x + getWidth(spaces, rotations, count, i+1) : 
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
        (getRotatedSpace(spaces[i-1], rotations[i-1]).x + distance + getX(spaces, rotations, distance, i-1));

// DeployHorizontal(width, spaces, rotations)
// Deploys the elements in the specified width with equal distances.
// rowWidth = The width of the row in mm.
// spaces = The spaces of all elements to deploy.
// rotations = The rotations of each element: 0 Rotate0 0 degrees, 1 Rotate90 90 degrees, 
// 2 Rotate180 180 degrees, 3 Rotate270 270 degrees (equivalent to -90).

module DeployHorizontal(rowWidth, spaces, rotations) {
    distance = (rowWidth - getWidth(spaces, rotations, len(spaces))) / (len(spaces)-1);
    
    for (i = [0:1:$children-1]) {
        x = getX(spaces, rotations, distance, i);
        translate([x, 0])
            RotateFix(spaces[i], rotations[i])
                children(i);
    }
}

// getDepth(spaces)
// Gets the sum of the depth of count specified spaces.
// spaces = List of spaces from which the width should be added. Used internally for DeployRow.
// rotations = specify rotations for each space to get its correct width
// count = The count of spaces from the specified spaces that should be included in the sum
// i = The space index offset used to start to add

function getDepthSum(spaces, i=0) = 
    (i < len(spaces)) ? 
        spaces[i].y + getDepthSum(spaces, i+1) : 
        0;

// getY(spaces, distance, i)
// Gets the Y-distance the spaces plus constant distance 
// between each space needs.
// spaces = Spaces of each element to deploy vertically. Only
// the depth (y) is used.
// distance = distance between each space when deployed.
// i = The highest index of the spaces used

function getY(spaces, distance, i) = 
    (i == 0) ? 
        0 :
        spaces[i].y + distance + getY(spaces, distance, i-1);

// DeployVertical(depth, spaces)
// Deploys the child elements in the specified depth vertically.
// depth = Depth of the space where the elements should be deployed.
// spaces = Spaces of all elements. Only the depth (y) will be used.

module DeployVertical(depth, spaces) {
    distance = (depth - getDepthSum(spaces)) / (len(spaces)-1);
    count = $children - 1;
    
    for (i = [0:1:$children-1]) {
        y = getY(spaces, distance, count-i);
        translate([0, y, -getExcess()])
            children(i);
    }
}

// DeploySame(space, elementSpace, columns=2, rows=1, rotation=Rotate0)
// Deploys columns and rows of the specified child in the specified space with
// equal distances
// space = The space where the element copies are deployed
// elementSpace = The space the child needs
// columns = Count of elements per row
// rows = Count of rows deployed
// rotation = The rotation of the child that will be applied

module DeploySame(space, elementSpace, columns=2, rows=1, rotation=Rotate0) {
    
    elementWidth = getRotatedSpace(elementSpace, rotation).x;
    columnDistance = (space.x - columns * elementWidth) / (columns > 1 ? columns - 1 : 1);
    endColumnOffset = space.x - elementWidth;
    columnOffsetStep = elementWidth + columnDistance;
    
    elementDepth = getRotatedSpace(elementSpace, rotation).y;
    rowDistance = (space.y - rows * elementDepth) / (rows > 1 ? rows - 1 : 1);
    endRowOffset = space.y - elementDepth;
    rowOffsetStep = elementDepth + rowDistance;
    
    for (rowOffset = [0:rowOffsetStep:endRowOffset]) {
        for (columnOffset = [0:columnOffsetStep:endColumnOffset]) {
            translate([columnOffset, rowOffset])
                RotateFix(elementSpace, rotation)
                    children(0);
        }
    }
}

// getMergedRowWidth(spaces, rotations, count, i=0)
// Gets the width of the merged spaces with the specified rotations.
// Merging works all elements with two frame walls. 
// The right and left walls are merged into one single wall.
// spaces = List of spaces from which the width should be added.
// rotations = specify rotations for each space to get its correct width
// count = The count of spaces from the specified spaces that should be included in the sum (for recursive call)
// i = The space index offset used to start to add (for recursive call)

function getMergedRowWidth(spaces, rotations, count, i=0) =
    (i < count) ? 
        getRotatedSpace(spaces[i], rotations[i]).x + getWidth(spaces, rotations, count, i+1) - (i > 0 ? getDividerThickness() : 0) : 
        0;

// MergeRow(spaces, rotations, dividerThickness=0.8)
// Deploys the children so that all walls of the neighbors are merged in a single common wall.
// spaces = List of spaces of the children to get the sizes from.
// rotations = specify rotations for each space to get its correct width
// dividerThickness = Thickness of all dividers of the elements (default is 0.8)

module MergeRow(spaces, rotations, dividerThickness = getDividerThickness()) {
    for (i = [0:1:$children-1]) {
        x = getX(spaces, rotations, -getDividerThickness(), i);
        translate([x, 0, 0])
            RotateFix(spaces[i], rotations[i])
                children(i);
    }
}

// Merge(count, space, rotation, dividerThickness=0.8)
// Deploys the child count times so that all walls of the neighbors are merged in a single common wall.
// space = Space of the child to get the sizes from.
// rotation = rotation of the child to get the correct width
// dividerThickness = Thickness of all dividers of the element (default is 0.8)

module Merge(count, space, rotation, dividerThickness = getDividerThickness()) {
    x = getRotatedSpace(space, rotation).x - getDividerThickness();
    for (offset = [0:x:(count-1)*x]) {
        echo(offset);
        translate([offset, 0, 0])
            RotateFix(space, rotation)
                children(0);
    }
}
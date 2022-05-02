// Fischertechnik Box Foundation
// Pre-designed Boxes

use <Constants.scad>

include <PlacementOptions.scad>

box190Width = 190;
box190Depth = 130;
box130Width = 130;
box130Depth = 95;
boxUsageHeight = 33.9;
boxWallThickness = 2.4;
boxBaseThickness = 1.0;

// getBoxWallThickness()
// Gets the wall thickness of a Fischertechnik Box

function getBoxWallThickness() = boxWallThickness;

// Gets the usable height of a fischertechnik box
function getBoxUsageHeight() = boxUsageHeight;

// Gets the thickness of the Fischertechnik box base.
function getBoxBaseThickness() = boxBaseThickness;

// Gets the usable inner space of a Box 190 as an x/y-list
function getBox190Space() = [
    box190Width - 2*getBoxWallThickness(), 
    box190Depth - 2*getBoxWallThickness() ];

// Imports the Fischertechnik empty box 130x190 mm and places it at position 0,0
// 190x130 are the outer sizes, the inner space is slightly smaller. Use getBox190Space() to get the inner sizes.
// This module needs the STL file "Fischertechnik Box 130x190.stl" in the library path.
// The box is positioned that the usable inner space is at the 0,0,0 position. The

module Box190() {
    translate([-getBoxWallThickness(),-getBoxWallThickness(),-getBoxBaseThickness()])
        import("Fischertechnik Box 130x190.stl", convexity=3);
}

// Gets the usable inner space of a Box 130 as an x/y-list
function getBox130Space() = [
    box130Width - 2*getBoxWallThickness(), 
    box130Depth - 2*getBoxWallThickness() ];

// Imports the Fischertechnik empty box 95x130 mm and places it at position 0,0
// 190x130 are the outer sizes, the inner space is slightly smaller. Use getBox190Space() to get the inner sizes.
// This module needs the STL file "Fischertechnik Box 95x130.stl" in the library path.
// The box is positioned that the usable inner space is at the 0,0,0 position. The

module Box130() {
    translate([-getBoxWallThickness(),-getBoxWallThickness(),-getBoxBaseThickness()])
        import("Fischertechnik Box 95x130.stl", convexity=3);
}

// Creates a web at the specified box walls
// corner 0 = LowerLeft, 1 = UpperLeft, 2 = UpperRight, 3 = LowerRight
// side 0 = LeftOfCorner, 1 = RightOfCorner
// distance = Distance in mm from the corner
// box = inner width and depth of the box (default: Box 190)
// webWidth = length of the web (default is 3 mms)
// webThickness = thickness of the web (default is 1 mm)

module BoxWeb(corner, side, distance, box=getBox190Space(), webWidth=3, webThickness=1.0) {
    sink = getBoxWallThickness()/2;

    width = (corner % 2 == 0) ? 
            (side == LeftOfCorner ? webWidth : webThickness) :
            (side == LeftOfCorner ? webThickness : webWidth);

    depth = (corner % 2 == 0) ? 
            (side == RightOfCorner ? webWidth : webThickness) :
            (side == RightOfCorner ? webThickness : webWidth);
    
    xDiff = corner == LowerLeft ? 
                (side == LeftOfCorner ? -sink : distance) :
            (corner == UpperLeft ?                
                (side == LeftOfCorner ? distance : -sink) :
            (corner == UpperRight ?
                (side == LeftOfCorner ? box.x-webWidth+sink : box.x-distance-webThickness) :
                (side == LeftOfCorner ? box.x-distance-webThickness: box.x-webWidth+sink)));

    yDiff = corner == LowerLeft ? 
                (side == RightOfCorner ? -sink : distance) :
            (corner == UpperLeft ?
                (side == RightOfCorner ? box.y-distance : box.y-webWidth+sink) :
            (corner == UpperRight ?
                (side == RightOfCorner ? box.y-webWidth+sink : box.y-distance) :
                (side == RightOfCorner ? distance : -sink)));
    
    translate([xDiff, yDiff, -getExcess()])
        cube([width, depth, boxUsageHeight + 2*getExcess()]);
}
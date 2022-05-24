// Fischertechnik Box Foundation
// Pre-designed Boxes

use <Constants.scad>

include <PlacementOptions.scad>

box190Width = 190;
box190Depth = 130;
box130Width = 130;
box130Depth = 95;

// Values are from an original ec3 box
topBottomDifference = 1.5;
outerHeight = 40;
innerHeight = 38.2;
baseThickness = outerHeight - innerHeight;
stackExcess = 5.7;
radius = 3.5;
wallThickness = 1.5;
tolerance = 0.2;
stackOffset = innerHeight - stackExcess;

boxUsageHeight = stackOffset;
boxWallThickness = wallThickness;
boxBaseThickness = baseThickness;
boxWebWidth = 3.0;

// getBoxWallThickness()
// Gets the wall thickness of a Fischertechnik Box
function getBoxWallThickness() = boxWallThickness;

// getBoxUsageHeight()
// Gets the usable height of a Fischertechnik box
function getBoxUsageHeight() = boxUsageHeight;

// getBoxInnerHeight()
// Gets the inner height of a Fischertechnik box, including the stack excess
function getBoxInnerHeight() = innerHeight;

// getBoxBaseThickness()
// Gets the thickness of the Fischertechnik box base.
function getBoxBaseThickness() = boxBaseThickness;

// getBoxWebWidth()
// Gets the width of a box web
function getBoxWebWidth() = boxWebWidth;

// getBox190Space()
// Gets the usable inner space of a Box 190 as an x/y-list
function getBox190Space() = [
    box190Width - 2*getBoxWallThickness() - topBottomDifference, 
    box190Depth - 2*getBoxWallThickness() - topBottomDifference ];

// BoxBase(width, depth)
// Creates an empty stackable Fischertechnik compatible box
// width = Outer width of the box (190, 130, ...)
// depth = Outer depth of the box (130, 95, ...)

module BoxBase(width, depth, height=outerHeight) {    
    thinPlate = 0.01;

    innerHeight = height - baseThickness;    
    
    module BodyPlate(width, depth) {
        translate([radius, radius])
        hull() {
            w = width-2*radius;
            d = depth-2*radius;
            cube([w, d, thinPlate]);
            cylinder(thinPlate, r=radius, $fn=getFragments());
            translate([w, 0])
                cylinder(thinPlate, r=radius, $fn=getFragments());
            translate([w, d])
                cylinder(thinPlate, r=radius, $fn=getFragments());
            translate([0, d])
                cylinder(thinPlate, r=radius, $fn=getFragments());
        }
    }
    
    module Body(tolerance=tolerance) {
        hull() {
            // Bottom with tolerance to fit into the original boxes when stacked
            translate([-wallThickness+tolerance, -wallThickness+tolerance, -baseThickness])
                BodyPlate(width-topBottomDifference-2*tolerance, depth-topBottomDifference-2*tolerance);
            
            // Top
            translate([-wallThickness-topBottomDifference/2, -wallThickness-topBottomDifference/2, innerHeight-thinPlate])
                BodyPlate(width, depth);
         }
    }

    module Cutoff() {
        hull() {
            coWidth = width - 2*wallThickness;
            coDepth = depth - 2*wallThickness;
            
            // Bottom
            BodyPlate(coWidth-topBottomDifference, coDepth-topBottomDifference);

            // Top
            translate([-topBottomDifference/2, -topBottomDifference/2, innerHeight+thinPlate]) 
                BodyPlate(coWidth, coDepth);
        }
    }
    
    difference() {        
        Body();
        Cutoff();
        stackOffset = innerHeight - stackExcess;
        translate([0, 0, stackOffset + baseThickness])
            Body(tolerance=0);
    }
}

// Creates the Fischertechnik empty box 130x190 mm and places it at position 0,0
// 190x130 are the outer sizes, the inner space is slightly smaller. Use getBox190Space() to get the inner sizes.
// The box is positioned that the usable inner space is at the 0,0,0 position. The

module Box190() {
    BoxBase(box190Width, box190Depth);
}

// Gets the usable inner space of a Box 130 as an x/y-list
function getBox130Space() = [
    box130Width - 2*getBoxWallThickness() - topBottomDifference, 
    box130Depth - 2*getBoxWallThickness() - topBottomDifference ];

// Creates the Fischertechnik empty box 95x130 mm and places it at position 0,0
// 190x130 are the outer sizes, the inner space is slightly smaller. Use getBox190Space() to get the inner sizes.
// The box is positioned that the usable inner space is at the 0,0,0 position. The

module Box130() {
    BoxBase(box130Width, box130Depth);
}

// Creates a web at the specified box walls
// corner 0 = LowerLeft, 1 = UpperLeft, 2 = UpperRight, 3 = LowerRight
// side 0 = LeftOfCorner, 1 = RightOfCorner
// distance = Distance in mm from the corner
// boxSpace = inner width and depth of the box (default: Box 190)
// webWidth = length of the web (default is 3 mms)
// webThickness = thickness of the web (default is 1 mm)

module BoxWeb(corner, side, distance, boxSpace=getBox190Space(), webWidth=getBoxWebWidth(), webThickness=1.0) {
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
                (side == LeftOfCorner ? boxSpace.x-webWidth+sink : boxSpace.x-distance-webThickness) :
                (side == LeftOfCorner ? boxSpace.x-distance-webThickness: boxSpace.x-webWidth+sink)));

    yDiff = corner == LowerLeft ? 
                (side == RightOfCorner ? -sink : distance) :
            (corner == UpperLeft ?
                (side == RightOfCorner ? boxSpace.y-distance : boxSpace.y-webWidth+sink) :
            (corner == UpperRight ?
                (side == RightOfCorner ? boxSpace.y-webWidth+sink : boxSpace.y-distance) :
                (side == RightOfCorner ? distance : -sink)));
    
    translate([xDiff, yDiff, -getExcess()])
        cube([width, depth, boxUsageHeight + 2*getExcess()]);
}
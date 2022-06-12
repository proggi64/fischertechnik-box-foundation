// Fischertechnik Box Foundation
// Box Inlays for Original Sorting Boxes

use <Constants.scad>
use <Boxes.scad>

include <PlacementOptions.scad>

box500Width = 380;
box500Depth = 190;

baseThickness = 0.8;
radius = 4;

// getInlayBaseSpace(space)
// Gets the usable space of an inlay with the specified size.
// space = The size of the bottom of the inlay without tolerance

function getInlayBaseSpace(space) = [space.x - getTolerance(), space.y - getTolerance()];

// Creates the bottom with the specified size.
// space = The size of the bottom

module InlayBase(space) {
    module WebCutoffs() {
        distance = 7;
        width = 1.4;
        depth = 2;
        thickness = baseThickness * 2;
        cutoffVolume = [width, depth, thickness];

        translate([0, 0, -baseThickness/2]) {
            translate([-getExcess(), 0]) {
                translate([0, distance])
                    cube(cutoffVolume);
                translate([0, getInlayBaseSpace(space).y - distance - depth])
                    cube(cutoffVolume);
            }
            translate([getInlayBaseSpace(space).x - width + getExcess(), 0]) {
                translate([0, distance])
                    cube(cutoffVolume);
                translate([0, getInlayBaseSpace(space).y - distance - depth])
                    cube(cutoffVolume);
            }
        }
    }

    difference() {
        RoundedCornerPlate(space.x - getTolerance(), space.y - getTolerance(), baseThickness, radius);
        WebCutoffs();
    }
}

halfTolerance = getTolerance()/2;

// Creates an inlay for the Fischertechnik empty box 130x190 mm and places it at position 0,0
// The inlay consists of a thin layer at the bottom where the elements are placed. Use 
// Box190InlayWeb to place webs that hold the inlay in position.

module Box190Inlay() {
    translate([halfTolerance, halfTolerance, -baseThickness]) {            
        InlayBase(getBox190Space());
    }
}

inlayWebDepth = 3;

// Box190InlayWeb(align, position)
// Creates a web for snapping the inlay into the box. Use multiple webs per side.
// align = AlignTop or AlignBottom
// position = Index of the recess in the boy where to snap in (from left to right)
// inlayWebDepth = Depth of the web (default is 3 mm)

module Box190InlayWeb(align, position, inlayWebDepth=inlayWebDepth) {

    inlayWebThickness = 1.3;
    inlayWebHeight = getBoxUsageHeight();    
    
    inlayWebRecessHeight = 15.6;
    inlayWebRecessDepth = 1.2;
    inlayWebRecessAngle = 7.0;

    inlayWebRecessWidth = 1.4;
    inlayWebCount = 9;
    inlayWebCompleteWidth = 151.0;
    inlayWebDistance = (inlayWebCompleteWidth - inlayWebCount * inlayWebRecessWidth) / (inlayWebCount - 1) + inlayWebRecessWidth;
    inlayWebStart = (getBox190Space().x - inlayWebCompleteWidth) / 2;

    module InlayWeb() {
        cube([inlayWebThickness, inlayWebDepth, inlayWebHeight + getExcess()]);
        translate([0, align==AlignTop ? (inlayWebDepth-getExcess()) : (getExcess()-inlayWebRecessDepth)]) {
            difference() {
                cube([inlayWebThickness, inlayWebRecessDepth, inlayWebRecessHeight - halfTolerance]);
                translate([-getExcess(), 0, -0.2])
                    rotate([align==AlignTop ? -inlayWebRecessAngle : inlayWebRecessAngle,0,0])
                        cube([inlayWebThickness+2*getExcess(), inlayWebRecessDepth, inlayWebRecessHeight]);
            }
        }
    }
    
    x = inlayWebStart + position * inlayWebDistance;
    y = (align == AlignTop) ? (getBox190Space().y - inlayWebDepth - halfTolerance) : halfTolerance;

    translate([x, y, -getExcess()])
        InlayWeb();
}
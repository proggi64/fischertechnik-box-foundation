// Fischertechnik Box Library
// Toothed Tile Bar with Control Links
// 38472, 2x38473

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad> 

/* [Hidden] */
width = 64;
depth = 33;
height = 15;

// getFrameToothedTileBarWithControlLinksSpace
// Gets the space the toothed tile bar with control links needs as width and depth (.x and .y as a list)

function getFrameToothedTileBarWithControlLinksSpace() = getFrameOuterVolume([width, depth, height]);

// FrameToothedTileBarWithControlLinks()
// rame for toothed tile bar with two control links
// 38472, 2x38473

module FrameToothedTileBarWithControlLinks() {    
    sideHeight = 9.3;
    endHeight = 10.8;
    innerFrameDistance = 6;
    axisHeight = 12;
    cutoffWidth = 28;

    outerSpace = getFrameToothedTileBarWithControlLinksSpace();
    endWidth = (outerSpace.x - cutoffWidth) / 2 - 2 * getDividerThickness();
    endDepth = innerFrameDistance;

    module EndPiece() {
        difference() {
            Frame ([endWidth, endDepth, height], 0);
            translate([getDividerThickness(), endDepth+getDividerThickness()/2, endHeight])
                cube([endWidth, 2*getDividerThickness(), height - endHeight + getExcess()]);
        }
    }
    
    module AllFrames() {
        Frame ([width, depth, height]);
        innerVolume = getFrameInnerVolume([width, depth, height]);
        
        endSpace = getFrameOuterVolume([endWidth, endDepth, endHeight], 0);

        EndPiece();
        Place(elementSpace=endSpace, alignX=AlignRight, boxSpace=outerSpace)
            EndPiece();
        
        sideWidth = innerFrameDistance;
        sideDepth = depth - endDepth - getDividerThickness();
        sideYOffset = endDepth + getDividerThickness();
        
        translate ([0, sideYOffset, 0])
            Frame ([sideWidth, sideDepth, sideHeight]);
        sideXOffset = width - innerFrameDistance;
        translate ([sideXOffset, sideYOffset, 0])
            Frame ([sideWidth, sideDepth, sideHeight]);            

        diameter = getAxisDiameter() - 0.3;
        translate([innerVolume.x/2 + getDividerThickness(), innerFrameDistance + getDividerThickness()*1.5])
            Axis(axisHeight, diameter=diameter);
    }
    
    cutOffXOffset = (getFrameToothedTileBarWithControlLinksSpace().x - cutoffWidth) / 2;
    
    difference() {
        AllFrames();
        Center([getFrameToothedTileBarWithControlLinksSpace().x, getDividerThickness()], [cutoffWidth, 2*getDividerThickness()])
            cube([cutoffWidth, 2*getDividerThickness(), height+1]);
    }
}

// Test
color("lightgray")
FrameToothedTileBarWithControlLinks();
// Fischertechnik Box Library
// Complete Bucket Holder
// 37354, 37353, 37355, 38257

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 89;
depth = 60;

// getHolderCompleteBucketSpace()
// Gets the space the holder complete bucket needs as width and depth (.x and .y as a list)

function getHolderCompleteBucketSpace() = [width, depth];

// HolderCompleteBucket()
// Holder for complete bucket with three middle and two side parts, 
// and a middle axis.
// 37354, 37353, 37355, 38257

module HolderCompleteBucket() {
    railWidth = 46.8;
    railHeight = 13.5;
    railDistance = 35.7;
    outerStudFrameLength = 10.25;
    innerStudFrameLength = outerStudFrameLength - 3*getDividerThickness();
    innerStudFrameDepth = 4.3;
    outerStudFrameDepth = innerStudFrameDepth + 2*getDividerThickness();
    StudFrameHeight = 2.9;
    
    Space(getHolderCompleteBucketSpace());

    railXOffset = (getHolderCompleteBucketSpace().x - railWidth) / 2;
    railYOffset1 = (getHolderCompleteBucketSpace().y - railDistance) / 2 - getDividerThickness();
    railYOffset2 = railYOffset1 + railDistance + getDividerThickness();    
    
    translate([railXOffset, 0, 0]) {
        translate([0, railYOffset1, 0])
            Wall([railWidth, getDividerThickness(), railHeight]);
        translate([0, railYOffset2, 0])
            Wall([railWidth, getDividerThickness(), railHeight]);
    }
    
    midYOffset = (getHolderCompleteBucketSpace().y - outerStudFrameDepth) / 2;
    
    railXOffset1 = railXOffset - outerStudFrameLength;
    translate([railXOffset1, midYOffset, 0])
        DockableFrame([innerStudFrameLength, innerStudFrameDepth, StudFrameHeight], wallRight=false, tolerance=0);
    
    railXOffset2 = outerStudFrameLength + railXOffset + railWidth;
    translate([railXOffset2, midYOffset, 0])
        mirror([1,0,0])
            DockableFrame([innerStudFrameLength, innerStudFrameDepth, StudFrameHeight], wallRight=false, tolerance=0);
}

// Test
color("lightgray")
HolderCompleteBucket();
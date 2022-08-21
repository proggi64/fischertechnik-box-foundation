// Fischertechnik Box Library
// Frame for small blocks 5
// 37237, 37468

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 7.5;
depth = 15;
height = 10;
wallThickness = 2.5 - getTolerance();
wallHeight = 7.5;
wallCutoffWidth = 10;
wallDistance = 5 + getTolerance();

// getFrameSmallBlockSpace(count=1)
// Gets the space of a frame for count blocks 5mm

function getFrameBlock5Space(count=1) = getFrameOuterVolume([width * count, depth, height]);

// FrameSmallBlock(count=1)
// frame for count blocks 5mm

module FrameBlock5(count=1) {
    frameVolume = [width * count, depth, height];

    module InnerDivider(count) {
        volume = [wallThickness, depth + getTolerance() + 2*getExcess(), wallHeight];
        cutoffVolume = [wallThickness+1, wallCutoffWidth, wallHeight + 1];
        for(i = [1:count])
            translate([getDividerThickness() + ((i - 1) * width) + wallDistance, getDividerThickness()-getExcess()]) {
                difference() {
                    Wall(volume);
                    translate([-0.5, (getFrameInnerVolume(frameVolume).y - wallCutoffWidth)/2])
                    cube(cutoffVolume);
                }
            }
    }

    Frame(frameVolume);
    if (count > 1)
        InnerDivider(count - 1);
}

// Tests
color("lightgray")
FrameBlock5(count);
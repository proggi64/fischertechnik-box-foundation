// Fischertechnik Box Library
// Frame for roller buck
// 32085

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <FrameBlockWithStud.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 15;
depth = 15;
height = 8;
depthSpace = 23;

// getFrameRollerBuckSpace()
// Gets the space the roller buck needs (.x and .y as a list)
// for the specified count of pieces

function getFrameRollerBuckSpace(count = 1) = 
    getFrameOuterVolume([width*count, depthSpace, height]);

// FrameBlockWithStud(count=1)
// Frame for count roller bucks
// count = Count of roller bucks

module FrameRollerBuck(count = 1) {
    volume = [width*count, depthSpace, height];
    Space(getFrameRollerBuckSpace(count));
    CenterVertical(depth = getFrameBlockWithStudSpace(count).y, space = getFrameRollerBuckSpace(count))
        FrameBlockWithStud(count);
}

// Test
color("lightgray")
FrameRollerBuck(count);

// Fischertechnik Box Library
// Frame for Angle Block 10x15x15
// 38423

use <../Base/Constants.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Element Parameters] */
count = 1;
single = false;

/* [Hidden] */
width = 10;
depth = 15;
depthSingle = depth + getStudHeight();

// getFrameAngleBlock10x15x15Space(count=1, single=false)
// Gets the space the count of frame angle blocks needs as width and depth (.x and .y as a list)
// count = Count of blocks
// single = true, when each block is separated by a wall

function getFrameAngleBlock10x15x15Space(count=1, single=false) = [
    (single ? ((width + getTolerance())*count) : (width*count + getTolerance())) + (single ? (count+1) : 2)*getDividerThickness(),
    (single ? depthSingle : depth) + getTolerance() + 2*getDividerThickness()];

// FrameAngleBlock10x15x15(count=1, single=false)
// Frame for angle block 10x15x15
// count = Count of blocks
// single = true, when each block is separated by a wall

module FrameAngleBlock10x15x15(count=1, single=false) {
    height = 10;

    if (single) {
        Merge(count, getFrameOuterVolume([width, depthSingle, height]), NoRotation)
            Frame([width, depthSingle, height]);
    } else {
        volume = [width * count, depth, height];
        Frame(volume);
        FrameRails(volume);
    }
}

// Test
color("lightgray")
FrameAngleBlock10x15x15(count, single);

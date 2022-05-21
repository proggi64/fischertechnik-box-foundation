// Fischertechnik Box Library
// Frame for Angle Block 10x15x15
// 38423

use <../Base/Constants.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

width = 10;
depth = 17.5;

// getFrameAngleBlock10x15x15Space
// Gets the space the count of frame angle blocks needs as width and depth (.x and .y as a list)

function getFrameAngleBlock10x15x15Space(count=1) = [
    (width + getTolerance())*count + (count+1)*getDividerThickness(),
    depth + getTolerance() + 2*getDividerThickness()];

// FrameAngleBlock10x15x15()
// Frame for angle block 10x15x15
// 38423

module FrameAngleBlock10x15x15(count=1) {
    height = 10;

    Merge(count, getFrameOuterVolume([width, depth, height]), NoRotation)
        Frame([width, depth, height]);
}

// Test
color("lightgray")
FrameAngleBlock10x15x15(2);

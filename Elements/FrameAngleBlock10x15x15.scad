// Fischertechnik Box Library
// Frame for Angle Block 10x15x15
// 38423

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 17.5;
depth = 10;

// getFrameAngleBlock10x15x15Space
// Gets the space the count of frame angle blocks needs as width and depth (.x and .y as a list)

function getFrameAngleBlock10x15x15Space(count=1) = [
    width + getTolerance() + 2*getDividerThickness(), 
    (depth + getTolerance())*count + (count+1)*getDividerThickness()];

// FrameAngleBlock10x15x15()
// Frame for angle block 10x15x15
// 38423

module FrameAngleBlock10x15x15(count=1) {
    height = 10;
    
    step = getFrameAngleBlock10x15x15Space().y - getDividerThickness();
    end = (count-1) * step;
    
    for (yOffset = [0:step:end])
        translate([0, yOffset, 0])
            Frame([width, depth, height]);
}

// Test
color("lightgray")
FrameAngleBlock10x15x15();

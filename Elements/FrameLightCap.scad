// Fischertechnik Box Library
// Frame for Light Cap
// 31316,31317,31318,31319,31320,31321,31362,36478,36531,36532

use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

width = 15;
depth = 15;
height = 10;

// getFrameLightCapSpace()
// Gets the space the frame for light cap needs as width (.x and .y as a list)

function getFrameLightCapSpace() = getFrameOuterVolume([width, depth, height]);

// FrameBlockWithPin(count)
// Frame for count standing building blocks with pin down

module FrameLightCap() {    
    webThickness = 0.6;
    webDepth = 2;
    webHeight = 5.3;
    
    innerVolume = getFrameInnerVolume([width, depth, height]);

    module InnerFrame() {
        Frame([width, depth, height]);
        
        Center(getFrameLightCapSpace(), [getFrameLightCapSpace().x, webThickness])
            Wall([getFrameLightCapSpace().x, webThickness, webHeight]);
        Center(getFrameLightCapSpace(), [webThickness, getFrameLightCapSpace().y])
            Wall([webThickness, getFrameLightCapSpace().y, webHeight]);
    }

    difference() {
        InnerFrame();
    
        cutoffWidth = width - 2*webDepth;
        cutoffDepth = depth - 2*webDepth;
        
        Center(getFrameLightCapSpace(), [cutoffWidth, cutoffDepth])
            cube([cutoffWidth, cutoffDepth, height]);
    }
}

// Test
color("lightgray") {
    FrameLightCap();
}
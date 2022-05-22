// Fischertechnik Box Library
// Frame for Light Tube
// 31363

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 30;
depth = 15;
height = 8;
widthForFlap = 5;
depthForFlap = 5;

// getFrameLightTubeSpace()
// Gets the space the frame for light tube needs as width (.x and .y as a list)

function getFrameLightTubeSpace() = getFrameOuterVolume([width + widthForFlap, depth + depthForFlap, height]);

// FrameLightTube()
// Frame for light tube

module FrameLightTube() {
    gapWidth = 5;
    gapDistance = 3.5;
    Space(getFrameLightTubeSpace());
    
    translate([0, depthForFlap]) {
        difference() {
            Frame([width, depth, height]);
            translate([width-gapDistance-gapWidth+getDividerThickness(),-getDividerThickness()/2,0])
                cube([gapWidth, getDividerThickness()*2, height + 1]);
        }
    }
}

// Test
color("lightgray") {
    FrameLightTube();
}
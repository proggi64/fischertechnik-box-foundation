// Fischertechnik Box Library
// Frame for Electronics Controllers and Robotics Controllers
// 152063, 156499

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

/* [Element Parameters] */
alignX = 0;   // [0:NoAlign, 1:AlignLeft, 4:AlignRight]
alignY = 0;   // [0:NoAlign, 2:AlignBottom, 5:AlignTop]

/* [Hidden] */
width = 75;
depth = 45;
height = 15;
completeVolume = [width, depth, height];
blockWidth = 60;
blockDepth = 30;
blockVolume = [blockWidth, blockDepth, height];

// getFrameElectronicsControllSpace()
// Gets the space the frames for an electronics controller needs as width and depth(.x and .y as a list). 

function getFrameElectronicsControllerSpace() = 
    getFrameOuterVolume(completeVolume);

// FrameElectronicBlock(alignX, alignY)
// Frame for electronic block.
// alignX 0=NoAlign 1=AlignLeft 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 5=AlignTop

module FrameElectronicsController(alignX=NoAlign, alignY=NoAlign) {
    AlignedFrame(completeVolume, alignX, alignY);
    difference() {
        AlignedFrame(blockVolume, 
            alignX!=AlignRight ? alignX : NoAlign, 
            alignY!=AlignTop ? alignY : NoAlign);
        translate([0, 0, getStudHeight()])
            FrameRightCutoff(blockVolume, 15);
    }
    FrameRails(blockVolume, 15, getStudHeight());
}

// Test
color("lightgray") {
    FrameElectronicsController(alignX, alignY);
}
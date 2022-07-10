// Fischertechnik Box Library
// Frame for assembled transistor block
// 152059, 152218, 152860

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
height = 8;
width = 30;
depth = 15;
cutoffWidth = 20;
volume = [width, depth, height];

// getFrameTransistorBlockSpace()
// Gets the space the frame for an assembled transistor block needs (.x and .y as a list)

function getFrameTransistorBlockSpace() = getFrameOuterVolume(volume);

// FrameTransistorBlock()
// Frame for an assembled transistor block

module FrameTransistorBlock() {
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, cutoffWidth);
        FrameBottomCutoff(volume, cutoffWidth);
    }
 
    railHeight = getPinHeight() + getPinTolerance();
    railDistance = 9;
    FrameRails(volume, railDistance, railHeight);
}

// Test
color("lightgray")
FrameTransistorBlock();
